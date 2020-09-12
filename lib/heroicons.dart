library heroicons;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeroIcons extends StatelessWidget {
  const HeroIcons.academicCap({
    this.color,
    this.size,
  }) : icon = 'assets/academic-cap.svg';

  const HeroIcons.adjustments({
    this.color,
    this.size,
  }) : icon = 'assets/adjustments.svg';

  const HeroIcons.annotation({
    this.color,
    this.size,
  }) : icon = 'assets/annotation.svg';

  const HeroIcons.archive({
    this.color,
    this.size,
  }) : icon = 'assets/archive.svg';

  const HeroIcons.arrowCircleDown({
    this.color,
    this.size,
  }) : icon = 'assets/arrow-circle-down.svg';

  const HeroIcons.arrowCircleLeft({
    this.color,
    this.size,
  }) : icon = 'assets/arrow-circle-left.svg';

  const HeroIcons.arrowCircleRight({
    this.color,
    this.size,
  }) : icon = 'assets/arrow-circle-right.svg';

  const HeroIcons.arrowCircleUp({
    this.color,
    this.size,
  }) : icon = 'assets/arrow-circle-up.svg';

  const HeroIcons.arrowDown({
    this.color,
    this.size,
  }) : icon = 'assets/arrow-down.svg';

  const HeroIcons.arrowLeft({
    this.color,
    this.size,
  }) : icon = 'assets/arrow-left.svg';

  const HeroIcons.arrowNarrowDown({
    this.color,
    this.size,
  }) : icon = 'assets/arrow-narrow-down.svg';

  const HeroIcons.arrowNarrowLeft({
    this.color,
    this.size,
  }) : icon = 'assets/arrow-narrow-left.svg';

  const HeroIcons.arrowNarrowRight({
    this.color,
    this.size,
  }) : icon = 'assets/arrow-narrow-right.svg';

  const HeroIcons.arrowNarrowUp({
    this.color,
    this.size,
  }) : icon = 'assets/arrow-narrow-up.svg';

  const HeroIcons.arrowRight({
    this.color,
    this.size,
  }) : icon = 'assets/arrow-right.svg';

  const HeroIcons.arrowUp({
    this.color,
    this.size,
  }) : icon = 'assets/arrow-up.svg';

  const HeroIcons.arrowsExpand({
    this.color,
    this.size,
  }) : icon = 'assets/arrows-expand.svg';

  const HeroIcons.atSymbol({
    this.color,
    this.size,
  }) : icon = 'assets/at-symbol.svg';

  const HeroIcons.backspace({
    this.color,
    this.size,
  }) : icon = 'assets/backspace.svg';

  const HeroIcons.badgeCheck({
    this.color,
    this.size,
  }) : icon = 'assets/badge-check.svg';

  const HeroIcons.ban({
    this.color,
    this.size,
  }) : icon = 'assets/ban.svg';

  const HeroIcons.beaker({
    this.color,
    this.size,
  }) : icon = 'assets/beaker.svg';

  const HeroIcons.bell({
    this.color,
    this.size,
  }) : icon = 'assets/bell.svg';

  const HeroIcons.bookOpen({
    this.color,
    this.size,
  }) : icon = 'assets/book-open.svg';

  const HeroIcons.bookmarkAlt({
    this.color,
    this.size,
  }) : icon = 'assets/bookmark-alt.svg';

  const HeroIcons.bookmark({
    this.color,
    this.size,
  }) : icon = 'assets/bookmark.svg';

  const HeroIcons.briefcase({
    this.color,
    this.size,
  }) : icon = 'assets/briefcase.svg';

  const HeroIcons.cake({
    this.color,
    this.size,
  }) : icon = 'assets/cake.svg';

  const HeroIcons.calculator({
    this.color,
    this.size,
  }) : icon = 'assets/calculator.svg';

  const HeroIcons.calendar({
    this.color,
    this.size,
  }) : icon = 'assets/calendar.svg';

  const HeroIcons.camera({
    this.color,
    this.size,
  }) : icon = 'assets/camera.svg';

  const HeroIcons.cash({
    this.color,
    this.size,
  }) : icon = 'assets/cash.svg';

  const HeroIcons.chartBar({
    this.color,
    this.size,
  }) : icon = 'assets/chart-bar.svg';

  const HeroIcons.chartPie({
    this.color,
    this.size,
  }) : icon = 'assets/chart-pie.svg';

  const HeroIcons.chartSquareBar({
    this.color,
    this.size,
  }) : icon = 'assets/chart-square-bar.svg';

  const HeroIcons.chatAlt2({
    this.color,
    this.size,
  }) : icon = 'assets/chat-alt-2.svg';

  const HeroIcons.chatAlt({
    this.color,
    this.size,
  }) : icon = 'assets/chat-alt.svg';

  const HeroIcons.chat({
    this.color,
    this.size,
  }) : icon = 'assets/chat.svg';

  const HeroIcons.checkCircle({
    this.color,
    this.size,
  }) : icon = 'assets/check-circle.svg';

  const HeroIcons.check({
    this.color,
    this.size,
  }) : icon = 'assets/check.svg';

  const HeroIcons.chevronDoubleDown({
    this.color,
    this.size,
  }) : icon = 'assets/chevron-double-down.svg';

  const HeroIcons.chevronDoubleLeft({
    this.color,
    this.size,
  }) : icon = 'assets/chevron-double-left.svg';

  const HeroIcons.chevronDoubleRight({
    this.color,
    this.size,
  }) : icon = 'assets/chevron-double-right.svg';

  const HeroIcons.chevronDoubleUp({
    this.color,
    this.size,
  }) : icon = 'assets/chevron-double-up.svg';

  const HeroIcons.chevronDown({
    this.color,
    this.size,
  }) : icon = 'assets/chevron-down.svg';

  const HeroIcons.chevronLeft({
    this.color,
    this.size,
  }) : icon = 'assets/chevron-left.svg';

  const HeroIcons.chevronRight({
    this.color,
    this.size,
  }) : icon = 'assets/chevron-right.svg';

  const HeroIcons.chevronUp({
    this.color,
    this.size,
  }) : icon = 'assets/chevron-up.svg';

  const HeroIcons.chip({
    this.color,
    this.size,
  }) : icon = 'assets/chip.svg';

  const HeroIcons.clipboardCheck({
    this.color,
    this.size,
  }) : icon = 'assets/clipboard-check.svg';

  const HeroIcons.clipboardCopy({
    this.color,
    this.size,
  }) : icon = 'assets/clipboard-copy.svg';

  const HeroIcons.clipboardList({
    this.color,
    this.size,
  }) : icon = 'assets/clipboard-list.svg';

  const HeroIcons.clipboard({
    this.color,
    this.size,
  }) : icon = 'assets/clipboard.svg';

  const HeroIcons.clock({
    this.color,
    this.size,
  }) : icon = 'assets/clock.svg';

  const HeroIcons.cloudDownload({
    this.color,
    this.size,
  }) : icon = 'assets/cloud-download.svg';

  const HeroIcons.cloudUpload({
    this.color,
    this.size,
  }) : icon = 'assets/cloud-upload.svg';

  const HeroIcons.cloud({
    this.color,
    this.size,
  }) : icon = 'assets/cloud.svg';

  const HeroIcons.code({
    this.color,
    this.size,
  }) : icon = 'assets/code.svg';

  const HeroIcons.cog({
    this.color,
    this.size,
  }) : icon = 'assets/cog.svg';

  const HeroIcons.collection({
    this.color,
    this.size,
  }) : icon = 'assets/collection.svg';

  const HeroIcons.colorSwatch({
    this.color,
    this.size,
  }) : icon = 'assets/color-swatch.svg';

  const HeroIcons.creditCard({
    this.color,
    this.size,
  }) : icon = 'assets/credit-card.svg';

  const HeroIcons.cubeTransparent({
    this.color,
    this.size,
  }) : icon = 'assets/cube-transparent.svg';

  const HeroIcons.cube({
    this.color,
    this.size,
  }) : icon = 'assets/cube.svg';

  const HeroIcons.currencyBangladeshi({
    this.color,
    this.size,
  }) : icon = 'assets/currency-bangladeshi.svg';

  const HeroIcons.currencyDollar({
    this.color,
    this.size,
  }) : icon = 'assets/currency-dollar.svg';

  const HeroIcons.currencyEuro({
    this.color,
    this.size,
  }) : icon = 'assets/currency-euro.svg';

  const HeroIcons.currencyPound({
    this.color,
    this.size,
  }) : icon = 'assets/currency-pound.svg';

  const HeroIcons.currencyRupee({
    this.color,
    this.size,
  }) : icon = 'assets/currency-rupee.svg';

  const HeroIcons.currencyYen({
    this.color,
    this.size,
  }) : icon = 'assets/currency-yen.svg';

  const HeroIcons.cursorClick({
    this.color,
    this.size,
  }) : icon = 'assets/cursor-click.svg';

  const HeroIcons.database({
    this.color,
    this.size,
  }) : icon = 'assets/database.svg';

  const HeroIcons.desktopComputer({
    this.color,
    this.size,
  }) : icon = 'assets/desktop-computer.svg';

  const HeroIcons.deviceMobile({
    this.color,
    this.size,
  }) : icon = 'assets/device-mobile.svg';

  const HeroIcons.deviceTablet({
    this.color,
    this.size,
  }) : icon = 'assets/device-tablet.svg';

  const HeroIcons.documentAdd({
    this.color,
    this.size,
  }) : icon = 'assets/document-add.svg';

  const HeroIcons.documentDownload({
    this.color,
    this.size,
  }) : icon = 'assets/document-download.svg';

  const HeroIcons.documentDuplicate({
    this.color,
    this.size,
  }) : icon = 'assets/document-duplicate.svg';

  const HeroIcons.documentRemove({
    this.color,
    this.size,
  }) : icon = 'assets/document-remove.svg';

  const HeroIcons.documentReport({
    this.color,
    this.size,
  }) : icon = 'assets/document-report.svg';

  const HeroIcons.documentSearch({
    this.color,
    this.size,
  }) : icon = 'assets/document-search.svg';

  const HeroIcons.documentText({
    this.color,
    this.size,
  }) : icon = 'assets/document-text.svg';

  const HeroIcons.document({
    this.color,
    this.size,
  }) : icon = 'assets/document.svg';

  const HeroIcons.dotsCircleHorizontal({
    this.color,
    this.size,
  }) : icon = 'assets/dots-circle-horizontal.svg';

  const HeroIcons.dotsHorizontal({
    this.color,
    this.size,
  }) : icon = 'assets/dots-horizontal.svg';

  const HeroIcons.dotsVertical({
    this.color,
    this.size,
  }) : icon = 'assets/dots-vertical.svg';

  const HeroIcons.download({
    this.color,
    this.size,
  }) : icon = 'assets/download.svg';

  const HeroIcons.duplicate({
    this.color,
    this.size,
  }) : icon = 'assets/duplicate.svg';

  const HeroIcons.emojiHappy({
    this.color,
    this.size,
  }) : icon = 'assets/emoji-happy.svg';

  const HeroIcons.emojiSad({
    this.color,
    this.size,
  }) : icon = 'assets/emoji-sad.svg';

  const HeroIcons.exclamationCircle({
    this.color,
    this.size,
  }) : icon = 'assets/exclamation-circle.svg';

  const HeroIcons.exclamation({
    this.color,
    this.size,
  }) : icon = 'assets/exclamation.svg';

  const HeroIcons.externalLink({
    this.color,
    this.size,
  }) : icon = 'assets/external-link.svg';

  const HeroIcons.eyeOff({
    this.color,
    this.size,
  }) : icon = 'assets/eye-off.svg';

  const HeroIcons.eye({
    this.color,
    this.size,
  }) : icon = 'assets/eye.svg';

  const HeroIcons.fastForward({
    this.color,
    this.size,
  }) : icon = 'assets/fast-forward.svg';

  const HeroIcons.film({
    this.color,
    this.size,
  }) : icon = 'assets/film.svg';

  const HeroIcons.filter({
    this.color,
    this.size,
  }) : icon = 'assets/filter.svg';

  const HeroIcons.fingerPrint({
    this.color,
    this.size,
  }) : icon = 'assets/finger-print.svg';

  const HeroIcons.fire({
    this.color,
    this.size,
  }) : icon = 'assets/fire.svg';

  const HeroIcons.flag({
    this.color,
    this.size,
  }) : icon = 'assets/flag.svg';

  const HeroIcons.folderAdd({
    this.color,
    this.size,
  }) : icon = 'assets/folder-add.svg';

  const HeroIcons.folderDownload({
    this.color,
    this.size,
  }) : icon = 'assets/folder-download.svg';

  const HeroIcons.folderOpen({
    this.color,
    this.size,
  }) : icon = 'assets/folder-open.svg';

  const HeroIcons.folderRemove({
    this.color,
    this.size,
  }) : icon = 'assets/folder-remove.svg';

  const HeroIcons.folder({
    this.color,
    this.size,
  }) : icon = 'assets/folder.svg';

  const HeroIcons.gift({
    this.color,
    this.size,
  }) : icon = 'assets/gift.svg';

  const HeroIcons.globeAlt({
    this.color,
    this.size,
  }) : icon = 'assets/globe-alt.svg';

  const HeroIcons.globe({
    this.color,
    this.size,
  }) : icon = 'assets/globe.svg';

  const HeroIcons.hand({
    this.color,
    this.size,
  }) : icon = 'assets/hand.svg';

  const HeroIcons.hashtag({
    this.color,
    this.size,
  }) : icon = 'assets/hashtag.svg';

  const HeroIcons.heart({
    this.color,
    this.size,
  }) : icon = 'assets/heart.svg';

  const HeroIcons.home({
    this.color,
    this.size,
  }) : icon = 'assets/home.svg';

  const HeroIcons.identification({
    this.color,
    this.size,
  }) : icon = 'assets/identification.svg';

  const HeroIcons.inboxIn({
    this.color,
    this.size,
  }) : icon = 'assets/inbox-in.svg';

  const HeroIcons.inbox({
    this.color,
    this.size,
  }) : icon = 'assets/inbox.svg';

  const HeroIcons.informationCircle({
    this.color,
    this.size,
  }) : icon = 'assets/information-circle.svg';

  const HeroIcons.key({
    this.color,
    this.size,
  }) : icon = 'assets/key.svg';

  const HeroIcons.library({
    this.color,
    this.size,
  }) : icon = 'assets/library.svg';

  const HeroIcons.lightBulb({
    this.color,
    this.size,
  }) : icon = 'assets/light-bulb.svg';

  const HeroIcons.lightningBolt({
    this.color,
    this.size,
  }) : icon = 'assets/lightning-bolt.svg';

  const HeroIcons.link({
    this.color,
    this.size,
  }) : icon = 'assets/link.svg';

  const HeroIcons.locationMarker({
    this.color,
    this.size,
  }) : icon = 'assets/location-marker.svg';

  const HeroIcons.lockClosed({
    this.color,
    this.size,
  }) : icon = 'assets/lock-closed.svg';

  const HeroIcons.lockOpen({
    this.color,
    this.size,
  }) : icon = 'assets/lock-open.svg';

  const HeroIcons.login({
    this.color,
    this.size,
  }) : icon = 'assets/login.svg';

  const HeroIcons.logout({
    this.color,
    this.size,
  }) : icon = 'assets/logout.svg';

  const HeroIcons.mailOpen({
    this.color,
    this.size,
  }) : icon = 'assets/mail-open.svg';

  const HeroIcons.mail({
    this.color,
    this.size,
  }) : icon = 'assets/mail.svg';

  const HeroIcons.map({
    this.color,
    this.size,
  }) : icon = 'assets/map.svg';

  const HeroIcons.menuAlt1({
    this.color,
    this.size,
  }) : icon = 'assets/menu-alt-1.svg';

  const HeroIcons.menuAlt2({
    this.color,
    this.size,
  }) : icon = 'assets/menu-alt-2.svg';

  const HeroIcons.menuAlt3({
    this.color,
    this.size,
  }) : icon = 'assets/menu-alt-3.svg';

  const HeroIcons.menuAlt4({
    this.color,
    this.size,
  }) : icon = 'assets/menu-alt-4.svg';

  const HeroIcons.menu({
    this.color,
    this.size,
  }) : icon = 'assets/menu.svg';

  const HeroIcons.microphone({
    this.color,
    this.size,
  }) : icon = 'assets/microphone.svg';

  const HeroIcons.minusCircle({
    this.color,
    this.size,
  }) : icon = 'assets/minus-circle.svg';

  const HeroIcons.minusSm({
    this.color,
    this.size,
  }) : icon = 'assets/minus-sm.svg';

  const HeroIcons.minus({
    this.color,
    this.size,
  }) : icon = 'assets/minus.svg';

  const HeroIcons.moon({
    this.color,
    this.size,
  }) : icon = 'assets/moon.svg';

  const HeroIcons.musicNote({
    this.color,
    this.size,
  }) : icon = 'assets/music-note.svg';

  const HeroIcons.newspaper({
    this.color,
    this.size,
  }) : icon = 'assets/newspaper.svg';

  const HeroIcons.officeBuilding({
    this.color,
    this.size,
  }) : icon = 'assets/office-building.svg';

  const HeroIcons.paperAirplane({
    this.color,
    this.size,
  }) : icon = 'assets/paper-airplane.svg';

  const HeroIcons.paperClip({
    this.color,
    this.size,
  }) : icon = 'assets/paper-clip.svg';

  const HeroIcons.pause({
    this.color,
    this.size,
  }) : icon = 'assets/pause.svg';

  const HeroIcons.pencilAlt({
    this.color,
    this.size,
  }) : icon = 'assets/pencil-alt.svg';

  const HeroIcons.pencil({
    this.color,
    this.size,
  }) : icon = 'assets/pencil.svg';

  const HeroIcons.phoneIncoming({
    this.color,
    this.size,
  }) : icon = 'assets/phone-incoming.svg';

  const HeroIcons.phoneMissedCall({
    this.color,
    this.size,
  }) : icon = 'assets/phone-missed-call.svg';

  const HeroIcons.phoneOutgoing({
    this.color,
    this.size,
  }) : icon = 'assets/phone-outgoing.svg';

  const HeroIcons.phone({
    this.color,
    this.size,
  }) : icon = 'assets/phone.svg';

  const HeroIcons.photograph({
    this.color,
    this.size,
  }) : icon = 'assets/photograph.svg';

  const HeroIcons.play({
    this.color,
    this.size,
  }) : icon = 'assets/play.svg';

  const HeroIcons.plusCircle({
    this.color,
    this.size,
  }) : icon = 'assets/plus-circle.svg';

  const HeroIcons.plusSm({
    this.color,
    this.size,
  }) : icon = 'assets/plus-sm.svg';

  const HeroIcons.plus({
    this.color,
    this.size,
  }) : icon = 'assets/plus.svg';

  const HeroIcons.presentationChartBar({
    this.color,
    this.size,
  }) : icon = 'assets/presentation-chart-bar.svg';

  const HeroIcons.presentationChartLine({
    this.color,
    this.size,
  }) : icon = 'assets/presentation-chart-line.svg';

  const HeroIcons.printer({
    this.color,
    this.size,
  }) : icon = 'assets/printer.svg';

  const HeroIcons.puzzle({
    this.color,
    this.size,
  }) : icon = 'assets/puzzle.svg';

  const HeroIcons.qrcode({
    this.color,
    this.size,
  }) : icon = 'assets/qrcode.svg';

  const HeroIcons.questionMarkCircle({
    this.color,
    this.size,
  }) : icon = 'assets/question-mark-circle.svg';

  const HeroIcons.receiptRefund({
    this.color,
    this.size,
  }) : icon = 'assets/receipt-refund.svg';

  const HeroIcons.receiptTax({
    this.color,
    this.size,
  }) : icon = 'assets/receipt-tax.svg';

  const HeroIcons.refresh({
    this.color,
    this.size,
  }) : icon = 'assets/refresh.svg';

  const HeroIcons.reply({
    this.color,
    this.size,
  }) : icon = 'assets/reply.svg';

  const HeroIcons.rewind({
    this.color,
    this.size,
  }) : icon = 'assets/rewind.svg';

  const HeroIcons.rss({
    this.color,
    this.size,
  }) : icon = 'assets/rss.svg';

  const HeroIcons.saveAs({
    this.color,
    this.size,
  }) : icon = 'assets/save-as.svg';

  const HeroIcons.save({
    this.color,
    this.size,
  }) : icon = 'assets/save.svg';

  const HeroIcons.scale({
    this.color,
    this.size,
  }) : icon = 'assets/scale.svg';

  const HeroIcons.scissors({
    this.color,
    this.size,
  }) : icon = 'assets/scissors.svg';

  const HeroIcons.searchCircle({
    this.color,
    this.size,
  }) : icon = 'assets/search-circle.svg';

  const HeroIcons.search({
    this.color,
    this.size,
  }) : icon = 'assets/search.svg';

  const HeroIcons.selector({
    this.color,
    this.size,
  }) : icon = 'assets/selector.svg';

  const HeroIcons.server({
    this.color,
    this.size,
  }) : icon = 'assets/server.svg';

  const HeroIcons.share({
    this.color,
    this.size,
  }) : icon = 'assets/share.svg';

  const HeroIcons.shieldCheck({
    this.color,
    this.size,
  }) : icon = 'assets/shield-check.svg';

  const HeroIcons.shieldExclamation({
    this.color,
    this.size,
  }) : icon = 'assets/shield-exclamation.svg';

  const HeroIcons.shoppingBag({
    this.color,
    this.size,
  }) : icon = 'assets/shopping-bag.svg';

  const HeroIcons.shoppingCart({
    this.color,
    this.size,
  }) : icon = 'assets/shopping-cart.svg';

  const HeroIcons.sortAscending({
    this.color,
    this.size,
  }) : icon = 'assets/sort-ascending.svg';

  const HeroIcons.sortDescending({
    this.color,
    this.size,
  }) : icon = 'assets/sort-descending.svg';

  const HeroIcons.sparkles({
    this.color,
    this.size,
  }) : icon = 'assets/sparkles.svg';

  const HeroIcons.speakerphone({
    this.color,
    this.size,
  }) : icon = 'assets/speakerphone.svg';

  const HeroIcons.star({
    this.color,
    this.size,
  }) : icon = 'assets/star.svg';

  const HeroIcons.statusOffline({
    this.color,
    this.size,
  }) : icon = 'assets/status-offline.svg';

  const HeroIcons.statusOnline({
    this.color,
    this.size,
  }) : icon = 'assets/status-online.svg';

  const HeroIcons.stop({
    this.color,
    this.size,
  }) : icon = 'assets/stop.svg';

  const HeroIcons.sun({
    this.color,
    this.size,
  }) : icon = 'assets/sun.svg';

  const HeroIcons.support({
    this.color,
    this.size,
  }) : icon = 'assets/support.svg';

  const HeroIcons.switchHorizontal({
    this.color,
    this.size,
  }) : icon = 'assets/switch-horizontal.svg';

  const HeroIcons.switchVertical({
    this.color,
    this.size,
  }) : icon = 'assets/switch-vertical.svg';

  const HeroIcons.table({
    this.color,
    this.size,
  }) : icon = 'assets/table.svg';

  const HeroIcons.tag({
    this.color,
    this.size,
  }) : icon = 'assets/tag.svg';

  const HeroIcons.template({
    this.color,
    this.size,
  }) : icon = 'assets/template.svg';

  const HeroIcons.terminal({
    this.color,
    this.size,
  }) : icon = 'assets/terminal.svg';

  const HeroIcons.thumbDown({
    this.color,
    this.size,
  }) : icon = 'assets/thumb-down.svg';

  const HeroIcons.thumbUp({
    this.color,
    this.size,
  }) : icon = 'assets/thumb-up.svg';

  const HeroIcons.ticket({
    this.color,
    this.size,
  }) : icon = 'assets/ticket.svg';

  const HeroIcons.translate({
    this.color,
    this.size,
  }) : icon = 'assets/translate.svg';

  const HeroIcons.trash({
    this.color,
    this.size,
  }) : icon = 'assets/trash.svg';

  const HeroIcons.trendingDown({
    this.color,
    this.size,
  }) : icon = 'assets/trending-down.svg';

  const HeroIcons.trendingUp({
    this.color,
    this.size,
  }) : icon = 'assets/trending-up.svg';

  const HeroIcons.truck({
    this.color,
    this.size,
  }) : icon = 'assets/truck.svg';

  const HeroIcons.upload({
    this.color,
    this.size,
  }) : icon = 'assets/upload.svg';

  const HeroIcons.userAdd({
    this.color,
    this.size,
  }) : icon = 'assets/user-add.svg';

  const HeroIcons.userCircle({
    this.color,
    this.size,
  }) : icon = 'assets/user-circle.svg';

  const HeroIcons.userGroup({
    this.color,
    this.size,
  }) : icon = 'assets/user-group.svg';

  const HeroIcons.userRemove({
    this.color,
    this.size,
  }) : icon = 'assets/user-remove.svg';

  const HeroIcons.user({
    this.color,
    this.size,
  }) : icon = 'assets/user.svg';

  const HeroIcons.users({
    this.color,
    this.size,
  }) : icon = 'assets/users.svg';

  const HeroIcons.variable({
    this.color,
    this.size,
  }) : icon = 'assets/variable.svg';

  const HeroIcons.videoCamera({
    this.color,
    this.size,
  }) : icon = 'assets/video-camera.svg';

  const HeroIcons.viewBoards({
    this.color,
    this.size,
  }) : icon = 'assets/view-boards.svg';

  const HeroIcons.viewGridAdd({
    this.color,
    this.size,
  }) : icon = 'assets/view-grid-add.svg';

  const HeroIcons.viewGrid({
    this.color,
    this.size,
  }) : icon = 'assets/view-grid.svg';

  const HeroIcons.viewList({
    this.color,
    this.size,
  }) : icon = 'assets/view-list.svg';

  const HeroIcons.volumeOff({
    this.color,
    this.size,
  }) : icon = 'assets/volume-off.svg';

  const HeroIcons.volumeUp({
    this.color,
    this.size,
  }) : icon = 'assets/volume-up.svg';

  const HeroIcons.wifi({
    this.color,
    this.size,
  }) : icon = 'assets/wifi.svg';

  const HeroIcons.xCircle({
    this.color,
    this.size,
  }) : icon = 'assets/x-circle.svg';

  const HeroIcons.x({
    this.color,
    this.size,
  }) : icon = 'assets/x.svg';

  const HeroIcons.zoomIn({
    this.color,
    this.size,
  }) : icon = 'assets/zoom-in.svg';

  const HeroIcons.zoomOut({
    this.color,
    this.size,
  }) : icon = 'assets/zoom-out.svg';

  final String icon;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'packages/heroicons/$icon',
      color: color ?? Theme.of(context).iconTheme.color,
      width: size,
      height: size,
      alignment: Alignment.center,
    );
  }
}
