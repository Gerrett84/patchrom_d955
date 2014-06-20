.class public abstract Lcom/lge/camera/ShotPostviewActivity;
.super Landroid/app/Activity;
.source "ShotPostviewActivity.java"

# interfaces
.implements Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;
.implements Lcom/lge/camera/postview/ReceiverFunction;


# static fields
.field public static final SET_AS_MENU:I = 0x1

.field public static final SHARE_MENU:I


# instance fields
.field private bConnectedDevice:Z

.field private batteryReceiver:Lcom/lge/camera/postview/PostViewBatteryReceiver;

.field protected isFromCreateProcess:Z

.field protected mBack3dCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field protected mBack3dCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field protected mBackCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field protected mBackCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraOpenRunnable:Ljava/lang/Runnable;

.field private mCameraOpenThread:Ljava/lang/Thread;

.field protected mCapturedBitmap:Landroid/graphics/Bitmap;

.field protected mCurrentSelectedIndex:I

.field private mDialog:Landroid/app/Dialog;

.field mDismissClickListener:Landroid/content/DialogInterface$OnDismissListener;

.field protected mExitInteraction:Ljava/lang/Runnable;

.field protected mFrontCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field protected mFrontCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field private mHandler:Lcom/lge/camera/util/MainHandler;

.field protected mImageHandler:Lcom/lge/camera/util/ImageHandler;

.field protected mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

.field protected mPause:Z

.field private mPostRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

.field private mSDCardsetting:Z

.field private mScreenOffReceiver:Lcom/lge/camera/postview/PostViewScreenOffReceiver;

.field private mThreadStartRunnable:Ljava/lang/Runnable;

.field protected mToast:Lcom/lge/camera/postview/PostViewToast;

.field private mediaReceiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

.field protected postviewMenuSetAs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/postview/PostviewMenu;",
            ">;"
        }
    .end annotation
.end field

.field protected postviewMenuShare:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/postview/PostviewMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    new-instance v0, Lcom/lge/camera/postview/PostViewParameters;

    invoke-direct {v0}, Lcom/lge/camera/postview/PostViewParameters;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    .line 86
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mediaReceiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    .line 87
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->batteryReceiver:Lcom/lge/camera/postview/PostViewBatteryReceiver;

    .line 88
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mScreenOffReceiver:Lcom/lge/camera/postview/PostViewScreenOffReceiver;

    .line 89
    new-instance v0, Lcom/lge/camera/postview/PostViewToast;

    invoke-direct {v0}, Lcom/lge/camera/postview/PostViewToast;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    .line 91
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mDialog:Landroid/app/Dialog;

    .line 92
    new-instance v0, Lcom/lge/camera/util/MainHandler;

    invoke-direct {v0}, Lcom/lge/camera/util/MainHandler;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    .line 94
    iput-boolean v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mPause:Z

    .line 95
    iput-boolean v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mSDCardsetting:Z

    .line 98
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 99
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 100
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 101
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 102
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 103
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 105
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 106
    new-instance v0, Lcom/lge/camera/util/ImageRotationOn;

    invoke-direct {v0}, Lcom/lge/camera/util/ImageRotationOn;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mImageHandler:Lcom/lge/camera/util/ImageHandler;

    .line 107
    new-instance v0, Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-direct {v0, p0}, Lcom/lge/camera/postview/PostviewOrientationInfo;-><init>(Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;)V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    .line 108
    iput v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mCurrentSelectedIndex:I

    .line 109
    iput-boolean v2, p0, Lcom/lge/camera/ShotPostviewActivity;->isFromCreateProcess:Z

    .line 111
    new-instance v0, Lcom/lge/camera/ShotPostviewActivity$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/ShotPostviewActivity$1;-><init>(Lcom/lge/camera/ShotPostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mExitInteraction:Ljava/lang/Runnable;

    .line 555
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCamera:Landroid/hardware/Camera;

    .line 556
    iput-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    .line 557
    iput-boolean v2, p0, Lcom/lge/camera/ShotPostviewActivity;->bConnectedDevice:Z

    .line 559
    new-instance v0, Lcom/lge/camera/ShotPostviewActivity$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/ShotPostviewActivity$2;-><init>(Lcom/lge/camera/ShotPostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenRunnable:Ljava/lang/Runnable;

    .line 576
    new-instance v0, Lcom/lge/camera/ShotPostviewActivity$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/ShotPostviewActivity$3;-><init>(Lcom/lge/camera/ShotPostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mThreadStartRunnable:Ljava/lang/Runnable;

    .line 918
    new-instance v0, Lcom/lge/camera/ShotPostviewActivity$6;

    invoke-direct {v0, p0}, Lcom/lge/camera/ShotPostviewActivity$6;-><init>(Lcom/lge/camera/ShotPostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mDismissClickListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 953
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuShare:Ljava/util/ArrayList;

    .line 954
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuSetAs:Ljava/util/ArrayList;

    .line 119
    sget v0, Lcom/lge/camera/util/Common;->APP_SHOTMODE_POSTVIEW_INSTANCE_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/camera/util/Common;->APP_SHOTMODE_POSTVIEW_INSTANCE_COUNT:I

    .line 120
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "construct POSTVIEW app_instance_cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/camera/util/Common;->APP_SHOTMODE_POSTVIEW_INSTANCE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/ShotPostviewActivity;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/camera/ShotPostviewActivity;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/camera/ShotPostviewActivity;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/camera/ShotPostviewActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lge/camera/ShotPostviewActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lge/camera/ShotPostviewActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lge/camera/ShotPostviewActivity;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private checkAndDisconnectCameraDevice()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 612
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isPostviewDeviceOpenModel()Z

    move-result v1

    if-nez v1, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndDisconnectCameraDevice : mCamera = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mThreadStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/lge/camera/ShotPostviewActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 619
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 621
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 622
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :goto_1
    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    .line 629
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 630
    iget-boolean v1, p0, Lcom/lge/camera/ShotPostviewActivity;->bConnectedDevice:Z

    if-eqz v1, :cond_3

    .line 631
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/util/CameraHolder;->keep()V

    .line 633
    :cond_3
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/util/CameraHolder;->release()Z

    .line 634
    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mCamera:Landroid/hardware/Camera;

    goto :goto_0

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private connectCameraDevice()V
    .locals 4

    .prologue
    .line 587
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isPostviewDeviceOpenModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lge/camera/util/Common;->isScreenLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectCameraDevice : mCamera = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-nez v1, :cond_2

    .line 594
    const-string v1, "CameraApp"

    const-string v2, "Postview : postview parameters get fail."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getCameraId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 598
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 599
    .local v0, pref:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-static {v0}, Lcom/lge/camera/setting/Setting;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/postview/PostViewParameters;->setCameraId(I)V

    .line 602
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 604
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mThreadStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/lge/camera/ShotPostviewActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 605
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mThreadStartRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/lge/camera/util/Common;->isFaceUnlock()Z

    move-result v1

    if-eqz v1, :cond_5

    const-wide/16 v1, 0x12c

    :goto_1
    invoke-virtual {p0, v3, v1, v2}, Lcom/lge/camera/ShotPostviewActivity;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_5
    const-wide/16 v1, 0x0

    goto :goto_1
.end method

.method private registerBatteryReceiver(Lcom/lge/camera/postview/PostViewBatteryReceiver;)V
    .locals 2
    .parameter "receiver"

    .prologue
    .line 533
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 534
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/ShotPostviewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 536
    return-void
.end method

.method private registerMediaReceiver(Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;)V
    .locals 2
    .parameter "receiver"

    .prologue
    .line 514
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 515
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 516
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 517
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 518
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 519
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 520
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 521
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 523
    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 524
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 525
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/ShotPostviewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 530
    return-void
.end method

.method private registerScreenOffReceiver(Lcom/lge/camera/postview/PostViewScreenOffReceiver;)V
    .locals 2
    .parameter "receiver"

    .prologue
    .line 539
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/ShotPostviewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 540
    return-void
.end method


# virtual methods
.method public adapterPositiveClick(II)V
    .locals 2
    .parameter "dialogId"
    .parameter "i"

    .prologue
    const/4 v1, 0x1

    .line 1263
    if-ne p1, v1, :cond_0

    .line 1264
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuShare:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/postview/PostviewMenu;

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/ShotPostviewActivity;->startPostviewMenuItems(ILcom/lge/camera/postview/PostviewMenu;)V

    .line 1268
    :goto_0
    return-void

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuSetAs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/postview/PostviewMenu;

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/ShotPostviewActivity;->startPostviewMenuItems(ILcom/lge/camera/postview/PostviewMenu;)V

    goto :goto_0
.end method

.method protected adjustFilenameForView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tv"
    .parameter "filename"
    .parameter "thumbInfo"

    .prologue
    .line 852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, tFilename:Ljava/lang/String;
    new-instance v1, Lcom/lge/camera/ShotPostviewActivity$5;

    invoke-direct {v1, p0, p1, v0}, Lcom/lge/camera/ShotPostviewActivity$5;-><init>(Lcom/lge/camera/ShotPostviewActivity;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 859
    return-void
.end method

.method protected checkFlipCapturedImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "bmp"
    .parameter "applicationMode"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 827
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-nez v4, :cond_0

    .line 828
    const-string v3, "CameraApp"

    const-string v4, "Postview : postview parameters get fail."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const/4 v2, 0x0

    .line 848
    :goto_0
    return-object v2

    .line 831
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getCameraId()I

    move-result v4

    if-ne v4, v3, :cond_1

    move v1, v3

    .line 832
    .local v1, flip:Z
    :cond_1
    const/4 v2, 0x0

    .line 834
    .local v2, flipBitmap:Landroid/graphics/Bitmap;
    if-nez p2, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getCameraId()I

    move-result v4

    if-ne v4, v3, :cond_2

    const-string v3, "off"

    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getFlip()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 837
    const/4 v1, 0x0

    .line 839
    :cond_2
    if-eqz v1, :cond_3

    .line 840
    const-string v3, "CameraApp"

    const-string v4, "bmp is flipped.."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mImageHandler:Lcom/lge/camera/util/ImageHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, v1}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 843
    :cond_3
    move-object v2, p1

    goto :goto_0

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "Exception : "

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected checkPauseAndAutoReview()Z
    .locals 1

    .prologue
    .line 926
    iget-boolean v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPause:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 927
    :cond_0
    const/4 v0, 0x0

    .line 932
    :goto_0
    return v0

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isPostviewDeviceOpenModel()Z

    move-result v0

    if-nez v0, :cond_3

    .line 930
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->removeExitInteraction()V

    .line 932
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected clearShareAndSetAsMenuList(ZZ)V
    .locals 1
    .parameter "share"
    .parameter "setas"

    .prologue
    .line 1210
    if-eqz p1, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuSetAs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuSetAs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuSetAs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1215
    :cond_0
    if-eqz p2, :cond_1

    .line 1216
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuShare:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuShare:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1217
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuShare:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1220
    :cond_1
    return-void
.end method

.method protected configureWindow()V
    .locals 1

    .prologue
    .line 509
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/lge/camera/ShotPostviewActivity;->requestWindowFeature(I)Z

    .line 510
    return-void
.end method

.method protected deleteFinished()V
    .locals 3

    .prologue
    .line 945
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 946
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "delete_done"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 947
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/ShotPostviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 948
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->finish()V

    .line 949
    return-void
.end method

.method protected deleteImage(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 5
    .parameter "filename"
    .parameter "uri"

    .prologue
    .line 871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 873
    .local v1, fullPath:Ljava/lang/String;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    invoke-static {v1}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 875
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 876
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 877
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/lge/camera/util/ImageManager;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 878
    const-string v2, "CameraApp"

    const-string v3, "deleted."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 881
    const-string v2, "CameraApp"

    const-string v3, "deleted uri"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 892
    .end local v0           #file:Ljava/io/File;
    :goto_1
    return v2

    .line 883
    .restart local v0       #file:Ljava/io/File;
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "failure to delete uri!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 887
    :cond_1
    const-string v2, "CameraApp"

    const-string v3, "delete failed"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    .end local v0           #file:Ljava/io/File;
    :cond_2
    const-string v2, "CameraApp"

    const-string v3, "failure delete image file (return -1)"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const/4 v2, -0x1

    goto :goto_1
.end method

.method protected deleteVideo(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 8
    .parameter "filename"
    .parameter "uri"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 896
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getVideoExtension()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 899
    .local v2, fullPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 900
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 901
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 902
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 903
    .local v0, c:Landroid/content/ContentResolver;
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "videoFileUri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getSavedUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getSavedUri()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_0

    .line 905
    const-string v4, "CameraApp"

    const-string v5, "videoFileUri is null!"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    .end local v0           #c:Landroid/content/ContentResolver;
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return v3

    .line 908
    .restart local v0       #c:Landroid/content/ContentResolver;
    .restart local v1       #file:Ljava/io/File;
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getSavedUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 915
    .end local v0           #c:Landroid/content/ContentResolver;
    .end local v1           #file:Ljava/io/File;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 911
    .restart local v1       #file:Ljava/io/File;
    :cond_2
    const-string v4, "CameraApp"

    const-string v5, "videoFile delete fail"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected dismissProgressDialog()V
    .locals 4

    .prologue
    .line 1251
    :try_start_0
    invoke-static {}, Lcom/lge/camera/postview/PostviewDialog;->getPostviewDialog()Lcom/lge/camera/postview/PostviewDialog;

    move-result-object v1

    .line 1252
    .local v1, mDialog:Lcom/lge/camera/postview/PostviewDialog;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostviewDialog;->getCurrentDialogId()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostviewDialog;->getCurrentDialogId()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 1255
    :cond_0
    invoke-virtual {v1}, Lcom/lge/camera/postview/PostviewDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1260
    .end local v1           #mDialog:Lcom/lge/camera/postview/PostviewDialog;
    :cond_1
    :goto_0
    return-void

    .line 1257
    :catch_0
    move-exception v0

    .line 1258
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "CameraApp"

    const-string v3, "dismissProgressDialog-IllegalStateException : "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 408
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 416
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 413
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected doBackKeyInPostview()V
    .locals 2

    .prologue
    .line 474
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_BACK"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-boolean v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPause:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 476
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_BACK - return..."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :goto_0
    return-void

    .line 479
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->finish()V

    goto :goto_0
.end method

.method public doBurstShotWarningPositiveClick(Landroid/widget/CheckBox;)V
    .locals 0
    .parameter "checkBox"

    .prologue
    .line 1298
    return-void
.end method

.method public doClearShotWarningDismiss()V
    .locals 0

    .prologue
    .line 1295
    return-void
.end method

.method public doClearShotWarningNegativeClick(Landroid/widget/CheckBox;)V
    .locals 0
    .parameter "checkBox"

    .prologue
    .line 1293
    return-void
.end method

.method public doClearShotWarningPositiveClick(Landroid/widget/CheckBox;)V
    .locals 0
    .parameter "checkBox"

    .prologue
    .line 1291
    return-void
.end method

.method public doDeleteMultiPositiveClick()V
    .locals 0

    .prologue
    .line 1278
    return-void
.end method

.method public doDeletePositiveClick()V
    .locals 0

    .prologue
    .line 1275
    return-void
.end method

.method public doEnableGalleryPositiveClick()V
    .locals 0

    .prologue
    .line 1281
    return-void
.end method

.method protected abstract doPreProcessOnCreate()V
.end method

.method protected abstract doProcessOnCreate()V
.end method

.method protected abstract doProcessOnDestroy()V
.end method

.method protected abstract doProcessOnPause()V
.end method

.method protected abstract doProcessOnResume()V
.end method

.method public doTimeMachineWarningDismiss()V
    .locals 0

    .prologue
    .line 1288
    return-void
.end method

.method public doTimeMachineWarningNegativeClick(Landroid/widget/CheckBox;)V
    .locals 0
    .parameter "checkBox"

    .prologue
    .line 1286
    return-void
.end method

.method public doTimeMachineWarningPositiveClick(Landroid/widget/CheckBox;)V
    .locals 0
    .parameter "checkBox"

    .prologue
    .line 1284
    return-void
.end method

.method protected doVolumeKey(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v0, :cond_0

    const-string v0, "shutter"

    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getVolumeKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->removeExitInteraction()V

    .line 468
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->finish()V

    goto :goto_0
.end method

.method public doWarningNegativeClick()V
    .locals 0

    .prologue
    .line 1301
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 125
    sget v0, Lcom/lge/camera/util/Common;->APP_SHOTMODE_POSTVIEW_INSTANCE_COUNT:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/lge/camera/util/Common;->APP_SHOTMODE_POSTVIEW_INSTANCE_COUNT:I

    .line 126
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy POSTVIEW app_instance_cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/camera/util/Common;->APP_SHOTMODE_POSTVIEW_INSTANCE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 128
    return-void
.end method

.method public finish()V
    .locals 10

    .prologue
    const/16 v9, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 369
    const-string v3, "CameraApp"

    const-string v6, "Postview finish()"

    invoke-static {v3, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 371
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "postview_return"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 373
    invoke-static {}, Lcom/lge/camera/util/Common;->isFaceUnlock()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/lge/camera/ShotPostviewActivity;->checkAndDisconnectCameraDevice()V

    .line 377
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v3, :cond_4

    .line 379
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 384
    .local v2, uriListSize:I
    const-string v6, "recent_uri"

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 385
    const-string v3, "file_name"

    iget-object v6, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getSaveFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string v3, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Postview intent:file_name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v7}, Lcom/lge/camera/postview/PostViewParameters;->getSaveFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v2           #uriListSize:I
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentZoom()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 392
    const-string v3, "currentZoom"

    iget-object v6, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentZoom()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const-string v3, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===> mcurzoom : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v7}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentZoom()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_2
    iget-boolean v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mSDCardsetting:Z

    if-eqz v3, :cond_3

    .line 396
    const-string v3, "insert_sdcard"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 398
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->isIsAttachIntent()Z

    move-result v3

    if-eqz v3, :cond_b

    :goto_0
    iput-boolean v4, p0, Lcom/lge/camera/ShotPostviewActivity;->bConnectedDevice:Z

    .line 399
    invoke-virtual {p0, v9, v1}, Lcom/lge/camera/ShotPostviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 400
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 403
    :cond_4
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "CameraApp"

    const-string v6, "Exception!"

    invoke-static {v3, v6, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentZoom()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 392
    const-string v3, "currentZoom"

    iget-object v6, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentZoom()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const-string v3, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===> mcurzoom : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v7}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentZoom()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_5
    iget-boolean v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mSDCardsetting:Z

    if-eqz v3, :cond_6

    .line 396
    const-string v3, "insert_sdcard"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 398
    :cond_6
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->isIsAttachIntent()Z

    move-result v3

    if-eqz v3, :cond_a

    :goto_2
    iput-boolean v4, p0, Lcom/lge/camera/ShotPostviewActivity;->bConnectedDevice:Z

    .line 399
    invoke-virtual {p0, v9, v1}, Lcom/lge/camera/ShotPostviewActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 391
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentZoom()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 392
    const-string v6, "currentZoom"

    iget-object v7, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v7}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentZoom()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "===> mcurzoom : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v8}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentZoom()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_7
    iget-boolean v6, p0, Lcom/lge/camera/ShotPostviewActivity;->mSDCardsetting:Z

    if-eqz v6, :cond_8

    .line 396
    const-string v6, "insert_sdcard"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 398
    :cond_8
    iget-object v6, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->isIsAttachIntent()Z

    move-result v6

    if-eqz v6, :cond_9

    :goto_3
    iput-boolean v4, p0, Lcom/lge/camera/ShotPostviewActivity;->bConnectedDevice:Z

    .line 399
    invoke-virtual {p0, v9, v1}, Lcom/lge/camera/ShotPostviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 400
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 391
    throw v3

    :cond_9
    move v4, v5

    .line 398
    goto :goto_3

    .restart local v0       #e:Ljava/lang/Exception;
    :cond_a
    move v4, v5

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    :cond_b
    move v4, v5

    goto/16 :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 639
    return-object p0
.end method

.method protected getLastThumbnail(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "uri"
    .parameter "applicationMode"

    .prologue
    .line 794
    const/4 v9, 0x0

    .line 796
    .local v9, thumbnail:Landroid/graphics/Bitmap;
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    invoke-static {p0, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 798
    .local v8, filePath:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 799
    const/4 v0, 0x1

    invoke-static {v8, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .end local v8           #filePath:Ljava/lang/String;
    :cond_0
    :goto_0
    move-object v0, v9

    .line 823
    :goto_1
    return-object v0

    .line 802
    :cond_1
    const-wide/16 v2, -0x1

    .line 803
    .local v2, id:J
    if-eqz p1, :cond_2

    .line 804
    invoke-static {p0, p1}, Lcom/lge/camera/util/Util;->getIdFromUri(Landroid/app/Activity;Landroid/net/Uri;)J

    move-result-wide v2

    .line 805
    const-string v0, "CameraApp"

    const-string v1, "GET THUMB start id is %d, and uri is %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    :cond_2
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    .line 808
    const-string v0, "CameraApp"

    const-string v1, "GET THUMB end: uri not valid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const/4 v0, 0x0

    goto :goto_1

    .line 812
    :cond_3
    if-nez p2, :cond_4

    .line 813
    invoke-static {p0, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/ExifUtil;->getExifOrientationDegree(Ljava/lang/String;)I

    move-result v7

    .line 814
    .local v7, degree:I
    invoke-static {}, Lcom/lge/camera/util/BitmapManager;->instance()Lcom/lge/camera/util/BitmapManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/util/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 815
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mImageHandler:Lcom/lge/camera/util/ImageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v7, v1}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 816
    const-string v0, "CameraApp"

    const-string v1, "GET PICTURE THUMB end"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 818
    .end local v7           #degree:I
    :cond_4
    invoke-static {}, Lcom/lge/camera/util/BitmapManager;->instance()Lcom/lge/camera/util/BitmapManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/util/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 819
    const-string v0, "CameraApp"

    const-string v1, "GET VIDEO THUMB end"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getPostViewParameters()Lcom/lge/camera/postview/PostViewParameters;
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    return-object v0
.end method

.method protected getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 733
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-nez v0, :cond_0

    .line 734
    const-string v0, "CameraApp"

    const-string v1, "Postview : postview parameters get fail."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const/4 v0, 0x0

    .line 757
    :goto_0
    return-object v0

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    .line 739
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 740
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->getCameraId()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 741
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    goto :goto_0

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->getCameraDimension()I

    move-result v0

    if-nez v0, :cond_2

    .line 744
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    goto :goto_0

    .line 746
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    goto :goto_0

    .line 751
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->getCameraId()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 752
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    goto :goto_0

    .line 754
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->getCameraDimension()I

    move-result v0

    if-nez v0, :cond_5

    .line 755
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    goto :goto_0

    .line 757
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    goto :goto_0
.end method

.method public getSDCardSetting()Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mSDCardsetting:Z

    return v0
.end method

.method protected getSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    .line 765
    .local v1, preferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;
    if-nez v1, :cond_0

    .line 766
    const-string v2, "not found"

    .line 772
    :goto_0
    return-object v2

    .line 768
    :cond_0
    invoke-virtual {v1, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 769
    .local v0, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_1

    .line 770
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 772
    :cond_1
    const-string v2, "not found"

    goto :goto_0
.end method

.method protected getThumbnailSize(Z)[I
    .locals 5
    .parameter "landscape"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 777
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 779
    .local v0, thumbSize:[I
    if-eqz p1, :cond_0

    .line 780
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a01b4

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v3

    .line 781
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a01b5

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v4

    .line 790
    :goto_0
    return-object v0

    .line 783
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a01b6

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v3

    .line 784
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a01b7

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v4

    goto :goto_0
.end method

.method protected inflateStub(I)Landroid/view/View;
    .locals 2
    .parameter "id"

    .prologue
    .line 862
    invoke-virtual {p0, p1}, Lcom/lge/camera/ShotPostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 863
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 864
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 866
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPausing()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPause:Z

    return v0
.end method

.method protected loadCapturedImage(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "uri"
    .parameter "degrees"

    .prologue
    .line 1308
    const/4 v0, 0x0

    return-object v0
.end method

.method protected loadSingleCapturedImages()Z
    .locals 1

    .prologue
    .line 1304
    const/4 v0, 0x0

    return v0
.end method

.method protected makePostviewMenuItems(I)V
    .locals 19
    .parameter "menuType"

    .prologue
    .line 957
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 958
    .local v6, intent:Landroid/content/Intent;
    const/4 v13, 0x0

    .line 960
    .local v13, postviewMenuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/camera/postview/PostviewMenu;>;"
    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/ShotPostviewActivity;->clearShareAndSetAsMenuList(ZZ)V

    .line 961
    const/16 v17, 0x1

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 962
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuSetAs:Ljava/util/ArrayList;

    .line 967
    :cond_0
    :goto_0
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 968
    .local v15, smartShare:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/ShotPostviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 969
    .local v11, packageManager:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 970
    .local v3, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v9, 0x0

    .line 972
    .local v9, numActivities:I
    const-string v17, "android.intent.action.LGSMARTSHARE"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v15, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 975
    .local v14, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/lge/camera/ShotPostviewActivity;->readMenuActivity(ILandroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    .line 976
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v17

    if-gtz v17, :cond_3

    .line 1027
    :cond_1
    :goto_1
    return-void

    .line 963
    .end local v3           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9           #numActivities:I
    .end local v11           #packageManager:Landroid/content/pm/PackageManager;
    .end local v14           #ri:Landroid/content/pm/ResolveInfo;
    .end local v15           #smartShare:Landroid/content/Intent;
    :cond_2
    if-nez p1, :cond_0

    .line 964
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuShare:Ljava/util/ArrayList;

    goto :goto_0

    .line 980
    .restart local v3       #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v9       #numActivities:I
    .restart local v11       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v14       #ri:Landroid/content/pm/ResolveInfo;
    .restart local v15       #smartShare:Landroid/content/Intent;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    .line 981
    const/4 v8, 0x0

    .line 982
    .local v8, labelImage:Ljava/lang/String;
    const/4 v7, 0x0

    .line 983
    .local v7, labelApp:Ljava/lang/String;
    const/4 v12, 0x0

    .line 984
    .local v12, packageName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 985
    .local v5, info:Landroid/content/pm/ResolveInfo;
    const/4 v10, 0x0

    .line 987
    .local v10, optionIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v13, :cond_1

    .line 989
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-eq v4, v9, :cond_5

    .line 990
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 991
    .restart local v5       #info:Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_4

    .line 993
    invoke-virtual {v5, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 994
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 995
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 996
    invoke-virtual {v5, v11}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 998
    new-instance v17, Lcom/lge/camera/postview/PostviewMenu;

    move-object/from16 v0, v17

    invoke-direct {v0, v8, v7, v12, v10}, Lcom/lge/camera/postview/PostviewMenu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1003
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportPushContorl()Z

    move-result v17

    if-nez v17, :cond_6

    if-nez p1, :cond_6

    if-eqz v14, :cond_6

    .line 1005
    invoke-virtual {v14, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1006
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1007
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1008
    invoke-virtual {v14, v11}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1010
    new-instance v17, Lcom/lge/camera/postview/PostviewMenu;

    move-object/from16 v0, v17

    invoke-direct {v0, v8, v7, v12, v10}, Lcom/lge/camera/postview/PostviewMenu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Lcom/lge/camera/ShotPostviewActivity;->sortPostviewMenuList(Ljava/util/ArrayList;Landroid/content/pm/PackageManager;)V

    .line 1016
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v9, :cond_7

    .line 1017
    const-string v18, "U+Box"

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lge/camera/postview/PostviewMenu;

    invoke-virtual/range {v17 .. v17}, Lcom/lge/camera/postview/PostviewMenu;->getLabelImage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1018
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lge/camera/postview/PostviewMenu;

    .line 1019
    .local v16, uplusBoxMenu:Lcom/lge/camera/postview/PostviewMenu;
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1020
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1025
    .end local v16           #uplusBoxMenu:Lcom/lge/camera/postview/PostviewMenu;
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/camera/ShotPostviewActivity;->removeLabelAppByCompareLableImage(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1016
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1201
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 714
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged : newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setOrientationByWindowOrientation()V

    .line 718
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 719
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Postview onCreate()-start "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Model name:%s"

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->configureWindow()V

    .line 135
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x100

    invoke-virtual {v4, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 136
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 137
    .local v1, outMetrics:Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/lge/camera/ShotPostviewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 138
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 139
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Lcom/lge/camera/properties/CameraConstants;->setLcdSize(II)V

    .line 140
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->setProjectCode()I

    .line 141
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->setCarrierCode()I

    .line 143
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/postview/PostViewParameters;->setPostViewParameters(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 145
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->isSecureCamera()Z

    move-result v2

    .line 146
    .local v2, secureCamera:Z
    if-eqz v2, :cond_0

    .line 147
    new-instance v4, Lcom/lge/camera/postview/PostViewScreenOffReceiver;

    invoke-direct {v4, p0}, Lcom/lge/camera/postview/PostViewScreenOffReceiver;-><init>(Lcom/lge/camera/postview/ReceiverFunction;)V

    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mScreenOffReceiver:Lcom/lge/camera/postview/PostViewScreenOffReceiver;

    .line 148
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mScreenOffReceiver:Lcom/lge/camera/postview/PostViewScreenOffReceiver;

    invoke-direct {p0, v4}, Lcom/lge/camera/ShotPostviewActivity;->registerScreenOffReceiver(Lcom/lge/camera/postview/PostViewScreenOffReceiver;)V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {v4, v10, v2}, Lcom/lge/camera/util/Common;->configureWindowFlag(Landroid/view/Window;ZZ)V

    .line 152
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setOrientationByWindowOrientation()V

    .line 153
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    iget-object v5, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getPreviewOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setOrientationByPreview(I)V

    .line 154
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setOrientationListener()V

    .line 155
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v4, v10}, Lcom/lge/camera/postview/PostviewOrientationInfo;->enableOrientationListener(Z)V

    .line 157
    new-instance v4, Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    invoke-direct {v4, p0}, Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;-><init>(Lcom/lge/camera/postview/ReceiverFunction;)V

    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mediaReceiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    .line 158
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mediaReceiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    invoke-direct {p0, v4}, Lcom/lge/camera/ShotPostviewActivity;->registerMediaReceiver(Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;)V

    .line 160
    new-instance v4, Lcom/lge/camera/postview/PostViewBatteryReceiver;

    invoke-direct {v4, p0}, Lcom/lge/camera/postview/PostViewBatteryReceiver;-><init>(Lcom/lge/camera/postview/ReceiverFunction;)V

    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->batteryReceiver:Lcom/lge/camera/postview/PostViewBatteryReceiver;

    .line 161
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->batteryReceiver:Lcom/lge/camera/postview/PostViewBatteryReceiver;

    invoke-direct {p0, v4}, Lcom/lge/camera/ShotPostviewActivity;->registerBatteryReceiver(Lcom/lge/camera/postview/PostViewBatteryReceiver;)V

    .line 163
    new-instance v0, Lcom/lge/camera/setting/PreferenceInflater;

    invoke-direct {v0, p0}, Lcom/lge/camera/setting/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, inflater:Lcom/lge/camera/setting/PreferenceInflater;
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getFrontCameraPreferenceResource()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/PreferenceGroup;

    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 165
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getBackCameraPreferenceResource()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/PreferenceGroup;

    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 166
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getFrontCamcorderPreferenceResource()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/PreferenceGroup;

    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 167
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getBackCamcorderPreferenceResource()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/PreferenceGroup;

    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 169
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getBack3dCameraPreferenceResource()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/PreferenceGroup;

    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 171
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getBack3dCamcorderPreferenceResource()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/PreferenceGroup;

    iput-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 174
    :cond_1
    const v4, 0x7f030023

    invoke-virtual {p0, v4}, Lcom/lge/camera/ShotPostviewActivity;->setContentView(I)V

    .line 176
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->doPreProcessOnCreate()V

    .line 177
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->setActionBar()V

    .line 178
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->setupLayout()V

    .line 179
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->postviewShow()V

    .line 180
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->setFileName()V

    .line 181
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->doProcessOnCreate()V

    .line 182
    const-string v4, "CameraApp"

    const-string v5, "Postview onCreate()-end "

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method protected onCreateDialog(II)V
    .locals 5
    .parameter "dialogId"
    .parameter "applicationMode"

    .prologue
    const v4, 0x7f03000c

    .line 1223
    invoke-static {p1, p2}, Lcom/lge/camera/postview/PostviewDialog;->getPostviewDialog(II)Lcom/lge/camera/postview/PostviewDialog;

    move-result-object v1

    .line 1224
    .local v1, mDialog:Lcom/lge/camera/postview/PostviewDialog;
    const/4 v0, 0x0

    .line 1225
    .local v0, adapter:Lcom/lge/camera/postview/PostviewMenuAdapter;
    packed-switch p1, :pswitch_data_0

    .line 1238
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog_postview"

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/postview/PostviewDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1239
    return-void

    .line 1227
    :pswitch_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lge/camera/ShotPostviewActivity;->makePostviewMenuItems(I)V

    .line 1228
    new-instance v0, Lcom/lge/camera/postview/PostviewMenuAdapter;

    .end local v0           #adapter:Lcom/lge/camera/postview/PostviewMenuAdapter;
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuShare:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v4, v3}, Lcom/lge/camera/postview/PostviewMenuAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1229
    .restart local v0       #adapter:Lcom/lge/camera/postview/PostviewMenuAdapter;
    invoke-virtual {v1, v0}, Lcom/lge/camera/postview/PostviewDialog;->setSharedListDialogAdater(Lcom/lge/camera/postview/PostviewMenuAdapter;)V

    goto :goto_0

    .line 1232
    :pswitch_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lge/camera/ShotPostviewActivity;->makePostviewMenuItems(I)V

    .line 1233
    new-instance v0, Lcom/lge/camera/postview/PostviewMenuAdapter;

    .end local v0           #adapter:Lcom/lge/camera/postview/PostviewMenuAdapter;
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->postviewMenuSetAs:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v4, v3}, Lcom/lge/camera/postview/PostviewMenuAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1234
    .restart local v0       #adapter:Lcom/lge/camera/postview/PostviewMenuAdapter;
    invoke-virtual {v1, v0}, Lcom/lge/camera/postview/PostviewDialog;->setSharedListDialogAdater(Lcom/lge/camera/postview/PostviewMenuAdapter;)V

    goto :goto_0

    .line 1225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 289
    const-string v0, "CameraApp"

    const-string v1, "Postview onDestroy()"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v0, v4}, Lcom/lge/camera/postview/PostviewOrientationInfo;->enableOrientationListener(Z)V

    .line 292
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->releaseOrientationListener()V

    .line 293
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->doProcessOnDestroy()V

    .line 296
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->removePostAllRunnables()V

    .line 297
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->clearParameters()V

    .line 299
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mediaReceiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mediaReceiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/camera/ShotPostviewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 303
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mediaReceiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;->unbind()V

    .line 304
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mediaReceiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->batteryReceiver:Lcom/lge/camera/postview/PostViewBatteryReceiver;

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->batteryReceiver:Lcom/lge/camera/postview/PostViewBatteryReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/camera/ShotPostviewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 308
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->batteryReceiver:Lcom/lge/camera/postview/PostViewBatteryReceiver;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewBatteryReceiver;->unbind()V

    .line 309
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->batteryReceiver:Lcom/lge/camera/postview/PostViewBatteryReceiver;

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mScreenOffReceiver:Lcom/lge/camera/postview/PostViewScreenOffReceiver;

    if-eqz v0, :cond_4

    .line 312
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mScreenOffReceiver:Lcom/lge/camera/postview/PostViewScreenOffReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/camera/ShotPostviewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 313
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mScreenOffReceiver:Lcom/lge/camera/postview/PostViewScreenOffReceiver;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewScreenOffReceiver;->unbind()V

    .line 314
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mScreenOffReceiver:Lcom/lge/camera/postview/PostViewScreenOffReceiver;

    .line 317
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    if-eqz v0, :cond_5

    .line 318
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewToast;->unbind()V

    .line 319
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    .line 322
    :cond_5
    iput-boolean v4, p0, Lcom/lge/camera/ShotPostviewActivity;->bConnectedDevice:Z

    .line 323
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    .line 324
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    .line 325
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mExitInteraction:Ljava/lang/Runnable;

    .line 326
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mCamera:Landroid/hardware/Camera;

    .line 328
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v0, :cond_6

    .line 329
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v0}, Lcom/lge/camera/setting/PreferenceGroup;->close()V

    .line 330
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 332
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v0, :cond_7

    .line 333
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v0}, Lcom/lge/camera/setting/PreferenceGroup;->close()V

    .line 334
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 336
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v0, :cond_8

    .line 337
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v0}, Lcom/lge/camera/setting/PreferenceGroup;->close()V

    .line 338
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mFrontCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 340
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v0, :cond_9

    .line 341
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v0}, Lcom/lge/camera/setting/PreferenceGroup;->close()V

    .line 342
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mBackCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 344
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v0, :cond_a

    .line 345
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v0}, Lcom/lge/camera/setting/PreferenceGroup;->close()V

    .line 346
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 348
    :cond_a
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v0, :cond_b

    .line 349
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v0}, Lcom/lge/camera/setting/PreferenceGroup;->close()V

    .line 350
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mBack3dCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 353
    :cond_b
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_c

    .line 354
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 356
    :cond_c
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 357
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mImageHandler:Lcom/lge/camera/util/ImageHandler;

    .line 358
    iput-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mDialog:Landroid/app/Dialog;

    .line 360
    invoke-static {}, Lcom/lge/camera/postview/PostviewDialog;->getPostviewDialog()Lcom/lge/camera/postview/PostviewDialog;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 361
    invoke-static {}, Lcom/lge/camera/postview/PostviewDialog;->getPostviewDialog()Lcom/lge/camera/postview/PostviewDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostviewDialog;->unbind()V

    .line 363
    :cond_d
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Util;->recursiveRecycle(Landroid/view/View;)V

    .line 364
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 365
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 421
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown - keyCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    const/16 v2, 0x18

    if-eq p1, v2, :cond_0

    const/16 v2, 0x19

    if-eq p1, v2, :cond_0

    .line 456
    :goto_0
    :sswitch_0
    return v0

    .line 430
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 435
    :sswitch_1
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->doBackKeyInPostview()V

    move v0, v1

    .line 436
    goto :goto_0

    .line 432
    :sswitch_2
    const-string v0, "CameraApp"

    const-string v2, "KEYCODE_MENU"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 433
    goto :goto_0

    .line 439
    :sswitch_3
    invoke-virtual {p0, p2}, Lcom/lge/camera/ShotPostviewActivity;->doVolumeKey(Landroid/view/KeyEvent;)V

    move v0, v1

    .line 440
    goto :goto_0

    :sswitch_4
    move v0, v1

    .line 449
    goto :goto_0

    .line 430
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_4
        0x17 -> :sswitch_4
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_4
        0x4f -> :sswitch_0
        0x50 -> :sswitch_4
        0x52 -> :sswitch_2
        0x54 -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 485
    sparse-switch p1, :sswitch_data_0

    .line 499
    :goto_0
    :sswitch_0
    return v0

    .line 488
    :sswitch_1
    const-string v1, "CameraApp"

    const-string v2, "KEYCODE_MENU or KEYCODE_BACK keyup"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 492
    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 485
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x4f -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 254
    const-string v0, "CameraApp"

    const-string v1, "Postview onPause() - start"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iput-boolean v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPause:Z

    .line 257
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/lge/camera/util/Common;->configureWindowFlag(Landroid/view/Window;ZZ)V

    .line 259
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->doProcessOnPause()V

    .line 261
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v0, v3}, Lcom/lge/camera/postview/PostviewOrientationInfo;->enableOrientationListener(Z)V

    .line 263
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->releaseOrientationListener()V

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->removeExitInteraction()V

    .line 267
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->removePostAllRunnables()V

    .line 269
    invoke-direct {p0}, Lcom/lge/camera/ShotPostviewActivity;->checkAndDisconnectCameraDevice()V

    .line 271
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 272
    const-string v0, "CameraApp"

    const-string v1, "Postview onPause() - end"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 187
    const-string v0, "CameraApp"

    const-string v1, "Postview onRestart()-start "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->setEnterCheckComplete(Z)V

    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 190
    const-string v0, "CameraApp"

    const-string v1, "Postview onRestart()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 195
    const-string v2, "CameraApp"

    const-string v3, "Postview onResume() - start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {p0, v5}, Lcom/lge/camera/util/CheckStatusManager;->checkEnterApplication(Landroid/app/Activity;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 201
    const-string v2, "CameraApp"

    const-string v3, "onResume()-end, checkEnterApplication"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/lge/camera/util/CheckStatusManager;->checkCameraOut(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 241
    :goto_0
    return-void

    .line 205
    :cond_0
    sget-boolean v2, Lcom/lge/camera/properties/CameraConstants;->MEDIA_RECEIVER_FINISHED:Z

    if-eqz v2, :cond_1

    .line 206
    const-string v2, "CameraApp"

    const-string v3, "Destroy Postview when media ejected"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    sput-boolean v4, Lcom/lge/camera/properties/CameraConstants;->MEDIA_RECEIVER_FINISHED:Z

    .line 208
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 209
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->finish()V

    goto :goto_0

    .line 213
    :cond_1
    iget-boolean v2, p0, Lcom/lge/camera/ShotPostviewActivity;->isFromCreateProcess:Z

    if-nez v2, :cond_2

    .line 214
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->isSecureCamera()Z

    move-result v3

    invoke-static {v2, v5, v3}, Lcom/lge/camera/util/Common;->configureWindowFlag(Landroid/view/Window;ZZ)V

    .line 217
    :cond_2
    invoke-static {p0}, Lcom/lge/camera/util/Common;->backlightControl(Landroid/app/Activity;)V

    .line 218
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/AppControlUtil;->setFmRadioOff(Landroid/content/Context;)V

    .line 219
    iput-boolean v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPause:Z

    .line 221
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-eqz v2, :cond_3

    .line 223
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 225
    .local v0, displayOrientationSetting:I
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v2, v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setDisplayOrientationSettingValue(I)V

    .line 226
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DisplayOrientationSetting is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v0           #displayOrientationSetting:I
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostviewOrientationInfo;->getOrientationListenerEnable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 232
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setOrientationListener()V

    .line 233
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v2, v5}, Lcom/lge/camera/postview/PostviewOrientationInfo;->enableOrientationListener(Z)V

    .line 237
    :cond_3
    invoke-direct {p0}, Lcom/lge/camera/ShotPostviewActivity;->connectCameraDevice()V

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 240
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->doProcessOnResume()V

    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "CameraApp"

    const-string v3, "SettingNotFoundException:"

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 245
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 246
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 247
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/camera/util/AppControlUtil;->setNavigationBg(Landroid/app/Activity;Z)V

    .line 250
    :cond_0
    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 674
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    invoke-virtual {v0, p1}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 678
    :cond_0
    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "action"
    .parameter "delay"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 685
    :cond_0
    return-void
.end method

.method protected abstract postviewShow()V
.end method

.method protected readMenuActivity(ILandroid/content/Intent;)Ljava/util/List;
    .locals 4
    .parameter "menuType"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1099
    const/4 v0, 0x0

    .line 1100
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1102
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 1103
    const-string v2, "image/jpeg"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    :goto_0
    if-nez p1, :cond_1

    .line 1109
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1110
    invoke-virtual {v1, p2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1115
    :goto_1
    return-object v0

    .line 1105
    :cond_0
    const-string v2, "video/*"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1112
    :cond_1
    const-string v2, "android.intent.action.ATTACH_DATA"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1113
    invoke-virtual {v1, p2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method protected abstract reloadedPostview()V
.end method

.method public removeExitInteraction()V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v0, :cond_1

    const-string v0, "on_delay_2sec"

    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getAutoReview()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "on_delay_5sec"

    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getAutoReview()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mExitInteraction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/camera/ShotPostviewActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 668
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mExitInteraction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 671
    :cond_1
    return-void
.end method

.method protected removeLabelAppByCompareLableImage(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/postview/PostviewMenu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, postviewMenuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/camera/postview/PostviewMenu;>;"
    const/4 v4, 0x0

    .line 1031
    const/4 v0, 0x0

    .line 1032
    .local v0, compareString1:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1034
    .local v1, compareString2:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/postview/PostviewMenu;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostviewMenu;->getLabelImage()Ljava/lang/String;

    move-result-object v0

    .line 1035
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1036
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/postview/PostviewMenu;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostviewMenu;->getLabelImage()Ljava/lang/String;

    move-result-object v1

    .line 1038
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1040
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/postview/PostviewMenu;

    invoke-virtual {v3, v4}, Lcom/lge/camera/postview/PostviewMenu;->setLabelApp(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1043
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/postview/PostviewMenu;

    invoke-virtual {v3, v4}, Lcom/lge/camera/postview/PostviewMenu;->setLabelApp(Ljava/lang/String;)V

    .line 1046
    :cond_0
    move-object v0, v1

    .line 1035
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1048
    :cond_1
    return-void
.end method

.method public removePostAllRunnables()V
    .locals 4

    .prologue
    .line 700
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-nez v2, :cond_1

    .line 701
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "mPostRunnables is null"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :goto_0
    return-void

    .line 705
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 706
    .local v1, postRunnableSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 707
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v3, v2}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 706
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 709
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public removePostRunnable(Ljava/lang/Object;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 688
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 689
    const-string v1, "CameraApp"

    const-string v2, "mPostRunnables is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 693
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 694
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 695
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected saveFinished()V
    .locals 3

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 937
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "save_done"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 938
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/ShotPostviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 939
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 940
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->finish()V

    .line 942
    :cond_0
    return-void
.end method

.method protected setActionBar()V
    .locals 2

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 504
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 505
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 506
    return-void
.end method

.method protected setFileName()V
    .locals 0

    .prologue
    .line 1315
    return-void
.end method

.method protected setFileNameLayout()V
    .locals 0

    .prologue
    .line 1312
    return-void
.end method

.method protected setLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;IIIII)V
    .locals 0
    .parameter "params"
    .parameter "width"
    .parameter "height"
    .parameter "leftMargin"
    .parameter "topMargin"
    .parameter "bottomMargin"

    .prologue
    .line 723
    if-eqz p1, :cond_0

    .line 724
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 725
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 726
    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 727
    iput p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 728
    iput p6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 730
    :cond_0
    return-void
.end method

.method public setSDCardSetting(Z)V
    .locals 0
    .parameter "isInsertSD"

    .prologue
    .line 544
    iput-boolean p1, p0, Lcom/lge/camera/ShotPostviewActivity;->mSDCardsetting:Z

    .line 545
    return-void
.end method

.method protected abstract setupLayout()V
.end method

.method protected showProgressDialog(II)V
    .locals 3
    .parameter "dialogId"
    .parameter "applicationMode"

    .prologue
    .line 1242
    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    .line 1244
    :cond_0
    invoke-static {p1, p2}, Lcom/lge/camera/postview/PostviewDialog;->getPostviewDialog(II)Lcom/lge/camera/postview/PostviewDialog;

    move-result-object v0

    .line 1245
    .local v0, mDialog:Lcom/lge/camera/postview/PostviewDialog;
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog_postview"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/postview/PostviewDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1247
    .end local v0           #mDialog:Lcom/lge/camera/postview/PostviewDialog;
    :cond_1
    return-void
.end method

.method protected sortPostviewMenuList(Ljava/util/ArrayList;Landroid/content/pm/PackageManager;)V
    .locals 8
    .parameter
    .parameter "packageManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/postview/PostviewMenu;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1052
    .local p1, postviewMenuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/camera/postview/PostviewMenu;>;"
    const-string v6, "ro.build.target_country"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1053
    .local v5, strCountry:Ljava/lang/String;
    const-string v6, "CLR"

    const-string v7, "ro.build.target_operator"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "COM"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "BR"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "CO"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1057
    :cond_0
    const/4 v3, 0x0

    .line 1058
    .local v3, pluggerInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    .line 1061
    .local v1, mmsInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v6, "com.lge.plugger"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1062
    const-string v6, "com.android.mms"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1067
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1068
    .local v4, pluggerName:Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1070
    .local v2, mmsName:Ljava/lang/String;
    :goto_2
    new-instance v6, Lcom/lge/camera/ShotPostviewActivity$7;

    invoke-direct {v6, p0, v4, v2}, Lcom/lge/camera/ShotPostviewActivity$7;-><init>(Lcom/lge/camera/ShotPostviewActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1096
    .end local v1           #mmsInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #mmsName:Ljava/lang/String;
    .end local v3           #pluggerInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #pluggerName:Ljava/lang/String;
    :goto_3
    return-void

    .line 1063
    .restart local v1       #mmsInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #pluggerInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 1064
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "CameraApp"

    const-string v7, "NameNotFoundException:"

    invoke-static {v6, v7, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1067
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string v4, ""

    goto :goto_1

    .line 1068
    .restart local v4       #pluggerName:Ljava/lang/String;
    :cond_2
    const-string v2, ""

    goto :goto_2

    .line 1086
    .end local v1           #mmsInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #pluggerInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #pluggerName:Ljava/lang/String;
    :cond_3
    new-instance v6, Lcom/lge/camera/ShotPostviewActivity$8;

    invoke-direct {v6, p0}, Lcom/lge/camera/ShotPostviewActivity$8;-><init>(Lcom/lge/camera/ShotPostviewActivity;)V

    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3
.end method

.method protected startPostviewMenuItems(ILcom/lge/camera/postview/PostviewMenu;)V
    .locals 14
    .parameter "menuType"
    .parameter "selectedMenu"

    .prologue
    .line 1119
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1120
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1121
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 1122
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .line 1124
    .local v5, numActivities:I
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/postview/PostviewMenu;->getLabelImage()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2

    .line 1125
    :cond_0
    const v11, 0x7f0b018d

    invoke-virtual {p0, v11}, Lcom/lge/camera/ShotPostviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/lge/camera/ShotPostviewActivity;->toast(Ljava/lang/String;)V

    .line 1170
    :cond_1
    :goto_0
    return-void

    .line 1129
    :cond_2
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1130
    .local v9, smartShare:Landroid/content/Intent;
    const/4 v8, 0x0

    .line 1131
    .local v8, ri:Landroid/content/pm/ResolveInfo;
    if-nez p1, :cond_3

    .line 1132
    const-string v11, "android.intent.action.LGSMARTSHARE"

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1133
    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 1135
    if-eqz v8, :cond_3

    invoke-virtual {v8, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/postview/PostviewMenu;->getLabelImage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1136
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    .local v10, uri:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v11, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v11}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    const-string v11, "android.intent.extra.STREAM"

    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1139
    const-string v11, "smartshare.type"

    const-string v12, "Camera"

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1140
    const-string v11, "smartshare.package.name"

    const-string v12, "com.lge.camera.CameraApp"

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1142
    invoke-virtual {p0, p1, v9, v8}, Lcom/lge/camera/ShotPostviewActivity;->startResolvedActivity(ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    goto :goto_0

    .line 1147
    .end local v10           #uri:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_3
    invoke-virtual {p0, p1, v3}, Lcom/lge/camera/ShotPostviewActivity;->readMenuActivity(ILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 1148
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 1152
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 1154
    const/4 v4, 0x0

    .line 1155
    .local v4, menuLabel:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1157
    .local v7, packageName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 1158
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1159
    .local v2, infoImage:Landroid/content/pm/ResolveInfo;
    iget-object v11, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1160
    invoke-virtual {p0}, Lcom/lge/camera/ShotPostviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1162
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/postview/PostviewMenu;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/postview/PostviewMenu;->getLabelImage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1165
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Calling Package/App = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-virtual {p0, p1, v3, v2}, Lcom/lge/camera/ShotPostviewActivity;->startResolvedActivity(ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    goto/16 :goto_0

    .line 1157
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected startResolvedActivity(ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 6
    .parameter "menuType"
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 1173
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1174
    .local v2, resolvedIntent:Landroid/content/Intent;
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1175
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1177
    const/4 v1, 0x0

    .line 1178
    .local v1, capturedImageUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 1179
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mCurrentSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #capturedImageUri:Landroid/net/Uri;
    check-cast v1, Landroid/net/Uri;

    .line 1184
    .restart local v1       #capturedImageUri:Landroid/net/Uri;
    :goto_0
    if-nez p1, :cond_1

    .line 1185
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1191
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    new-instance v4, Lcom/lge/camera/ShotPostviewActivity$9;

    invoke-direct {v4, p0, p1, v2}, Lcom/lge/camera/ShotPostviewActivity$9;-><init>(Lcom/lge/camera/ShotPostviewActivity;ILandroid/content/Intent;)V

    invoke-virtual {v3, v4}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1197
    return-void

    .line 1181
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #capturedImageUri:Landroid/net/Uri;
    check-cast v1, Landroid/net/Uri;

    .restart local v1       #capturedImageUri:Landroid/net/Uri;
    goto :goto_0

    .line 1187
    :cond_1
    const-string v3, "image/jpeg"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1188
    const-string v3, "mimeType"

    const-string v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public toast(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/postview/PostViewToast;->cancel(Z)V

    .line 645
    new-instance v0, Lcom/lge/camera/ShotPostviewActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/lge/camera/ShotPostviewActivity$4;-><init>(Lcom/lge/camera/ShotPostviewActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/ShotPostviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 660
    :cond_0
    return-void
.end method
