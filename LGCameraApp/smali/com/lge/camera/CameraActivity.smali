.class public abstract Lcom/lge/camera/CameraActivity;
.super Landroid/app/Activity;
.source "CameraActivity.java"

# interfaces
.implements Lcom/lge/camera/Mediator$ActivityBridge;


# static fields
.field public static mCameraAppAct:Landroid/app/Activity;


# instance fields
.field private configurationChanging:Z

.field protected mExtraTouchEventListener:Lcom/lge/camera/listeners/ExtraTouchEventListener;

.field protected mFileUri:Landroid/net/Uri;

.field protected mFromVolumeKey:I

.field private mOldHardKeyboardHidden:I

.field protected mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field protected mPostviewRequestDeleteDone:Z

.field protected mPostviewRequestDoAttach:Z

.field protected mPostviewRequestReturn:Z

.field protected mPostviewRequestSaveDone:Z

.field protected mRename:Ljava/lang/String;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/lge/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 58
    iput v4, p0, Lcom/lge/camera/CameraActivity;->mFromVolumeKey:I

    .line 417
    iput-boolean v4, p0, Lcom/lge/camera/CameraActivity;->configurationChanging:Z

    .line 422
    iput v4, p0, Lcom/lge/camera/CameraActivity;->mOldHardKeyboardHidden:I

    .line 619
    iput-object v0, p0, Lcom/lge/camera/CameraActivity;->mRename:Ljava/lang/String;

    .line 620
    iput-object v0, p0, Lcom/lge/camera/CameraActivity;->mFileUri:Landroid/net/Uri;

    .line 621
    iput-boolean v4, p0, Lcom/lge/camera/CameraActivity;->mPostviewRequestSaveDone:Z

    .line 622
    iput-boolean v4, p0, Lcom/lge/camera/CameraActivity;->mPostviewRequestDeleteDone:Z

    .line 623
    iput-boolean v4, p0, Lcom/lge/camera/CameraActivity;->mPostviewRequestDoAttach:Z

    .line 624
    iput-boolean v4, p0, Lcom/lge/camera/CameraActivity;->mPostviewRequestReturn:Z

    .line 716
    new-instance v0, Lcom/lge/camera/CameraActivity$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/CameraActivity$2;-><init>(Lcom/lge/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/lge/camera/CameraActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 61
    const-string v0, "CameraApp"

    const-string v1, "[Time Info][1] Please check the Time besides CameraApp : Info Touch Recognition, Launcher, Memory Allocation Layout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Time Info][2] Camloading Activity Start : Camera UI Initialization "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/lge/camera/util/Common;->interimCheckTime(Z)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {v4}, Lcom/lge/camera/util/Common;->checkEnteringTime(Z)V

    .line 64
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/lge/camera/util/CamLog;->setUiThreadHashCode(I)V

    .line 65
    const-string v0, "CameraApp"

    const-string v1, "construct CameraActivity"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method private initOnCreate()V
    .locals 6

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, version_name:Ljava/lang/String;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bEnterSetting =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TIME_CHECK onCreate()-start,Model:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".2013/11/18-18:20PM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraActivity;->handleFromVolumeKeyIntent(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0008

    invoke-static {v2, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0009

    invoke-static {v3, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/camera/properties/CameraConstants;->setLcdSize(II)V

    .line 108
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0013

    invoke-static {v2, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0015

    invoke-static {v3, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0014

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/lge/camera/properties/CameraConstants;->setSmartCoverSize(III)V

    .line 116
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->setProjectCode()I

    .line 117
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->setCarrierCode()I

    .line 118
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isDebugNotSupported()Z

    move-result v2

    invoke-static {v2}, Lcom/lge/camera/util/CamLog;->setLogOn(Z)V

    .line 119
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->setShutterSound()Z

    .line 120
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->setShutterSoundOff()Z

    .line 121
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "CameraApp"

    const-string v3, "VersionName is not found, "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private sendBroadcastIntentCameraEnded()V
    .locals 3

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    if-nez v1, :cond_0

    .line 372
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->isSendBroadcastIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 361
    const-string v1, "CameraApp"

    const-string v2, "Because QuickCover is closed, Do not send broadcast EXIT intent."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :goto_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/lge/camera/properties/CameraConstants;->IS_CHANGE_MODE_STATUS:Z

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->setIsSendBroadcastIntent(Z)V

    goto :goto_0

    .line 363
    :cond_2
    const-string v1, "CameraApp"

    const-string v2, "Send broadcast : com.lge.intent.action.FLOATING_WINDOW_EXIT_LOWPROFILE"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.FLOATING_WINDOW_EXIT_LOWPROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "package"

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 367
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.camera.action.STOP_CAMERA_APP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private sendBroadcastIntentCameraStarted()V
    .locals 3

    .prologue
    .line 336
    sget-boolean v1, Lcom/lge/camera/properties/CameraConstants;->IS_CHANGE_MODE_STATUS:Z

    if-nez v1, :cond_0

    .line 337
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->isChangingToOtherActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    const-string v1, "CameraApp"

    const-string v2, "Because QuickCover is closed, Do not send broadcast ENTER intent."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/lge/camera/properties/CameraConstants;->IS_CHANGE_MODE_STATUS:Z

    .line 350
    return-void

    .line 341
    :cond_1
    const-string v1, "CameraApp"

    const-string v2, "Send broadcast : com.lge.intent.action.FLOATING_WINDOW_ENTER_LOWPROFILE, Extra value : hide is true"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.FLOATING_WINDOW_ENTER_LOWPROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "hide"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 344
    const-string v1, "package"

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 346
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.camera.action.START_CAMERA_APP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setMemoryCheck(Landroid/os/Bundle;)V
    .locals 5
    .parameter "extras"

    .prologue
    .line 609
    const-string v1, "insert_sdcard"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 610
    .local v0, isInsertSD:Z
    if-eqz v0, :cond_0

    .line 611
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->showDialogPopup(I)V

    .line 613
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    const-string v2, "key_storage"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 616
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract changeLocalSetting()V
.end method

.method public checkFromVolumeKey()Z
    .locals 2

    .prologue
    .line 787
    iget v0, p0, Lcom/lge/camera/CameraActivity;->mFromVolumeKey:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkOnResume(Lcom/lge/camera/Mediator;)V
    .locals 3
    .parameter "mediator"

    .prologue
    .line 496
    if-eqz p1, :cond_0

    .line 498
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->onResume()V

    .line 500
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 501
    .local v1, locale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, lancode:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/lge/camera/Mediator;->setLanguageType(Ljava/lang/String;)V

    .line 504
    .end local v0           #lancode:Ljava/lang/String;
    .end local v1           #locale:Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 135
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v0, 0x1

    .line 125
    invoke-static {}, Lcom/lge/camera/components/CameraCoverView;->isCoverOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public abstract doPhoneStateListenerAction(I)V
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 661
    const-string v0, "CameraApp"

    const-string v1, "pre-finish-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->hasWrongPreviewWhilePauseBug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->onPause()V

    .line 667
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 668
    invoke-static {v2}, Lcom/lge/camera/util/CheckStatusManager;->setCheckEnterOutSecure(I)V

    .line 670
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isChangeMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 671
    invoke-static {v2}, Lcom/lge/camera/util/Common;->setSecureCamera(Z)V

    .line 675
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "pre-finish-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method public abstract getActivity()Lcom/lge/camera/CameraActivity;
.end method

.method public abstract getMediator()Lcom/lge/camera/Mediator;
.end method

.method public getPostviewRename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/lge/camera/CameraActivity;->mRename:Ljava/lang/String;

    return-object v0
.end method

.method public getPostviewRequestCode()I
    .locals 1

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/lge/camera/CameraActivity;->mPostviewRequestSaveDone:Z

    if-eqz v0, :cond_0

    .line 627
    const/4 v0, 0x4

    .line 638
    :goto_0
    return v0

    .line 629
    :cond_0
    iget-boolean v0, p0, Lcom/lge/camera/CameraActivity;->mPostviewRequestDeleteDone:Z

    if-eqz v0, :cond_1

    .line 630
    const/4 v0, 0x1

    goto :goto_0

    .line 632
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/CameraActivity;->mPostviewRequestDoAttach:Z

    if-eqz v0, :cond_2

    .line 633
    const/4 v0, 0x2

    goto :goto_0

    .line 635
    :cond_2
    iget-boolean v0, p0, Lcom/lge/camera/CameraActivity;->mPostviewRequestReturn:Z

    if-eqz v0, :cond_3

    .line 636
    const/4 v0, 0x3

    goto :goto_0

    .line 638
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPostviewUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/lge/camera/CameraActivity;->mFileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWakeLock()V
    .locals 4

    .prologue
    .line 761
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 763
    .local v0, powerManager:Landroid/os/PowerManager;
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->checkFromVolumeKey()Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x3000001a

    .line 770
    .local v1, wakeLockFlag:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 771
    iget-object v2, p0, Lcom/lge/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 772
    return-void

    .line 763
    .end local v1           #wakeLockFlag:I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public gotoHelpActivity(Ljava/lang/String;)V
    .locals 4
    .parameter "keyString"

    .prologue
    .line 692
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display helpContext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 694
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lge/camera/CameraHelp;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 695
    const-string v1, "HelpIndex"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    const-string v1, "CameraId"

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 697
    const-string v1, "helpMode"

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 698
    const-string v1, "key_camera_timer"

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    const-string v3, "key_camera_timer"

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    const-string v1, "secureCamera"

    invoke-static {}, Lcom/lge/camera/util/Common;->isSecureCamera()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 701
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->setChangingToOtherActivity(Z)V

    .line 702
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_free_panorama"

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->setRemoveFreePanoramaBlackBg(Z)V

    .line 706
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 707
    return-void
.end method

.method public handleFromVolumeKeyIntent(Z)V
    .locals 3
    .parameter "get"

    .prologue
    const/4 v2, 0x0

    .line 775
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 776
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 777
    if-eqz p1, :cond_1

    .line 778
    const-string v1, "com.lge.camera.launchingPath"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lge/camera/CameraActivity;->mFromVolumeKey:I

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    const-string v1, "com.lge.camera.launchingPath"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 781
    iput v2, p0, Lcom/lge/camera/CameraActivity;->mFromVolumeKey:I

    goto :goto_0
.end method

.method public isConfigurationChanging()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/lge/camera/CameraActivity;->configurationChanging:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 425
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged() START "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 428
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 429
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RETURN by orientation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :goto_0
    return-void

    .line 433
    :cond_0
    const/4 v0, 0x0

    .line 434
    .local v0, doNotChange:Z
    iget v1, p0, Lcom/lge/camera/CameraActivity;->mOldHardKeyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->isPreviewOnGoing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 436
    const/4 v0, 0x1

    .line 437
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/lge/camera/CameraActivity;->mOldHardKeyboardHidden:I

    .line 440
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 441
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->isControllerInitialized()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->isPreviewing()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 445
    :cond_3
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RETURN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hardKeyboardHidden="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isControllerInitialized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->isControllerInitialized()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isPreviewing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->isPreviewing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getInCaptureProgress()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 456
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/CameraActivity;->configurationChanging:Z

    .line 457
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->removePostAllRunnables()V

    .line 458
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->releaseControllerForReInitialize()V

    .line 459
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraActivity;->setContentView(I)V

    .line 460
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->resetControllerForReInitialize()V

    .line 461
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/camera/CameraActivity;->configurationChanging:Z

    .line 463
    :cond_5
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged() END "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 70
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/lge/camera/util/CheckStatusManager;->setCheckEnterOutSecure(I)V

    .line 71
    const/4 v1, 0x1

    sput-boolean v1, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    .line 72
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useTurnOffAnimation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-static {}, Lcom/lge/camera/util/Common;->turnOffAnimation()V

    .line 75
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-direct {p0}, Lcom/lge/camera/CameraActivity;->initOnCreate()V

    .line 78
    sput-object p0, Lcom/lge/camera/CameraActivity;->mCameraAppAct:Landroid/app/Activity;

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.appbox.commonservice.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, svcIntent:Landroid/content/Intent;
    const-string v1, "packagename"

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "type"

    const-string v2, "update"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 86
    const-string v1, "CameraApp"

    const-string v2, "onCreate()-end "

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "args"

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, retVal:Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/lge/camera/Mediator;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 191
    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 391
    const-string v0, "CameraApp"

    const-string v1, "onDestroy()-start "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useTurnOffAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-static {}, Lcom/lge/camera/util/Common;->turnOnAnimation()V

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 397
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->onDestroy()V

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->setWakeLock(Landroid/os/PowerManager$WakeLock;Z)V

    .line 400
    iput-object v2, p0, Lcom/lge/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 402
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 403
    iput-object v2, p0, Lcom/lge/camera/CameraActivity;->mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

    .line 404
    iput-object v2, p0, Lcom/lge/camera/CameraActivity;->mExtraTouchEventListener:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    .line 405
    sput-object v2, Lcom/lge/camera/CameraActivity;->mCameraAppAct:Landroid/app/Activity;

    .line 406
    const-string v0, "CameraApp"

    const-string v1, "onDestroy()-end "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public onEnteringDoNotShow(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 685
    const-string v0, "CameraApp"

    const-string v1, "onEnteringDoNotShow clicked"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 687
    invoke-static {}, Lcom/lge/camera/controller/EnteringViewController;->get()Lcom/lge/camera/controller/EnteringViewController;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lge/camera/controller/EnteringViewController;->mDoNotShowAgain:Z

    .line 688
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->showQuickMenuEnteringGuide(Z)V

    .line 690
    :cond_0
    return-void
.end method

.method public onEnteringViewClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    const-string v0, "CameraApp"

    const-string v1, "onEnteringViewClick"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->showQuickMenuEnteringGuide(Z)V

    .line 683
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 152
    iget-object v1, p0, Lcom/lge/camera/CameraActivity;->mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/lge/camera/CameraActivity;->mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/lge/camera/listeners/OnKeyEventListener;->onKeyDown(ILandroid/view/KeyEvent;Lcom/lge/camera/Mediator;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 160
    :cond_0
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 165
    iget-object v1, p0, Lcom/lge/camera/CameraActivity;->mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/lge/camera/CameraActivity;->mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/lge/camera/listeners/OnKeyEventListener;->onKeyUp(ILandroid/view/KeyEvent;Lcom/lge/camera/Mediator;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 173
    :cond_0
    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lcom/lge/camera/CameraActivity;->setIntent(Landroid/content/Intent;)V

    .line 209
    const-string v0, "CameraApp"

    const-string v1, "start with new intent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->setKeepLastCameraMode()V

    .line 212
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->applyCameraChange()V

    .line 214
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 215
    return-void
.end method

.method public onOptionItemViewClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 711
    const-string v0, "CameraApp"

    const-string v1, "onEnteringViewClick"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->onOptionItemViewClick()V

    .line 714
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 287
    const-string v0, "CameraApp"

    const-string v1, "onPause()-start "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->checkFromVolumeKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 291
    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraActivity;->handleFromVolumeKeyIntent(Z)V

    .line 294
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/lge/camera/CameraActivity;->setCleanViewAndNavigationBar(ZZ)V

    .line 296
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->deleteProgressDialog()V

    .line 298
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    const-string v1, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->hideSmartZoomFocusView()V

    .line 300
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/lge/camera/util/Common;->galleryCacheDuringCameraApp(Landroid/content/Context;Z)V

    .line 301
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->onPause()V

    .line 305
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useTurnOffAnimation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    invoke-static {}, Lcom/lge/camera/util/Common;->turnOnAnimation()V

    .line 308
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportQClipCustomization()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->resetQClipHotkeyFlag()V

    .line 311
    :cond_3
    invoke-static {v2}, Lcom/lge/camera/util/CheckStatusManager;->setEnterCheckComplete(Z)V

    .line 312
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AudioUtil;->checkAudioFocus(Landroid/content/Context;)V

    .line 313
    iget-object v0, p0, Lcom/lge/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, v2}, Lcom/lge/camera/util/Common;->setWakeLock(Landroid/os/PowerManager$WakeLock;Z)V

    .line 314
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->releaseEachMode()V

    .line 316
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/lge/camera/CameraActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 318
    iget-object v0, p0, Lcom/lge/camera/CameraActivity;->mExtraTouchEventListener:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    if-eqz v0, :cond_4

    .line 319
    iget-object v0, p0, Lcom/lge/camera/CameraActivity;->mExtraTouchEventListener:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    invoke-virtual {v0}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->releaseScaleDetectorListener()V

    .line 320
    iget-object v0, p0, Lcom/lge/camera/CameraActivity;->mExtraTouchEventListener:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    invoke-virtual {v0}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->releaseGestureDetectorListener()V

    .line 323
    :cond_4
    invoke-direct {p0}, Lcom/lge/camera/CameraActivity;->sendBroadcastIntentCameraEnded()V

    .line 324
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 325
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->restoreRotationNavigationBar(Landroid/app/Activity;)V

    .line 326
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Common;->printRunningTask(Landroid/content/Context;)V

    .line 327
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isChangeMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 328
    const-string v0, "sys.camera_orientation"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v0, "CameraApp"

    const-string v1, "set property done: 0"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_5
    const-string v0, "CameraApp"

    const-string v1, "onPause()-end "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/Mediator;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 182
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 183
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 219
    const-string v1, "CameraApp"

    const-string v2, "onResume() - start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/lge/camera/util/Common;->IS_ENTER_CONDITION:Z

    if-nez v1, :cond_0

    .line 223
    sput-boolean v4, Lcom/lge/camera/util/Common;->IS_ENTER_CONDITION:Z

    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 225
    const-string v1, "CameraApp"

    const-string v2, "not available by checkEnterApplication"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->updateNavigationBarShape()V

    .line 230
    invoke-static {p0}, Lcom/lge/camera/util/Common;->backlightControl(Landroid/app/Activity;)V

    .line 232
    invoke-virtual {p0, v4}, Lcom/lge/camera/CameraActivity;->handleFromVolumeKeyIntent(Z)V

    .line 233
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getWakeLock()V

    .line 234
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->checkFromVolumeKey()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 240
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/AppControlUtil;->setFmRadioOff(Landroid/content/Context;)V

    .line 241
    invoke-static {p0}, Lcom/lge/camera/util/AppControlUtil;->setQuickClipScreenCaptureLimit(Landroid/app/Activity;)V

    .line 242
    invoke-virtual {p0, v3, v3}, Lcom/lge/camera/CameraActivity;->setCleanViewAndNavigationBar(ZZ)V

    .line 244
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/lge/camera/CameraActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 246
    iget-object v1, p0, Lcom/lge/camera/CameraActivity;->mExtraTouchEventListener:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/lge/camera/CameraActivity;->mExtraTouchEventListener:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->setScaleDetectorListener(Lcom/lge/camera/Mediator;)V

    .line 248
    iget-object v1, p0, Lcom/lge/camera/CameraActivity;->mExtraTouchEventListener:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->setGestureDetectorListener(Lcom/lge/camera/Mediator;)V

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraActivity;->checkOnResume(Lcom/lge/camera/Mediator;)V

    .line 252
    invoke-direct {p0}, Lcom/lge/camera/CameraActivity;->sendBroadcastIntentCameraStarted()V

    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 257
    const v1, 0x7f0900c1

    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 258
    .local v0, vto:Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/lge/camera/CameraActivity$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/CameraActivity$1;-><init>(Lcom/lge/camera/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 281
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/lge/camera/util/Common;->galleryCacheDuringCameraApp(Landroid/content/Context;Z)V

    .line 282
    const-string v1, "CameraApp"

    const-string v2, "onResume() - end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    .end local v0           #vto:Landroid/view/ViewTreeObserver;
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v1, v4}, Lcom/lge/camera/util/Common;->setWakeLock(Landroid/os/PowerManager$WakeLock;Z)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 196
    const-string v0, "CameraApp"

    const-string v1, "onStart()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->onStart()V

    .line 199
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/lge/camera/CameraActivity;->mOldHardKeyboardHidden:I

    .line 202
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 203
    const-string v0, "CameraApp"

    const-string v1, "onStart()-end "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 378
    const-string v0, "CameraApp"

    const-string v1, "onStop()-start "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useTurnOffAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-static {}, Lcom/lge/camera/util/Common;->turnOnAnimation()V

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->onStop()V

    .line 385
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 386
    const-string v0, "CameraApp"

    const-string v1, "onStop()-end "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lge/camera/CameraActivity;->mExtraTouchEventListener:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/lge/camera/CameraActivity;->mExtraTouchEventListener:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->executeTouchEvent(Landroid/view/MotionEvent;Lcom/lge/camera/Mediator;)V

    .line 147
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 411
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 412
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->onUserInteraction()V

    .line 415
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .parameter "hasFocus"

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    .line 470
    .local v1, mediator:Lcom/lge/camera/Mediator;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWindowFocusChanged() hasFocus ? ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 474
    if-eqz p1, :cond_0

    .line 475
    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->updateNavigationBarShape()V

    .line 476
    const-string v3, "key_voiceshutter"

    invoke-virtual {v1, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, value:Ljava/lang/String;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "## SetVoiceShutterMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 480
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/lge/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 481
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_0

    .line 482
    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->isPreviewing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 487
    const-string v3, "key_voiceshutter"

    const-string v4, "off"

    invoke-virtual {v1, v3, v4}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 488
    const-string v3, "com.lge.camera.command.SetVoiceShutterMode"

    invoke-virtual {v1, v3}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 493
    .end local v0           #am:Landroid/media/AudioManager;
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected abstract releaseEachMode()V
.end method

.method protected resultForAttach(Landroid/os/Bundle;)Z
    .locals 7
    .parameter "extras"

    .prologue
    const/4 v4, 0x1

    .line 540
    if-eqz p1, :cond_0

    .line 541
    const-string v3, "postview_mode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 542
    .local v2, postview_mode:Z
    const-string v3, "doAttach"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 543
    .local v0, doAttach:Z
    if-eqz v0, :cond_0

    .line 544
    iput-boolean v4, p0, Lcom/lge/camera/CameraActivity;->mPostviewRequestDoAttach:Z

    .line 546
    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraActivity;->setStatusForAttach(Z)V

    .line 548
    const/4 v0, 0x0

    .line 549
    const-string v3, "recent_uri"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/lge/camera/CameraActivity;->mFileUri:Landroid/net/Uri;

    .line 550
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    iget-object v5, p0, Lcom/lge/camera/CameraActivity;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Lcom/lge/camera/Mediator;->setSavedImageUri(Landroid/net/Uri;)V

    .line 551
    const-string v3, "file_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, filename:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lge/camera/Mediator;->setSavedFileName(Ljava/lang/String;)V

    .line 554
    const-string v3, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REQUEST_CODE_POSTVIEW doAttach uri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/CameraActivity;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 558
    .end local v0           #doAttach:Z
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #postview_mode:Z
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected resultForDeleteDone(Landroid/os/Bundle;)Z
    .locals 4
    .parameter "extras"

    .prologue
    const/4 v1, 0x1

    .line 528
    if-eqz p1, :cond_0

    .line 529
    const-string v2, "delete_done"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 530
    .local v0, deleteDone:Z
    if-eqz v0, :cond_0

    .line 531
    iput-boolean v1, p0, Lcom/lge/camera/CameraActivity;->mPostviewRequestDeleteDone:Z

    .line 532
    const-string v2, "CameraApp"

    const-string v3, "REQUEST_CODE_POSTVIEW delete done"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    .end local v0           #deleteDone:Z
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected resultForPostview(Landroid/content/Intent;)Z
    .locals 2
    .parameter "data"

    .prologue
    .line 507
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 508
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 509
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 510
    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraActivity;->resultForSaveDone(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraActivity;->resultForDeleteDone(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraActivity;->resultForAttach(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraActivity;->resultForPostviewReturn(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 514
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraActivity;->setZoomForManualAntiBanding(Landroid/os/Bundle;)V

    .line 515
    invoke-direct {p0, v0}, Lcom/lge/camera/CameraActivity;->setMemoryCheck(Landroid/os/Bundle;)V

    .line 516
    const/4 v1, 0x1

    .line 520
    .end local v0           #extras:Landroid/os/Bundle;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected resultForPostviewReturn(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "extras"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 564
    if-eqz p1, :cond_1

    .line 565
    const-string v3, "postview_return"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 566
    .local v0, postview_return:Z
    if-eqz v0, :cond_1

    .line 568
    iput-boolean v1, p0, Lcom/lge/camera/CameraActivity;->mPostviewRequestReturn:Z

    .line 569
    const-string v3, "CameraApp"

    const-string v4, "REQUEST_CODE_POSTVIEW postview_return"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0, p1}, Lcom/lge/camera/CameraActivity;->setThumbnailForPostviewReturn(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 579
    .end local v0           #postview_return:Z
    :goto_0
    return v1

    .line 574
    .restart local v0       #postview_return:Z
    :cond_0
    iput-boolean v2, p0, Lcom/lge/camera/CameraActivity;->mPostviewRequestReturn:Z

    .line 575
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/camera/Mediator;->enableInput(Z)V

    goto :goto_0

    .end local v0           #postview_return:Z
    :cond_1
    move v1, v2

    .line 579
    goto :goto_0
.end method

.method protected resultForSaveDone(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "extras"

    .prologue
    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public setCleanViewAndNavigationBar(ZZ)V
    .locals 8
    .parameter "inputKeyAction"
    .parameter "release"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 729
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 730
    const-string v5, "Main_CameraAppConfig"

    invoke-virtual {p0, v5, v6}, Lcom/lge/camera/CameraActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 732
    .local v4, pref:Landroid/content/SharedPreferences;
    if-eqz v4, :cond_0

    .line 733
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.lge.systemui.action.CLEAN_VIEW_BUTTON"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 734
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "cleanViewOn"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 736
    .local v0, cleanViewSettingOn:Z
    if-eqz p2, :cond_1

    .line 737
    const-string v5, "enable"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 755
    :goto_0
    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 758
    .end local v0           #cleanViewSettingOn:Z
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 739
    .restart local v0       #cleanViewSettingOn:Z
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v4       #pref:Landroid/content/SharedPreferences;
    :cond_1
    const-string v5, "enable"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 741
    if-eqz p1, :cond_2

    .line 742
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->toggleClearView()V

    .line 750
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 751
    .local v1, i:Landroid/content/Intent;
    const-string v5, "com.lge.camera.action.CLEAN_VIEW_RECEIVER"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 753
    .local v3, pending:Landroid/app/PendingIntent;
    const-string v5, "pending_intent"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 744
    .end local v1           #i:Landroid/content/Intent;
    .end local v3           #pending:Landroid/app/PendingIntent;
    :cond_2
    if-eqz v0, :cond_3

    .line 745
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/lge/camera/Mediator;->clearViewOn(Z)V

    goto :goto_1

    .line 747
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/lge/camera/Mediator;->clearViewOff(Z)V

    goto :goto_1
.end method

.method protected abstract setLocalSetting()V
.end method

.method public setPostviewRequestInitCode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 650
    iput-boolean v0, p0, Lcom/lge/camera/CameraActivity;->mPostviewRequestSaveDone:Z

    .line 651
    iput-boolean v0, p0, Lcom/lge/camera/CameraActivity;->mPostviewRequestDeleteDone:Z

    .line 652
    iput-boolean v0, p0, Lcom/lge/camera/CameraActivity;->mPostviewRequestDoAttach:Z

    .line 653
    iput-boolean v0, p0, Lcom/lge/camera/CameraActivity;->mPostviewRequestReturn:Z

    .line 654
    iput-object v1, p0, Lcom/lge/camera/CameraActivity;->mRename:Ljava/lang/String;

    .line 655
    iput-object v1, p0, Lcom/lge/camera/CameraActivity;->mFileUri:Landroid/net/Uri;

    .line 656
    return-void
.end method

.method protected abstract setStatusForAttach(Z)V
.end method

.method protected abstract setThumbnailForPostviewReturn(Landroid/os/Bundle;)Z
.end method

.method protected setZoomForManualAntiBanding(Landroid/os/Bundle;)V
    .locals 7
    .parameter "extras"

    .prologue
    const/4 v6, 0x0

    .line 583
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v3

    if-nez v3, :cond_0

    .line 587
    if-eqz p1, :cond_0

    .line 588
    const-string v3, "currentZoom"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, curzoom:[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 591
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===> Return zoom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const-string v4, "key_zoom"

    aget-object v5, v0, v6

    invoke-virtual {v3, v4, v5}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 594
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 595
    .local v1, maxCursorValue:I
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lge/camera/controller/ZoomController;->setZoomCursorMaxStep(I)V

    .line 596
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 597
    .local v2, value:I
    invoke-virtual {p0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/camera/controller/ZoomController;->reset(I)V

    .line 606
    .end local v0           #curzoom:[Ljava/lang/String;
    .end local v1           #maxCursorValue:I
    .end local v2           #value:I
    :cond_0
    :goto_0
    return-void

    .line 599
    .restart local v0       #curzoom:[Ljava/lang/String;
    :cond_1
    const-string v3, "CameraApp"

    const-string v4, "extras.getStringArray(\'currentZoom\') is NULL Value, plz check it up ASAP !!!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
