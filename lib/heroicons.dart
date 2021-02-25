library heroicons;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeroIcons extends StatelessWidget {
  const HeroIcons.academicCap({this.color, this.size})
      : icon = 'academic-cap.svg';

  const HeroIcons.adjustments({this.color, this.size})
      : icon = 'adjustments.svg';

  const HeroIcons.annotation({this.color, this.size}) : icon = 'annotation.svg';

  const HeroIcons.archive({this.color, this.size}) : icon = 'archive.svg';

  const HeroIcons.arrowCircleDown({this.color, this.size})
      : icon = 'arrow-circle-down.svg';

  const HeroIcons.arrowCircleLeft({this.color, this.size})
      : icon = 'arrow-circle-left.svg';

  const HeroIcons.arrowCircleRight({this.color, this.size})
      : icon = 'arrow-circle-right.svg';

  const HeroIcons.arrowCircleUp({this.color, this.size})
      : icon = 'arrow-circle-up.svg';

  const HeroIcons.arrowDown({this.color, this.size}) : icon = 'arrow-down.svg';

  const HeroIcons.arrowLeft({this.color, this.size}) : icon = 'arrow-left.svg';

  const HeroIcons.arrowNarrowDown({this.color, this.size})
      : icon = 'arrow-narrow-down.svg';

  const HeroIcons.arrowNarrowLeft({this.color, this.size})
      : icon = 'arrow-narrow-left.svg';

  const HeroIcons.arrowNarrowRight({this.color, this.size})
      : icon = 'arrow-narrow-right.svg';

  const HeroIcons.arrowNarrowUp({this.color, this.size})
      : icon = 'arrow-narrow-up.svg';

  const HeroIcons.arrowRight({this.color, this.size})
      : icon = 'arrow-right.svg';

  const HeroIcons.arrowUp({this.color, this.size}) : icon = 'arrow-up.svg';

  const HeroIcons.arrowsExpand({this.color, this.size})
      : icon = 'arrows-expand.svg';

  const HeroIcons.atSymbol({this.color, this.size}) : icon = 'at-symbol.svg';

  const HeroIcons.backspace({this.color, this.size}) : icon = 'backspace.svg';

  const HeroIcons.badgeCheck({this.color, this.size})
      : icon = 'badge-check.svg';

  const HeroIcons.ban({this.color, this.size}) : icon = 'ban.svg';

  const HeroIcons.beaker({this.color, this.size}) : icon = 'beaker.svg';

  const HeroIcons.bell({this.color, this.size}) : icon = 'bell.svg';

  const HeroIcons.bookOpen({this.color, this.size}) : icon = 'book-open.svg';

  const HeroIcons.bookmarkAlt({this.color, this.size})
      : icon = 'bookmark-alt.svg';

  const HeroIcons.bookmark({this.color, this.size}) : icon = 'bookmark.svg';

  const HeroIcons.briefcase({this.color, this.size}) : icon = 'briefcase.svg';

  const HeroIcons.cake({this.color, this.size}) : icon = 'cake.svg';

  const HeroIcons.calculator({this.color, this.size}) : icon = 'calculator.svg';

  const HeroIcons.calendar({this.color, this.size}) : icon = 'calendar.svg';

  const HeroIcons.camera({this.color, this.size}) : icon = 'camera.svg';

  const HeroIcons.cash({this.color, this.size}) : icon = 'cash.svg';

  const HeroIcons.chartBar({this.color, this.size}) : icon = 'chart-bar.svg';

  const HeroIcons.chartPie({this.color, this.size}) : icon = 'chart-pie.svg';

  const HeroIcons.chartSquareBar({this.color, this.size})
      : icon = 'chart-square-bar.svg';

  const HeroIcons.chatAlt2({this.color, this.size}) : icon = 'chat-alt-2.svg';

  const HeroIcons.chatAlt({this.color, this.size}) : icon = 'chat-alt.svg';

  const HeroIcons.chat({this.color, this.size}) : icon = 'chat.svg';

  const HeroIcons.checkCircle({this.color, this.size})
      : icon = 'check-circle.svg';

  const HeroIcons.check({this.color, this.size}) : icon = 'check.svg';

  const HeroIcons.chevronDoubleDown({this.color, this.size})
      : icon = 'chevron-double-down.svg';

  const HeroIcons.chevronDoubleLeft({this.color, this.size})
      : icon = 'chevron-double-left.svg';

  const HeroIcons.chevronDoubleRight({this.color, this.size})
      : icon = 'chevron-double-right.svg';

  const HeroIcons.chevronDoubleUp({this.color, this.size})
      : icon = 'chevron-double-up.svg';

  const HeroIcons.chevronDown({this.color, this.size})
      : icon = 'chevron-down.svg';

  const HeroIcons.chevronLeft({this.color, this.size})
      : icon = 'chevron-left.svg';

  const HeroIcons.chevronRight({this.color, this.size})
      : icon = 'chevron-right.svg';

  const HeroIcons.chevronUp({this.color, this.size}) : icon = 'chevron-up.svg';

  const HeroIcons.chip({this.color, this.size}) : icon = 'chip.svg';

  const HeroIcons.clipboardCheck({this.color, this.size})
      : icon = 'clipboard-check.svg';

  const HeroIcons.clipboardCopy({this.color, this.size})
      : icon = 'clipboard-copy.svg';

  const HeroIcons.clipboardList({this.color, this.size})
      : icon = 'clipboard-list.svg';

  const HeroIcons.clipboard({this.color, this.size}) : icon = 'clipboard.svg';

  const HeroIcons.clock({this.color, this.size}) : icon = 'clock.svg';

  const HeroIcons.cloudDownload({this.color, this.size})
      : icon = 'cloud-download.svg';

  const HeroIcons.cloudUpload({this.color, this.size})
      : icon = 'cloud-upload.svg';

  const HeroIcons.cloud({this.color, this.size}) : icon = 'cloud.svg';

  const HeroIcons.code({this.color, this.size}) : icon = 'code.svg';

  const HeroIcons.cog({this.color, this.size}) : icon = 'cog.svg';

  const HeroIcons.collection({this.color, this.size}) : icon = 'collection.svg';

  const HeroIcons.colorSwatch({this.color, this.size})
      : icon = 'color-swatch.svg';

  const HeroIcons.creditCard({this.color, this.size})
      : icon = 'credit-card.svg';

  const HeroIcons.cubeTransparent({this.color, this.size})
      : icon = 'cube-transparent.svg';

  const HeroIcons.cube({this.color, this.size}) : icon = 'cube.svg';

  const HeroIcons.currencyBangladeshi({this.color, this.size})
      : icon = 'currency-bangladeshi.svg';

  const HeroIcons.currencyDollar({this.color, this.size})
      : icon = 'currency-dollar.svg';

  const HeroIcons.currencyEuro({this.color, this.size})
      : icon = 'currency-euro.svg';

  const HeroIcons.currencyPound({this.color, this.size})
      : icon = 'currency-pound.svg';

  const HeroIcons.currencyRupee({this.color, this.size})
      : icon = 'currency-rupee.svg';

  const HeroIcons.currencyYen({this.color, this.size})
      : icon = 'currency-yen.svg';

  const HeroIcons.cursorClick({this.color, this.size})
      : icon = 'cursor-click.svg';

  const HeroIcons.database({this.color, this.size}) : icon = 'database.svg';

  const HeroIcons.desktopComputer({this.color, this.size})
      : icon = 'desktop-computer.svg';

  const HeroIcons.deviceMobile({this.color, this.size})
      : icon = 'device-mobile.svg';

  const HeroIcons.deviceTablet({this.color, this.size})
      : icon = 'device-tablet.svg';

  const HeroIcons.documentAdd({this.color, this.size})
      : icon = 'document-add.svg';

  const HeroIcons.documentDownload({this.color, this.size})
      : icon = 'document-download.svg';

  const HeroIcons.documentDuplicate({this.color, this.size})
      : icon = 'document-duplicate.svg';

  const HeroIcons.documentRemove({this.color, this.size})
      : icon = 'document-remove.svg';

  const HeroIcons.documentReport({this.color, this.size})
      : icon = 'document-report.svg';

  const HeroIcons.documentSearch({this.color, this.size})
      : icon = 'document-search.svg';

  const HeroIcons.documentText({this.color, this.size})
      : icon = 'document-text.svg';

  const HeroIcons.document({this.color, this.size}) : icon = 'document.svg';

  const HeroIcons.dotsCircleHorizontal({this.color, this.size})
      : icon = 'dots-circle-horizontal.svg';

  const HeroIcons.dotsHorizontal({this.color, this.size})
      : icon = 'dots-horizontal.svg';

  const HeroIcons.dotsVertical({this.color, this.size})
      : icon = 'dots-vertical.svg';

  const HeroIcons.download({this.color, this.size}) : icon = 'download.svg';

  const HeroIcons.duplicate({this.color, this.size}) : icon = 'duplicate.svg';

  const HeroIcons.emojiHappy({this.color, this.size})
      : icon = 'emoji-happy.svg';

  const HeroIcons.emojiSad({this.color, this.size}) : icon = 'emoji-sad.svg';

  const HeroIcons.exclamationCircle({this.color, this.size})
      : icon = 'exclamation-circle.svg';

  const HeroIcons.exclamation({this.color, this.size})
      : icon = 'exclamation.svg';

  const HeroIcons.externalLink({this.color, this.size})
      : icon = 'external-link.svg';

  const HeroIcons.eyeOff({this.color, this.size}) : icon = 'eye-off.svg';

  const HeroIcons.eye({this.color, this.size}) : icon = 'eye.svg';

  const HeroIcons.fastForward({this.color, this.size})
      : icon = 'fast-forward.svg';

  const HeroIcons.film({this.color, this.size}) : icon = 'film.svg';

  const HeroIcons.filter({this.color, this.size}) : icon = 'filter.svg';

  const HeroIcons.fingerPrint({this.color, this.size})
      : icon = 'finger-print.svg';

  const HeroIcons.fire({this.color, this.size}) : icon = 'fire.svg';

  const HeroIcons.flag({this.color, this.size}) : icon = 'flag.svg';

  const HeroIcons.folderAdd({this.color, this.size}) : icon = 'folder-add.svg';

  const HeroIcons.folderDownload({this.color, this.size})
      : icon = 'folder-download.svg';

  const HeroIcons.folderOpen({this.color, this.size})
      : icon = 'folder-open.svg';

  const HeroIcons.folderRemove({this.color, this.size})
      : icon = 'folder-remove.svg';

  const HeroIcons.folder({this.color, this.size}) : icon = 'folder.svg';

  const HeroIcons.gift({this.color, this.size}) : icon = 'gift.svg';

  const HeroIcons.globeAlt({this.color, this.size}) : icon = 'globe-alt.svg';

  const HeroIcons.globe({this.color, this.size}) : icon = 'globe.svg';

  const HeroIcons.hand({this.color, this.size}) : icon = 'hand.svg';

  const HeroIcons.hashtag({this.color, this.size}) : icon = 'hashtag.svg';

  const HeroIcons.heart({this.color, this.size}) : icon = 'heart.svg';

  const HeroIcons.home({this.color, this.size}) : icon = 'home.svg';

  const HeroIcons.identification({this.color, this.size})
      : icon = 'identification.svg';

  const HeroIcons.inboxIn({this.color, this.size}) : icon = 'inbox-in.svg';

  const HeroIcons.inbox({this.color, this.size}) : icon = 'inbox.svg';

  const HeroIcons.informationCircle({this.color, this.size})
      : icon = 'information-circle.svg';

  const HeroIcons.key({this.color, this.size}) : icon = 'key.svg';

  const HeroIcons.library({this.color, this.size}) : icon = 'library.svg';

  const HeroIcons.lightBulb({this.color, this.size}) : icon = 'light-bulb.svg';

  const HeroIcons.lightningBolt({this.color, this.size})
      : icon = 'lightning-bolt.svg';

  const HeroIcons.link({this.color, this.size}) : icon = 'link.svg';

  const HeroIcons.locationMarker({this.color, this.size})
      : icon = 'location-marker.svg';

  const HeroIcons.lockClosed({this.color, this.size})
      : icon = 'lock-closed.svg';

  const HeroIcons.lockOpen({this.color, this.size}) : icon = 'lock-open.svg';

  const HeroIcons.login({this.color, this.size}) : icon = 'login.svg';

  const HeroIcons.logout({this.color, this.size}) : icon = 'logout.svg';

  const HeroIcons.mailOpen({this.color, this.size}) : icon = 'mail-open.svg';

  const HeroIcons.mail({this.color, this.size}) : icon = 'mail.svg';

  const HeroIcons.map({this.color, this.size}) : icon = 'map.svg';

  const HeroIcons.menuAlt1({this.color, this.size}) : icon = 'menu-alt-1.svg';

  const HeroIcons.menuAlt2({this.color, this.size}) : icon = 'menu-alt-2.svg';

  const HeroIcons.menuAlt3({this.color, this.size}) : icon = 'menu-alt-3.svg';

  const HeroIcons.menuAlt4({this.color, this.size}) : icon = 'menu-alt-4.svg';

  const HeroIcons.menu({this.color, this.size}) : icon = 'menu.svg';

  const HeroIcons.microphone({this.color, this.size}) : icon = 'microphone.svg';

  const HeroIcons.minusCircle({this.color, this.size})
      : icon = 'minus-circle.svg';

  const HeroIcons.minusSm({this.color, this.size}) : icon = 'minus-sm.svg';

  const HeroIcons.minus({this.color, this.size}) : icon = 'minus.svg';

  const HeroIcons.moon({this.color, this.size}) : icon = 'moon.svg';

  const HeroIcons.musicNote({this.color, this.size}) : icon = 'music-note.svg';

  const HeroIcons.newspaper({this.color, this.size}) : icon = 'newspaper.svg';

  const HeroIcons.officeBuilding({this.color, this.size})
      : icon = 'office-building.svg';

  const HeroIcons.paperAirplane({this.color, this.size})
      : icon = 'paper-airplane.svg';

  const HeroIcons.paperClip({this.color, this.size}) : icon = 'paper-clip.svg';

  const HeroIcons.pause({this.color, this.size}) : icon = 'pause.svg';

  const HeroIcons.pencilAlt({this.color, this.size}) : icon = 'pencil-alt.svg';

  const HeroIcons.pencil({this.color, this.size}) : icon = 'pencil.svg';

  const HeroIcons.phoneIncoming({this.color, this.size})
      : icon = 'phone-incoming.svg';

  const HeroIcons.phoneMissedCall({this.color, this.size})
      : icon = 'phone-missed-call.svg';

  const HeroIcons.phoneOutgoing({this.color, this.size})
      : icon = 'phone-outgoing.svg';

  const HeroIcons.phone({this.color, this.size}) : icon = 'phone.svg';

  const HeroIcons.photograph({this.color, this.size}) : icon = 'photograph.svg';

  const HeroIcons.play({this.color, this.size}) : icon = 'play.svg';

  const HeroIcons.plusCircle({this.color, this.size})
      : icon = 'plus-circle.svg';

  const HeroIcons.plusSm({this.color, this.size}) : icon = 'plus-sm.svg';

  const HeroIcons.plus({this.color, this.size}) : icon = 'plus.svg';

  const HeroIcons.presentationChartBar({this.color, this.size})
      : icon = 'presentation-chart-bar.svg';

  const HeroIcons.presentationChartLine({this.color, this.size})
      : icon = 'presentation-chart-line.svg';

  const HeroIcons.printer({this.color, this.size}) : icon = 'printer.svg';

  const HeroIcons.puzzle({this.color, this.size}) : icon = 'puzzle.svg';

  const HeroIcons.qrcode({this.color, this.size}) : icon = 'qrcode.svg';

  const HeroIcons.questionMarkCircle({this.color, this.size})
      : icon = 'question-mark-circle.svg';

  const HeroIcons.receiptRefund({this.color, this.size})
      : icon = 'receipt-refund.svg';

  const HeroIcons.receiptTax({this.color, this.size})
      : icon = 'receipt-tax.svg';

  const HeroIcons.refresh({this.color, this.size}) : icon = 'refresh.svg';

  const HeroIcons.reply({this.color, this.size}) : icon = 'reply.svg';

  const HeroIcons.rewind({this.color, this.size}) : icon = 'rewind.svg';

  const HeroIcons.rss({this.color, this.size}) : icon = 'rss.svg';

  const HeroIcons.saveAs({this.color, this.size}) : icon = 'save-as.svg';

  const HeroIcons.save({this.color, this.size}) : icon = 'save.svg';

  const HeroIcons.scale({this.color, this.size}) : icon = 'scale.svg';

  const HeroIcons.scissors({this.color, this.size}) : icon = 'scissors.svg';

  const HeroIcons.searchCircle({this.color, this.size})
      : icon = 'search-circle.svg';

  const HeroIcons.search({this.color, this.size}) : icon = 'search.svg';

  const HeroIcons.selector({this.color, this.size}) : icon = 'selector.svg';

  const HeroIcons.server({this.color, this.size}) : icon = 'server.svg';

  const HeroIcons.share({this.color, this.size}) : icon = 'share.svg';

  const HeroIcons.shieldCheck({this.color, this.size})
      : icon = 'shield-check.svg';

  const HeroIcons.shieldExclamation({this.color, this.size})
      : icon = 'shield-exclamation.svg';

  const HeroIcons.shoppingBag({this.color, this.size})
      : icon = 'shopping-bag.svg';

  const HeroIcons.shoppingCart({this.color, this.size})
      : icon = 'shopping-cart.svg';

  const HeroIcons.sortAscending({this.color, this.size})
      : icon = 'sort-ascending.svg';

  const HeroIcons.sortDescending({this.color, this.size})
      : icon = 'sort-descending.svg';

  const HeroIcons.sparkles({this.color, this.size}) : icon = 'sparkles.svg';

  const HeroIcons.speakerphone({this.color, this.size})
      : icon = 'speakerphone.svg';

  const HeroIcons.star({this.color, this.size}) : icon = 'star.svg';

  const HeroIcons.statusOffline({this.color, this.size})
      : icon = 'status-offline.svg';

  const HeroIcons.statusOnline({this.color, this.size})
      : icon = 'status-online.svg';

  const HeroIcons.stop({this.color, this.size}) : icon = 'stop.svg';

  const HeroIcons.sun({this.color, this.size}) : icon = 'sun.svg';

  const HeroIcons.support({this.color, this.size}) : icon = 'support.svg';

  const HeroIcons.switchHorizontal({this.color, this.size})
      : icon = 'switch-horizontal.svg';

  const HeroIcons.switchVertical({this.color, this.size})
      : icon = 'switch-vertical.svg';

  const HeroIcons.table({this.color, this.size}) : icon = 'table.svg';

  const HeroIcons.tag({this.color, this.size}) : icon = 'tag.svg';

  const HeroIcons.template({this.color, this.size}) : icon = 'template.svg';

  const HeroIcons.terminal({this.color, this.size}) : icon = 'terminal.svg';

  const HeroIcons.thumbDown({this.color, this.size}) : icon = 'thumb-down.svg';

  const HeroIcons.thumbUp({this.color, this.size}) : icon = 'thumb-up.svg';

  const HeroIcons.ticket({this.color, this.size}) : icon = 'ticket.svg';

  const HeroIcons.translate({this.color, this.size}) : icon = 'translate.svg';

  const HeroIcons.trash({this.color, this.size}) : icon = 'trash.svg';

  const HeroIcons.trendingDown({this.color, this.size})
      : icon = 'trending-down.svg';

  const HeroIcons.trendingUp({this.color, this.size})
      : icon = 'trending-up.svg';

  const HeroIcons.truck({this.color, this.size}) : icon = 'truck.svg';

  const HeroIcons.upload({this.color, this.size}) : icon = 'upload.svg';

  const HeroIcons.userAdd({this.color, this.size}) : icon = 'user-add.svg';

  const HeroIcons.userCircle({this.color, this.size})
      : icon = 'user-circle.svg';

  const HeroIcons.userGroup({this.color, this.size}) : icon = 'user-group.svg';

  const HeroIcons.userRemove({this.color, this.size})
      : icon = 'user-remove.svg';

  const HeroIcons.user({this.color, this.size}) : icon = 'user.svg';

  const HeroIcons.users({this.color, this.size}) : icon = 'users.svg';

  const HeroIcons.variable({this.color, this.size}) : icon = 'variable.svg';

  const HeroIcons.videoCamera({this.color, this.size})
      : icon = 'video-camera.svg';

  const HeroIcons.viewBoards({this.color, this.size})
      : icon = 'view-boards.svg';

  const HeroIcons.viewGridAdd({this.color, this.size})
      : icon = 'view-grid-add.svg';

  const HeroIcons.viewGrid({this.color, this.size}) : icon = 'view-grid.svg';

  const HeroIcons.viewList({this.color, this.size}) : icon = 'view-list.svg';

  const HeroIcons.volumeOff({this.color, this.size}) : icon = 'volume-off.svg';

  const HeroIcons.volumeUp({this.color, this.size}) : icon = 'volume-up.svg';

  const HeroIcons.wifi({this.color, this.size}) : icon = 'wifi.svg';

  const HeroIcons.xCircle({this.color, this.size}) : icon = 'x-circle.svg';

  const HeroIcons.x({this.color, this.size}) : icon = 'x.svg';

  const HeroIcons.zoomIn({this.color, this.size}) : icon = 'zoom-in.svg';

  const HeroIcons.zoomOut({this.color, this.size}) : icon = 'zoom-out.svg';

  final String icon;

  final Color? color;

  final double? size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'packages/heroicons/assets/outline/$icon',
      color: color ?? IconTheme.of(context).color,
      width: size,
      height: size,
      alignment: Alignment.center,
    );
  }
}
