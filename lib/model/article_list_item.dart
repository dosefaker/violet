// This source code is a part of Project Violet.
// Copyright (C) 2020. violet-team. Licensed under the MIT License.

import 'package:flutter/material.dart';
import 'package:html_unescape/html_unescape_small.dart';
import 'package:violet/database/query.dart';
import 'package:violet/database/user/bookmark.dart';

typedef void BookmarkCallback(int article);
typedef void BookmarkCheckCallback(int article, bool check);

class ArticleListItem {
  final bool addBottomPadding;
  final bool showDetail;
  final QueryResult queryResult;
  final double width;
  final String thumbnailTag;
  final bool bookmarkMode;
  final BookmarkCallback bookmarkCallback;
  final BookmarkCheckCallback bookmarkCheckCallback;
  final bool isCheckMode;
  bool isChecked;

  ArticleListItem({
    @required this.queryResult,
    @required this.addBottomPadding,
    @required this.showDetail,
    @required this.width,
    @required this.thumbnailTag,
    @required this.bookmarkMode,
    @required this.bookmarkCallback,
    @required this.bookmarkCheckCallback,
    @required this.isChecked,
    @required this.isCheckMode,
  });

  factory ArticleListItem.fromArticleListItem({
    bool addBottomPadding,
    bool showDetail,
    QueryResult queryResult,
    double width,
    String thumbnailTag,
    bool bookmarkMode = false,
    BookmarkCallback bookmarkCallback,
    BookmarkCheckCallback bookmarkCheckCallback,
    bool isCheckMode = false,
    bool isChecked = false,
  }) {
    return ArticleListItem(
      addBottomPadding: addBottomPadding,
      showDetail: showDetail,
      queryResult: queryResult,
      width: width,
      thumbnailTag: thumbnailTag,
      bookmarkMode: bookmarkMode,
      bookmarkCallback: bookmarkCallback,
      bookmarkCheckCallback: bookmarkCheckCallback,
      isCheckMode: isCheckMode,
      isChecked: isChecked,
    );
  }
}
