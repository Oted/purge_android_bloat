#!/bin/bash

# Apps to Remove
apps=(
  "com.amazon.appmanager"
  "com.android.browser"
  "com.android.chrome"
  "com.android.thememanager"
  "com.android.wallpaper.livepicker"
  "com.facebook.services"
  "com.facebook.system"
  "com.facebook.appmanager"
  "com.google.android.apps.docs"
  "com.google.android.apps.photos"
  "com.google.android.apps.tachyon"
  "com.google.android.feedback"
  "com.google.android.googlequicksearchbox"
  "com.google.android.marvin.talkback"
  "com.google.android.music"
  "com.google.android.syncadapters.calendar"
  "com.google.android.syncadapters.contacts"
  "com.google.android.talk"
  "com.google.android.tts"
  "com.google.android.videos"
  "com.google.android.youtube"
  "com.mfashiongallery.emag"
  "com.mi.android.globalpersonalassistant"
  "com.mi.dlabs.vr"
  "com.mi.globalTrendNews"
  "com.mi.global.bbs"
  "com.mi.global.shop"
  "com.mi.webkit.core"
  "com.micredit.in"
  "com.milink.service"
  "com.mipay.wallet.id"
  "com.mipay.wallet.in"
  "com.miui.analytics"
  "com.miui.android.fashiongallery"
  "com.miui.bugreport"
  "com.miui.cloudbackup"
  "com.miui.cloudservice"
  "com.miui.cloudservice.sysbase"
  "com.miui.micloudsync"
  "com.miui.hybrid"
  "com.miui.hybrid.accessory"
  "com.miui.klo.bugreport"
  "com.miui.miservice"
  "com.miui.miwallpaper"
  "com.miui.msa.global"
  "com.miui.player"
  "com.miui.providers.weather"
  "com.miui.screenrecorder"
  "com.miui.translationservice"
  "com.miui.translation.kingsoft"
  "com.miui.translation.xmcloud"
  "com.miui.translation.youdao"
  "com.miui.touchassistant"
  "com.miui.userguide"
  "com.miui.videoplayer"
  "com.miui.virtualsim"
  "com.miui.weather2"
  "com.miui.yellowpage"
  "com.netflix.partner.activation"
  "com.swiftkey.languageprovider"
  "com.swiftkey.swiftkeyconfigurator"
  "com.xiaomi.account"
  "com.xiaomi.discover"
  "com.xiaomi.glgm"
  "com.xiaomi.joyose"
  "com.xiaomi.location.fused"
  "com.xiaomi.micloud.sdk"
  "com.xiaomi.midrop"
  "com.xiaomi.mipicks"
  "com.xiaomi.miplay_client"
  "com.xiaomi.mirecycle"
  "com.xiaomi.oversea.ecom"
  "com.xiaomi.payment"
  "com.xiaomi.providers.appindex"
  "com.xiaomi.xmsf"
  "com.xiaomi.market"
  "com.mi.globalbrowser"
  "com.xiaomi.mipicks"
  "com.miui.analytics"
  "com.miui.msa.global"
  "com.xiaomi.payment"
  "com.mipay.wallet.in"
  "com.tencent.soter.soterserver"
  "com.xiaomi.joyose"
  "com.facebook.katana"
  "com.facebook.services"
  "com.facebook.system"
  "com.facebook.appmanager"
  "com.zhiliaoapp.musically"
  "com.alibaba.aliexpresshd"
  "com.google.android.apps.subscriptions.red"
  "com.my.games.vendorapp"
)

# LIB
# ---
function unbloat() {
    for app in ${apps[@]}; do
        adb shell pm uninstall "$app"
        adb shell pm uninstall --user 0 "$app"
        adb shell pm disable-user "$app"
    done
}

# MAIN
unbloat;
