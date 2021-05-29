import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hundred_days/core/providers/providers.dart';
import 'package:hundred_days/model/submission.dart';
import 'package:hundred_days/ui/submission_card.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class ShowCase extends StatefulWidget {
  @override
  _ShowCaseState createState() {
    return _ShowCaseState();
  }
}

class _ShowCaseState extends State<ShowCase> {
  final int _pageSize = 20;
  final _pagingController = PagingController<int, Submission>(
    firstPageKey: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
       children: <Widget>[
       RefreshIndicator(
       onRefresh: () => Future.sync(() => _pagingController.refresh()),
       child: PagedListView.separated(
        pagingController: _pagingController,
        separatorBuilder: (context, int) => SizedBox(height: 5,),
        builderDelegate: PagedChildBuilderDelegate<Submission>(
          itemBuilder: (context, submission, index) => SubmissionCard(submission),
          firstPageErrorIndicatorBuilder: (context) => Container(child: Center(child: Text('Error retriving first page')),),
          noItemsFoundIndicatorBuilder: (context) => Container(child: Center(child: Text('No images found')),)
          ),
        ),
      ),
      NewPostsButton(_pagingController,),
      ],
    );
  }

  Future<void> _fetchPage(int pageKey, dynamic showCaseProvider) async {
    try {
      //showCaseProvider.
      final List<Submission> newPage = await showCaseProvider.getSubmissions(pageKey) ;
      final isLastPage = newPage.length < _pageSize;

      if (isLastPage) {
        _pagingController.appendLastPage(newPage);
      } else {
        final nextPageKey = pageKey + 1;
        _pagingController.appendPage(newPage, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  void initState() {
    super.initState();
    
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey, context.read(showCaseProvider));
    });
  }
  
}

class NewPostsButton extends StatefulWidget {
  NewPostsButton(this.pagingController);
  final PagingController pagingController;
  
  @override
  _NewPostsButtonState createState() => _NewPostsButtonState();
}
class _NewPostsButtonState extends State<NewPostsButton> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (context, watch, child) {
        final metNotifier = watch(metricsNotifier);
        return metNotifier.when(
        data: (data) => Visibility(
                  visible: isVisible,
                  child: Align(
          alignment: Alignment.topCenter,
          child: ElevatedButton(
            onPressed: ()  {
              widget.pagingController.refresh();
              setState(() {
                isVisible = false;
              });
            },
            child: Text('New posts', style: TextStyle(fontSize: 10),),
            style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100))), elevation: 20)
          )
      ),
        ),
          loading: () => Container(),
          error: (err, st) => Container()
        );
      },
    );
  }
}