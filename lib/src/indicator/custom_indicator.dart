/*
 * Author: Jpeng
 * Email: peng8350@gmail.com
 * Time: 2019/5/4 下午9:49
 */

import 'package:flutter/widgets.dart';
import '../internals/indicator_wrap.dart';
import '../smart_refresher.dart';
import '../internals/default_constants.dart';

class CustomHeader extends RefreshIndicator {
  final HeaderBuilder builder;

  const CustomHeader({
    Key key,
    @required this.builder,
    double height: default_height,
    RefreshStyle refreshStyle: RefreshStyle.Follow,
    double triggerDistance: default_refresh_triggerDistance,
  }) : super(
            key: key,
            triggerDistance: triggerDistance,
            refreshStyle: refreshStyle,
            height: height);

  const CustomHeader.asSliver({
    Key key,
    @required this.builder,
    @required OnRefresh onRefresh,
    bool offStage:false,
    double height: default_height,
    RefreshStyle refreshStyle: RefreshStyle.Follow,
    double triggerDistance: default_refresh_triggerDistance,
  }) : super(
      key: key,
      onRefresh:onRefresh,
      offStage:offStage,
      triggerDistance: triggerDistance,
      refreshStyle: refreshStyle,
      height: height);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CustomHeaderState();
  }
}

class _CustomHeaderState extends RefreshIndicatorState<CustomHeader> {
  @override
  Widget buildContent(BuildContext context, RefreshStatus mode) {
    // TODO: implement buildContent
    return widget.builder(context, mode);
  }
}

class CustomFooter extends LoadIndicator {
  final FooterBuilder builder;

  const CustomFooter({
    Key key,
    @required this.builder,
    bool autoLoad: true,
    bool hideWhenNotFull: true,
    Function onClick,
    double triggerDistance: default_load_triggerDistance,
  }) : super(
            key: key,
            autoLoad: autoLoad,
            hideWhenNotFull: hideWhenNotFull,
            triggerDistance: triggerDistance,
            onClick: onClick);

  const CustomFooter.asSliver({
    Key key,
    @required this.builder,
    @required OnLoading onLoading,
    bool offStage:false,
    bool autoLoad: true,
    bool hideWhenNotFull: true,
    Function onClick,
    double triggerDistance: default_load_triggerDistance,
  }) : super(
      key: key,
      autoLoad: autoLoad,
      onLoading:onLoading,
      offStage:offStage,
      hideWhenNotFull: hideWhenNotFull,
      triggerDistance: triggerDistance,
      onClick: onClick);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CustomFooterState();
  }
}

class _CustomFooterState extends LoadIndicatorState<CustomFooter> {
  @override
  Widget buildContent(BuildContext context, LoadStatus mode) {
    // TODO: implement buildContent
    return widget.builder(context, mode);
  }
}
