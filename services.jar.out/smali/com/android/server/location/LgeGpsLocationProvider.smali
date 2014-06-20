.class public Lcom/android/server/location/LgeGpsLocationProvider;
.super Lcom/android/server/location/GpsLocationProvider;
.source "LgeGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;,
        Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsLocationProviderThread;,
        Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;
    }
.end annotation


# static fields
.field private static final ACTION_SET_USE_LOCATION_FOR_SERVICES:Ljava/lang/String; = "com.google.android.gsf.action.SET_USE_LOCATION_FOR_SERVICES"

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final DEBUG:Z = true

.field public static final EXTRA_DISABLE_USE_LOCATION_FOR_SERVICES:Ljava/lang/String; = "disable"

.field private static final GNSS_LOCK:I = 0x1

.field private static final GNSS_LOCK_NOT_SET:I = 0x2

.field private static final GNSS_UNLOCK:I = 0x0

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field public static final GPS_DISABLED:I = 0x1

.field public static final GPS_ENABLED:I = 0x0

.field public static final GPS_FORCED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static INTENT_XTRA_SETTING_CHANGED:Ljava/lang/String; = null

.field private static final LGE_GNSS_CONF_FILE:Ljava/lang/String; = "/data/ext_gps.conf"

.field private static final LGE_GNSS_DCM_CONF_FILE:Ljava/lang/String; = "/data/dcm_gnss.conf"

.field private static final MESSAGE_ASSISTED_GPS_ENABLE:I = 0x2

.field private static final MESSAGE_GPS_PROVIDER_ENABLE:I = 0x1

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final TAG:Ljava/lang/String; = "LgeGpsLocationProvider"

.field private static final XTRA_SHOW_MESSAGE:I = 0xa

.field private static final lge_xtra_download_start_msg:[Ljava/lang/String;

.field private static mLgeSuplServerHost:Ljava/lang/String;

.field private static mSettingGpsEnable:Z

.field private static mVendorName:Ljava/lang/String;

.field private static mXtraDownloadFrequency:I


# instance fields
.field private final LED_GPS_ID:I

.field private isGpsRecorveryMode:Z

.field private mAssistedEnable:I

.field private mExtProperties:Ljava/util/Properties;

.field private mGPSSettingEnabled:Z

.field private mGPSSettingObserver:Landroid/database/ContentObserver;

.field private mGPSSoundPlayer:Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;

.field private mGlonassEnable:I

.field private final mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mLedOn:Z

.field private final mLgeBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private final mLgeContext:Landroid/content/Context;

.field private mLgeHandler:Landroid/os/Handler;

.field private mLgeProperties:Ljava/util/Properties;

.field private mLgeSuplServerPort:I

.field private mLgeSuplType:I

.field private mLgeTlsMode:I

.field private mLocationPrivacyObserver:Landroid/database/ContentObserver;

.field private mNotificationObserver:Landroid/database/ContentObserver;

.field private mPositionModeSetted:Z

.field private mSKTTmapStarted:Z

.field private mSoundOn:Z

.field private final mThread:Ljava/lang/Thread;

.field mToastText:Ljava/lang/CharSequence;

.field private mTracking:Z

.field private mVibratorOn:Z

.field private mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

.field private nm:Landroid/app/NotificationManager;

.field private notification:Landroid/app/Notification;

.field private oldGnssLockMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    const-string v0, ""

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    .line 139
    sput-boolean v2, Lcom/android/server/location/LgeGpsLocationProvider;->mSettingGpsEnable:Z

    .line 147
    const-string v0, "com.lge.location.xtra_setting_changed"

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->INTENT_XTRA_SETTING_CHANGED:Ljava/lang/String;

    .line 151
    const/16 v0, 0x5a0

    sput v0, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "GPS \ubcf4\uc870\ub370\uc774\ud130\uac00 \ub2e4\uc6b4\ub85c\ub4dc \ub429\ub2c8\ub2e4."

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "Downloading assisted GPS data."

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->lge_xtra_download_start_msg:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 9
    .parameter "context"
    .parameter "locationManager"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    .line 112
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->oldGnssLockMode:I

    .line 120
    iput v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    .line 132
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 138
    iput-boolean v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionModeSetted:Z

    .line 140
    iput-boolean v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSKTTmapStarted:Z

    .line 141
    iput-boolean v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSettingEnabled:Z

    .line 145
    iput-boolean v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->isGpsRecorveryMode:Z

    .line 173
    new-instance v3, Landroid/app/Notification;

    const-string v4, "LED_GPS"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->notification:Landroid/app/Notification;

    .line 174
    const/4 v3, 0x7

    iput v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->LED_GPS_ID:I

    .line 177
    iput-boolean v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSoundOn:Z

    .line 178
    iput-boolean v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mVibratorOn:Z

    .line 179
    iput-boolean v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLedOn:Z

    .line 180
    iput-boolean v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mTracking:Z

    .line 184
    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mAssistedEnable:I

    .line 185
    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGlonassEnable:I

    .line 188
    new-instance v3, Lcom/android/server/location/LgeGpsLocationProvider$1;

    invoke-direct {v3, p0}, Lcom/android/server/location/LgeGpsLocationProvider$1;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;)V

    iput-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 251
    new-instance v3, Lcom/android/server/location/LgeGpsLocationProvider$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/location/LgeGpsLocationProvider$2;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mNotificationObserver:Landroid/database/ContentObserver;

    .line 1091
    new-instance v3, Lcom/android/server/location/LgeGpsLocationProvider$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/location/LgeGpsLocationProvider$3;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLocationPrivacyObserver:Landroid/database/ContentObserver;

    .line 1450
    new-instance v3, Lcom/android/server/location/LgeGpsLocationProvider$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/location/LgeGpsLocationProvider$4;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSettingObserver:Landroid/database/ContentObserver;

    .line 261
    const-string v3, "LgeGpsLocationProvider"

    const-string v4, "LgeGpsLocationProvider"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->loadConfig()V

    .line 264
    iput-object p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    .line 265
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 268
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "SKT"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    const-string v3, "com.skt.intent.action.AGPS_ON"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v3, "com.skt.intent.action.AGPS_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v3, "com.skt.intent.action.GPS_TURN_ON"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    const-string v3, "com.skt.intent.action.GPS_TURN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    :cond_0
    const-string v3, "LGU"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 276
    const-string v3, "com.android.lge.action_at_timeout_uplus"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    :cond_1
    const-string v3, "ATT"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 280
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    :cond_2
    const-string v3, "VDF"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "SFR"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 285
    :cond_3
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    :cond_4
    const-string v3, "DCM"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 290
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v3, "com.android.settings.gpsnotification.CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    :try_start_0
    sget-object v3, Lcom/lge/loader/RuntimeLibraryLoader;->VOLUME_MANAGER:Ljava/lang/String;

    invoke-static {v3}, Lcom/lge/loader/RuntimeLibraryLoader;->getCreator(Ljava/lang/String;)Lcom/lge/loader/InstanceCreator;

    move-result-object v1

    .line 296
    .local v1, ic:Lcom/lge/loader/InstanceCreator;
    if-eqz v1, :cond_a

    .line 297
    invoke-virtual {v1}, Lcom/lge/loader/InstanceCreator;->getDefaultInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    iput-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 309
    .end local v1           #ic:Lcom/lge/loader/InstanceCreator;
    :goto_0
    iget-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->nm:Landroid/app/NotificationManager;

    .line 311
    iget-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lge_notification_light_pulse"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mNotificationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v8, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 313
    iget-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emotional_led_gps"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mNotificationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v8, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 316
    iget-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_providers_allowed"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v8, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 320
    :cond_5
    iget-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->native_init()Z

    move-result v3

    if-nez v3, :cond_6

    .line 324
    const-string v3, "LgeGpsLocationProvider"

    const-string v4, "native_init() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_6
    new-instance v3, Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsLocationProviderThread;

    invoke-direct {v3, p0}, Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsLocationProviderThread;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;)V

    iput-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mThread:Ljava/lang/Thread;

    .line 329
    iget-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 332
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 340
    const-string v3, "VZW"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "MPCS"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "CRK"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "SPR"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "USC"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "ACG"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 342
    :cond_7
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->UpdateGnssLockMode()V

    .line 343
    iget-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_providers_allowed"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLocationPrivacyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v8, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 348
    :cond_8
    const-string v3, "DCM"

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 349
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->loadDcmConfig()V

    .line 352
    :cond_9
    return-void

    .line 300
    .restart local v1       #ic:Lcom/lge/loader/InstanceCreator;
    :cond_a
    :try_start_2
    const-string v3, "LgeGpsLocationProvider"

    const-string v4, "cannot get VOLUME_MANAGER from RuntimeLibraryLoader"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 303
    .end local v1           #ic:Lcom/lge/loader/InstanceCreator;
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 305
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 306
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 334
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 335
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method private LM_getGpsState()I
    .locals 4

    .prologue
    .line 1170
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps_device_managerment_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1172
    .local v0, gpsState:I
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LM_getGpsState return GPS State as"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    return v0
.end method

.method private LM_setGpsState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1192
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LM_setGpsState sets GPS State to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    packed-switch p1, :pswitch_data_0

    .line 1243
    :goto_0
    return-void

    .line 1200
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1202
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1204
    invoke-virtual {p0, v3}, Lcom/android/server/location/LgeGpsLocationProvider;->setUseLocationForServices(Z)V

    .line 1206
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps_device_managerment_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1211
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1213
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1215
    invoke-virtual {p0, v3}, Lcom/android/server/location/LgeGpsLocationProvider;->setUseLocationForServices(Z)V

    .line 1217
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps_device_managerment_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1222
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "use_location_for_services"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1223
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network_location_opt_in"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1226
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1228
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1234
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps_device_managerment_enabled"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private UpdateGnssLockMode()V
    .locals 7

    .prologue
    .line 1046
    const/4 v3, 0x1

    .line 1047
    .local v3, ret:Z
    const/4 v0, 0x0

    .line 1050
    .local v0, GnssLockMode:I
    iget-object v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_providers_allowed"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1051
    .local v2, loc_provider:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gps"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 1053
    .local v1, gpsEnable:Z
    if-nez v2, :cond_0

    .line 1055
    const-string v4, "LgeGpsLocationProvider"

    const-string v5, "loc_provider is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :goto_0
    return-void

    .line 1061
    :cond_0
    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    const-string v5, "VZW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1062
    iget-object v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vzw_lbs"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1065
    :cond_1
    const-string v4, "LgeGpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLocationPrivacyObserver. , Loc_Provider ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    const-string v5, "SPR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    .line 1068
    :cond_2
    const/4 v0, 0x1

    .line 1071
    :cond_3
    iget v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->oldGnssLockMode:I

    if-eq v0, v4, :cond_4

    .line 1073
    const/4 v4, 0x1

    if-ne v0, v4, :cond_5

    .line 1074
    const-string v4, "lge.gps.extracmd.raw.setgnss_lock.enable"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "lge.gps.extracmd.raw.setgnss_lock.enable"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    move-result v3

    .line 1084
    :goto_1
    if-nez v3, :cond_4

    .line 1085
    const-string v4, "LgeGpsLocationProvider"

    const-string v5, "lgeGnssLockMode fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_4
    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->oldGnssLockMode:I

    goto :goto_0

    .line 1079
    :cond_5
    const-string v4, "lge.gps.extracmd.raw.setgnss_lock.disable"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "lge.gps.extracmd.raw.setgnss_lock.disable"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    move-result v3

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/location/LgeGpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSKTTmapStarted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/location/LgeGpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSKTTmapStarted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/location/LgeGpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/location/LgeGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->UpdateGnssLockMode()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/server/location/LgeGpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mTracking:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/location/LgeGpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSettingEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/location/LgeGpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSettingEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/LgeGpsLocationProvider;IILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/LgeGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/LgeGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->gpsRilRecovery()V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/android/server/location/LgeGpsLocationProvider;->mSettingGpsEnable:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    sput-boolean p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSettingGpsEnable:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/location/LgeGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->soundVibControl()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/LgeGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->ledControl()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/location/LgeGpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeHandler:Landroid/os/Handler;

    return-object p1
.end method

.method private activateAGPS()Z
    .locals 2

    .prologue
    .line 998
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, "KT LBSExtension activateAGPS()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const/4 v0, 0x1

    return v0
.end method

.method private activateGPS()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 978
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "KT LBSExtension activateGPS()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 980
    .local v0, mSettingGpsEnable:Z
    if-nez v0, :cond_0

    .line 982
    const/4 v1, 0x0

    invoke-direct {p0, v3, v3, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 984
    :cond_0
    return v3
.end method

.method private deactivateAGPS()Z
    .locals 2

    .prologue
    .line 1006
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, "KT LBSExtension deactivateAGPS()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const/4 v0, 0x1

    return v0
.end method

.method private deactivateGPS()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 988
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "KT LBSExtension activateGPS()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 990
    .local v0, mSettingGpsEnable:Z
    if-eqz v0, :cond_0

    .line 992
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 994
    :cond_0
    return v3
.end method

.method private emotionalLedCtrl(Z)V
    .locals 6
    .parameter "isOn"

    .prologue
    const/4 v5, 0x1

    .line 1541
    const-string v2, "LgeGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emotionalLedCtrl, isOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    const/4 v0, 0x0

    .line 1545
    .local v0, bNeedChange:Z
    iget-boolean v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLedOn:Z

    if-nez v2, :cond_1

    if-ne p1, v5, :cond_1

    .line 1546
    const/4 v0, 0x1

    .line 1555
    :goto_0
    if-ne v0, v5, :cond_0

    .line 1557
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.android.intent.action.GNSS_ALERT_LED_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1558
    .local v1, intent:Landroid/content/Intent;
    if-ne p1, v5, :cond_3

    .line 1559
    const-string v2, "com.lge.android.intent.extra.EXTRA_GNSS_LED_STATE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1565
    :goto_1
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1566
    iput-boolean p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLedOn:Z

    .line 1568
    const-string v2, "LgeGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emotionalLedCtrl, change to led status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLedOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 1548
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLedOn:Z

    if-ne v2, v5, :cond_2

    if-nez p1, :cond_2

    .line 1549
    const/4 v0, 0x1

    goto :goto_0

    .line 1552
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1562
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_3
    const-string v2, "com.lge.android.intent.extra.EXTRA_GNSS_LED_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private getListenerPackageName(I)Ljava/lang/String;
    .locals 6
    .parameter "uid"

    .prologue
    .line 427
    const/4 v1, 0x0

    .line 429
    .local v1, packagesName:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 430
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 431
    const-string v3, "LgeGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getListenerPackageName() packages = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  uid = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v1

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LgeGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getListenerPackageName() packages e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getXTRAUserAgent()Ljava/lang/String;
    .locals 25

    .prologue
    .line 1262
    const-string v9, "LG"

    .line 1269
    .local v9, mManufacturer:Ljava/lang/String;
    const-string v18, "Android"

    .line 1270
    .local v18, mUserAgent:Ljava/lang/String;
    const/16 v21, 0xc

    move/from16 v0, v21

    new-array v12, v0, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string v22, "Jan"

    aput-object v22, v12, v21

    const/16 v21, 0x1

    const-string v22, "Feb"

    aput-object v22, v12, v21

    const/16 v21, 0x2

    const-string v22, "Mar"

    aput-object v22, v12, v21

    const/16 v21, 0x3

    const-string v22, "Apr"

    aput-object v22, v12, v21

    const/16 v21, 0x4

    const-string v22, "May"

    aput-object v22, v12, v21

    const/16 v21, 0x5

    const-string v22, "Jun"

    aput-object v22, v12, v21

    const/16 v21, 0x6

    const-string v22, "Jul"

    aput-object v22, v12, v21

    const/16 v21, 0x7

    const-string v22, "Aug"

    aput-object v22, v12, v21

    const/16 v21, 0x8

    const-string v22, "Sep"

    aput-object v22, v12, v21

    const/16 v21, 0x9

    const-string v22, "Oct"

    aput-object v22, v12, v21

    const/16 v21, 0xa

    const-string v22, "Nov"

    aput-object v22, v12, v21

    const/16 v21, 0xb

    const-string v22, "Dec"

    aput-object v22, v12, v21

    .line 1272
    .local v12, mMonth_db:[Ljava/lang/String;
    const-string v21, "SPR"

    sget-object v22, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 1273
    const-string v21, "Android"

    .line 1350
    :goto_0
    return-object v21

    .line 1277
    :cond_0
    const-string v21, "ro.cdma.home.operator.numeric"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1278
    .local v4, mCarrierNumeric:Ljava/lang/String;
    const-string v21, "310120"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 1280
    const-string v3, "Sprint"

    .line 1295
    .local v3, mCarrierName:Ljava/lang/String;
    :goto_1
    const-string v9, "LG"

    .line 1297
    const-string v21, "ro.product.model"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1299
    .local v10, mModelName:Ljava/lang/String;
    const-string v21, "ro.board.platform"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1301
    .local v5, mChipsetName:Ljava/lang/String;
    const-string v13, "LTE-CDMA"

    .line 1303
    .local v13, mOtherTech:Ljava/lang/String;
    const-string v21, "ro.lge.swversion"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1305
    .local v15, mSoftwareVersion:Ljava/lang/String;
    const-string v8, "Android"

    .line 1307
    .local v8, mDeviceClass:Ljava/lang/String;
    const-string v21, "ro.build.date"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1309
    .local v2, mBuildDate:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 1311
    .local v14, mParsedDate:Ljava/lang/StringBuffer;
    new-instance v20, Ljava/util/StringTokenizer;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1312
    .local v20, stok:Ljava/util/StringTokenizer;
    invoke-virtual/range {v20 .. v20}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 1313
    .local v7, mDay:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 1314
    .local v11, mMonth:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 1315
    .local v6, mDate:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 1316
    .local v17, mTime:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    .line 1317
    .local v16, mStandardTime:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    .line 1320
    .local v19, mYear:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1321
    const-string v21, "_"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1323
    const-string v21, "Jan"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    const-string v21, "01"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1336
    :cond_1
    :goto_2
    const-string v21, "_"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1337
    const-string v21, "%02d"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1340
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1348
    const-string v21, "LgeGpsLocationProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "gpsOneXTRA HTTP User-Agent : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v21, v18

    .line 1350
    goto/16 :goto_0

    .line 1282
    .end local v2           #mBuildDate:Ljava/lang/String;
    .end local v3           #mCarrierName:Ljava/lang/String;
    .end local v5           #mChipsetName:Ljava/lang/String;
    .end local v6           #mDate:Ljava/lang/String;
    .end local v7           #mDay:Ljava/lang/String;
    .end local v8           #mDeviceClass:Ljava/lang/String;
    .end local v10           #mModelName:Ljava/lang/String;
    .end local v11           #mMonth:Ljava/lang/String;
    .end local v13           #mOtherTech:Ljava/lang/String;
    .end local v14           #mParsedDate:Ljava/lang/StringBuffer;
    .end local v15           #mSoftwareVersion:Ljava/lang/String;
    .end local v16           #mStandardTime:Ljava/lang/String;
    .end local v17           #mTime:Ljava/lang/String;
    .end local v19           #mYear:Ljava/lang/String;
    .end local v20           #stok:Ljava/util/StringTokenizer;
    :cond_2
    const-string v21, "311490"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1284
    const-string v3, "Virgin"

    .restart local v3       #mCarrierName:Ljava/lang/String;
    goto/16 :goto_1

    .line 1286
    .end local v3           #mCarrierName:Ljava/lang/String;
    :cond_3
    const-string v21, "311870"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1288
    const-string v3, "Boost"

    .restart local v3       #mCarrierName:Ljava/lang/String;
    goto/16 :goto_1

    .line 1292
    .end local v3           #mCarrierName:Ljava/lang/String;
    :cond_4
    const-string v3, "Wholesale"

    .restart local v3       #mCarrierName:Ljava/lang/String;
    goto/16 :goto_1

    .line 1324
    .restart local v2       #mBuildDate:Ljava/lang/String;
    .restart local v5       #mChipsetName:Ljava/lang/String;
    .restart local v6       #mDate:Ljava/lang/String;
    .restart local v7       #mDay:Ljava/lang/String;
    .restart local v8       #mDeviceClass:Ljava/lang/String;
    .restart local v10       #mModelName:Ljava/lang/String;
    .restart local v11       #mMonth:Ljava/lang/String;
    .restart local v13       #mOtherTech:Ljava/lang/String;
    .restart local v14       #mParsedDate:Ljava/lang/StringBuffer;
    .restart local v15       #mSoftwareVersion:Ljava/lang/String;
    .restart local v16       #mStandardTime:Ljava/lang/String;
    .restart local v17       #mTime:Ljava/lang/String;
    .restart local v19       #mYear:Ljava/lang/String;
    .restart local v20       #stok:Ljava/util/StringTokenizer;
    :cond_5
    const-string v21, "Feb"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    const-string v21, "02"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1325
    :cond_6
    const-string v21, "Mar"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    const-string v21, "03"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1326
    :cond_7
    const-string v21, "Apr"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    const-string v21, "04"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1327
    :cond_8
    const-string v21, "May"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    const-string v21, "05"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1328
    :cond_9
    const-string v21, "Jun"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    const-string v21, "06"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1329
    :cond_a
    const-string v21, "Jul"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    const-string v21, "07"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1330
    :cond_b
    const-string v21, "Aug"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    const-string v21, "08"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1331
    :cond_c
    const-string v21, "Sep"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    const-string v21, "09"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1332
    :cond_d
    const-string v21, "Oct"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    const-string v21, "10"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1333
    :cond_e
    const-string v21, "Nov"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    const-string v21, "11"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1334
    :cond_f
    const-string v21, "Dec"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const-string v21, "12"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2
.end method

.method private gpsRilRecovery()V
    .locals 4

    .prologue
    .line 1023
    const-string v1, "1"

    const-string v2, "ril.reset_progress"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1025
    .local v0, isRilReset:Z
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRilReset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    if-eqz v0, :cond_0

    .line 1028
    const-string v1, "20"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "20"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    .line 1030
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->isGpsRecorveryMode:Z

    if-nez v1, :cond_1

    .line 1031
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "CP is resetting. Set isGpsRecorveryMode flag is TRUE ......"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->isGpsRecorveryMode:Z

    .line 1035
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->isGpsRecorveryMode:Z

    if-eqz v1, :cond_2

    .line 1036
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "CP is resetting. Network is available after CP Reset, and then GPS Recorvery Mode Start ...... "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->isGpsRecorveryMode:Z

    .line 1038
    invoke-super {p0}, Lcom/android/server/location/GpsLocationProvider;->enable()V

    .line 1041
    :cond_2
    return-void
.end method

.method private handleGpsXTRAEnable(I)Z
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    .line 1100
    const/4 v0, 0x1

    .line 1102
    .local v0, ret:Z
    if-ne p1, v3, :cond_0

    .line 1103
    const-string v1, "lge.gps.extracmd.raw.xtra.enable"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "lge.gps.extracmd.raw.xtra.enable"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    move-result v0

    .line 1112
    :goto_0
    return v3

    .line 1107
    :cond_0
    const-string v1, "lge.gps.extracmd.raw.xtra.disable"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "lge.gps.extracmd.raw.xtra.disable"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    move-result v0

    goto :goto_0
.end method

.method private isSupportELED()Z
    .locals 2

    .prologue
    .line 1536
    const-string v0, "ro.lge.capp_emotional_led"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private ktHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 9
    .parameter "command"
    .parameter "extras"

    .prologue
    const/4 v8, 0x1

    .line 730
    const/4 v4, 0x0

    .line 732
    .local v4, result:Z
    const-string v5, "activateGPS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 733
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->activateGPS()Z

    move-result v5

    .line 793
    :goto_0
    return v5

    .line 735
    :cond_0
    const-string v5, "deactivateGPS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 736
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->deactivateGPS()Z

    move-result v5

    goto :goto_0

    .line 738
    :cond_1
    const-string v5, "activateAGPS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 739
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->activateAGPS()Z

    move-result v5

    goto :goto_0

    .line 741
    :cond_2
    const-string v5, "deactivateAGPS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 742
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->deactivateAGPS()Z

    move-result v5

    goto :goto_0

    .line 744
    :cond_3
    const-string v5, "setOllehServer"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 745
    if-eqz p2, :cond_5

    .line 746
    const-string v5, "host"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, KTSuplServerHost:Ljava/lang/String;
    const-string v5, "port"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 749
    .local v1, KTSuplServerPort:I
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KT_setOllehServer() -SUPL_HOST: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "SUPL_PORT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    if-eqz v0, :cond_4

    if-lez v1, :cond_4

    .line 753
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 754
    .local v2, LgeExtras:Landroid/os/Bundle;
    const-string v5, "time"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 755
    const-string v5, "delete_aiding_data"

    invoke-super {p0, v5, v2}, Lcom/android/server/location/GpsLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 756
    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 757
    iput v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 758
    invoke-virtual {p0, v8, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 760
    .end local v2           #LgeExtras:Landroid/os/Bundle;
    :cond_4
    const/4 v4, 0x1

    .end local v0           #KTSuplServerHost:Ljava/lang/String;
    .end local v1           #KTSuplServerPort:I
    :cond_5
    :goto_1
    move v5, v4

    .line 793
    goto :goto_0

    .line 763
    :cond_6
    const-string v5, "setNativeServer"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 764
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "KT_setNativeServer()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 767
    .restart local v2       #LgeExtras:Landroid/os/Bundle;
    const-string v5, "time"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 768
    const-string v5, "delete_aiding_data"

    invoke-super {p0, v5, v2}, Lcom/android/server/location/GpsLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 769
    const-string v5, "supl.google.com"

    const/16 v6, 0x1c6c

    invoke-virtual {p0, v8, v5, v6}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 770
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 771
    const/4 v4, 0x1

    .line 773
    goto :goto_1

    .line 774
    .end local v2           #LgeExtras:Landroid/os/Bundle;
    :cond_7
    const-string v5, "setMode"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 775
    if-eqz p2, :cond_5

    .line 776
    const-string v5, "mode"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 778
    .local v3, mode:I
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KT_setMode() mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iput v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 780
    const/4 v4, 0x1

    .line 781
    goto :goto_1

    .line 783
    .end local v3           #mode:I
    :cond_8
    const-string v5, "getMode"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 784
    if-eqz p2, :cond_5

    .line 785
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KT_getMode() mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const-string v5, "mode"

    iget v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 787
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 791
    :cond_9
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ktHandleExtraCmd: unknown command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private ledControl()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1473
    const/4 v0, 0x0

    .line 1474
    .local v0, nLedSettingAll:I
    const/4 v1, 0x0

    .line 1476
    .local v1, nLedSettingGps:I
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->isSupportELED()Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 1477
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lge_notification_light_pulse"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1479
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emotional_led_gps"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1489
    :goto_0
    const-string v2, "LgeGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nLedSettingAll :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    const-string v2, "LgeGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nLedSettingGps :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    if-ne v0, v5, :cond_3

    if-ne v1, v5, :cond_3

    iget-boolean v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mTracking:Z

    if-ne v2, v5, :cond_3

    .line 1493
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->isSupportELED()Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1494
    invoke-direct {p0, v5}, Lcom/android/server/location/LgeGpsLocationProvider;->emotionalLedCtrl(Z)V

    .line 1506
    :cond_0
    :goto_1
    return-void

    .line 1483
    :cond_1
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "front_key_all"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1485
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "front_key_gps"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 1496
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/server/location/LgeGpsLocationProvider;->normalLedCtrl(Z)V

    goto :goto_1

    .line 1499
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-boolean v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mTracking:Z

    if-nez v2, :cond_0

    .line 1500
    :cond_4
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->isSupportELED()Z

    move-result v2

    if-ne v2, v5, :cond_5

    .line 1501
    invoke-direct {p0, v6}, Lcom/android/server/location/LgeGpsLocationProvider;->emotionalLedCtrl(Z)V

    goto :goto_1

    .line 1503
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/server/location/LgeGpsLocationProvider;->normalLedCtrl(Z)V

    goto :goto_1
.end method

.method private lgeDefaultGnssConfig()V
    .locals 4

    .prologue
    .line 676
    const-string v2, "LgeGpsLocationProvider"

    const-string v3, "LGE GNSS Ext Config Default"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/ext_gps.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 680
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 681
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 682
    const-string v2, "LgeGpsLocationProvider"

    const-string v3, "%s/data/ext_gps.conf delete fail !!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    .end local v1           #file:Ljava/io/File;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->loadConfig()V

    .line 688
    return-void

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LgeGpsLocationProvider"

    const-string v3, " LGE GNSS Ext Config Default Fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private lgeHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 11
    .parameter "command"
    .parameter "extras"

    .prologue
    const/4 v3, 0x1

    .line 487
    const/4 v8, 0x1

    .line 488
    .local v8, ret:Z
    const/4 v7, 0x0

    .line 490
    .local v7, init:Z
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LGE Framework Extra Command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-string v0, "lge.gps.extracmd.fmw.setgnss_settinginfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 493
    const-string v0, "supl_type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    .line 494
    iget v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    if-eqz v0, :cond_4

    .line 496
    const-string v0, "pos_mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 498
    const-string v0, "supl_host"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 499
    .local v9, supl_host:Ljava/lang/String;
    const-string v0, "supl_port"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 500
    .local v10, supl_port:I
    if-eqz v9, :cond_0

    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    if-eq v10, v0, :cond_2

    .line 503
    :cond_1
    sput-object v9, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 504
    iput v10, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 506
    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 508
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed supl addr, after host : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", port : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 512
    :cond_2
    const-string v0, "tls_mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    if-eq v0, v1, :cond_3

    .line 514
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed tls mode, before mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const-string v0, "tls_mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    .line 517
    const-string v0, "lge.gps.extracmd.raw.tls.mode#%d"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 518
    .local v6, LgeTlsMode:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    move-result v8

    .line 520
    .end local v6           #LgeTlsMode:Ljava/lang/String;
    :cond_3
    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    sget-object v3, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    iget v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeSaveGnssConfig(IILjava/lang/String;II)V

    .line 539
    .end local v9           #supl_host:Ljava/lang/String;
    .end local v10           #supl_port:I
    :goto_0
    return v8

    .line 524
    :cond_4
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeDefaultGnssConfig()V

    goto :goto_0

    .line 527
    :cond_5
    const-string v0, "lge.gps.extracmd.fmw.getgnss_settinginfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 528
    const-string v0, "supl_type"

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 529
    const-string v0, "supl_host"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v0, "supl_port"

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 531
    const-string v0, "tls_mode"

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 532
    const-string v0, "pos_mode"

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 536
    :cond_6
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid LGE Framework Extra Command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private lgeSaveGnssConfig(IILjava/lang/String;II)V
    .locals 9
    .parameter "PositionMode"
    .parameter "SuplType"
    .parameter "SuplHost"
    .parameter "SuplPort"
    .parameter "TlsMode"

    .prologue
    .line 652
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LGE GNSS Ext Config Save, posMode ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SuplType ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SUPL_HOST ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SUPL_PORT ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", TLS_MODE ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v3, 0x0

    .line 656
    .local v3, writer:Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/ext_gps.conf"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 657
    .local v2, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    .end local v3           #writer:Ljava/io/FileWriter;
    .local v4, writer:Ljava/io/FileWriter;
    :try_start_1
    const-string v5, "%s=%d\n%s=%d\n%s=%s\n%s=%d\n%s=%d\n"

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "POSITION_MODE"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "SUPL_TYPE"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "SUPL_HOST"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object p3, v6, v7

    const/4 v7, 0x6

    const-string v8, "SUPL_PORT"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "TLS_MODE"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, config:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 668
    if-eqz v4, :cond_0

    .line 669
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v3, v4

    .line 673
    .end local v0           #config:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    :cond_1
    :goto_1
    return-void

    .line 665
    :catch_0
    move-exception v1

    .line 666
    .local v1, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "LG GNSS Config File save Fail"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 668
    if-eqz v3, :cond_1

    .line 669
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 670
    :catch_1
    move-exception v1

    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "LG GNSS Config File close Fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 668
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_2

    .line 669
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 668
    :cond_2
    :goto_4
    throw v5

    .line 670
    :catch_2
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "LgeGpsLocationProvider"

    const-string v7, "LG GNSS Config File close Fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v0       #config:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_3
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "LG GNSS Config File close Fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 668
    .end local v0           #config:Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_3

    .line 665
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_2
.end method

.method private lguHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4
    .parameter "command"
    .parameter "extras"

    .prologue
    const/16 v3, 0x5a0

    const/4 v2, 0x1

    .line 797
    const/4 v0, 0x0

    .line 798
    .local v0, result:Z
    const-string v1, "delete_aiding_data"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadDate:J

    .line 801
    invoke-virtual {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->saveXtraDownloadDate()V

    .line 802
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 849
    :goto_1
    return v1

    .line 805
    :cond_0
    const-string v1, "request_xtra_download"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 806
    const-string v1, "force_xtra_injection"

    const/4 v2, 0x0

    invoke-super {p0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 808
    :cond_1
    const-string v1, "call_xtra_setting"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 809
    invoke-virtual {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->broadcastXtraSettings()V

    .line 810
    const/4 v0, 0x1

    goto :goto_0

    .line 812
    :cond_2
    const-string v1, "set_xtra_download_frequency"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 813
    const-string v1, "set_xtra_download_frequency_024"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_3

    .line 814
    sput v3, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    .line 842
    :goto_2
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set_xtra_download_frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/4 v0, 0x1

    goto :goto_0

    .line 816
    :cond_3
    const-string v1, "set_xtra_download_frequency_048"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_4

    .line 817
    const/16 v1, 0xb40

    sput v1, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    goto :goto_2

    .line 819
    :cond_4
    const-string v1, "set_xtra_download_frequency_072"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_5

    .line 820
    const/16 v1, 0x10e0

    sput v1, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    goto :goto_2

    .line 822
    :cond_5
    const-string v1, "set_xtra_download_frequency_096"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_6

    .line 823
    const/16 v1, 0x1680

    sput v1, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    goto :goto_2

    .line 825
    :cond_6
    const-string v1, "set_xtra_download_frequency_120"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_7

    .line 826
    const/16 v1, 0x1c20

    sput v1, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    goto :goto_2

    .line 828
    :cond_7
    const-string v1, "set_xtra_download_frequency_144"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_8

    .line 829
    const/16 v1, 0x21c0

    sput v1, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    goto :goto_2

    .line 831
    :cond_8
    const-string v1, "set_xtra_download_frequency_168"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_9

    .line 832
    const/16 v1, 0x2760

    sput v1, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    goto :goto_2

    .line 835
    :cond_9
    if-eqz p2, :cond_a

    .line 836
    const-string v1, "xtra_download_frequency"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    goto :goto_2

    .line 839
    :cond_a
    sput v3, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    goto :goto_2

    .line 846
    :cond_b
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lguHandleExtraCmd: unknown command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private loadConfig()V
    .locals 12

    .prologue
    .line 544
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    iput-object v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeProperties:Ljava/util/Properties;

    .line 546
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v9, "/etc/gps.conf"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 547
    .local v2, file:Ljava/io/File;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 548
    .local v6, stream:Ljava/io/FileInputStream;
    iget-object v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeProperties:Ljava/util/Properties;

    invoke-virtual {v9, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 549
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 551
    iget-object v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeProperties:Ljava/util/Properties;

    const-string v10, "LGE_GPS_POSITION_MODE"

    const-string v11, "1"

    invoke-virtual {v9, v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 552
    .local v5, posMode:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 554
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 561
    :cond_0
    :goto_0
    :try_start_2
    iget-object v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeProperties:Ljava/util/Properties;

    const-string v10, "SUPL_HOST"

    invoke-virtual {v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 562
    iget-object v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeProperties:Ljava/util/Properties;

    const-string v10, "SUPL_PORT"

    invoke-virtual {v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 563
    .local v3, mLgeSuplPortString:Ljava/lang/String;
    sget-object v9, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v9, :cond_1

    if-eqz v3, :cond_1

    .line 565
    :try_start_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 571
    :cond_1
    :goto_1
    :try_start_4
    iget-object v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeProperties:Ljava/util/Properties;

    const-string v10, "LGE_TLS_MODE"

    const-string v11, "0"

    invoke-virtual {v9, v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    .line 572
    .local v0, TlsModeString:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 574
    :try_start_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 582
    :cond_2
    :goto_2
    :try_start_6
    iget-object v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeProperties:Ljava/util/Properties;

    const-string v10, "VENDOR"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    .line 585
    const-string v9, "LgeGpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "gps.conf - mPositionMode ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", SUPL_HOST ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", SUPL_PORT ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", TLS_MODE ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",VendorName ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 594
    .end local v0           #TlsModeString:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #mLgeSuplPortString:Ljava/lang/String;
    .end local v5           #posMode:Ljava/lang/String;
    .end local v6           #stream:Ljava/io/FileInputStream;
    :goto_3
    :try_start_7
    new-instance v2, Ljava/io/File;

    const-string v9, "/data/ext_gps.conf"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 595
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 597
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    iput-object v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mExtProperties:Ljava/util/Properties;

    .line 598
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 599
    .restart local v6       #stream:Ljava/io/FileInputStream;
    iget-object v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mExtProperties:Ljava/util/Properties;

    invoke-virtual {v9, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 600
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 602
    iget-object v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mExtProperties:Ljava/util/Properties;

    const-string v10, "POSITION_MODE"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move-result-object v5

    .line 603
    .restart local v5       #posMode:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 605
    :try_start_8
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 611
    :cond_3
    :goto_4
    :try_start_9
    iget-object v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mExtProperties:Ljava/util/Properties;

    const-string v10, "SUPL_TYPE"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    move-result-object v7

    .line 612
    .local v7, suplType:Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 614
    :try_start_a
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 620
    :cond_4
    :goto_5
    :try_start_b
    iget-object v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mExtProperties:Ljava/util/Properties;

    const-string v10, "SUPL_HOST"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 621
    .local v4, mLgeSuplServerString:Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 623
    sput-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 626
    :cond_5
    iget-object v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mExtProperties:Ljava/util/Properties;

    const-string v10, "SUPL_PORT"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    move-result-object v3

    .line 627
    .restart local v3       #mLgeSuplPortString:Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 629
    :try_start_c
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 634
    :cond_6
    :goto_6
    :try_start_d
    iget-object v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mExtProperties:Ljava/util/Properties;

    const-string v10, "TLS_MODE"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    move-result-object v8

    .line 635
    .local v8, tlsMode:Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 637
    :try_start_e
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 644
    :cond_7
    :goto_7
    :try_start_f
    const-string v9, "LgeGpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ext_gps.conf - posMode ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", SUPL_HOST ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", SUPL_PORT ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", TLS_MODE ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    .line 649
    .end local v2           #file:Ljava/io/File;
    .end local v3           #mLgeSuplPortString:Ljava/lang/String;
    .end local v4           #mLgeSuplServerString:Ljava/lang/String;
    .end local v5           #posMode:Ljava/lang/String;
    .end local v6           #stream:Ljava/io/FileInputStream;
    .end local v7           #suplType:Ljava/lang/String;
    .end local v8           #tlsMode:Ljava/lang/String;
    :cond_8
    :goto_8
    return-void

    .line 556
    .restart local v2       #file:Ljava/io/File;
    .restart local v5       #posMode:Ljava/lang/String;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 557
    .local v1, e:Ljava/lang/NumberFormatException;
    :try_start_10
    const-string v9, "LgeGpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unable to parse LGE_GPS_POSITION_MODE: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_0

    .line 589
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #file:Ljava/io/File;
    .end local v5           #posMode:Ljava/lang/String;
    .end local v6           #stream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 590
    .local v1, e:Ljava/io/IOException;
    const-string v9, "LgeGpsLocationProvider"

    const-string v10, "Could not open GPS configuration file /etc/gps.conf"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 566
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #mLgeSuplPortString:Ljava/lang/String;
    .restart local v5       #posMode:Ljava/lang/String;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 567
    .local v1, e:Ljava/lang/NumberFormatException;
    :try_start_11
    const-string v9, "LgeGpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unable to parse SUPL_PORT: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 575
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #TlsModeString:Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 576
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v9, "LgeGpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unable to parse LGE_TLS_MODE: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1

    goto/16 :goto_2

    .line 606
    .end local v0           #TlsModeString:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #mLgeSuplPortString:Ljava/lang/String;
    :catch_4
    move-exception v1

    .line 607
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    :try_start_12
    const-string v9, "LgeGpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unable to parse POSITION_MODE: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_4

    .line 646
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #file:Ljava/io/File;
    .end local v5           #posMode:Ljava/lang/String;
    .end local v6           #stream:Ljava/io/FileInputStream;
    :catch_5
    move-exception v1

    .line 647
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "LgeGpsLocationProvider"

    const-string v10, " LG GNSS Ext Config File does not exist"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 615
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #file:Ljava/io/File;
    .restart local v5       #posMode:Ljava/lang/String;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    .restart local v7       #suplType:Ljava/lang/String;
    :catch_6
    move-exception v1

    .line 616
    .local v1, e:Ljava/lang/NumberFormatException;
    :try_start_13
    const-string v9, "LgeGpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unable to parse SUPL_TYPE: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 630
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #mLgeSuplPortString:Ljava/lang/String;
    .restart local v4       #mLgeSuplServerString:Ljava/lang/String;
    :catch_7
    move-exception v1

    .line 631
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v9, "LgeGpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unable to parse SUPL_PORT: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 638
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #tlsMode:Ljava/lang/String;
    :catch_8
    move-exception v1

    .line 639
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v9, "LgeGpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unable to parse TLS_MODE: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5

    goto/16 :goto_7
.end method

.method private loadDcmConfig()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 1771
    const/4 v6, 0x0

    .line 1775
    .local v6, writer:Ljava/io/FileWriter;
    new-instance v1, Ljava/io/File;

    const-string v7, "/data/dcm_gps.conf"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1776
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-ne v7, v8, :cond_0

    .line 1777
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1783
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v7, "/data/dcm_gnss.conf"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1785
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-ne v7, v8, :cond_3

    .line 1786
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1787
    .local v3, instream:Ljava/io/FileInputStream;
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 1788
    .local v4, property:Ljava/util/Properties;
    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1789
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1793
    const-string v7, "LGE_GPS_POSITION_MODE"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 1794
    .local v5, tempStr:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1796
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1800
    :goto_0
    const/4 v5, 0x0

    .line 1803
    :cond_1
    :try_start_2
    const-string v7, "LGE_GPS_MS_ASSISTED_ENABLE"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 1804
    if-eqz v5, :cond_2

    .line 1806
    :try_start_3
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mAssistedEnable:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1810
    :goto_1
    const/4 v5, 0x0

    .line 1813
    :cond_2
    :try_start_4
    const-string v7, "LGE_GLONASS_ENABLE"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v5

    .line 1814
    if-eqz v5, :cond_3

    .line 1816
    :try_start_5
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGlonassEnable:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1826
    .end local v2           #file:Ljava/io/File;
    .end local v3           #instream:Ljava/io/FileInputStream;
    .end local v4           #property:Ljava/util/Properties;
    .end local v5           #tempStr:Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .line 1797
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #instream:Ljava/io/FileInputStream;
    .restart local v4       #property:Ljava/util/Properties;
    .restart local v5       #tempStr:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1798
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_6
    const-string v7, "LgeGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unable to parse LGE_GPS_POSITION_MODE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 1823
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #instream:Ljava/io/FileInputStream;
    .end local v4           #property:Ljava/util/Properties;
    .end local v5           #tempStr:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1824
    .local v0, e:Ljava/io/IOException;
    const-string v7, "LgeGpsLocationProvider"

    const-string v8, "[DCM] File load Fail"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1807
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #instream:Ljava/io/FileInputStream;
    .restart local v4       #property:Ljava/util/Properties;
    .restart local v5       #tempStr:Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 1808
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_7
    const-string v7, "LgeGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unable to parse LGE_GPS_MS_ASSISTED_ENABLE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1817
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v0

    .line 1818
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v7, "LgeGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unable to parse LGE_GLONASS_ENABLE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2
.end method

.method private normalLedCtrl(Z)V
    .locals 7
    .parameter "isOn"

    .prologue
    const/16 v6, 0x3e8

    const/4 v5, 0x7

    const/4 v4, 0x1

    .line 1574
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "emotionalLedCtrl, isOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    const/4 v0, 0x0

    .line 1578
    .local v0, bNeedChange:Z
    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLedOn:Z

    if-nez v1, :cond_1

    if-ne p1, v4, :cond_1

    .line 1579
    const/4 v0, 0x1

    .line 1588
    :goto_0
    if-ne v0, v4, :cond_0

    .line 1589
    if-ne p1, v4, :cond_3

    .line 1590
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->notification:Landroid/app/Notification;

    const/16 v2, 0xff

    iput v2, v1, Landroid/app/Notification;->ledARGB:I

    .line 1591
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->notification:Landroid/app/Notification;

    iput v6, v1, Landroid/app/Notification;->ledOnMS:I

    .line 1592
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->notification:Landroid/app/Notification;

    iput v6, v1, Landroid/app/Notification;->ledOffMS:I

    .line 1593
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->notification:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1594
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->notification:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    const/high16 v3, -0x8000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1595
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->notification:Landroid/app/Notification;

    const/4 v2, 0x0

    iput v2, v1, Landroid/app/Notification;->priority:I

    .line 1596
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->notification:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    const/high16 v3, 0x700

    or-int/2addr v2, v3

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1597
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->nm:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->notification:Landroid/app/Notification;

    invoke-virtual {v1, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1603
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLedOn:Z

    .line 1605
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "emotionalLedCtrl, change to led status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLedOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :cond_0
    return-void

    .line 1581
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLedOn:Z

    if-ne v1, v4, :cond_2

    if-nez p1, :cond_2

    .line 1582
    const/4 v0, 0x1

    goto :goto_0

    .line 1585
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1600
    :cond_3
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->nm:Landroid/app/NotificationManager;

    invoke-virtual {v1, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method private saveDcmConfig(II)Z
    .locals 12
    .parameter "agpsSetting"
    .parameter "glonass"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1829
    const/4 v8, 0x0

    .line 1830
    .local v8, result:Z
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    .line 1836
    .local v7, property:Ljava/util/Properties;
    if-nez v7, :cond_1

    .line 1888
    :cond_0
    :goto_0
    return v10

    .line 1840
    :cond_1
    if-nez p1, :cond_3

    .line 1841
    const-string v0, "0"

    .line 1842
    .local v0, assistedEnable:Ljava/lang/String;
    const-string v6, "0"

    .line 1856
    .local v6, positionMode:Ljava/lang/String;
    :goto_1
    if-nez p2, :cond_5

    .line 1857
    const-string v3, "0"

    .line 1863
    .local v3, glonassEnable:Ljava/lang/String;
    :goto_2
    const/4 v9, 0x0

    .line 1865
    .local v9, writer:Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v10, "/data/dcm_gnss.conf"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1866
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1867
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1869
    :cond_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1870
    .local v4, instream:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v10, 0x1

    invoke-direct {v5, v2, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1871
    .local v5, outstream:Ljava/io/FileOutputStream;
    invoke-virtual {v7, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1872
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1874
    const-string v10, "LGE_GPS_POSITION_MODE"

    invoke-virtual {v7, v10, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1875
    const-string v10, "LGE_GPS_MS_ASSISTED_ENABLE"

    invoke-virtual {v7, v10, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1876
    const-string v10, "LGE_GLONASS_ENABLE"

    invoke-virtual {v7, v10, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1877
    const/4 v10, 0x0

    invoke-virtual {v7, v5, v10}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1879
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 1880
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1882
    const/4 v8, 0x1

    .end local v2           #file:Ljava/io/File;
    .end local v4           #instream:Ljava/io/FileInputStream;
    .end local v5           #outstream:Ljava/io/FileOutputStream;
    :goto_3
    move v10, v8

    .line 1888
    goto :goto_0

    .line 1844
    .end local v0           #assistedEnable:Ljava/lang/String;
    .end local v3           #glonassEnable:Ljava/lang/String;
    .end local v6           #positionMode:Ljava/lang/String;
    .end local v9           #writer:Ljava/io/FileWriter;
    :cond_3
    if-ne p1, v11, :cond_4

    .line 1845
    const-string v0, "0"

    .line 1846
    .restart local v0       #assistedEnable:Ljava/lang/String;
    const-string v6, "1"

    .restart local v6       #positionMode:Ljava/lang/String;
    goto :goto_1

    .line 1848
    .end local v0           #assistedEnable:Ljava/lang/String;
    .end local v6           #positionMode:Ljava/lang/String;
    :cond_4
    const/4 v11, 0x2

    if-ne p1, v11, :cond_0

    .line 1849
    const-string v0, "1"

    .line 1850
    .restart local v0       #assistedEnable:Ljava/lang/String;
    const-string v6, "1"

    .restart local v6       #positionMode:Ljava/lang/String;
    goto :goto_1

    .line 1860
    :cond_5
    const-string v3, "1"

    .restart local v3       #glonassEnable:Ljava/lang/String;
    goto :goto_2

    .line 1884
    .restart local v9       #writer:Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    .line 1885
    .local v1, e:Ljava/io/IOException;
    const-string v10, "LgeGpsLocationProvider"

    const-string v11, "[DCM] File save Fail"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "arg"
    .parameter "obj"

    .prologue
    .line 953
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 954
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 955
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 956
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 957
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 958
    return-void
.end method

.method private sktHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 9
    .parameter "command"
    .parameter "extras"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 691
    const/4 v1, 0x0

    .line 692
    .local v1, result:Z
    if-eqz p2, :cond_1

    .line 693
    const-string v4, "opType"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 694
    .local v3, str_opType:Ljava/lang/String;
    const-string v4, "cmdType"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 696
    .local v2, str_cmdType:Ljava/lang/String;
    const-string v4, "LgeGpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.skt.intent.action.AGPS :cmdType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", opType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const-string v4, "on"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 699
    const-string v4, "msBased"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 702
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 703
    .local v0, LgeExtras:Landroid/os/Bundle;
    const-string v4, "time"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 704
    const-string v4, "delete_aiding_data"

    invoke-super {p0, v4, v0}, Lcom/android/server/location/GpsLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 706
    iput v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 711
    .end local v0           #LgeExtras:Landroid/os/Bundle;
    :cond_0
    :goto_0
    iput-boolean v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionModeSetted:Z

    .line 712
    const/4 v1, 0x1

    .line 726
    .end local v2           #str_cmdType:Ljava/lang/String;
    .end local v3           #str_opType:Ljava/lang/String;
    :cond_1
    :goto_1
    return v1

    .line 708
    .restart local v2       #str_cmdType:Ljava/lang/String;
    .restart local v3       #str_opType:Ljava/lang/String;
    :cond_2
    const-string v4, "msAssisted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 709
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    goto :goto_0

    .line 714
    :cond_3
    const-string v4, "off"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 715
    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 716
    iput-boolean v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionModeSetted:Z

    .line 717
    const/4 v1, 0x1

    goto :goto_1

    .line 721
    :cond_4
    const-string v4, "LgeGpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid sktHandleExtraCmd : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private soundCtrl(Z)V
    .locals 5
    .parameter "isOn"

    .prologue
    const/4 v4, 0x1

    .line 1611
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "soundCtrl, mSoundOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSoundOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const/4 v0, 0x0

    .line 1614
    .local v0, bNeedChange:Z
    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSoundOn:Z

    if-nez v1, :cond_2

    if-ne p1, v4, :cond_2

    .line 1615
    const/4 v0, 0x1

    .line 1624
    :goto_0
    if-ne v0, v4, :cond_1

    .line 1625
    if-ne p1, v4, :cond_4

    .line 1626
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSoundPlayer:Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;

    if-nez v1, :cond_0

    .line 1627
    new-instance v1, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;

    invoke-direct {v1}, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSoundPlayer:Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;

    .line 1629
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSoundPlayer:Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;

    invoke-virtual {v1}, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->play()V

    .line 1630
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "sound start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSoundOn:Z

    .line 1640
    :cond_1
    return-void

    .line 1617
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSoundOn:Z

    if-ne v1, v4, :cond_3

    if-nez p1, :cond_3

    .line 1618
    const/4 v0, 0x1

    goto :goto_0

    .line 1621
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1633
    :cond_4
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSoundPlayer:Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;

    if-eqz v1, :cond_5

    .line 1634
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSoundPlayer:Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;

    invoke-virtual {v1}, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->release()V

    .line 1636
    :cond_5
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "sound stop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private soundVibControl()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1510
    iget-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sound_gps_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1514
    .local v2, nSoundSetting:I
    if-ne v2, v5, :cond_3

    iget-boolean v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mTracking:Z

    if-ne v3, v5, :cond_3

    .line 1515
    iget-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1516
    .local v0, mAudioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 1517
    .local v1, nRingerMode:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 1518
    invoke-direct {p0, v5}, Lcom/android/server/location/LgeGpsLocationProvider;->soundCtrl(Z)V

    .line 1519
    invoke-direct {p0, v5}, Lcom/android/server/location/LgeGpsLocationProvider;->vibratorCtrl(Z)V

    .line 1533
    .end local v0           #mAudioManager:Landroid/media/AudioManager;
    .end local v1           #nRingerMode:I
    :cond_0
    :goto_0
    return-void

    .line 1520
    .restart local v0       #mAudioManager:Landroid/media/AudioManager;
    .restart local v1       #nRingerMode:I
    :cond_1
    if-ne v1, v5, :cond_2

    .line 1521
    invoke-direct {p0, v6}, Lcom/android/server/location/LgeGpsLocationProvider;->soundCtrl(Z)V

    .line 1522
    invoke-direct {p0, v5}, Lcom/android/server/location/LgeGpsLocationProvider;->vibratorCtrl(Z)V

    goto :goto_0

    .line 1525
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/server/location/LgeGpsLocationProvider;->soundCtrl(Z)V

    .line 1526
    invoke-direct {p0, v6}, Lcom/android/server/location/LgeGpsLocationProvider;->vibratorCtrl(Z)V

    goto :goto_0

    .line 1529
    .end local v0           #mAudioManager:Landroid/media/AudioManager;
    .end local v1           #nRingerMode:I
    :cond_3
    if-eqz v2, :cond_4

    iget-boolean v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mTracking:Z

    if-nez v3, :cond_0

    .line 1530
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/server/location/LgeGpsLocationProvider;->soundCtrl(Z)V

    .line 1531
    invoke-direct {p0, v6}, Lcom/android/server/location/LgeGpsLocationProvider;->vibratorCtrl(Z)V

    goto :goto_0
.end method

.method private sprHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 1117
    const/4 v0, 0x1

    .line 1119
    .local v0, ret:Z
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPR Framework Extra Command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const-string v1, "spr.gps.extracmd.fmw.pde_addr_init"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1123
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "pde_addr_init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const-string v1, "lge.gps.extracmd.raw.pde_addr_init"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "lge.gps.extracmd.raw.pde_addr_init"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    move-result v0

    .line 1155
    :goto_0
    if-nez v0, :cond_0

    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "SPR Framework Extra Command Fail!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :cond_0
    return v0

    .line 1126
    :cond_1
    const-string v1, "spr.gps.extracmd.fmw.gpstestprl"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1127
    const-string v1, "gps_test_mode"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1129
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "set gps test prl mode : true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const-string v1, "lge.gps.extracmd.raw.spr_gpstestprl.enable"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "lge.gps.extracmd.raw.spr_gpstestprl.enable"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    move-result v0

    goto :goto_0

    .line 1134
    :cond_2
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "set gps test prl mode : false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const-string v1, "lge.gps.extracmd.raw.spr_gpstestprl.disable"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "lge.gps.extracmd.raw.spr_gpstestprl.disable"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    move-result v0

    goto :goto_0

    .line 1139
    :cond_3
    const-string v1, "spr.gps.extracmd.fmw.dm_set_gps_state"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1140
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "dm_set_gps_state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    const-string v1, "mode"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->LM_setGpsState(I)V

    goto :goto_0

    .line 1143
    :cond_4
    const-string v1, "spr.gps.extracmd.fmw.dm_get_gps_state"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1144
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "dm_get_gps_state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    const-string v1, "mode"

    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->LM_getGpsState()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1149
    :cond_5
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid SPR Framework Extra Command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private vibratorCtrl(Z)V
    .locals 10
    .parameter "isOn"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 1644
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vibratorCtrl, mVibratorOn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSoundOn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isOn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    const/4 v0, 0x0

    .line 1647
    .local v0, bNeedChange:Z
    iget-boolean v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mVibratorOn:Z

    if-nez v5, :cond_0

    if-ne p1, v8, :cond_0

    .line 1648
    const/4 v0, 0x1

    .line 1657
    :goto_0
    if-ne v0, v8, :cond_3

    .line 1658
    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    if-eqz v5, :cond_3

    .line 1659
    if-ne p1, v8, :cond_4

    .line 1660
    new-array v2, v9, [J

    fill-array-data v2, :array_0

    .line 1661
    .local v2, sVibratePattern:[J
    new-array v3, v9, [I

    .line 1662
    .local v3, vibPatternVol:[I
    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    iget-object v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    invoke-interface {v5, v8}, Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;->getVibrateVolume(I)I

    move-result v4

    .line 1664
    .local v4, vibVol:I
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mVibrator vibVol"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v9, :cond_2

    .line 1666
    aput v4, v3, v1

    .line 1665
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1650
    .end local v1           #i:I
    .end local v2           #sVibratePattern:[J
    .end local v3           #vibPatternVol:[I
    .end local v4           #vibVol:I
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mVibratorOn:Z

    if-ne v5, v8, :cond_1

    if-nez p1, :cond_1

    .line 1651
    const/4 v0, 0x1

    goto :goto_0

    .line 1654
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1669
    .restart local v1       #i:I
    .restart local v2       #sVibratePattern:[J
    .restart local v3       #vibPatternVol:[I
    .restart local v4       #vibVol:I
    :cond_2
    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6, v3}, Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;->vibrate([JI[I)V

    .line 1670
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "vib start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    .end local v1           #i:I
    .end local v2           #sVibratePattern:[J
    .end local v3           #vibPatternVol:[I
    .end local v4           #vibVol:I
    :goto_2
    iput-boolean p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mVibratorOn:Z

    .line 1679
    :cond_3
    return-void

    .line 1673
    :cond_4
    iget-object v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    invoke-interface {v5}, Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;->cancel()V

    .line 1674
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "vib stop"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1660
    :array_0
    .array-data 0x8
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public broadcastXtraSettings()V
    .locals 4

    .prologue
    .line 1015
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->INTENT_XTRA_SETTING_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1016
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "xtra_download_date"

    sget-wide v2, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadDate:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1017
    const-string v1, "xtra_download_frequency"

    sget v2, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1018
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1019
    return-void
.end method

.method public dcmHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 12
    .parameter "command"
    .parameter "extras"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 853
    const/4 v3, 0x0

    .line 855
    .local v3, result:Z
    const-string v7, "com.lge.extraCommand.AGPS"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 856
    const-string v7, "LgeGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "agpsTestSetting() : extras = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    if-eqz p2, :cond_1

    .line 860
    const-string v7, "supl_address"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 861
    .local v4, str_supl_address:Ljava/lang/String;
    const-string v7, "supl_Port"

    invoke-virtual {p2, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 863
    .local v5, supl_port:I
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_0

    if-eqz v5, :cond_0

    .line 864
    sput-object v4, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 865
    iput v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 867
    sget-object v7, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {p0, v11, v7, v8}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 868
    const-string v7, "LgeGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set supl address = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_0
    const-string v7, "LgeGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "agpsTestSetting() : mSuplServerHost = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Host Port ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/4 v3, 0x1

    .line 914
    .end local v4           #str_supl_address:Ljava/lang/String;
    .end local v5           #supl_port:I
    :cond_1
    :goto_0
    return v3

    .line 876
    :cond_2
    const-string v7, "com.lge.extraCommand.dcm.agpsSetting"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 878
    const-string v7, "agpsSetting"

    invoke-virtual {p2, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 879
    .local v0, nAgpsSetting:I
    const-string v7, "glonassEnable"

    invoke-virtual {p2, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 881
    .local v1, nGlonassEnable:I
    const-string v7, "LgeGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "agpsSetting() : agpsSetting = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const-string v7, "LgeGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "agpsSetting() : glonassEnable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-direct {p0, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->saveDcmConfig(II)Z

    move-result v3

    .line 886
    const-string v7, "lge.gps.extracmd.raw.glonass.enable_%d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 887
    .local v6, tmpStr:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    .line 889
    const-string v7, "LgeGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 891
    .end local v0           #nAgpsSetting:I
    .end local v1           #nGlonassEnable:I
    .end local v6           #tmpStr:Ljava/lang/String;
    :cond_3
    const-string v7, "com.lge.extraCommand.dcm.getAGPSProtocol"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 892
    const/4 v2, 0x0

    .line 894
    .local v2, nResult:I
    iget v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    if-nez v7, :cond_4

    .line 895
    const/4 v2, 0x0

    .line 906
    :goto_1
    if-eqz p2, :cond_1

    .line 907
    const-string v7, "LgeGpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "agpsSetting() nResult = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  mGlonassEnable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGlonassEnable:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const-string v7, "agpsSetting"

    invoke-virtual {p2, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 909
    const-string v7, "glonassEnable"

    iget v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGlonassEnable:I

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 910
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 898
    :cond_4
    iget v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mAssistedEnable:I

    if-nez v7, :cond_5

    .line 899
    const/4 v2, 0x1

    goto :goto_1

    .line 902
    :cond_5
    const/4 v2, 0x2

    goto :goto_1
.end method

.method public handleEnable(I)V
    .locals 5
    .parameter "provider_message_type"

    .prologue
    const/4 v3, 0x1

    .line 355
    invoke-super {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleEnable(I)V

    .line 357
    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 358
    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 359
    const-string v1, "lge.gps.extracmd.raw.tls.mode#%d"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, LgeTlsMode:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    .line 362
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEnable :native_set_agps_server ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", TlsMode ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .end local v0           #LgeTlsMode:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public lgeSetSlpFromSim(II)V
    .locals 8
    .parameter "mcc_i"
    .parameter "mnc_i"

    .prologue
    const/16 v7, 0x1c6b

    const/16 v6, 0xd6

    const/16 v5, 0xa

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1390
    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    if-ne v1, v3, :cond_0

    .line 1447
    :goto_0
    return-void

    .line 1392
    :cond_0
    if-ne p1, v3, :cond_1

    if-eq p2, v3, :cond_2

    :cond_1
    if-ne p1, v3, :cond_3

    if-ne p2, v4, :cond_3

    .line 1394
    :cond_2
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "Spirent SIM inserted, ignore Slp setting from SIM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1398
    :cond_3
    const-string v1, "VDF"

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1399
    const/16 v1, 0x106

    if-ne p1, v1, :cond_4

    if-eq p2, v4, :cond_e

    :cond_4
    if-ne p1, v6, :cond_5

    if-eq p2, v3, :cond_e

    :cond_5
    if-ne p1, v6, :cond_6

    const/4 v1, 0x6

    if-eq p2, v1, :cond_e

    :cond_6
    const/16 v1, 0xde

    if-ne p1, v1, :cond_7

    if-eq p2, v5, :cond_e

    :cond_7
    const/16 v1, 0xcc

    if-ne p1, v1, :cond_8

    const/4 v1, 0x4

    if-eq p2, v1, :cond_e

    :cond_8
    const/16 v1, 0x10c

    if-ne p1, v1, :cond_9

    if-eq p2, v3, :cond_e

    :cond_9
    const/16 v1, 0xe2

    if-ne p1, v1, :cond_a

    if-eq p2, v3, :cond_e

    :cond_a
    const/16 v1, 0xca

    if-ne p1, v1, :cond_b

    const/4 v1, 0x5

    if-eq p2, v1, :cond_e

    :cond_b
    const/16 v1, 0x1f9

    if-ne p1, v1, :cond_c

    const/4 v1, 0x3

    if-eq p2, v1, :cond_e

    :cond_c
    const/16 v1, 0x114

    if-ne p1, v1, :cond_d

    if-eq p2, v4, :cond_e

    :cond_d
    const/16 v1, 0xea

    if-ne p1, v1, :cond_14

    const/16 v1, 0xf

    if-ne p2, v1, :cond_14

    .line 1411
    :cond_e
    const-string v1, "supl.vodafone.com"

    sput-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1412
    iput v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1413
    iput v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    .line 1416
    const/16 v1, 0x106

    if-ne p1, v1, :cond_f

    if-eq p2, v4, :cond_12

    :cond_f
    if-ne p1, v6, :cond_10

    if-eq p2, v3, :cond_12

    :cond_10
    if-ne p1, v6, :cond_11

    const/4 v1, 0x6

    if-eq p2, v1, :cond_12

    :cond_11
    const/16 v1, 0xde

    if-ne p1, v1, :cond_13

    if-ne p2, v5, :cond_13

    .line 1417
    :cond_12
    const-string v1, "lge.gps.extracmd.raw.set_supl_version"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "lge.gps.extracmd.raw.set_supl_version"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    .line 1442
    :cond_13
    :goto_1
    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1444
    const-string v1, "lge.gps.extracmd.raw.tls.mode#%d"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1445
    .local v0, LgeTlsMode:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    goto/16 :goto_0

    .line 1421
    .end local v0           #LgeTlsMode:Ljava/lang/String;
    :cond_14
    const/16 v1, 0xd0

    if-ne p1, v1, :cond_15

    if-ne p2, v5, :cond_15

    .line 1423
    const-string v1, "supl.google.com"

    sput-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1424
    iput v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1425
    iput v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    goto :goto_1

    .line 1428
    :cond_15
    const-string v1, "supl.google.com"

    sput-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1429
    const/16 v1, 0x1c6c

    iput v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1430
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    goto :goto_1

    .line 1433
    :cond_16
    const-string v1, "SFR"

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1434
    const/16 v1, 0xd0

    if-ne p1, v1, :cond_13

    if-ne p2, v5, :cond_13

    .line 1436
    const-string v1, "supl.google.com"

    sput-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1437
    iput v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1438
    iput v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    goto :goto_1
.end method

.method public lgeUpdateSimState(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 1355
    const-string v5, "ss"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1357
    .local v4, stateExtra:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1359
    .local v3, numeric:Ljava/lang/String;
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lgeUpdateSimState : state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    const-string v5, "LOADED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1365
    const-string v5, "gsm.sim.operator.numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1366
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " getMccCode numeric "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_0

    .line 1370
    const/4 v5, 0x0

    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1371
    .local v1, mcc_i:I
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1372
    .local v2, mnc_i:I
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- getMccCode mcc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mnc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeSetSlpFromSim(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1385
    .end local v1           #mcc_i:I
    .end local v2           #mnc_i:I
    :goto_0
    return-void

    .line 1375
    :catch_0
    move-exception v0

    .line 1376
    .local v0, ex:Ljava/lang/Exception;
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "Exception parsing mcc/mnc: "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1380
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "- getMccCode numeric is null or length is less than 4\n"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1384
    :cond_1
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "ICC records Load is not complete"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 456
    const/4 v0, 0x0

    .line 458
    .local v0, result:Z
    const-string v1, "lge.gps.extracmd.fmw"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 459
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    .line 480
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 481
    invoke-super {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    .line 483
    .end local v0           #result:Z
    :cond_1
    return v0

    .line 461
    .restart local v0       #result:Z
    :cond_2
    const-string v1, "lge.gps.extracmd.raw"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 462
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_lge_gnss_command([BI)Z

    move-result v0

    goto :goto_0

    .line 464
    :cond_3
    const-string v1, "SKT"

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 465
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->sktHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 467
    :cond_4
    const-string v1, "KT"

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 468
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->ktHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 470
    :cond_5
    const-string v1, "LGU"

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 471
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->lguHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 473
    :cond_6
    const-string v1, "DCM"

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 474
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->dcmHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 476
    :cond_7
    const-string v1, "SPR"

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->sprHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 7
    .parameter "request"
    .parameter "source"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 370
    const-string v2, "LgeGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableLocationTracking - mPositionMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-boolean v2, p1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v2, :cond_6

    .line 373
    const-string v2, "DCM"

    sget-object v3, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 375
    iput-boolean v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mTracking:Z

    .line 376
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->ledControl()V

    .line 377
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->soundVibControl()V

    .line 381
    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mAssistedEnable:I

    if-ne v2, v5, :cond_2

    .line 383
    iget-object v2, p1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 386
    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 388
    iget-object v2, p1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationRequest;

    .line 389
    .local v1, lr:Landroid/location/LocationRequest;
    invoke-virtual {v1}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 390
    iput v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    goto :goto_0

    .line 395
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #lr:Landroid/location/LocationRequest;
    :cond_1
    const-string v2, "LgeGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Change mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 423
    return-void

    .line 398
    :cond_3
    const-string v2, "KDDI"

    sget-object v3, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 400
    iget-object v2, p1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 403
    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 405
    iget-object v2, p1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationRequest;

    .line 406
    .restart local v1       #lr:Landroid/location/LocationRequest;
    invoke-virtual {v1}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v2

    if-eq v2, v5, :cond_4

    .line 407
    iput v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    goto :goto_2

    .line 411
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #lr:Landroid/location/LocationRequest;
    :cond_5
    const-string v2, "LgeGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Change mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 416
    :cond_6
    const-string v2, "DCM"

    sget-object v3, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 417
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mTracking:Z

    .line 418
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->ledControl()V

    .line 419
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->soundVibControl()V

    goto :goto_1
.end method

.method public setUseLocationForServices(Z)V
    .locals 4
    .parameter "use"

    .prologue
    .line 1247
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gsf.action.SET_USE_LOCATION_FOR_SERVICES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1248
    .local v1, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1249
    const-string v3, "disable"

    if-nez p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1251
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1255
    :goto_1
    return-void

    .line 1249
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1252
    :catch_0
    move-exception v0

    .line 1253
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "DeviceManager"

    const-string v3, "Problem while starting GSF location activity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
