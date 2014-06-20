.class public Lcom/lge/camera/util/AppControlUtil;
.super Ljava/lang/Object;
.source "AppControlUtil.java"


# static fields
.field private static final DEFAULT_PACKAGE:Ljava/lang/String; = "com.lge.QuickClip"

.field public static ENABLE_QUICK_CLIP_KEY:Z = false

.field private static final HOTKEY_SHORT_PACKAGE:Ljava/lang/String; = "hotkey_short_package"

.field public static final QCLIP_HOTKEY_FLAG_KEYDOWN_SHUTTER:I = 0x10

.field public static final QCLIP_HOTKEY_FLAG_KEYUP_QMEMO:I = 0x200

.field public static final QCLIP_HOTKEY_FLAG_NONE:I = 0x0

.field public static final QCLIP_HOTKEY_FLAG_NOT_SUPPORT:I = 0x1

.field public static final QCLIP_HOTKEY_FLAG_UNKNOWN:I = -0x1

.field public static final QUICKCLIP_IGNORE_MODE:I = 0x1

.field public static final QUICKCLIP_NORMAL_MODE:I = 0x0

.field public static final QUICKCLIP_RUNTYPE_CLEANVIEW:I = 0x1

.field public static final QUICKCLIP_RUNTYPE_NONE:I = 0x0

.field public static final QUICKCLIP_RUNTYPE_RETURN_TO_QUICKMEMO:I = 0x4

.field public static final QUICKCLIP_RUNTYPE_START:I = 0x2

.field public static final QUICKCLIP_RUNTYPE_STOP:I = 0x3

.field private static final SYSTEM_UI_FLAG_LAYOUT_FULL_AND_HIDE_NAVI:I = 0x700

.field private static final SYSTEM_UI_FLAG_NO_ROTATION:I = 0x700

.field private static final SYSTEM_UI_FLAG_NO_TRANSPARENT:I = 0x720

.field private static final SYSTEM_UI_FLAG_TRANSPARENT:I = 0x730

.field public static final TOP_CLASS:I = 0x0

.field public static final TOP_PACKAGE:I = 0x1

.field private static mOldNavigationBarRotation:I

.field private static mQClipHotkeyFlag:I

.field private static mQuickCamCaseState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    sput-boolean v1, Lcom/lge/camera/util/AppControlUtil;->ENABLE_QUICK_CLIP_KEY:Z

    .line 213
    const/4 v0, -0x1

    sput v0, Lcom/lge/camera/util/AppControlUtil;->mQClipHotkeyFlag:I

    .line 330
    const/4 v0, 0x2

    sput v0, Lcom/lge/camera/util/AppControlUtil;->mQuickCamCaseState:I

    .line 409
    sput v1, Lcom/lge/camera/util/AppControlUtil;->mOldNavigationBarRotation:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BlockAlarmInRecording(Landroid/app/Activity;I)V
    .locals 3
    .parameter "activity"
    .parameter "appMode"

    .prologue
    .line 264
    if-eqz p0, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 265
    const-string v1, "CameraApp"

    const-string v2, "BlockAlarmInRecording"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 267
    .local v0, recording_start:Landroid/content/Intent;
    const-string v1, "packageName"

    const-string v2, "com.lge.camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v1, "voice_video_record_playing"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 271
    .end local v0           #recording_start:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static StopVoiceRec(Landroid/app/Activity;I)V
    .locals 3
    .parameter "activity"
    .parameter "appMode"

    .prologue
    .line 287
    if-eqz p0, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 288
    const-string v1, "CameraApp"

    const-string v2, "StopVoiceRec"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 290
    .local v0, StopVoiceRec:Landroid/content/Intent;
    const-string v1, "Stop_Voice_Rec"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 293
    .end local v0           #StopVoiceRec:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static UnblockAlarmInRecording(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 277
    if-eqz p0, :cond_0

    .line 278
    const-string v1, "CameraApp"

    const-string v2, "UnblockAlarmInRecording"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 280
    .local v0, recording_finish:Landroid/content/Intent;
    const-string v1, "packageName"

    const-string v2, "com.lge.camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v1, "voice_video_record_finish"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    .end local v0           #recording_finish:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static checkGalleryEnabledOnGuestMode(Landroid/content/ContentResolver;)Z
    .locals 15
    .parameter "contentResolver"

    .prologue
    const/4 v14, 0x0

    const/4 v2, 0x0

    .line 471
    const-string v6, "com.lge.launcher2.settings"

    .line 472
    .local v6, authority:Ljava/lang/String;
    const-string v13, "favorites"

    .line 473
    .local v13, table_favorite:Ljava/lang/String;
    const-string v12, "notify"

    .line 474
    .local v12, parameter_notify:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "=true"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 476
    .local v1, content_uri:Landroid/net/Uri;
    const-string v3, "container=-103"

    .local v3, selection:Ljava/lang/String;
    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    .line 477
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 481
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "intent"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 483
    .local v11, intentIndex:I
    const/4 v9, 0x0

    .line 484
    .local v9, intent:Landroid/content/Intent;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    :try_start_1
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 488
    .local v10, intentDescription:Ljava/lang/String;
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v10, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    .line 489
    const-string v0, "com.android.gallery3d"

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    const/4 v0, 0x1

    .line 502
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 504
    .end local v10           #intentDescription:Ljava/lang/String;
    :goto_1
    return v0

    .line 493
    .restart local v10       #intentDescription:Ljava/lang/String;
    :catch_0
    move-exception v8

    .local v8, e:Ljava/net/URISyntaxException;
    goto :goto_0

    .line 496
    .end local v8           #e:Ljava/net/URISyntaxException;
    .end local v10           #intentDescription:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 497
    .local v8, e:Ljava/lang/Exception;
    :try_start_3
    const-string v0, "CameraApp"

    const-string v2, "Desktop items loading interrupted:"

    invoke-static {v0, v2, v8}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 499
    .end local v8           #e:Ljava/lang/Exception;
    :cond_0
    const-string v0, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 502
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #intentIndex:I
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v9       #intent:Landroid/content/Intent;
    .restart local v11       #intentIndex:I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v14

    .line 504
    goto :goto_1
.end method

.method public static checkNavigationBarTransparent(Landroid/content/Context;[I)Z
    .locals 8
    .parameter "mContext"
    .parameter "previewSizeOnScreen"

    .prologue
    const/4 v6, 0x0

    .line 445
    const/4 v0, 0x0

    .line 447
    .local v0, isTransparent:Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 448
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 449
    .local v3, outMetrics:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 450
    .local v5, wm:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 452
    const v7, 0x7f0a0008

    invoke-static {p0, v7}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 453
    .local v1, lcdWidth:I
    const v7, 0x7f0a000a

    invoke-static {p0, v7}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    .line 454
    .local v4, previewWidth:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v2, v1, v7

    .line 456
    .local v2, naviBarWidth:I
    :goto_0
    aget v7, p1, v6

    if-le v7, v4, :cond_2

    aget v7, p1, v6

    sub-int v7, v1, v7

    div-int/lit8 v7, v7, 0x2

    if-ge v7, v2, :cond_2

    const/4 v0, 0x1

    .line 459
    .end local v1           #lcdWidth:I
    .end local v2           #naviBarWidth:I
    .end local v3           #outMetrics:Landroid/util/DisplayMetrics;
    .end local v4           #previewWidth:I
    .end local v5           #wm:Landroid/view/WindowManager;
    :cond_0
    :goto_1
    return v0

    .line 454
    .restart local v1       #lcdWidth:I
    .restart local v3       #outMetrics:Landroid/util/DisplayMetrics;
    .restart local v4       #previewWidth:I
    .restart local v5       #wm:Landroid/view/WindowManager;
    :cond_1
    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v2, v1, v7

    goto :goto_0

    .restart local v2       #naviBarWidth:I
    :cond_2
    move v0, v6

    .line 456
    goto :goto_1
.end method

.method public static getEnableSafetyCare(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, remoteCareEnabled:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.lge.safetycare.remotecare.enabled"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, strValue:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 300
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEnableSafetyCare="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return v0
.end method

.method private static getIsTopOverlay(Landroid/app/Activity;)Z
    .locals 8
    .parameter "activity"

    .prologue
    .line 173
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 174
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v4, 0x0

    .line 176
    .local v4, retval:Z
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 177
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "isThereTopOverlay"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 178
    .local v3, m:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 183
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #m:Ljava/lang/reflect/Method;
    :goto_0
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getIsTopOverlay() retval = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return v4

    .line 179
    :catch_0
    move-exception v2

    .line 180
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getIsTopOverlayForQSlide2(Landroid/app/Activity;)Z
    .locals 8
    .parameter "activity"

    .prologue
    .line 122
    const/4 v3, 0x0

    .line 123
    .local v3, retval:Z
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 124
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v5, 0x64

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 126
    .local v4, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 128
    .local v1, current:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FloatingWindowService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.lge.QuickClip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    const/4 v3, 0x1

    .line 136
    .end local v1           #current:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getIsTopOverlayForQSlide2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return v3
.end method

.method private static getOverlayActivityName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 9
    .parameter "activity"

    .prologue
    .line 188
    const/4 v5, 0x0

    .line 189
    .local v5, retval:Ljava/lang/String;
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 191
    .local v1, am:Landroid/app/ActivityManager;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 192
    .local v2, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v6, "getOverlayActivityName"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 193
    .local v4, m:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v2           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #m:Ljava/lang/reflect/Method;
    :goto_0
    if-eqz v5, :cond_0

    .line 199
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOverlayActivityName() retval = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_0
    return-object v5

    .line 194
    :catch_0
    move-exception v3

    .line 195
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getQClipHotkeyFlag(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 216
    sget v0, Lcom/lge/camera/util/AppControlUtil;->mQClipHotkeyFlag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 217
    invoke-static {p0}, Lcom/lge/camera/util/AppControlUtil;->setQClipHotkeyFlag(Landroid/content/Context;)I

    .line 220
    :cond_0
    sget v0, Lcom/lge/camera/util/AppControlUtil;->mQClipHotkeyFlag:I

    return v0
.end method

.method public static getQuickCamCaseState()I
    .locals 1

    .prologue
    .line 332
    sget v0, Lcom/lge/camera/util/AppControlUtil;->mQuickCamCaseState:I

    return v0
.end method

.method public static getQuickClipRunType(Landroid/app/Activity;)I
    .locals 6
    .parameter "activity"

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, nRet:I
    if-eqz p0, :cond_1

    .line 82
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/lge/camera/util/AppControlUtil;->getTopActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, topPackageName:Ljava/lang/String;
    const-string v3, "com.lge.camera"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 84
    sget-boolean v3, Lcom/lge/camera/util/AppControlUtil;->ENABLE_QUICK_CLIP_KEY:Z

    if-eqz v3, :cond_1

    .line 85
    invoke-static {p0}, Lcom/lge/camera/util/AppControlUtil;->getIsTopOverlayForQSlide2(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/lge/camera/util/AppControlUtil;->getIsTopOverlay(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "com.lge.QuickClip.QuickClipActivity"

    invoke-static {p0}, Lcom/lge/camera/util/AppControlUtil;->getOverlayActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    :cond_0
    const/4 v0, 0x4

    .line 117
    .end local v2           #topPackageName:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ENABLE_QUICK_CLIP_KEY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/lge/camera/util/AppControlUtil;->ENABLE_QUICK_CLIP_KEY:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " QUICKCLIP_RUNTYPE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return v0

    .line 90
    .restart local v2       #topPackageName:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/lge/camera/util/AppControlUtil;->getTopActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, topClassName:Ljava/lang/String;
    const-string v3, "com.lge.camera.CameraApp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.lge.camera.Camcorder"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.lge.camera.CameraAppLauncher"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.lge.camera.SecureCameraApp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.lge.camera.QuickWindowCameraApp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 98
    :cond_3
    const/4 v0, 0x1

    .line 103
    :goto_1
    if-eqz v1, :cond_1

    .line 104
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "topClassName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_4
    const/4 v0, 0x2

    goto :goto_1

    .line 111
    .end local v1           #topClassName:Ljava/lang/String;
    :cond_5
    if-eqz v2, :cond_1

    .line 112
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "topPackageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static getTopActivity(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 142
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 143
    .local v3, manager:Landroid/app/IActivityManager;
    const/4 v2, 0x0

    .line 146
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-interface {v3, v4, v5, v6}, Landroid/app/IActivityManager;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 151
    :goto_0
    if-nez v2, :cond_0

    .line 152
    const-string v4, ""

    .line 169
    :goto_1
    return-object v4

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "CameraApp"

    const-string v5, "getTopActivity : "

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 155
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 157
    .local v1, info:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v4, :cond_2

    .line 158
    :cond_1
    const-string v4, ""

    goto :goto_1

    .line 161
    :cond_2
    if-ne p1, v8, :cond_3

    .line 162
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@getTopAppName getPackageName() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 167
    :cond_3
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@getTopAppName getClassName() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static isAlreadySetSystemUi(Landroid/app/Activity;Z)Z
    .locals 3
    .parameter "activity"
    .parameter "isTransparent"

    .prologue
    const/4 v1, 0x0

    .line 373
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSamsungModel()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isReferenceModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    :cond_0
    :goto_0
    return v1

    .line 377
    :cond_1
    if-eqz p1, :cond_2

    const/16 v0, 0x730

    .line 378
    .local v0, flag:I
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 379
    const-string v1, "CameraApp"

    const-string v2, "already set"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const/4 v1, 0x1

    goto :goto_0

    .line 377
    .end local v0           #flag:I
    :cond_2
    const/16 v0, 0x720

    goto :goto_1
.end method

.method public static isGuestMode()Z
    .locals 2

    .prologue
    .line 463
    const-string v0, "kids"

    const-string v1, "service.plushome.currenthome"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    const/4 v0, 0x1

    .line 466
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQuickCamCoverIntent(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, fromQuickCamCase:Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 325
    const-string v1, "com.lge.camera.action.CAMERA_START_FROM_COVER"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 327
    :cond_0
    return v0
.end method

.method public static isSecureCameraIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, secureCamera:Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 307
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    const/4 v0, 0x1

    .line 319
    :cond_0
    :goto_0
    return v0

    .line 309
    :cond_1
    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    const/4 v0, 0x1

    goto :goto_0

    .line 311
    :cond_2
    const-string v1, "secureCamera"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 312
    const/4 v0, 0x1

    goto :goto_0

    .line 313
    :cond_3
    const-string v1, "com.lge.camera.action.CAMERA_START_FROM_COVER"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 314
    const/4 v0, 0x1

    goto :goto_0

    .line 316
    :cond_4
    const-string v1, "secure_camera"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static resetQClipHotkeyFlag()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, -0x1

    sput v0, Lcom/lge/camera/util/AppControlUtil;->mQClipHotkeyFlag:I

    .line 249
    return-void
.end method

.method public static restoreRotationNavigationBar(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 366
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSamsungModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isReferenceModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "set rotation=1792"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public static rotateNavigationBarIcon(Landroid/app/Activity;II)V
    .locals 7
    .parameter "activity"
    .parameter "degree"
    .parameter "duration"

    .prologue
    const/16 v6, 0xb4

    const/16 v5, 0x5a

    const/16 v4, 0x10e

    .line 412
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rotate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lge/camera/util/AppControlUtil;->mOldNavigationBarRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    sget v1, Lcom/lge/camera/util/AppControlUtil;->mOldNavigationBarRotation:I

    if-ge v1, p1, :cond_1

    const/4 v0, 0x1

    .line 414
    .local v0, direction:I
    :goto_0
    sget v1, Lcom/lge/camera/util/AppControlUtil;->mOldNavigationBarRotation:I

    if-ne v1, v4, :cond_2

    if-nez p1, :cond_2

    .line 415
    const/4 v0, 0x1

    .line 429
    :cond_0
    :goto_1
    invoke-static {p1}, Lcom/lge/camera/util/Util;->convertDegreeToSurfaceRotation(I)I

    move-result v1

    invoke-static {p0, v1, v0, p2}, Lcom/lge/camera/util/AppControlUtil;->setNavigationBarRotation(Landroid/app/Activity;III)V

    .line 430
    sput p1, Lcom/lge/camera/util/AppControlUtil;->mOldNavigationBarRotation:I

    .line 431
    return-void

    .line 413
    .end local v0           #direction:I
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 416
    .restart local v0       #direction:I
    :cond_2
    sget v1, Lcom/lge/camera/util/AppControlUtil;->mOldNavigationBarRotation:I

    if-nez v1, :cond_3

    if-ne p1, v4, :cond_3

    .line 417
    const/4 v0, 0x2

    goto :goto_1

    .line 418
    :cond_3
    sget v1, Lcom/lge/camera/util/AppControlUtil;->mOldNavigationBarRotation:I

    if-ne v1, v6, :cond_4

    if-nez p1, :cond_4

    .line 419
    const/4 v0, 0x1

    .line 420
    mul-int/lit8 p2, p2, 0x2

    goto :goto_1

    .line 421
    :cond_4
    sget v1, Lcom/lge/camera/util/AppControlUtil;->mOldNavigationBarRotation:I

    if-nez v1, :cond_5

    if-ne p1, v6, :cond_5

    .line 422
    mul-int/lit8 p2, p2, 0x2

    goto :goto_1

    .line 423
    :cond_5
    sget v1, Lcom/lge/camera/util/AppControlUtil;->mOldNavigationBarRotation:I

    if-ne v1, v5, :cond_6

    if-ne p1, v4, :cond_6

    .line 424
    mul-int/lit8 p2, p2, 0x2

    goto :goto_1

    .line 425
    :cond_6
    sget v1, Lcom/lge/camera/util/AppControlUtil;->mOldNavigationBarRotation:I

    if-ne v1, v4, :cond_0

    if-ne p1, v5, :cond_0

    .line 426
    const/4 v0, 0x1

    .line 427
    mul-int/lit8 p2, p2, 0x2

    goto :goto_1
.end method

.method public static setFmRadioOff(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 252
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseFmRadioOff()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.fmradio.command.fmradioservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, i:Landroid/content/Intent;
    const-string v1, "request"

    const-string v2, "power_off"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 258
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static setNavigationBarRotation(Landroid/app/Activity;III)V
    .locals 4
    .parameter "activity"
    .parameter "rotation"
    .parameter "direction"
    .parameter "duration"

    .prologue
    .line 434
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSamsungModel()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isReferenceModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rotate to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with direction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for duration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 439
    .local v0, mStatusBarManager:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/StatusBarManager;->setNavigationRotation(III)V

    goto :goto_0
.end method

.method public static setNavigationBg(Landroid/app/Activity;Z)V
    .locals 6
    .parameter "activity"
    .parameter "isTransparent"

    .prologue
    const v2, 0x7f020409

    .line 386
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSamsungModel()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isReferenceModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    if-eqz p1, :cond_3

    const v3, 0x7f02040a

    .line 391
    .local v3, resIdLand:I
    :goto_1
    if-eqz p1, :cond_2

    const v2, 0x7f02040b

    .line 392
    .local v2, resIdPort:I
    :cond_2
    const-string v1, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resIdLand="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resIdLand="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 394
    .local v0, mStatusBarManager:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xff

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/StatusBarManager;->setNavigationBackground(Ljava/lang/String;IIII)V

    goto :goto_0

    .end local v0           #mStatusBarManager:Landroid/app/StatusBarManager;
    .end local v2           #resIdPort:I
    .end local v3           #resIdLand:I
    :cond_3
    move v3, v2

    .line 390
    goto :goto_1
.end method

.method public static setNavigationBgTransparent(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 400
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSamsungModel()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isReferenceModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 404
    .local v0, mStatusBarManager:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xff

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/StatusBarManager;->setNavigationBackground(Ljava/lang/String;IIII)V

    goto :goto_0
.end method

.method public static setQClipHotkeyFlag(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 224
    const/4 v0, -0x1

    .line 226
    .local v0, nFlag:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hotkey_short_package"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, shortPackageName:Ljava/lang/String;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shortPackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    if-nez v1, :cond_0

    .line 231
    const/4 v0, 0x1

    .line 242
    :goto_0
    sput v0, Lcom/lge/camera/util/AppControlUtil;->mQClipHotkeyFlag:I

    .line 243
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setQClipHotkeyFlag,  mQClipHotkeyFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lge/camera/util/AppControlUtil;->mQClipHotkeyFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget v2, Lcom/lge/camera/util/AppControlUtil;->mQClipHotkeyFlag:I

    return v2

    .line 232
    :cond_0
    const-string v2, "com.lge.QuickClip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    const/16 v0, 0x200

    goto :goto_0

    .line 235
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 236
    const/16 v0, 0x200

    goto :goto_0

    .line 238
    :cond_2
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public static setQuickCamCaseState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 336
    sput p0, Lcom/lge/camera/util/AppControlUtil;->mQuickCamCaseState:I

    .line 337
    return-void
.end method

.method public static setQuickClipScreenCaptureLimit(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/lge/camera/util/AppControlUtil;->setQuickClipScreenCaptureLimit(Landroid/app/Activity;I)V

    .line 46
    return-void
.end method

.method public static setQuickClipScreenCaptureLimit(Landroid/app/Activity;I)V
    .locals 4
    .parameter "activity"
    .parameter "mode"

    .prologue
    .line 49
    const-string v2, "CameraApp"

    const-string v3, "setQuickClipScreenCaptureLimit"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSamsungModel()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isReferenceModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 60
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 70
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1           #params:Landroid/view/WindowManager$LayoutParams;
    :goto_2
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lge/camera/util/AppControlUtil;->ENABLE_QUICK_CLIP_KEY:Z

    .line 75
    const-string v2, "CameraApp"

    const-string v3, "setQuickClipScreenCaptureLimit, ENABLE_QUICK_CLIP_KEY(true)"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    .restart local v1       #params:Landroid/view/WindowManager$LayoutParams;
    :pswitch_0
    :try_start_1
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->extend:I

    const v3, -0x20001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->extend:I

    .line 63
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->extend:I

    const v3, -0x40001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->extend:I
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 71
    .end local v1           #params:Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/NoSuchFieldError;
    const-string v2, "CameraApp"

    const-string v3, "NoSuchFieldError: "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 66
    .end local v0           #e:Ljava/lang/NoSuchFieldError;
    .restart local v1       #params:Landroid/view/WindowManager$LayoutParams;
    :pswitch_1
    :try_start_2
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->extend:I

    const/high16 v3, 0x2

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->extend:I

    .line 67
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->extend:I

    const/high16 v3, 0x4

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->extend:I
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setTransparentNavigationBar(Landroid/app/Activity;Z)V
    .locals 4
    .parameter "activity"
    .parameter "isTransparent"

    .prologue
    .line 354
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSamsungModel()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isReferenceModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    if-eqz p1, :cond_2

    const/16 v0, 0x730

    .line 359
    .local v0, flag:I
    :goto_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set transparent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 358
    .end local v0           #flag:I
    :cond_2
    const/16 v0, 0x720

    goto :goto_1
.end method
