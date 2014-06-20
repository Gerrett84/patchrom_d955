.class public abstract Lcom/lge/camera/Mediator;
.super Ljava/lang/Object;
.source "Mediator.java"

# interfaces
.implements Lcom/lge/camera/ControllerFunction;
.implements Lcom/lge/camera/util/MainHandler$HandlerFunction;
.implements Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;
.implements Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;
.implements Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;
.implements Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;
.implements Lcom/lge/camera/LocationInfo$LocationInfoFunction;
.implements Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/Mediator$ActivityBridge;
    }
.end annotation


# instance fields
.field private bShowCameraErrorPopup:Z

.field protected imageHandler:Lcom/lge/camera/util/ImageHandler;

.field protected imageHandlerRotationOff:Lcom/lge/camera/util/ImageHandler;

.field private isCameraKeyLongPressed:Z

.field private isEventIgnoreDuringSaving:Z

.field private isNeedProgressDuringCapture:Z

.field protected mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

.field protected mApplicationMode:I

.field private mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

.field private mBack3dPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field private mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field private mBatteryLevel:I

.field protected mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

.field private mBlockTouchByCallPopUp:Z

.field protected mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

.field protected mBrightnessControllerExpand:Lcom/lge/camera/controller/BrightnessControllerExpand;

.field protected mBroadCastReceiver:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

.field protected mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

.field private mCameraId:I

.field protected mCameraMode:I

.field private mChangingToOtherActivity:Z

.field public mCharging:Z

.field protected mCheckTemperature:Lcom/lge/camera/CheckTemperature;

.field protected mCommandManager:Lcom/lge/camera/command/CommandManager;

.field private mControllerInitialized:Z

.field public mControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/Controller;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRecordingTime:J

.field protected mDialogController:Lcom/lge/camera/controller/DialogController;

.field protected mDidRegister:Z

.field private mErrorOccuredAndFinish:Z

.field private mFaceBeauty:Lcom/lge/olaworks/library/FaceBeauty;

.field protected mFocusController:Lcom/lge/camera/controller/FocusController;

.field protected mFocusMode:I

.field private mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field private mGoingAutoQuickReview:Z

.field protected mHandler:Lcom/lge/camera/util/MainHandler;

.field protected mImageRotationDegree:I

.field private mInCaptureProgress:Z

.field protected mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

.field public mIsClearView:Z

.field private mIsClearViewBeforeRecording:Z

.field private mIsEnableInput:Z

.field private mIsFlashOffByHighTemperature:Z

.field private mIsIAFlashOn:Z

.field private mIsSendBroadcastIntent:Z

.field private mIsSwapCameraProcessing:Z

.field protected mLocationInfo:Lcom/lge/camera/LocationInfo;

.field protected mMainCameraDimension:I

.field protected mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

.field protected mModule:Lcom/lge/camera/module/Module;

.field public mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

.field private mOpenLBSSetting:Z

.field protected mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

.field protected mOrientationInfo:Lcom/lge/camera/OrientationInfo;

.field private mParameteredRotation:I

.field protected mPausing:Z

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

.field protected mPreviewController:Lcom/lge/camera/controller/PreviewController;

.field protected mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

.field protected mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

.field protected mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

.field protected mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

.field protected mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

.field private mRefreshMenuRunnable:Ljava/lang/Runnable;

.field private mRotateBatteryIndicatorwithHint:Z

.field protected mSavedFileName:Ljava/lang/String;

.field protected mSavedImageUri:Landroid/net/Uri;

.field private mSetCameraMode:Z

.field private mSetTimeMachineComplete:Z

.field protected mSettingController:Lcom/lge/camera/controller/SettingController;

.field protected mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

.field protected mSoundController:Lcom/lge/camera/controller/SoundController;

.field protected mStatus:I

.field protected mStorageController:Lcom/lge/camera/controller/StorageController;

.field protected mSubMenuMode:I

.field private mToast:Landroid/widget/Toast;

.field protected mToastController:Lcom/lge/camera/controller/ToastController;

.field protected mUiThread:Ljava/lang/Thread;

.field private mVideoState:I

.field protected mZoomController:Lcom/lge/camera/controller/ZoomController;

.field private strLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator$ActivityBridge;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 256
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    .line 181
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mModule:Lcom/lge/camera/module/Module;

    .line 189
    iput v2, p0, Lcom/lge/camera/Mediator;->mVideoState:I

    .line 194
    iput v2, p0, Lcom/lge/camera/Mediator;->mApplicationMode:I

    .line 195
    iput v2, p0, Lcom/lge/camera/Mediator;->mCameraMode:I

    .line 196
    iput v2, p0, Lcom/lge/camera/Mediator;->mMainCameraDimension:I

    .line 200
    iput v2, p0, Lcom/lge/camera/Mediator;->mStatus:I

    .line 202
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mBroadCastReceiver:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    .line 203
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mDidRegister:Z

    .line 204
    new-instance v0, Lcom/lge/camera/OrientationInfo;

    invoke-direct {v0, p0}, Lcom/lge/camera/OrientationInfo;-><init>(Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    .line 205
    new-instance v0, Lcom/lge/camera/LocationInfo;

    invoke-direct {v0, p0}, Lcom/lge/camera/LocationInfo;-><init>(Lcom/lge/camera/LocationInfo$LocationInfoFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    .line 207
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mRotateBatteryIndicatorwithHint:Z

    .line 210
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mSetCameraMode:Z

    .line 211
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mGoingAutoQuickReview:Z

    .line 213
    new-instance v0, Lcom/lge/camera/util/ImageRotationOn;

    invoke-direct {v0}, Lcom/lge/camera/util/ImageRotationOn;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    .line 214
    new-instance v0, Lcom/lge/camera/util/ImageRotationOff;

    invoke-direct {v0}, Lcom/lge/camera/util/ImageRotationOff;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->imageHandlerRotationOff:Lcom/lge/camera/util/ImageHandler;

    .line 217
    iput-boolean v1, p0, Lcom/lge/camera/Mediator;->mIsEnableInput:Z

    .line 219
    new-instance v0, Lcom/lge/camera/command/CommandManager;

    invoke-direct {v0, p0}, Lcom/lge/camera/command/CommandManager;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    .line 220
    new-instance v0, Lcom/lge/camera/util/MainHandler;

    invoke-direct {v0, p0}, Lcom/lge/camera/util/MainHandler;-><init>(Lcom/lge/camera/util/MainHandler$HandlerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    .line 221
    new-instance v0, Lcom/lge/camera/CheckTemperature;

    invoke-direct {v0, p0}, Lcom/lge/camera/CheckTemperature;-><init>(Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mCheckTemperature:Lcom/lge/camera/CheckTemperature;

    .line 225
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mControllerInitialized:Z

    .line 226
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mIsSwapCameraProcessing:Z

    .line 228
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mErrorOccuredAndFinish:Z

    .line 229
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mUiThread:Ljava/lang/Thread;

    .line 230
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mCharging:Z

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    .line 233
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mOpenLBSSetting:Z

    .line 234
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    .line 235
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    .line 236
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mBlockTouchByCallPopUp:Z

    .line 237
    iput-boolean v1, p0, Lcom/lge/camera/Mediator;->mIsSendBroadcastIntent:Z

    .line 238
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mIsIAFlashOn:Z

    .line 239
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->isEventIgnoreDuringSaving:Z

    .line 240
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/Mediator;->mCurrentRecordingTime:J

    .line 242
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mSetTimeMachineComplete:Z

    .line 243
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->isCameraKeyLongPressed:Z

    .line 245
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->isNeedProgressDuringCapture:Z

    .line 246
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mToast:Landroid/widget/Toast;

    .line 504
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 505
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 506
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mBack3dPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 725
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mIsClearView:Z

    .line 726
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mIsClearViewBeforeRecording:Z

    .line 1751
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mChangingToOtherActivity:Z

    .line 1759
    const-string v0, "en"

    iput-object v0, p0, Lcom/lge/camera/Mediator;->strLanguage:Ljava/lang/String;

    .line 1767
    new-instance v0, Lcom/lge/camera/Mediator$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/Mediator$1;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mRefreshMenuRunnable:Ljava/lang/Runnable;

    .line 2015
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->bShowCameraErrorPopup:Z

    .line 3572
    new-instance v0, Lcom/lge/olaworks/library/FaceBeauty;

    invoke-direct {v0}, Lcom/lge/olaworks/library/FaceBeauty;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mFaceBeauty:Lcom/lge/olaworks/library/FaceBeauty;

    .line 4518
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mIsFlashOffByHighTemperature:Z

    .line 257
    iput-object p1, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    .line 261
    new-instance v0, Lcom/lge/camera/module/ModuleFactory;

    const-string v1, "com.lge.camera.module"

    invoke-direct {v0, v1, p0}, Lcom/lge/camera/module/ModuleFactory;-><init>(Ljava/lang/String;Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    .line 262
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mUiThread:Ljava/lang/Thread;

    .line 263
    return-void
.end method

.method private getButtonDefine(ZZZ)Landroid/util/SparseIntArray;
    .locals 12
    .parameter "needModeButton"
    .parameter "isIAon"
    .parameter "addFlash"

    .prologue
    .line 2333
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 2334
    .local v1, buttonDefine:Landroid/util/SparseIntArray;
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 2335
    const/16 v10, 0xa

    const/4 v11, 0x5

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2336
    const/16 v10, 0x9

    const/4 v11, 0x6

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2337
    const/4 v10, 0x7

    const/4 v11, 0x7

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2364
    :cond_0
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v10

    if-nez v10, :cond_b

    .line 2365
    const/16 v10, 0x9

    invoke-virtual {v1, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    if-eqz v10, :cond_1

    .line 2366
    const/16 v10, 0x9

    invoke-virtual {v1, v10}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 2370
    :cond_1
    const/4 v9, 0x5

    .line 2371
    .local v9, tempArraySize:I
    const/4 v2, 0x2

    .line 2372
    .local v2, half:I
    const/4 v4, 0x4

    .line 2373
    .local v4, sizeOf4:I
    const/4 v5, 0x5

    .line 2374
    .local v5, sizeOf5:I
    const/4 v6, 0x0

    .line 2376
    .local v6, startIndex:I
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 2377
    .local v0, arraySize:I
    const/4 v10, 0x5

    new-array v8, v10, [I

    .line 2379
    .local v8, tempArray:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_9

    .line 2380
    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    aput v10, v8, v3

    .line 2379
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2338
    .end local v0           #arraySize:I
    .end local v2           #half:I
    .end local v3           #i:I
    .end local v4           #sizeOf4:I
    .end local v5           #sizeOf5:I
    .end local v6           #startIndex:I
    .end local v8           #tempArray:[I
    .end local v9           #tempArraySize:I
    :cond_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_3

    .line 2339
    const/16 v10, 0x9

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2340
    const/4 v10, 0x7

    const/4 v11, 0x2

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 2341
    :cond_3
    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    if-eqz p3, :cond_4

    .line 2342
    const/16 v10, 0xa

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2343
    const/16 v10, 0x9

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2344
    const/4 v10, 0x7

    const/4 v11, 0x2

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2345
    const/16 v10, 0x8

    const/4 v11, 0x3

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 2346
    :cond_4
    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    if-nez p3, :cond_5

    .line 2347
    const/16 v10, 0x9

    const/4 v11, 0x5

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2348
    const/4 v10, 0x7

    const/4 v11, 0x6

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2349
    const/16 v10, 0x8

    const/4 v11, 0x7

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 2350
    :cond_5
    if-nez p1, :cond_6

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    .line 2351
    const/16 v10, 0xa

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2352
    const/16 v10, 0x9

    const/4 v11, 0x2

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_0

    .line 2353
    :cond_6
    if-nez p1, :cond_7

    if-eqz p2, :cond_7

    if-nez p3, :cond_7

    .line 2354
    const/16 v10, 0x9

    const/4 v11, 0x6

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_0

    .line 2355
    :cond_7
    if-nez p1, :cond_8

    if-nez p2, :cond_8

    if-eqz p3, :cond_8

    .line 2356
    const/16 v10, 0xa

    const/4 v11, 0x5

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2357
    const/16 v10, 0x9

    const/4 v11, 0x6

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2358
    const/16 v10, 0x8

    const/4 v11, 0x7

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_0

    .line 2359
    :cond_8
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 2360
    const/16 v10, 0x9

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2361
    const/16 v10, 0x8

    const/4 v11, 0x2

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_0

    .line 2383
    .restart local v0       #arraySize:I
    .restart local v2       #half:I
    .restart local v3       #i:I
    .restart local v4       #sizeOf4:I
    .restart local v5       #sizeOf5:I
    .restart local v6       #startIndex:I
    .restart local v8       #tempArray:[I
    .restart local v9       #tempArraySize:I
    :cond_9
    rem-int/lit8 v10, v0, 0x2

    if-eqz v10, :cond_a

    .line 2384
    rsub-int/lit8 v10, v0, 0x5

    div-int/lit8 v10, v10, 0x2

    add-int/lit8 v6, v10, 0x4

    .line 2389
    :goto_2
    const/4 v3, 0x0

    move v7, v6

    .end local v6           #startIndex:I
    .local v7, startIndex:I
    :goto_3
    if-ge v3, v0, :cond_b

    .line 2390
    aget v10, v8, v3

    add-int/lit8 v6, v7, 0x1

    .end local v7           #startIndex:I
    .restart local v6       #startIndex:I
    invoke-virtual {v1, v10, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2389
    add-int/lit8 v3, v3, 0x1

    move v7, v6

    .end local v6           #startIndex:I
    .restart local v7       #startIndex:I
    goto :goto_3

    .line 2386
    .end local v7           #startIndex:I
    .restart local v6       #startIndex:I
    :cond_a
    rsub-int/lit8 v10, v0, 0x4

    div-int/lit8 v10, v10, 0x2

    add-int/lit8 v6, v10, 0x0

    goto :goto_2

    .line 2393
    .end local v0           #arraySize:I
    .end local v2           #half:I
    .end local v3           #i:I
    .end local v4           #sizeOf4:I
    .end local v5           #sizeOf5:I
    .end local v6           #startIndex:I
    .end local v8           #tempArray:[I
    .end local v9           #tempArraySize:I
    :cond_b
    return-object v1
.end method

.method private setCameraIDForCamcorder()V
    .locals 4

    .prologue
    .line 4328
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4329
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->readVideoIntentExtras()V

    .line 4331
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getRequestedVideoSizeLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 4332
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    const-string v1, "key_preview_size_on_device"

    const-string v2, "320x240"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/SettingController;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4335
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_1

    .line 4336
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->initController()V

    .line 4338
    :cond_1
    return-void
.end method

.method private setCameraIDForCamera()V
    .locals 3

    .prologue
    .line 4341
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    if-eqz v1, :cond_0

    .line 4342
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewController;->initController()V

    .line 4343
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4345
    const-string v1, "shotmode_front_beauty"

    const-string v2, "key_camera_shot_mode"

    invoke-virtual {p0, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4347
    const/4 v0, 0x1

    .line 4354
    :cond_0
    :goto_0
    return-void

    .line 4349
    :cond_1
    const/4 v0, 0x0

    .line 4350
    .local v0, render:Z
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v1, v0}, Lcom/lge/camera/controller/PreviewController;->setupHolder(Z)V

    goto :goto_0
.end method

.method private setPreviewEffectForBeautyShot()V
    .locals 5

    .prologue
    .line 1034
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "shotmode_front_beauty"

    const-string v4, "key_camera_shot_mode"

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "shotmode_main_beauty"

    const-string v4, "key_camera_shot_mode"

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1039
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v3, :cond_2

    .line 1041
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v3}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v1

    .line 1043
    .local v1, gPreview:Lcom/lge/camera/components/OpenGLSurfaceView;
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v3}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreviewExtra()Landroid/view/SurfaceView;

    move-result-object v2

    .line 1046
    .local v2, gPreviewExtra:Landroid/view/SurfaceView;
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mFaceBeauty:Lcom/lge/olaworks/library/FaceBeauty;

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->swapPreviewEffect(Lcom/lge/olaworks/library/BaseEngine;)V

    .line 1047
    if-eqz v1, :cond_1

    .line 1048
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/OpenGLSurfaceView;->setVisibility(I)V

    .line 1050
    :cond_1
    if-eqz v2, :cond_2

    .line 1051
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    .end local v1           #gPreview:Lcom/lge/camera/components/OpenGLSurfaceView;
    .end local v2           #gPreviewExtra:Landroid/view/SurfaceView;
    :cond_2
    :goto_0
    return-void

    .line 1053
    :catch_0
    move-exception v0

    .line 1054
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "CameraApp"

    const-string v4, "NullPointerException!"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public activityFinish()V
    .locals 3

    .prologue
    .line 283
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public addMMSTexture(Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 0
    .parameter "pg"

    .prologue
    .line 4613
    return-void
.end method

.method public addQuickButton(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "buttonType"
    .parameter "location"

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/QuickButtonController;->addQuickButton(Landroid/content/Context;II)V

    .line 2247
    return-void
.end method

.method public addQuickButton(Landroid/content/Context;III)V
    .locals 1
    .parameter "context"
    .parameter "buttonType"
    .parameter "orientation"
    .parameter "location"

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/camera/controller/QuickButtonController;->addQuickButton(Landroid/content/Context;III)V

    .line 2250
    return-void
.end method

.method public afterOnDismissForSelectVideoLength()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3406
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->quickFunctionControllerInitMenu()V

    .line 3407
    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->quickFunctionControllerRefresh(Z)V

    .line 3408
    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->setVideoState(I)V

    .line 3409
    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->enableCommand(Z)V

    .line 3410
    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->checkStorage(Z)V

    .line 3411
    return-void
.end method

.method public allSettingMenuSelectedChild(Ljava/lang/String;Z)V
    .locals 2
    .parameter "key"
    .parameter "useCurrentSettingValue"

    .prologue
    .line 2106
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    .line 2109
    .local v0, chlidSettingIndex:I
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 2110
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getCameraMainSettingMenu()Lcom/lge/camera/setting/CameraMainSettingMenu;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lge/camera/setting/CameraMainSettingMenu;->setSelectedChild(Ljava/lang/String;I)V

    .line 2111
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2112
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getCameraFrontSettingMenu()Lcom/lge/camera/setting/CameraFrontSettingMenu;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lge/camera/setting/CameraFrontSettingMenu;->setSelectedChild(Ljava/lang/String;I)V

    .line 2120
    :cond_0
    :goto_1
    return-void

    .line 2106
    .end local v0           #chlidSettingIndex:I
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenu;->getSelectedChildIndex()I

    move-result v0

    goto :goto_0

    .line 2115
    .restart local v0       #chlidSettingIndex:I
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getVideoMainSettingMenu()Lcom/lge/camera/setting/VideoMainSettingMenu;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lge/camera/setting/VideoMainSettingMenu;->setSelectedChild(Ljava/lang/String;I)V

    .line 2116
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2117
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getVideoFrontSettingMenu()Lcom/lge/camera/setting/VideoFrontSettingMenu;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lge/camera/setting/VideoFrontSettingMenu;->setSelectedChild(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public applyCameraChange()V
    .locals 1

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->applyCameraChange()V

    .line 2181
    return-void
.end method

.method public audioCallbackRestartEngine()V
    .locals 3

    .prologue
    .line 1829
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getDialogID()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_0

    .line 1831
    new-instance v0, Lcom/lge/camera/Mediator$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/Mediator$2;-><init>(Lcom/lge/camera/Mediator;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 1839
    :cond_0
    return-void
.end method

.method public audioCallbackTakePicture()V
    .locals 1

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 1844
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->audioCallbackTakePicture()V

    .line 1846
    :cond_0
    return-void
.end method

.method public beDirectlyGoingToCropGallery()Z
    .locals 1

    .prologue
    .line 4654
    const/4 v0, 0x0

    return v0
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 3983
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->cancelAutoFocus()V

    .line 3984
    return-void
.end method

.method public changeButtonResource(II)V
    .locals 1
    .parameter "type"
    .parameter "resId"

    .prologue
    .line 2270
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(II)V

    .line 2271
    return-void
.end method

.method public changeButtonResource(III)V
    .locals 1
    .parameter "type"
    .parameter "resId"
    .parameter "descriptionId"

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(III)V

    .line 2274
    return-void
.end method

.method public changePreviewModeOnUiThread(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3830
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->changePreviewModeOnUiThread(II)V

    .line 3831
    return-void
.end method

.method public changeQuickPreviewMode(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3833
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->changeQuickPreviewMode(II)V

    .line 3834
    return-void
.end method

.method public changeShutterSound(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 3301
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3302
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SoundController;->changeShutterSound(I)V

    .line 3304
    :cond_0
    return-void
.end method

.method public checkActivity()Z
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkAndCloseChildView()Z
    .locals 1

    .prologue
    .line 2183
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->checkAndCloseChildView()Z

    move-result v0

    return v0
.end method

.method public checkAutoReviewForQuickView()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2692
    const-string v12, "key_camera_auto_review"

    invoke-virtual {p0, v12}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2694
    .local v0, autoReview:Ljava/lang/String;
    const-string v12, "on_delay_2sec"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-wide/16 v4, 0x7d0

    .line 2695
    .local v4, duration:J
    :goto_0
    const-string v12, "on_delay_5sec"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-wide/16 v1, 0x1388

    .line 2697
    .local v1, autoReviewDuration:J
    :goto_1
    cmp-long v12, v1, v8

    if-eqz v12, :cond_5

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v12

    if-nez v12, :cond_5

    .line 2698
    invoke-virtual {p0, v10}, Lcom/lge/camera/Mediator;->setGoingAutoReviewForQuickView(Z)V

    .line 2699
    invoke-virtual {p0, v11}, Lcom/lge/camera/Mediator;->setInCaptureProgress(Z)V

    .line 2700
    invoke-virtual {p0, v11}, Lcom/lge/camera/Mediator;->enableInput(Z)V

    .line 2701
    const-string v12, "key_camera_shot_mode"

    invoke-virtual {p0, v12}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2703
    .local v7, shotMode:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2704
    invoke-virtual {p0, v13, v11}, Lcom/lge/camera/Mediator;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 2705
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2706
    .local v3, bundle:Landroid/os/Bundle;
    const-string v11, "fromJpegCallback"

    invoke-virtual {v3, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2707
    const-string v11, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {p0, v11, v3, v8, v9}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 2727
    .end local v3           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_2
    new-instance v8, Lcom/lge/camera/Mediator$4;

    invoke-direct {v8, p0, v1, v2}, Lcom/lge/camera/Mediator$4;-><init>(Lcom/lge/camera/Mediator;J)V

    invoke-virtual {p0, v8}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;)V

    move v8, v10

    .line 2739
    .end local v7           #shotMode:Ljava/lang/String;
    :goto_3
    return v8

    .end local v1           #autoReviewDuration:J
    .end local v4           #duration:J
    :cond_1
    move-wide v4, v8

    .line 2694
    goto :goto_0

    .restart local v4       #duration:J
    :cond_2
    move-wide v1, v4

    .line 2695
    goto :goto_1

    .line 2708
    .restart local v1       #autoReviewDuration:J
    .restart local v7       #shotMode:Ljava/lang/String;
    :cond_3
    const-string v12, "shotmode_full_continuous"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2709
    new-instance v12, Lcom/lge/camera/Mediator$3;

    invoke-direct {v12, p0}, Lcom/lge/camera/Mediator$3;-><init>(Lcom/lge/camera/Mediator;)V

    invoke-virtual {p0, v12}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2715
    invoke-virtual {p0, v13, v11}, Lcom/lge/camera/Mediator;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 2716
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2717
    .restart local v3       #bundle:Landroid/os/Bundle;
    const-string v11, "from JpegCallback Full Frame Continuous shot"

    invoke-virtual {v3, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2718
    const-string v11, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {p0, v11, v3, v8, v9}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 2720
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v6

    .line 2721
    .local v6, imageListUri:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 2722
    invoke-virtual {v6, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 2725
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v6           #imageListUri:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_4
    const-string v8, "com.lge.camera.command.OnDelayOff"

    invoke-virtual {p0, v8}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_2

    .end local v7           #shotMode:Ljava/lang/String;
    :cond_5
    move v8, v11

    .line 2739
    goto :goto_3
.end method

.method public checkAutoReviewOff(Z)Z
    .locals 6
    .parameter "needToCheckMore"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1700
    const-string v4, "key_camera_auto_review"

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1701
    .local v0, autoReview:Ljava/lang/String;
    const-string v4, "off"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "not found"

    const-string v5, "key_camera_auto_review"

    invoke-virtual {p0, v5}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1704
    if-eqz p1, :cond_1

    .line 1705
    const-string v4, "key_camera_shot_mode"

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1706
    .local v1, shotMode:Ljava/lang/String;
    const-string v4, "0"

    const-string v5, "key_camera_timer"

    invoke-virtual {p0, v5}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "shotmode_normal"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "shotmode_hdr"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "not found"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "shotmode_main_beauty"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1720
    .end local v1           #shotMode:Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .restart local v1       #shotMode:Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 1714
    goto :goto_0

    .end local v1           #shotMode:Ljava/lang/String;
    :cond_3
    move v2, v3

    .line 1720
    goto :goto_0
.end method

.method public checkCamcorderStop(IZ)Z
    .locals 1
    .parameter "repeatCount"
    .parameter "useBackKey"

    .prologue
    .line 4560
    const/4 v0, 0x1

    return v0
.end method

.method public checkCameraShutterSoundLoaded()Z
    .locals 1

    .prologue
    .line 3345
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3346
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->checkCameraShutterSoundLoaded()Z

    move-result v0

    .line 3348
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkCurrentShotModeForModule()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1166
    const-string v1, "not found"

    const-string v2, "key_camera_shot_mode"

    invoke-virtual {p0, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return v0

    .line 1172
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mModule:Lcom/lge/camera/module/Module;

    if-eqz v0, :cond_2

    .line 1173
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mModule:Lcom/lge/camera/module/Module;

    invoke-virtual {v0}, Lcom/lge/camera/module/Module;->checkCurrentShotMode()Z

    move-result v0

    goto :goto_0

    .line 1175
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkFocusController()Z
    .locals 1

    .prologue
    .line 3944
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkFsWritable()Z
    .locals 1

    .prologue
    .line 3463
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    if-eqz v0, :cond_0

    .line 3464
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->checkFsWritable()Z

    move-result v0

    .line 3466
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkGPSSettingValue()Z
    .locals 2

    .prologue
    .line 2054
    const-string v0, "off"

    const-string v1, "key_camera_tag_location"

    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2055
    const/4 v0, 0x0

    .line 2057
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkManualFocusController()Z
    .locals 1

    .prologue
    .line 3085
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkPreviewController()Z
    .locals 1

    .prologue
    .line 3624
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkPreviewPanelController()Z
    .locals 1

    .prologue
    .line 2399
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkSceneMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V
    .locals 4
    .parameter "parameters"
    .parameter "showToast"
    .parameter "toastMessage"

    .prologue
    .line 4421
    const-string v2, "key_scene_mode"

    invoke-virtual {p0, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4422
    .local v0, previeousSceneMode:Ljava/lang/String;
    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "not found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4425
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    .line 4426
    .local v1, supportedScenemode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 4427
    const-string v2, "key_scene_mode"

    const-string v3, "auto"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4429
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_3

    .line 4430
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4431
    const-string v2, "auto"

    invoke-virtual {p0, p1, v2}, Lcom/lge/camera/Mediator;->setSceneModeForAdvanced(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4432
    const-string v2, "shotmode_dual_camera"

    const-string v3, "key_camera_shot_mode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "shotmode_front_beauty"

    const-string v3, "key_camera_shot_mode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "shotmode_main_beauty"

    const-string v3, "key_camera_shot_mode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Smart shutter"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "night"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4441
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/lge/camera/Mediator;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 4447
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 4448
    invoke-virtual {p0, p3}, Lcom/lge/camera/Mediator;->toast(Ljava/lang/String;)V

    .line 4450
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->setQuickFunctionControllerAllMenuIcons()V

    .line 4452
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isIndicatorControllerInitialized()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4453
    new-instance v2, Lcom/lge/camera/Mediator$11;

    invoke-direct {v2, p0}, Lcom/lge/camera/Mediator$11;-><init>(Lcom/lge/camera/Mediator;)V

    invoke-virtual {p0, v2}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4464
    .end local v1           #supportedScenemode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return-void

    .line 4444
    .restart local v1       #supportedScenemode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const-string v2, "com.lge.camera.command.setting.SetSceneMode"

    invoke-virtual {p0, v2, p1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "key"
    .parameter "shotMode"

    .prologue
    const/4 v0, 0x0

    .line 1934
    const-string v1, "key_camera_shot_mode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1937
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkShotModeForMultiWindowAF()Z
    .locals 1

    .prologue
    .line 4382
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->checkShotModeForMultiWindowAF()Z

    move-result v0

    return v0
.end method

.method public checkShotModeForZoomInOut()Z
    .locals 1

    .prologue
    .line 4530
    const/4 v0, 0x1

    return v0
.end method

.method public checkStorage(Z)V
    .locals 1
    .parameter "showToast"

    .prologue
    .line 3460
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 3461
    return-void
.end method

.method public checkStorageController()Z
    .locals 1

    .prologue
    .line 3451
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkSurfaceHolder()Z
    .locals 1

    .prologue
    .line 3627
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkTouchFocusArea(I)Z
    .locals 2
    .parameter "x"

    .prologue
    .line 4010
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    iget v0, v0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    iget v1, v1, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    iget v0, v0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    if-ge p1, v0, :cond_1

    .line 4013
    :cond_0
    const/4 v0, 0x0

    .line 4015
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkUpdateThumbnail()Z
    .locals 1

    .prologue
    .line 4612
    const/4 v0, 0x1

    return v0
.end method

.method public clearFocusState()V
    .locals 1

    .prologue
    .line 3956
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->clearFocusState()V

    .line 3957
    return-void
.end method

.method public clearQuickFunctionSubMenu()V
    .locals 1

    .prologue
    .line 3125
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->clearSubMenu()V

    .line 3126
    return-void
.end method

.method public clearScreen()V
    .locals 1

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    .line 717
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->hide()V

    .line 718
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->hideIndicator()V

    .line 719
    return-void
.end method

.method public clearSettingBarControll()V
    .locals 1

    .prologue
    .line 3035
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    if-eqz v0, :cond_0

    .line 3036
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->clearSettingZoom()V

    .line 3038
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    if-eqz v0, :cond_1

    .line 3039
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BeautyshotController;->clearSettingBeautyshotBar()V

    .line 3041
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    if-eqz v0, :cond_2

    .line 3042
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BrightnessController;->clearSettingBrightnessBar()V

    .line 3044
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    if-eqz v0, :cond_3

    .line 3045
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/Camera3dDepthController;->clearSettingDepth3DBar()V

    .line 3047
    :cond_3
    return-void
.end method

.method public clearSettingMenuAndSubMenu()V
    .locals 1

    .prologue
    .line 2657
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2658
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->clearSettingMenuAndSubMenu()V

    .line 2660
    :cond_0
    return-void
.end method

.method public clearSubMenu()V
    .locals 1

    .prologue
    .line 722
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->clearSubMenu(Z)V

    .line 723
    return-void
.end method

.method public clearSubMenu(Z)V
    .locals 4
    .parameter "includeManualFocus"

    .prologue
    const/4 v3, 0x0

    .line 845
    const-string v1, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 847
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/ZoomController;->showControl(Z)V

    .line 848
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/BrightnessController;->showControl(Z)V

    .line 849
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/BeautyshotController;->showControl(Z)V

    .line 850
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/Camera3dDepthController;->showControl(Z)V

    .line 853
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->clearQuickFunctionSubMenu()V

    .line 854
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isQuickFunctionSettingControllerShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 855
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->removeQuickFunctionSettingView()V

    .line 858
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 859
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isShotModeMenuVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 860
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 861
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "immediately"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 862
    const-string v1, "com.lge.camera.command.HideModeMenu"

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 865
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isSettingControllerVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 866
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->removeSettingView()V

    .line 870
    :cond_3
    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 871
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 872
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->updateThumbnailButtonVisibility()V

    .line 875
    :cond_4
    if-eqz p1, :cond_5

    .line 876
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/ManualFocusController;->showControl(Z)V

    .line 878
    :cond_5
    return-void
.end method

.method public clearViewOff(Z)V
    .locals 4
    .parameter "useAnimation"

    .prologue
    const/4 v3, 0x0

    .line 754
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsClearView:Z

    if-eqz v0, :cond_0

    .line 761
    iput-boolean v3, p0, Lcom/lge/camera/Mediator;->mIsClearView:Z

    .line 762
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->slideQFLIn(Z)V

    .line 763
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/IndicatorController;->slideIndicatorIn(Z)V

    .line 764
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    const/16 v1, 0x64

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/lge/camera/controller/QuickButtonController;->setVisible(IIZ)V

    .line 765
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->slidePanelIn()V

    .line 767
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->resetTimeClearScreen()V

    goto :goto_0
.end method

.method public clearViewOn(Z)V
    .locals 4
    .parameter "useAnimation"

    .prologue
    const/4 v3, 0x1

    .line 735
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsClearView:Z

    if-nez v0, :cond_0

    .line 743
    const-string v0, "com.lge.camera.command.ClearScreen"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->slideQFLOut(Z)V

    .line 745
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    const/16 v1, 0x64

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->setVisible(IIZ)V

    .line 746
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/IndicatorController;->slideIndicatorOut(Z)V

    .line 747
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 748
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->slidePanelOut()V

    .line 750
    :cond_2
    iput-boolean v3, p0, Lcom/lge/camera/Mediator;->mIsClearView:Z

    goto :goto_0
.end method

.method public clearViewOnAtStartRec()V
    .locals 1

    .prologue
    .line 772
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    :goto_0
    return-void

    .line 777
    :cond_0
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsClearView:Z

    iput-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsClearViewBeforeRecording:Z

    .line 778
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->clearViewOn(Z)V

    goto :goto_0
.end method

.method public clearViewRestoreAtStopRec()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 782
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    :goto_0
    return-void

    .line 787
    :cond_0
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsClearViewBeforeRecording:Z

    if-eqz v0, :cond_1

    .line 788
    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->clearViewOn(Z)V

    goto :goto_0

    .line 790
    :cond_1
    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->clearViewOff(Z)V

    goto :goto_0
.end method

.method public closeCamera()V
    .locals 2

    .prologue
    .line 3606
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    .line 3607
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V

    .line 3611
    :goto_0
    return-void

    .line 3609
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "mPreviewController is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public closeGalleryQuickView(Z)V
    .locals 1
    .parameter "deleteImage"

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2663
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->closeGalleryQuickView(Z)V

    .line 2665
    :cond_0
    return-void
.end method

.method protected createControllers()V
    .locals 2

    .prologue
    .line 566
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 567
    new-instance v0, Lcom/lge/camera/controller/PreviewPanel3DController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewPanel3DController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    .line 571
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    new-instance v0, Lcom/lge/camera/controller/BrightnessController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/BrightnessController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    .line 574
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    new-instance v0, Lcom/lge/camera/controller/BrightnessControllerExpand;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/BrightnessControllerExpand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessControllerExpand:Lcom/lge/camera/controller/BrightnessControllerExpand;

    .line 578
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mBrightnessControllerExpand:Lcom/lge/camera/controller/BrightnessControllerExpand;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_0
    new-instance v0, Lcom/lge/camera/controller/BeautyshotController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/BeautyshotController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    .line 582
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 585
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    .line 589
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    new-instance v0, Lcom/lge/camera/controller/ZoomController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ZoomController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    .line 592
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    new-instance v0, Lcom/lge/camera/controller/ManualFocusController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ManualFocusController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    .line 595
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    new-instance v0, Lcom/lge/camera/controller/DialogController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/DialogController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    .line 598
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    new-instance v0, Lcom/lge/camera/controller/SoundController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SoundController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    .line 601
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    new-instance v0, Lcom/lge/camera/controller/ToastController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ToastController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    .line 604
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    new-instance v0, Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickFunctionDragController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

    .line 607
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    new-instance v0, Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickFunctionSettingController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    .line 610
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    new-instance v0, Lcom/lge/camera/controller/QuickButtonController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickButtonController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    .line 613
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    new-instance v0, Lcom/lge/camera/controller/OptionMenuController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/OptionMenuController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    .line 616
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    new-instance v0, Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/Camera3dDepthController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    .line 620
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    :cond_1
    return-void

    .line 569
    :cond_2
    new-instance v0, Lcom/lge/camera/controller/PreviewPanel2DController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewPanel2DController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    goto/16 :goto_0

    .line 587
    :cond_3
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    goto/16 :goto_1
.end method

.method public debugStackTrace(Ljava/lang/String;)V
    .locals 0
    .parameter "from"

    .prologue
    .line 712
    invoke-static {p1}, Lcom/lge/camera/util/Util;->debugStackTrace(Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method public deleteClearShotImages()Z
    .locals 1

    .prologue
    .line 4644
    const/4 v0, 0x1

    return v0
.end method

.method public deleteProgressDialog()V
    .locals 2

    .prologue
    .line 3426
    const-string v0, "CameraApp"

    const-string v1, "deleteProgressDialog"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3427
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    if-eqz v0, :cond_0

    .line 3428
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->deleteProgressDialog()V

    .line 3430
    :cond_0
    return-void
.end method

.method public deleteSavingProgressDialog()V
    .locals 2

    .prologue
    .line 3438
    const-string v0, "CameraApp"

    const-string v1, "deleteProgressDialog"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3439
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    if-eqz v0, :cond_0

    .line 3440
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->deleteSavingProgressDialog()V

    .line 3442
    :cond_0
    return-void
.end method

.method public deleteTimeMachineImages()Z
    .locals 1

    .prologue
    .line 4643
    const/4 v0, 0x1

    return v0
.end method

.method public dialogControllerOnDismiss()V
    .locals 1

    .prologue
    .line 3444
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->onDismiss()V

    .line 3445
    return-void
.end method

.method public disableObjectTrackingForSmartZoom()V
    .locals 1

    .prologue
    .line 3749
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PIPController;->disableObjectTrackingForSmartZoom()V

    .line 3750
    return-void
.end method

.method public displayQuickFunctionSettingView(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 3072
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionSettingController;->displaySettingView(Ljava/lang/String;)V

    .line 3073
    return-void
.end method

.method public displaySettingView()V
    .locals 1

    .prologue
    .line 3488
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->displaySettingView()V

    .line 3489
    return-void
.end method

.method public doAfterSaveImageSavers()V
    .locals 0

    .prologue
    .line 4673
    return-void
.end method

.method public abstract doAttach()V
.end method

.method public doCamcorderContinuousFocusCallback(Z)V
    .locals 0
    .parameter "focusedState"

    .prologue
    .line 4559
    return-void
.end method

.method public doCommand(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1}, Lcom/lge/camera/command/CommandManager;->doCommand(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public doCommand(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "msg"
    .parameter "arg1"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/command/CommandManager;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 417
    return-void
.end method

.method public doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "msg"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/command/CommandManager;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 420
    return-void
.end method

.method public doCommandDelayed(Ljava/lang/String;J)V
    .locals 6
    .parameter "msg"
    .parameter "delay"

    .prologue
    .line 449
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/Mediator;->doCommandWithFixedRate(Ljava/lang/String;JJ)V

    .line 450
    return-void
.end method

.method public doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 7
    .parameter "msg"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 452
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/Mediator;->doCommandWithFixedRate(Ljava/lang/String;Ljava/lang/Object;JJ)V

    .line 453
    return-void
.end method

.method public doCommandNoneParameter(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1}, Lcom/lge/camera/command/CommandManager;->doCommandNoneParameter(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public doCommandNoneParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "msg"
    .parameter "arg1"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/command/CommandManager;->doCommandNoneParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    return-void
.end method

.method public doCommandUi(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1}, Lcom/lge/camera/command/CommandManager;->doCommandUi(Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "msg"
    .parameter "arg1"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/command/CommandManager;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 423
    return-void
.end method

.method public doCommandUi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "msg"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/command/CommandManager;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 426
    return-void
.end method

.method public doCommandWithFixedRate(Ljava/lang/String;JJ)V
    .locals 6
    .parameter "msg"
    .parameter "delay"
    .parameter "period"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/command/CommandManager;->doCommandWithFixedRate(Ljava/lang/String;JJ)V

    .line 456
    return-void
.end method

.method public doCommandWithFixedRate(Ljava/lang/String;Ljava/lang/Object;JJ)V
    .locals 7
    .parameter "msg"
    .parameter "obj"
    .parameter "delay"
    .parameter "period"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/command/CommandManager;->doCommandWithFixedRate(Ljava/lang/String;Ljava/lang/Object;JJ)V

    .line 459
    return-void
.end method

.method public doFocus(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 3977
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/FocusController;->doFocus(Z)V

    .line 3978
    return-void
.end method

.method public doFocusOnCaf()V
    .locals 1

    .prologue
    .line 3980
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->doFocusOnCaf()V

    .line 3981
    return-void
.end method

.method public doModuleAfterCaptureForB2Model()V
    .locals 0

    .prologue
    .line 4650
    return-void
.end method

.method public doSettingFlashHandler()V
    .locals 1

    .prologue
    .line 2029
    const-string v0, "com.lge.camera.command.setting.SetFlashMode"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 2030
    return-void
.end method

.method public doSmartCameraModeCallback([I)V
    .locals 0
    .parameter "data"

    .prologue
    .line 4662
    return-void
.end method

.method public doTakePictureCommand()Z
    .locals 1

    .prologue
    .line 1178
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/module/Module;->takePicture()Z

    move-result v0

    return v0
.end method

.method public abstract doTouchbyAF(II)V
.end method

.method public doVoiceShutterIndicatorUpdateHandler()V
    .locals 0

    .prologue
    .line 4561
    return-void
.end method

.method public effectCameraStopPreview()V
    .locals 1

    .prologue
    .line 3790
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->effectCameraStopPreviewByCallFrom(I)V

    .line 3791
    return-void
.end method

.method public effectCameraStopPreviewByCallFrom(I)V
    .locals 1
    .parameter "calledFrom"

    .prologue
    .line 3799
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v0, p1}, Lcom/lge/camera/EffectsCamera;->stopPreview(I)V

    .line 3800
    return-void
.end method

.method public effectRecorderStopPreview()V
    .locals 1

    .prologue
    .line 3787
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->effectRecorderStopPreviewByCallFrom(I)V

    .line 3788
    return-void
.end method

.method public effectRecorderStopPreviewByCallFrom(I)V
    .locals 1
    .parameter "calledFrom"

    .prologue
    .line 3796
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v0, p1}, Lcom/lge/camera/EffectsRecorder;->stopPreview(I)V

    .line 3797
    return-void
.end method

.method public enableCommand(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2427
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2428
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    .line 2430
    :cond_0
    return-void
.end method

.method public enableInput(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 703
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableInput("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mIsEnableInput:Z

    .line 705
    return-void
.end method

.method public enegineProcessorSetEngine(Lcom/lge/olaworks/library/BaseEngine;)Lcom/lge/olaworks/library/BaseEngine;
    .locals 1
    .parameter "engine"

    .prologue
    .line 3660
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/olaworks/library/EngineProcessor;->setEngine(Lcom/lge/olaworks/library/BaseEngine;)Lcom/lge/olaworks/library/BaseEngine;

    move-result-object v0

    return-object v0
.end method

.method public enegineProcessorStart()V
    .locals 1

    .prologue
    .line 3663
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->start()V

    .line 3664
    return-void
.end method

.method public facePreviewInitController()V
    .locals 0

    .prologue
    .line 4621
    return-void
.end method

.method public findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;
    .locals 1
    .parameter "key"

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    return-object v0
.end method

.method public findPreferenceIndex(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findScheduledCommand(Ljava/lang/String;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1}, Lcom/lge/camera/command/CommandManager;->findScheduledCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    return-object v0
.end method

.method public getActivity()Lcom/lge/camera/CameraActivity;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v0}, Lcom/lge/camera/Mediator$ActivityBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationMode()I
    .locals 1

    .prologue
    .line 889
    iget v0, p0, Lcom/lge/camera/Mediator;->mApplicationMode:I

    return v0
.end method

.method public getApplicationModeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 896
    iget v0, p0, Lcom/lge/camera/Mediator;->mApplicationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 897
    const-string v0, "Camcorder"

    .line 899
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Camera"

    goto :goto_0
.end method

.method public getAudiozoomStart()Z
    .locals 1

    .prologue
    .line 4569
    const/4 v0, 0x1

    return v0
.end method

.method public getAudiozoomStartInRecording()Z
    .locals 1

    .prologue
    .line 4571
    const/4 v0, 0x0

    return v0
.end method

.method public getAudiozoomvalue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4669
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAvailablePictureCount()J
    .locals 2

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getAvailablePictureCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBack3dPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBack3dPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    return-object v0
.end method

.method public getBackKeyRecStop()Z
    .locals 1

    .prologue
    .line 4618
    const/4 v0, 0x0

    return v0
.end method

.method public getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    return-object v0
.end method

.method public getBackupCurrentMenuIndex()I
    .locals 1

    .prologue
    .line 3560
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getBackupCurrentMenuIndex()I

    move-result v0

    return v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 1120
    iget v0, p0, Lcom/lge/camera/Mediator;->mBatteryLevel:I

    return v0
.end method

.method public getBeautyshotController()Lcom/lge/camera/controller/BeautyshotController;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    return-object v0
.end method

.method public getBeautyshotProgress()Z
    .locals 1

    .prologue
    .line 3839
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getBeautyshotProgress()Z

    move-result v0

    return v0
.end method

.method public getBlockTouchByCallPopUp()Z
    .locals 1

    .prologue
    .line 4359
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mBlockTouchByCallPopUp:Z

    return v0
.end method

.method public getBrightnessController()Lcom/lge/camera/controller/BrightnessController;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    return-object v0
.end method

.method public getBrightnessControllerExpand()Lcom/lge/camera/controller/BrightnessControllerExpand;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessControllerExpand:Lcom/lge/camera/controller/BrightnessControllerExpand;

    return-object v0
.end method

.method public getCafOnGoing()Z
    .locals 1

    .prologue
    .line 2571
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->getCafOnGoing()Z

    move-result v0

    return v0
.end method

.method public getCamera3dDepthController()Lcom/lge/camera/controller/Camera3dDepthController;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    return-object v0
.end method

.method public getCameraDevice()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 3613
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getCameraDimension()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 934
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 935
    iget v2, p0, Lcom/lge/camera/Mediator;->mCameraMode:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/lge/camera/Mediator;->mMainCameraDimension:I

    if-ne v2, v0, :cond_0

    .line 942
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 939
    goto :goto_0

    :cond_1
    move v0, v1

    .line 942
    goto :goto_0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 699
    iget v0, p0, Lcom/lge/camera/Mediator;->mCameraId:I

    return v0
.end method

.method public getCameraMode()I
    .locals 1

    .prologue
    .line 914
    iget v0, p0, Lcom/lge/camera/Mediator;->mCameraMode:I

    return v0
.end method

.method public getChildIndex(Ljava/lang/String;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 3536
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->getChildIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCommandManager()Lcom/lge/camera/command/CommandManager;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 3374
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentIAMode()I
    .locals 1

    .prologue
    .line 4680
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    if-eqz v0, :cond_0

    .line 2049
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/LocationInfo;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2051
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentMenuKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentModule()Lcom/lge/camera/module/Module;
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mModule:Lcom/lge/camera/module/Module;

    return-object v0
.end method

.method public getCurrentPIPMask()I
    .locals 1

    .prologue
    .line 3167
    sget v0, Lcom/lge/camera/controller/PIPController;->mCurrentMaskMenu:I

    return v0
.end method

.method public getCurrentRecordingTime()J
    .locals 2

    .prologue
    .line 4373
    iget-wide v0, p0, Lcom/lge/camera/Mediator;->mCurrentRecordingTime:J

    return-wide v0
.end method

.method public getCurrentSelectedTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4129
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ShotModeMenuController;->getCurrentSelectedTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;
    .locals 1

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSettingMenuIndex()I
    .locals 1

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenuIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentSettingMenuIndex(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 2103
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCurrentSettingMenuName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3545
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/camera/setting/SettingMenuItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentStorage()I
    .locals 1

    .prologue
    .line 2215
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorage()I

    move-result v0

    return v0
.end method

.method public getCurrentStorageDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2218
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultFocusModeParameterForMultiWindowAF(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .parameter "param"

    .prologue
    .line 4386
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/FocusController;->getDefaultFocusModeParameterForMultiWindowAF(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceDegree()I
    .locals 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    iget v1, p0, Lcom/lge/camera/Mediator;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/lge/camera/OrientationInfo;->getDeviceDegree(I)I

    move-result v0

    return v0
.end method

.method public getDialogController()Lcom/lge/camera/controller/DialogController;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    return-object v0
.end method

.method public getDialogID()I
    .locals 1

    .prologue
    .line 3377
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v0

    return v0
.end method

.method public getDimension(I)F
    .locals 1
    .parameter "resId"

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "resId"

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDualCameraPictureSize()[I
    .locals 1

    .prologue
    .line 4678
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnableInput()Z
    .locals 1

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsEnableInput:Z

    return v0
.end method

.method public getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;
    .locals 1

    .prologue
    .line 3645
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    return-object v0
.end method

.method public getExternalStorageDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3476
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getExternalStorageDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaceBeauty()Lcom/lge/olaworks/library/FaceBeauty;
    .locals 1

    .prologue
    .line 3574
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFaceBeauty:Lcom/lge/olaworks/library/FaceBeauty;

    return-object v0
.end method

.method public getFlashEnableForShotMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4491
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_3

    .line 4492
    const-string v3, "on"

    const-string v4, "key_smart_mode"

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4493
    const-string v3, "key_camera_shot_mode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4494
    .local v0, shotMode:Ljava/lang/String;
    const-string v3, "shotmode_panorama"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "shotmode_free_panorama"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "shotmode_continuous"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "shotmode_full_continuous"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "shotmode_hdr"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "shotmode_clear_shot"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "shotmode_dual_camera"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4514
    .end local v0           #shotMode:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 4504
    .restart local v0       #shotMode:Ljava/lang/String;
    :cond_1
    const-string v3, "shotmode_normal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "not found"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "shotmode_main_beauty"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v3

    if-nez v3, :cond_3

    .line 4508
    :cond_2
    const-string v3, "night"

    const-string v4, "key_scene_mode"

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .end local v0           #shotMode:Ljava/lang/String;
    :cond_3
    move v1, v2

    .line 4514
    goto :goto_0
.end method

.method public getFocusAreaHeight()I
    .locals 1

    .prologue
    .line 4021
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    iget v0, v0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    return v0
.end method

.method public getFocusAreaLeftMargin()I
    .locals 1

    .prologue
    .line 4024
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    iget v0, v0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    return v0
.end method

.method public getFocusAreaWidth()I
    .locals 1

    .prologue
    .line 4018
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    iget v0, v0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    return v0
.end method

.method public getFocusController()Lcom/lge/camera/controller/FocusController;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    return-object v0
.end method

.method public getFocusState()I
    .locals 1

    .prologue
    .line 3947
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->getFocusState()I

    move-result v0

    return v0
.end method

.method public getFreePanoramaEngineStatus()I
    .locals 1

    .prologue
    .line 4555
    const/4 v0, 0x0

    return v0
.end method

.method public getFreePanoramaResultSize()[I
    .locals 1

    .prologue
    .line 4553
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFreePanoramaStatus()I
    .locals 1

    .prologue
    .line 4554
    const/4 v0, 0x0

    return v0
.end method

.method public getFreeSpace()J
    .locals 2

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getFreeSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    return-object v0
.end method

.method public getGoingAutoReviewForQuickView()Z
    .locals 3

    .prologue
    .line 641
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGoingAutoReviewForQuickView :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/Mediator;->mGoingAutoQuickReview:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mGoingAutoQuickReview:Z

    return v0
.end method

.method public getHandler()Lcom/lge/camera/util/MainHandler;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    return-object v0
.end method

.method public getHeadsetstate()I
    .locals 1

    .prologue
    .line 4579
    const/4 v0, 0x0

    return v0
.end method

.method public getIAFlashStatus()Z
    .locals 1

    .prologue
    .line 2005
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsIAFlashOn:Z

    return v0
.end method

.method public getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bmp"
    .parameter "degree"
    .parameter "mirror"

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getImageHandler()Lcom/lge/camera/util/ImageHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getImageHandler()Lcom/lge/camera/util/ImageHandler;
    .locals 1

    .prologue
    .line 654
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->getImageHandler(Z)Lcom/lge/camera/util/ImageHandler;

    move-result-object v0

    return-object v0
.end method

.method public getImageHandler(Z)Lcom/lge/camera/util/ImageHandler;
    .locals 1
    .parameter "isRotationOn"

    .prologue
    .line 658
    if-eqz p1, :cond_0

    .line 659
    iget-object v0, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    .line 661
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->imageHandlerRotationOff:Lcom/lge/camera/util/ImageHandler;

    goto :goto_0
.end method

.method public getImageListRotation()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4656
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageListUri()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4565
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageRotationDegree()I
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    return v0
.end method

.method public getInCaptureProgress()Z
    .locals 1

    .prologue
    .line 628
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mInCaptureProgress:Z

    return v0
.end method

.method public getIndexMenuKey(I)Ljava/lang/String;
    .locals 1
    .parameter "menuPosition"

    .prologue
    .line 2155
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndicatorController()Lcom/lge/camera/controller/IndicatorController;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    return-object v0
.end method

.method public getIsCharging()Z
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mCharging:Z

    return v0
.end method

.method public getIsFileSizeLimitReached()Z
    .locals 1

    .prologue
    .line 4606
    const/4 v0, 0x0

    return v0
.end method

.method public getLanguageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/lge/camera/Mediator;->strLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;
.end method

.method public getListPreference(I)Lcom/lge/camera/setting/ListPreference;
    .locals 1
    .parameter "keyIndex"

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    return-object v0
.end method

.method public getLiveEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3698
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getLiveEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLiveEffectList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3701
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getLiveEffectList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getLocationOn()Z
    .locals 1

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/LocationInfo;->getLocationOn()Z

    move-result v0

    return v0
.end method

.method public getMainBarAlphaValue()I
    .locals 1

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2467
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->getMainBarAlphaValue()I

    move-result v0

    .line 2469
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMainCameraDimension()I
    .locals 1

    .prologue
    .line 931
    iget v0, p0, Lcom/lge/camera/Mediator;->mMainCameraDimension:I

    return v0
.end method

.method public getManualFocusController()Lcom/lge/camera/controller/ManualFocusController;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    return-object v0
.end method

.method public getManualFocusValue()I
    .locals 1

    .prologue
    .line 3088
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ManualFocusController;->getManualFocusValue()I

    move-result v0

    return v0
.end method

.method public getMaxVideoDurationInMs()I
    .locals 1

    .prologue
    .line 4614
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaUSBConnectAtStartRecord()Z
    .locals 1

    .prologue
    .line 4592
    const/4 v0, 0x1

    return v0
.end method

.method public getMediator()Lcom/lge/camera/Mediator;
    .locals 0

    .prologue
    .line 270
    return-object p0
.end method

.method public getMenuCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3554
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getSelectedChild()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getCommand()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMostRecentThumbnailUri(ZI)Landroid/net/Uri;
    .locals 1
    .parameter "isUseLinkedThumbnailList"
    .parameter "inclusion"

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2558
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->getMostRecentThumbnailUri(ZI)Landroid/net/Uri;

    move-result-object v0

    .line 2560
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNeedProgressDuringCapture()Z
    .locals 1

    .prologue
    .line 1184
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->isNeedProgressDuringCapture:Z

    return v0
.end method

.method public getObjectTrackingState()I
    .locals 1

    .prologue
    .line 4027
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->getObjectTrackingState()I

    move-result v0

    return v0
.end method

.method public getOpenLBSSetting()Z
    .locals 1

    .prologue
    .line 1735
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mOpenLBSSetting:Z

    return v0
.end method

.method public getOptionMenuController()Lcom/lge/camera/controller/OptionMenuController;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    if-nez v0, :cond_0

    .line 951
    const/4 v0, 0x0

    .line 953
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/OrientationInfo;->getOrientation()I

    move-result v0

    goto :goto_0
.end method

.method public getOrientationDegree()I
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    if-nez v0, :cond_0

    .line 962
    const/4 v0, 0x0

    .line 964
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/OrientationInfo;->getOrientationDegree()I

    move-result v0

    goto :goto_0
.end method

.method public getPIPController()Lcom/lge/camera/controller/PIPController;
    .locals 1

    .prologue
    .line 3719
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    return-object v0
.end method

.method public getParameteredRotation()I
    .locals 1

    .prologue
    .line 646
    iget v0, p0, Lcom/lge/camera/Mediator;->mParameteredRotation:I

    return v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 3675
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getPicturesRemaining()J
    .locals 2

    .prologue
    .line 3854
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->getPicturesRemaining()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 509
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraDimension()I

    move-result v0

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 515
    :goto_0
    return-object v0

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBack3dPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    goto :goto_0

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    goto :goto_0
.end method

.method public getPreviewController()Lcom/lge/camera/controller/PreviewController;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    return-object v0
.end method

.method public getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    return-object v0
.end method

.method public getPreviewSizeOnDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3805
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewSizeOnScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3808
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousEffectType()I
    .locals 1

    .prologue
    .line 3669
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getPreviousEffectType()I

    move-result v0

    return v0
.end method

.method public getPreviousRecordModeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4636
    const-string v0, ""

    return-object v0
.end method

.method public getPreviousResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3766
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getPreviousResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousShotModeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4634
    const-string v0, ""

    return-object v0
.end method

.method public getQFIndexListItem(I)Ljava/lang/String;
    .locals 1
    .parameter "menuIndex"

    .prologue
    .line 3542
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/Setting;->getQfIndexList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getQFLMenuEnable()[Z
    .locals 1

    .prologue
    .line 3113
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->getQFLMenuEnable()[Z

    move-result-object v0

    return-object v0
.end method

.method public getQfIndex(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 2149
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/Setting;->getQfIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getQfIndexList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3539
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/Setting;->getQfIndexList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getQueueCount()I
    .locals 1

    .prologue
    .line 4628
    const/4 v0, 0x0

    return v0
.end method

.method public getQuickButtonController()Lcom/lge/camera/controller/QuickButtonController;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    return-object v0
.end method

.method public getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    return-object v0
.end method

.method public getQuickFunctionControllerMenuTag(I)Lcom/lge/camera/setting/ListPreference;
    .locals 2
    .parameter "index"

    .prologue
    .line 3134
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->getQuickFunctionControllerMenuView(I)Landroid/view/View;

    move-result-object v0

    .line 3135
    .local v0, quickFunctionControllerMenuView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 3136
    const/4 v1, 0x0

    .line 3138
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/ListPreference;

    goto :goto_0
.end method

.method public getQuickFunctionControllerMenuView(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 3141
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->getMenuView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getQuickFunctionDragController()Lcom/lge/camera/controller/QuickFunctionDragController;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

    return-object v0
.end method

.method public getQuickFunctionDragControllerMenuTag(I)Lcom/lge/camera/setting/ListPreference;
    .locals 2
    .parameter "index"

    .prologue
    .line 3247
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-virtual {v1, p1}, Lcom/lge/camera/controller/QuickFunctionDragController;->getDragView(I)Landroid/view/View;

    move-result-object v0

    .line 3248
    .local v0, quickFunctionDragView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 3249
    const/4 v1, 0x0

    .line 3251
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/ListPreference;

    goto :goto_0
.end method

.method public getQuickFunctionSettingController()Lcom/lge/camera/controller/QuickFunctionSettingController;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    return-object v0
.end method

.method public getRecentMessageType()I
    .locals 1

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBroadCastReceiver:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    invoke-virtual {v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getRecentMessageType()I

    move-result v0

    return v0
.end method

.method public getRecordLocation()Z
    .locals 1

    .prologue
    .line 2060
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/LocationInfo;->getRecordLocation()Z

    move-result v0

    return v0
.end method

.method public getRecordingDegree()I
    .locals 3

    .prologue
    .line 971
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->getOrientationHint()I

    move-result v0

    .line 972
    .local v0, degree:I
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isConfigureLandscape()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 973
    add-int/lit16 v1, v0, 0xb4

    rem-int/lit16 v0, v1, 0x168

    .line 981
    :goto_0
    return v0

    .line 975
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2

    .line 976
    :cond_1
    add-int/lit8 v1, v0, 0x5a

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0

    .line 978
    :cond_2
    add-int/lit16 v1, v0, 0x10e

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0
.end method

.method public getRecordingDurationLimit()J
    .locals 2

    .prologue
    .line 4609
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRecordingSizeLimit()J
    .locals 2

    .prologue
    .line 4608
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRequestedVideoSizeLimit()J
    .locals 2

    .prologue
    .line 4590
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getRotateBatteryIndicatorwithHint()Z
    .locals 1

    .prologue
    .line 1131
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mRotateBatteryIndicatorwithHint:Z

    return v0
.end method

.method public getSaveURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 4655
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSavedFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSavedFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSelectedChild()Lcom/lge/camera/setting/SettingMenuItem;
    .locals 1

    .prologue
    .line 3533
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getSelectedChild()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedChildCount(I)I
    .locals 1
    .parameter "currentSelectIndex"

    .prologue
    .line 2128
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getSelectedChildIndex()I
    .locals 1

    .prologue
    .line 2100
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getSelectedChildIndex()I

    move-result v0

    return v0
.end method

.method public getSelectedQuickFunctionMenuKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3144
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->getSelectedMenuKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettingController()Lcom/lge/camera/controller/SettingController;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    return-object v0
.end method

.method public getSettingIndex(I)I
    .locals 1
    .parameter "settingIndex"

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SettingController;->getSetting(I)I

    move-result v0

    return v0
.end method

.method public getSettingIndex(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SettingController;->getSetting(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;
    .locals 1
    .parameter "key"

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    return-object v0
.end method

.method public getSettingMenuCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3551
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getSettingMenuCommand()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettingMenuCount()I
    .locals 1

    .prologue
    .line 2125
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getMenuCount()I

    move-result v0

    return v0
.end method

.method public getSettingMenuEnable(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 2137
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    iget-boolean v0, v0, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    return v0
.end method

.method public getSettingMenuItem(I)Lcom/lge/camera/setting/SettingMenuItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 2131
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getSettingMenuItem(Ljava/lang/String;)Lcom/lge/camera/setting/SettingMenuItem;
    .locals 1
    .parameter "key"

    .prologue
    .line 2134
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenu(Ljava/lang/String;)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getSettingParameterValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3557
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getSelectedChild()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getParameterValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SettingController;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShotModeMenuController()Lcom/lge/camera/controller/ShotModeMenuController;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    return-object v0
.end method

.method public getShowCameraErrorPopup()Z
    .locals 1

    .prologue
    .line 2020
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->bShowCameraErrorPopup:Z

    return v0
.end method

.method public getSmartModeForPictureSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4668
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSmartZoomFocusViewMode()I
    .locals 1

    .prologue
    .line 3755
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PIPController;->getSmartZoomFocusViewMode()I

    move-result v0

    return v0
.end method

.method public getSnapshotRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2448
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewPanelController;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 2450
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSoundController()Lcom/lge/camera/controller/SoundController;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 4602
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/lge/camera/Mediator;->mStatus:I

    return v0
.end method

.method public getStorageBucketId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2236
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getBucketId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStorageBucketId(I)Ljava/lang/String;
    .locals 1
    .parameter "storageType"

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/StorageController;->getBucketId(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStorageController()Lcom/lge/camera/controller/StorageController;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    return-object v0
.end method

.method public getStorageMessageId()I
    .locals 1

    .prologue
    .line 3454
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getMessageId()I

    move-result v0

    return v0
.end method

.method public getStoragePopupMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3457
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStorageState()I
    .locals 1

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getStorageState()I

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubCameraModeRunning()Z
    .locals 1

    .prologue
    .line 1117
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mSetCameraMode:Z

    return v0
.end method

.method public getSubMenuMode()I
    .locals 1

    .prologue
    .line 1111
    iget v0, p0, Lcom/lge/camera/Mediator;->mSubMenuMode:I

    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 3630
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailAndUpdateButton()V
    .locals 1

    .prologue
    .line 2611
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2612
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->getThumbnailAndUpdateButton()V

    .line 2614
    :cond_0
    return-void
.end method

.method public getThumbnailControllerUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2605
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->getThumbController()Lcom/lge/camera/components/ThumbnailController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/components/ThumbnailController;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 2607
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimeMachineComplete()Z
    .locals 1

    .prologue
    .line 2621
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mSetTimeMachineComplete:Z

    return v0
.end method

.method public getTimeMachinePictures()Z
    .locals 1

    .prologue
    .line 4639
    const/4 v0, 0x0

    return v0
.end method

.method public getTimeMachineStorageDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimerCaptureDelay()I
    .locals 1

    .prologue
    .line 4632
    const/4 v0, 0x0

    return v0
.end method

.method public getToastController()Lcom/lge/camera/controller/ToastController;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    return-object v0
.end method

.method public getVideoFile()Lcom/lge/camera/VideoFile;
    .locals 1

    .prologue
    .line 4611
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoFileSize()J
    .locals 2

    .prologue
    .line 4610
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 1143
    iget v0, p0, Lcom/lge/camera/Mediator;->mVideoState:I

    return v0
.end method

.method public getZoomBarValue()I
    .locals 1

    .prologue
    .line 3014
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBarValue()I

    move-result v0

    return v0
.end method

.method public getZoomController()Lcom/lge/camera/controller/ZoomController;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    return-object v0
.end method

.method public getZoomCursorMaxStep()I
    .locals 1

    .prologue
    .line 2997
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getCursorMaxStep()I

    move-result v0

    return v0
.end method

.method public getZoomMaxValue()F
    .locals 1

    .prologue
    .line 3000
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomMaxValue()F

    move-result v0

    return v0
.end method

.method public getZoomRatio()F
    .locals 1

    .prologue
    .line 3010
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomRatio()F

    move-result v0

    return v0
.end method

.method public gotoHelpActivity(Ljava/lang/String;)V
    .locals 1
    .parameter "keyString"

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/CameraActivity;->gotoHelpActivity(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public hasSaveURI()Z
    .locals 1

    .prologue
    .line 4566
    const/4 v0, 0x0

    return v0
.end method

.method public hideChildCustomView(Z)V
    .locals 3
    .parameter "useAnim"

    .prologue
    .line 3026
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "temp hideChildCustomView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3027
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ZoomController;->hideSettingZoomControl(Z)V

    .line 3028
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/BrightnessController;->hideSettingBrightnessControl(Z)V

    .line 3029
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/BeautyshotController;->hideSettingBeautyShotControl(Z)V

    .line 3030
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3031
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/Camera3dDepthController;->hideSettingDepth3DControl(Z)V

    .line 3033
    :cond_0
    return-void
.end method

.method public hideFocus()Z
    .locals 1

    .prologue
    .line 4001
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->hideFocus()Z

    move-result v0

    return v0
.end method

.method public hideForPhotoStory()Z
    .locals 1

    .prologue
    .line 4087
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ToastController;->hideForPhotoStory()Z

    move-result v0

    return v0
.end method

.method public hideFreePanoramaTakingGuide()V
    .locals 0

    .prologue
    .line 4552
    return-void
.end method

.method public hideIndicatorController()V
    .locals 1

    .prologue
    .line 3863
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->hideIndicator()V

    .line 3864
    return-void
.end method

.method public hideOptionMenu()V
    .locals 1

    .prologue
    .line 4104
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    if-eqz v0, :cond_0

    .line 4105
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/OptionMenuController;->hideOptionMenu()V

    .line 4107
    :cond_0
    return-void
.end method

.method public abstract hideOsd()V
.end method

.method public hideOsdByForce()V
    .locals 0

    .prologue
    .line 4591
    return-void
.end method

.method public hidePopupAnimation(I)V
    .locals 5
    .parameter "ViewId"

    .prologue
    .line 1747
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 1748
    .local v0, rl:Lcom/lge/camera/components/RotateLayout;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/camera/util/Util;->startAlphaAnimation(Landroid/view/View;IIILandroid/view/animation/Animation$AnimationListener;)V

    .line 1749
    return-void
.end method

.method public hidePreviewPanelController()V
    .locals 2

    .prologue
    .line 2647
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2648
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setPreviewPanelVisibility(Z)V

    .line 2650
    :cond_0
    return-void
.end method

.method public hidePreviewPanelLiveSnapshotButton()V
    .locals 1

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2632
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->hideLiveSnapshotButton()V

    .line 2634
    :cond_0
    return-void
.end method

.method public hideQuickFunctionController()V
    .locals 1

    .prologue
    .line 3131
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->hide()V

    .line 3132
    return-void
.end method

.method public hideQuickFunctionDragController(Z)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 3260
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionDragController;->hide(Z)V

    .line 3261
    return-void
.end method

.method public hideRecoridngStopButton()V
    .locals 0

    .prologue
    .line 4617
    return-void
.end method

.method public hideShotModeMenu(Z)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 4126
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ShotModeMenuController;->hide(Z)V

    .line 4127
    return-void
.end method

.method public hideSmartZoomFocusView()V
    .locals 1

    .prologue
    .line 3740
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->hideSmartZoomFocusView()V

    .line 3741
    return-void
.end method

.method public hideSubWindowResizeHandler()V
    .locals 1

    .prologue
    .line 3722
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->hideSubWindowResizeHandler()V

    .line 3723
    return-void
.end method

.method public inflateMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 360
    return-void
.end method

.method public inflateStub(I)Landroid/view/View;
    .locals 5
    .parameter "id"

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 321
    .local v1, viewStub:Landroid/view/ViewStub;
    const/4 v0, 0x0

    .line 322
    .local v0, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 324
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inflated view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :goto_0
    return-object v0

    .line 326
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "inflated stubView is null."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public inflateView(I)Landroid/view/View;
    .locals 3
    .parameter "resource"

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 316
    .local v0, li:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public initAudioShutterEngine()V
    .locals 3

    .prologue
    .line 1799
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1800
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    if-nez v0, :cond_0

    .line 1801
    new-instance v0, Lcom/lge/voiceshutter/library/AudioRecogEngine;

    new-instance v1, Lcom/lge/camera/listeners/AudioRecogEngineCallback;

    invoke-direct {v1, p0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback;-><init>(Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;)V

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->voiceShutterKind()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/lge/voiceshutter/library/AudioRecogEngine;-><init>(Lcom/lge/voiceshutter/library/AudioRecogEngine$Callback;I)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    .line 1806
    :cond_0
    return-void
.end method

.method public initControllers()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1298
    const-string v0, "CameraApp"

    const-string v1, "initController start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->initController()V

    .line 1301
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->initController()V

    .line 1302
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BrightnessController;->initController()V

    .line 1303
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ManualFocusController;->initController()V

    .line 1304
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BeautyshotController;->initController()V

    .line 1305
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->initController()V

    .line 1306
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->initController()V

    .line 1307
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionDragController;->initController()V

    .line 1308
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionSettingController;->initController()V

    .line 1309
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ShotModeMenuController;->initController()V

    .line 1311
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/Camera3dDepthController;->initController()V

    .line 1315
    :cond_0
    iput-boolean v3, p0, Lcom/lge/camera/Mediator;->mControllerInitialized:Z

    .line 1317
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    if-eqz v0, :cond_1

    .line 1318
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    const-string v2, "location"

    invoke-virtual {v0, v2}, Lcom/lge/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Lcom/lge/camera/LocationInfo;->setLocationManager(Landroid/location/LocationManager;)V

    .line 1319
    const-string v0, "on"

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    const-string v2, "key_camera_tag_location"

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/SettingController;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1320
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {v0, v3}, Lcom/lge/camera/LocationInfo;->setRecordLocation(Z)V

    .line 1321
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->startReceivingLocationUpdates()V

    .line 1326
    :cond_1
    :goto_0
    const-string v0, "CameraApp"

    const-string v1, "initController end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    return-void

    .line 1323
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/LocationInfo;->setRecordLocation(Z)V

    goto :goto_0
.end method

.method public initFaceDetectInfo()V
    .locals 0

    .prologue
    .line 4622
    return-void
.end method

.method public initFocusAreas()V
    .locals 1

    .prologue
    .line 3998
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->initFocusAreas()V

    .line 3999
    return-void
.end method

.method public initMultiWindowAFView()V
    .locals 1

    .prologue
    .line 4390
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->initMultiWindowAFView()V

    .line 4391
    return-void
.end method

.method public initQuickFunctionEnabled()V
    .locals 1

    .prologue
    .line 3122
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->initEnabled()V

    .line 3123
    return-void
.end method

.method public initSettingBrightnessBar()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 3063
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessControllerExpand:Lcom/lge/camera/controller/BrightnessControllerExpand;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BrightnessControllerExpand;->initSettingBrightnessBar()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public initSettingMenu()V
    .locals 1

    .prologue
    .line 2146
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->initSettingMenu()V

    .line 2147
    return-void
.end method

.method public initSmartZoomFocusView()V
    .locals 1

    .prologue
    .line 3746
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->initSmartZoomFocusView()V

    .line 3747
    return-void
.end method

.method public initializeRecordingDual(Ljava/lang/String;JIJ)V
    .locals 7
    .parameter "filepath_name"
    .parameter "mMaxFileSize"
    .parameter "mMaxDurationTime"
    .parameter "freeSpace"

    .prologue
    .line 3713
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/controller/PreviewController;->initializeRecordingEffect(Ljava/lang/String;JIJ)V

    .line 3714
    return-void
.end method

.method public initializeRecordingEffect(Ljava/lang/String;JIJ)V
    .locals 7
    .parameter "filepath_name"
    .parameter "mMaxFileSize"
    .parameter "mMaxDurationTime"
    .parameter "freeSpace"

    .prologue
    .line 3802
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/controller/PreviewController;->initializeRecordingEffect(Ljava/lang/String;JIJ)V

    .line 3803
    return-void
.end method

.method public isAfterRecordingThreadAlive()Z
    .locals 1

    .prologue
    .line 4682
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isAttachIntent()Z
.end method

.method public abstract isAttachMode()Z
.end method

.method public isAudiozoom_ExceptionCase(Z)Z
    .locals 1
    .parameter "checkRotation"

    .prologue
    .line 4671
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailableResumeVideo()Z
    .locals 1

    .prologue
    .line 4605
    const/4 v0, 0x1

    return v0
.end method

.method public isBlockingFaceTrFocusing()Z
    .locals 1

    .prologue
    .line 3986
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->isBlockingFaceTrFocusing()Z

    move-result v0

    return v0
.end method

.method public isBurstShotStop()Z
    .locals 1

    .prologue
    .line 4665
    const/4 v0, 0x0

    return v0
.end method

.method public isCafSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1724
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/camera/properties/FunctionProperties;->isCafSupported(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1725
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewPanelController;->isShutterFocusLongKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1731
    :cond_0
    :goto_0
    return v0

    .line 1729
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCamcorderRotation(Z)Z
    .locals 3
    .parameter "checkWithPause"

    .prologue
    const/4 v0, 0x1

    .line 4292
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4301
    :cond_0
    :goto_0
    return v0

    .line 4295
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 4297
    if-eqz p1, :cond_0

    .line 4298
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraKeyLongPressed()Z
    .locals 1

    .prologue
    .line 2480
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->isCameraKeyLongPressed:Z

    return v0
.end method

.method public isChangeMode()Z
    .locals 1

    .prologue
    .line 3763
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isChangeMode()Z

    move-result v0

    return v0
.end method

.method public isChangingToOtherActivity()Z
    .locals 1

    .prologue
    .line 1753
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mChangingToOtherActivity:Z

    return v0
.end method

.method public isClearView()Z
    .locals 1

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsClearView:Z

    return v0
.end method

.method public isClearViewBeforeRecording()Z
    .locals 1

    .prologue
    .line 731
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsClearViewBeforeRecording:Z

    return v0
.end method

.method public isCompleteProcessFrame()Z
    .locals 1

    .prologue
    .line 3633
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/components/OpenGLSurfaceView;->isCompleteProcessFrame()Z

    move-result v0

    return v0
.end method

.method public isConfigurationChanging()Z
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->isConfigurationChanging()Z

    move-result v0

    return v0
.end method

.method public isConfigureLandscape()Z
    .locals 1

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method public isContinuousFocusActivating()Z
    .locals 1

    .prologue
    .line 3968
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->isContinuousFocusActivating()Z

    move-result v0

    return v0
.end method

.method public isContinuousShotAlived()Z
    .locals 1

    .prologue
    .line 4647
    const/4 v0, 0x0

    return v0
.end method

.method public isControllerInitialized()Z
    .locals 1

    .prologue
    .line 1330
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mControllerInitialized:Z

    return v0
.end method

.method public isCurrnetModuleRunning()Z
    .locals 1

    .prologue
    .line 1159
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/module/Module;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isDualCameraActive()Z
    .locals 1

    .prologue
    .line 3709
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isDualCameraActive()Z

    move-result v0

    return v0
.end method

.method public isDualRecordingActive()Z
    .locals 1

    .prologue
    .line 3705
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isDualRecordingActive()Z

    move-result v0

    return v0
.end method

.method public isEffectsCamcorderActive()Z
    .locals 1

    .prologue
    .line 3686
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->effectsCamcorderActive()Z

    move-result v0

    return v0
.end method

.method public isEffectsCameraActive()Z
    .locals 1

    .prologue
    .line 3689
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->effectsCameraActive()Z

    move-result v0

    return v0
.end method

.method public isEnteringViewShowing()Z
    .locals 1

    .prologue
    .line 1953
    invoke-static {}, Lcom/lge/camera/controller/EnteringViewController;->get()Lcom/lge/camera/controller/EnteringViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/EnteringViewController;->isEnteringViewShowing()Z

    move-result v0

    return v0
.end method

.method public isErrorOccuredAndFinish()Z
    .locals 1

    .prologue
    .line 1187
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mErrorOccuredAndFinish:Z

    return v0
.end method

.method public isExitIgnoreDuringSaving()Z
    .locals 3

    .prologue
    .line 4366
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isExitIgnoreDuringSaving :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/Mediator;->isEventIgnoreDuringSaving:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4367
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->isEventIgnoreDuringSaving:Z

    return v0
.end method

.method public isExternalStorageRemoved()Z
    .locals 1

    .prologue
    .line 2224
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->isExternalStorageRemoved()Z

    move-result v0

    return v0
.end method

.method public isFinishingActivity()Z
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public isFlashOffByHighTemperature()Z
    .locals 1

    .prologue
    .line 4521
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsFlashOffByHighTemperature:Z

    return v0
.end method

.method public isFocusViewVisible()Z
    .locals 1

    .prologue
    .line 3953
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->isFocusViewVisible()Z

    move-result v0

    return v0
.end method

.method public isGalleryLaunching()Z
    .locals 1

    .prologue
    .line 2597
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2598
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->isGalleryLaunching()Z

    move-result v0

    .line 2600
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIndicatorControllerInitialized()Z
    .locals 1

    .prologue
    .line 3907
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public isLiveEffectActive()Z
    .locals 1

    .prologue
    .line 3692
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isLiveEffectActive()Z

    move-result v0

    return v0
.end method

.method public isLiveEffectDrawerOpened()Z
    .locals 2

    .prologue
    .line 3196
    const v1, 0x7f0900e7

    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    .line 3197
    .local v0, liveEffectDrawer:Lcom/lge/camera/components/MultiDirectionSlidingDrawer;
    if-nez v0, :cond_0

    .line 3198
    const/4 v1, 0x0

    .line 3200
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->isOpened()Z

    move-result v1

    goto :goto_0
.end method

.method public isLiveEffectDrawerShown()Z
    .locals 1

    .prologue
    .line 3204
    const v0, 0x7f0900e6

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public abstract isMMSIntent()Z
.end method

.method public isMMSRecording()Z
    .locals 1

    .prologue
    .line 4587
    const/4 v0, 0x0

    return v0
.end method

.method public isManualFocusBarVisible()Z
    .locals 1

    .prologue
    .line 3094
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ManualFocusController;->isBarVisible()Z

    move-result v0

    return v0
.end method

.method public isMediaScanning()Z
    .locals 1

    .prologue
    .line 3470
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->isMediaScanning()Z

    move-result v0

    return v0
.end method

.method public isNullQuickFunctionSettingView()Z
    .locals 1

    .prologue
    .line 3500
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionSettingController;->isNullSettingView()Z

    move-result v0

    return v0
.end method

.method public isNullSettingView()Z
    .locals 1

    .prologue
    .line 3497
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->isNullSettingView()Z

    move-result v0

    return v0
.end method

.method public isObjectTrackingEnabledForSmartZoom()Z
    .locals 1

    .prologue
    .line 3752
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PIPController;->isObjectTrackingEnabledForSmartZoom()Z

    move-result v0

    return v0
.end method

.method public isOptionMenuShowing()Z
    .locals 1

    .prologue
    .line 4109
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    if-eqz v0, :cond_0

    .line 4110
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/OptionMenuController;->isOptionMenuShowing()Z

    move-result v0

    .line 4112
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPIPFrameDrawerOpened()Z
    .locals 2

    .prologue
    .line 3185
    const v1, 0x7f09011a

    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    .line 3186
    .local v0, pipFrameDrawer:Lcom/lge/camera/components/MultiDirectionSlidingDrawer;
    if-nez v0, :cond_0

    .line 3187
    const/4 v1, 0x0

    .line 3189
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->isOpened()Z

    move-result v1

    goto :goto_0
.end method

.method public isPIPFrameDrawerShown()Z
    .locals 1

    .prologue
    .line 3193
    const v0, 0x7f090119

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public isPanoramaStarted()Z
    .locals 1

    .prologue
    .line 4537
    const/4 v0, 0x0

    return v0
.end method

.method public isPanoramaUIShown()Z
    .locals 1

    .prologue
    .line 4539
    const/4 v0, 0x1

    return v0
.end method

.method public isPanoramaUpdatebutton()Z
    .locals 1

    .prologue
    .line 4541
    const/4 v0, 0x0

    return v0
.end method

.method public isPausing()Z
    .locals 1

    .prologue
    .line 1137
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mPausing:Z

    return v0
.end method

.method public abstract isPlayRingMode()Z
.end method

.method public isPressedShutterButton()Z
    .locals 1

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2489
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->isPressedShutterButton()Z

    move-result v0

    .line 2491
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewOnGoing()Z
    .locals 1

    .prologue
    .line 3636
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isPreviewOnGoing()Z

    move-result v0

    return v0
.end method

.method public isPreviewRendered()Z
    .locals 1

    .prologue
    .line 3823
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->beRendered()Z

    move-result v0

    return v0
.end method

.method public isPreviewing()Z
    .locals 1

    .prologue
    .line 3616
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuickFunctionDragControllerVisible()Z
    .locals 1

    .prologue
    .line 3254
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionDragController;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isQuickFunctionList(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 2164
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuickFunctionSettingControllerShowing()Z
    .locals 1

    .prologue
    .line 3069
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionSettingController;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isQuickFunctionSettingRemoving()Z
    .locals 1

    .prologue
    .line 3494
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionSettingController;->isQuickFunctionSettingViewRemoving()Z

    move-result v0

    return v0
.end method

.method public isReadyEngineProcessor()Z
    .locals 1

    .prologue
    .line 3639
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isReadyEngineProcessor()Z

    move-result v0

    return v0
.end method

.method public isRecordedLengthTooShort()Z
    .locals 1

    .prologue
    .line 4620
    const/4 v0, 0x0

    return v0
.end method

.method public isRecordingControllerInit()Z
    .locals 1

    .prologue
    .line 4582
    const/4 v0, 0x1

    return v0
.end method

.method public isRotateDialogVisible()Z
    .locals 1

    .prologue
    .line 3371
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->isRotateDialogVisible()Z

    move-result v0

    return v0
.end method

.method public isSendBroadcastIntent()Z
    .locals 1

    .prologue
    .line 1194
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsSendBroadcastIntent:Z

    return v0
.end method

.method public isSensorSupportBackdropper()Z
    .locals 1

    .prologue
    .line 3793
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isSensorSupportBackdropper()Z

    move-result v0

    return v0
.end method

.method public isSettingControllerVisible()Z
    .locals 1

    .prologue
    .line 3503
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isSettingViewRemoving()Z
    .locals 1

    .prologue
    .line 3491
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->isSettingViewRemoving()Z

    move-result v0

    return v0
.end method

.method public isShotModeMenuVisible()Z
    .locals 1

    .prologue
    .line 4120
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ShotModeMenuController;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isShowingQuickView()Z
    .locals 11

    .prologue
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2667
    const-string v0, "off"

    .line 2668
    .local v0, autoReview:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v10

    if-nez v10, :cond_1

    .line 2669
    const-string v10, "key_camera_auto_review"

    invoke-virtual {p0, v10}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2674
    :cond_0
    :goto_0
    const-string v10, "on_delay_2sec"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-wide/16 v3, 0x7d0

    .line 2675
    .local v3, duration:J
    :goto_1
    const-string v10, "on_delay_5sec"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-wide/16 v1, 0x1388

    .line 2677
    .local v1, autoReviewDuration:J
    :goto_2
    cmp-long v6, v1, v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2678
    const v6, 0x7f09009a

    invoke-virtual {p0, v6}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2679
    .local v5, mQuickViewThumbLayout:Landroid/view/View;
    if-eqz v5, :cond_4

    .line 2680
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 2681
    iget-object v6, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v6, v6, Lcom/lge/camera/controller/PreviewPanelController;->mHideQuickViewRunable:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/lge/camera/Mediator;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2682
    iget-object v6, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    iput-boolean v9, v6, Lcom/lge/camera/controller/PreviewPanelController;->mAutoReviewBlockTouch:Z

    .line 2683
    iget-object v6, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v6, v9, v9}, Lcom/lge/camera/controller/PreviewPanelController;->showGalleryQuickViewAnimation(ZZ)V

    move v6, v8

    .line 2688
    .end local v5           #mQuickViewThumbLayout:Landroid/view/View;
    :goto_3
    return v6

    .line 2670
    .end local v1           #autoReviewDuration:J
    .end local v3           #duration:J
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v10

    if-ne v10, v8, :cond_0

    .line 2671
    const-string v10, "key_video_auto_review"

    invoke-virtual {p0, v10}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-wide v3, v6

    .line 2674
    goto :goto_1

    .restart local v3       #duration:J
    :cond_3
    move-wide v1, v3

    .line 2675
    goto :goto_2

    .restart local v1       #autoReviewDuration:J
    :cond_4
    move v6, v9

    .line 2688
    goto :goto_3
.end method

.method public isShutterButtonEnable()Z
    .locals 1

    .prologue
    .line 2433
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2434
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->isShutterButtonEnable()Z

    move-result v0

    .line 2436
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isShutterButtonLongKey()Z
    .locals 1

    .prologue
    .line 2473
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2474
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->isShutterButtonLongKey()Z

    move-result v0

    .line 2476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutterFocusLongKey()Z
    .locals 1

    .prologue
    .line 2495
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2496
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->isShutterFocusLongKey()Z

    move-result v0

    .line 2498
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmartZoomRecordingActive()Z
    .locals 1

    .prologue
    .line 3731
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isSmartZoomRecordingActive()Z

    move-result v0

    return v0
.end method

.method public isSnapOnFinish()Z
    .locals 1

    .prologue
    .line 4036
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->isSnapOnFinish()Z

    move-result v0

    return v0
.end method

.method public isStopRecordingByMountedAction()Z
    .locals 1

    .prologue
    .line 4594
    const/4 v0, 0x0

    return v0
.end method

.method public isStorageControllerInitialized()Z
    .locals 1

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2197
    const/4 v0, 0x1

    .line 2199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStorageFull()Z
    .locals 2

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getStorageState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2204
    :cond_0
    const/4 v0, 0x1

    .line 2206
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStorageToastShowing()Z
    .locals 1

    .prologue
    .line 4084
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ToastController;->isStorageToastShowing()Z

    move-result v0

    return v0
.end method

.method public isSwapCameraProcessing()Z
    .locals 1

    .prologue
    .line 1630
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsSwapCameraProcessing:Z

    return v0
.end method

.method public isSwitcherLeverEnable()Z
    .locals 1

    .prologue
    .line 2750
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2751
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->isSwitcherLeverEnable()Z

    move-result v0

    .line 2753
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitcherLeverPressed()Z
    .locals 1

    .prologue
    .line 2526
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2527
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->isSwitcherLeverPressed()Z

    move-result v0

    .line 2529
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSynthesisInProgress()Z
    .locals 1

    .prologue
    .line 4538
    const/4 v0, 0x0

    return v0
.end method

.method public isThumbmailThreadAlive()Z
    .locals 1

    .prologue
    .line 2767
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2768
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->isThumbmailThreadAlive()Z

    move-result v0

    .line 2770
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimeMachineModeOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1849
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachinShotSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1850
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 1859
    :cond_0
    :goto_0
    return v0

    .line 1854
    :cond_1
    const-string v2, "shotmode_timemachine"

    const-string v3, "key_camera_shot_mode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "on"

    const-string v3, "key_time_machine"

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    .line 1856
    goto :goto_0
.end method

.method public isTimemachineHasPictures()Z
    .locals 1

    .prologue
    .line 4641
    const/4 v0, 0x0

    return v0
.end method

.method public isTimerShotCountdown()Z
    .locals 1

    .prologue
    .line 4531
    const/4 v0, 0x0

    return v0
.end method

.method public isToastControllerShowing()Z
    .locals 1

    .prologue
    .line 4075
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ToastController;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isUHDmode()Z
    .locals 1

    .prologue
    .line 4683
    const/4 v0, 0x0

    return v0
.end method

.method public isfacePreviewInitialized()Z
    .locals 1

    .prologue
    .line 4625
    const/4 v0, 0x1

    return v0
.end method

.method public keepScreenOnAwhile()V
    .locals 4

    .prologue
    .line 1219
    const-string v1, "CameraApp"

    const-string v2, "keepScreenOnAwhile"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    if-nez v1, :cond_0

    .line 1221
    const-string v1, "CameraApp"

    const-string v2, "keepScreenOnAwhile : mActivity is null!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    :goto_0
    return-void

    .line 1225
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    .line 1226
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 1227
    const-string v1, "CameraApp"

    const-string v2, "keepScreenOnAwhile : getActivity is null!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1230
    :cond_1
    const-string v1, "com.lge.camera.command.ExitInteraction"

    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1232
    const-string v1, "com.lge.camera.command.ExitInteraction"

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {p0, v1, v2, v3}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public needProgressBar()Z
    .locals 1

    .prologue
    .line 4615
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1340
    new-instance v0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    invoke-static {}, Lcom/lge/camera/util/Common;->isSecureCamera()Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;Z)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mBroadCastReceiver:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    .line 1341
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->registerReceiver()V

    .line 1343
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/OrientationInfo;->setOrientationListener()V

    .line 1345
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0, v5}, Lcom/lge/camera/OrientationInfo;->setOrientationListenerEnable(Z)V

    .line 1347
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    if-eqz v0, :cond_1

    .line 1348
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/lge/camera/listeners/LocationListener;

    const/4 v2, 0x0

    new-instance v3, Lcom/lge/camera/listeners/LocationListener;

    const-string v4, "gps"

    invoke-direct {v3, p0, v4}, Lcom/lge/camera/listeners/LocationListener;-><init>(Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;Ljava/lang/String;)V

    aput-object v3, v1, v2

    new-instance v2, Lcom/lge/camera/listeners/LocationListener;

    const-string v3, "network"

    invoke-direct {v2, p0, v3}, Lcom/lge/camera/listeners/LocationListener;-><init>(Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/camera/LocationInfo;->setLocationListener([Lcom/lge/camera/listeners/LocationListener;)V

    .line 1353
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->initAudioShutterEngine()V

    .line 1354
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "args"

    .prologue
    .line 3354
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/DialogController;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1528
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    if-eqz v2, :cond_0

    .line 1529
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/OrientationInfo;->setOrientationListenerEnable(Z)V

    .line 1530
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v2}, Lcom/lge/camera/OrientationInfo;->releaseOrientationListener()V

    .line 1531
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    .line 1533
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    if-eqz v2, :cond_1

    .line 1534
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {v2, v4}, Lcom/lge/camera/LocationInfo;->setLocationListener([Lcom/lge/camera/listeners/LocationListener;)V

    .line 1535
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {v2, v4}, Lcom/lge/camera/LocationInfo;->setLocationManager(Landroid/location/LocationManager;)V

    .line 1536
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {v2}, Lcom/lge/camera/LocationInfo;->unbind()V

    .line 1537
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    .line 1539
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mCheckTemperature:Lcom/lge/camera/CheckTemperature;

    if-eqz v2, :cond_2

    .line 1540
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mCheckTemperature:Lcom/lge/camera/CheckTemperature;

    .line 1542
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->removeScheduledAllCommand()V

    .line 1543
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->removePostAllRunnables()V

    .line 1545
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->unregisterReceivers()V

    .line 1546
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mBroadCastReceiver:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    if-eqz v2, :cond_3

    .line 1547
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mBroadCastReceiver:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    invoke-virtual {v2}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->unbindReceiver()V

    .line 1548
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mBroadCastReceiver:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    .line 1551
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/Controller;

    .line 1552
    .local v0, control:Lcom/lge/camera/controller/Controller;
    invoke-virtual {v0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    goto :goto_0

    .line 1555
    .end local v0           #control:Lcom/lge/camera/controller/Controller;
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    if-eqz v2, :cond_5

    .line 1556
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    invoke-virtual {v2}, Lcom/lge/camera/module/ModuleFactory;->unbind()V

    .line 1557
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    .line 1560
    :cond_5
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mModule:Lcom/lge/camera/module/Module;

    .line 1561
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    .line 1562
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    .line 1564
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    .line 1565
    iput-object v4, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    .line 1566
    iput-object v4, p0, Lcom/lge/camera/Mediator;->imageHandlerRotationOff:Lcom/lge/camera/util/ImageHandler;

    .line 1567
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    .line 1568
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    .line 1569
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    .line 1570
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    .line 1571
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

    .line 1572
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    .line 1573
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    .line 1574
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    .line 1575
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    .line 1576
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    .line 1577
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    .line 1578
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    .line 1579
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    .line 1580
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    .line 1581
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    .line 1582
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    .line 1583
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    .line 1584
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    .line 1585
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    .line 1586
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mRefreshMenuRunnable:Ljava/lang/Runnable;

    .line 1587
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-eqz v2, :cond_6

    .line 1588
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    invoke-virtual {v2}, Lcom/lge/camera/util/MainHandler;->unbind()V

    .line 1589
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    .line 1591
    :cond_6
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mUiThread:Ljava/lang/Thread;

    .line 1592
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    .line 1593
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mFaceBeauty:Lcom/lge/olaworks/library/FaceBeauty;

    .line 1595
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v2, :cond_7

    .line 1596
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v2}, Lcom/lge/camera/setting/PreferenceGroup;->close()V

    .line 1597
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 1599
    :cond_7
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v2, :cond_8

    .line 1600
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v2}, Lcom/lge/camera/setting/PreferenceGroup;->close()V

    .line 1601
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 1603
    :cond_8
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mBack3dPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v2, :cond_9

    .line 1604
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mBack3dPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v2}, Lcom/lge/camera/setting/PreferenceGroup;->close()V

    .line 1605
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mBack3dPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 1607
    :cond_9
    return-void
.end method

.method public onDismissRotateDialog()V
    .locals 1

    .prologue
    .line 3368
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->onDismissRotateDialog()V

    .line 3369
    return-void
.end method

.method public onFaceDetectionFromHal([Landroid/hardware/Camera$Face;)V
    .locals 0
    .parameter "faces"

    .prologue
    .line 4675
    return-void
.end method

.method public onOptionItemViewClick()V
    .locals 1

    .prologue
    .line 4094
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    if-eqz v0, :cond_0

    .line 4095
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/OptionMenuController;->hideOptionMenu()V

    .line 4097
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1467
    const-string v2, "CameraApp"

    const-string v3, "onPause-start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->restoreAutoReviewValue()V

    .line 1471
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mPausing:Z

    .line 1472
    iput-boolean v5, p0, Lcom/lge/camera/Mediator;->mErrorOccuredAndFinish:Z

    .line 1473
    iput-boolean v5, p0, Lcom/lge/camera/Mediator;->isEventIgnoreDuringSaving:Z

    .line 1475
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mCheckTemperature:Lcom/lge/camera/CheckTemperature;

    if-eqz v2, :cond_0

    .line 1476
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mCheckTemperature:Lcom/lge/camera/CheckTemperature;

    invoke-virtual {v2}, Lcom/lge/camera/CheckTemperature;->releaseCheckTemperature()V

    .line 1478
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v2, :cond_1

    .line 1479
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v2}, Lcom/lge/camera/controller/PreviewController;->stopPreviewForMediatorOnPause()V

    .line 1482
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1483
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    if-eqz v2, :cond_2

    .line 1484
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    invoke-virtual {v2}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->stop()V

    .line 1485
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    .line 1488
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    if-eqz v2, :cond_3

    .line 1489
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v2, v5}, Lcom/lge/camera/OrientationInfo;->setOrientationListenerEnable(Z)V

    .line 1490
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v2}, Lcom/lge/camera/OrientationInfo;->releaseOrientationListener()V

    .line 1493
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/Controller;

    .line 1494
    .local v0, control:Lcom/lge/camera/controller/Controller;
    invoke-virtual {v0}, Lcom/lge/camera/controller/Controller;->onPause()V

    goto :goto_0

    .line 1497
    .end local v0           #control:Lcom/lge/camera/controller/Controller;
    :cond_4
    invoke-static {}, Lcom/lge/camera/controller/BubblePopupController;->get()Lcom/lge/camera/controller/BubblePopupController;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/lge/camera/controller/BubblePopupController;->removeBubblePopup(Lcom/lge/camera/Mediator;J)V

    .line 1498
    invoke-static {}, Lcom/lge/camera/controller/BubblePopupController;->get()Lcom/lge/camera/controller/BubblePopupController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/BubblePopupController;->unbind()V

    .line 1500
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentStorage()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/util/FileNamer;->close(Landroid/content/Context;I)V

    .line 1502
    invoke-static {}, Lcom/lge/camera/controller/EnteringViewController;->get()Lcom/lge/camera/controller/EnteringViewController;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/EnteringViewController;->hideOnPauseEnteringGuide(Landroid/app/Activity;)V

    .line 1503
    invoke-static {}, Lcom/lge/camera/controller/EnteringViewController;->get()Lcom/lge/camera/controller/EnteringViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/EnteringViewController;->unbind()V

    .line 1505
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->resetScreenTimeout()V

    .line 1506
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->removeScheduledAllCommand()V

    .line 1507
    iput-boolean v5, p0, Lcom/lge/camera/Mediator;->mInCaptureProgress:Z

    .line 1508
    iput-boolean v5, p0, Lcom/lge/camera/Mediator;->mGoingAutoQuickReview:Z

    .line 1510
    const-string v2, "CameraApp"

    const-string v3, "onPause-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 3357
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/DialogController;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 3358
    return-void
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 1392
    const-string v0, "CameraApp"

    const-string v1, "onResume()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    sput-boolean v10, Lcom/lge/camera/properties/CameraConstants;->MEDIA_RECEIVER_FINISHED:Z

    .line 1394
    iput-boolean v10, p0, Lcom/lge/camera/Mediator;->mPausing:Z

    .line 1395
    iput-boolean v10, p0, Lcom/lge/camera/Mediator;->isEventIgnoreDuringSaving:Z

    .line 1397
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->setPreviousAutoReviewValue()V

    .line 1399
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1400
    invoke-virtual {p0, v5}, Lcom/lge/camera/Mediator;->showDefaultQuickButton(Z)V

    .line 1401
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->updateModeMenuIndicator()V

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_2

    .line 1405
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v9

    .line 1406
    .local v9, sizeOnScreenString:Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 1407
    invoke-static {v9}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v8

    .line 1408
    .local v8, previewSizeOnScreen:[I
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    aget v1, v8, v10

    aget v2, v8, v5

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/PreviewController;->changePreviewMode(II)V

    .line 1410
    .end local v8           #previewSizeOnScreen:[I
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1411
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/lge/camera/components/OpenGLSurfaceView;->setActivityPausing(Z)V

    .line 1415
    .end local v9           #sizeOnScreenString:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCheckTemperature:Lcom/lge/camera/CheckTemperature;

    if-eqz v0, :cond_3

    .line 1416
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCheckTemperature:Lcom/lge/camera/CheckTemperature;

    invoke-virtual {v0}, Lcom/lge/camera/CheckTemperature;->checkTemperatureForKddi()V

    .line 1418
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual {v0}, Lcom/lge/camera/util/ImageHandler;->resetRotation()V

    .line 1420
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/OrientationInfo;->getOrientationListenerEnable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1421
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume() mOrientationChangeEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v2}, Lcom/lge/camera/OrientationInfo;->getOrientationListenerEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/OrientationInfo;->setOrientationListener()V

    .line 1423
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0, v5}, Lcom/lge/camera/OrientationInfo;->setOrientationListenerEnable(Z)V

    .line 1426
    :cond_4
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentStorage()I

    move-result v3

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/util/FileNamer;->startFileNamer(Landroid/content/Context;IILjava/lang/String;Z)V

    .line 1429
    invoke-direct {p0}, Lcom/lge/camera/Mediator;->setPreviewEffectForBeautyShot()V

    .line 1430
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->initAudioShutterEngine()V

    .line 1432
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/camera/controller/Controller;

    .line 1433
    .local v6, control:Lcom/lge/camera/controller/Controller;
    invoke-virtual {v6}, Lcom/lge/camera/controller/Controller;->onResume()V

    goto :goto_0

    .line 1436
    .end local v6           #control:Lcom/lge/camera/controller/Controller;
    :cond_5
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mControllerInitialized:Z

    if-nez v0, :cond_9

    .line 1437
    const-string v0, "com.lge.camera.command.StartInit"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->findScheduledCommand(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1438
    const-string v0, "CameraApp"

    const-string v1, "!findScheduledCommand(Command.START_INIT)"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    const-string v0, "com.lge.camera.command.StartInit"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 1445
    :cond_6
    :goto_1
    invoke-static {}, Lcom/lge/camera/util/Common;->isScreenLocked()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1446
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->keepScreenOnAwhile()V

    .line 1449
    :cond_7
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    .line 1451
    :cond_8
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->hideOsd()V

    .line 1455
    :goto_2
    invoke-virtual {p0, v10}, Lcom/lge/camera/Mediator;->setBlockTouchByCallPopUp(Z)V

    .line 1456
    invoke-virtual {p0, v10}, Lcom/lge/camera/Mediator;->setQuickFunctionMenuForcedDisable(Z)V

    .line 1457
    const-string v0, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 1458
    iput-boolean v10, p0, Lcom/lge/camera/Mediator;->mChangingToOtherActivity:Z

    .line 1460
    const-string v0, "CameraApp"

    const-string v1, "onResume()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    return-void

    .line 1442
    :cond_9
    invoke-virtual {p0, v5}, Lcom/lge/camera/Mediator;->showQuickMenuEnteringGuide(Z)V

    goto :goto_1

    .line 1453
    :cond_a
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->showOsd()V

    goto :goto_2
.end method

.method public onShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 2642
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2643
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V

    .line 2645
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1360
    const-string v3, "CameraApp"

    const-string v4, "onStart()-start"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/AppControlUtil;->isSecureCameraIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1364
    invoke-static {v6}, Lcom/lge/camera/util/Common;->setSecureCamera(Z)V

    .line 1375
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1376
    .local v2, window:Landroid/view/Window;
    invoke-static {}, Lcom/lge/camera/util/Common;->isSecureCamera()Z

    move-result v3

    invoke-static {v2, v5, v3}, Lcom/lge/camera/util/Common;->configureWindowFlag(Landroid/view/Window;ZZ)V

    .line 1378
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraActivity;->getRequestedOrientation()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 1379
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/lge/camera/CameraActivity;->setRequestedOrientation(I)V

    .line 1382
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/Controller;

    .line 1383
    .local v0, control:Lcom/lge/camera/controller/Controller;
    invoke-virtual {v0}, Lcom/lge/camera/controller/Controller;->onStart()V

    goto :goto_1

    .line 1365
    .end local v0           #control:Lcom/lge/camera/controller/Controller;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #window:Landroid/view/Window;
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/AppControlUtil;->checkGalleryEnabledOnGuestMode(Landroid/content/ContentResolver;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1369
    invoke-static {v5}, Lcom/lge/camera/util/Common;->setSecureCamera(Z)V

    goto :goto_0

    .line 1371
    :cond_2
    invoke-static {v5}, Lcom/lge/camera/util/Common;->setSecureCamera(Z)V

    .line 1372
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/util/SecureImageUtil;->release()V

    goto :goto_0

    .line 1385
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #window:Landroid/view/Window;
    :cond_3
    const-string v3, "CameraApp"

    const-string v4, "onStart()-end"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 1517
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lge/camera/Mediator;->toastControllerHide(Z)V

    .line 1518
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/Controller;

    .line 1519
    .local v0, control:Lcom/lge/camera/controller/Controller;
    invoke-virtual {v0}, Lcom/lge/camera/controller/Controller;->onStop()V

    goto :goto_0

    .line 1521
    .end local v0           #control:Lcom/lge/camera/controller/Controller;
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 1250
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isControllerInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1259
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1258
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->keepScreenOnAwhile()V

    goto :goto_0
.end method

.method public pauseAndResumeRecording(Z)V
    .locals 1
    .parameter "pause"

    .prologue
    .line 3781
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewController;->pauseAndResumeRecording(Z)V

    .line 3782
    return-void
.end method

.method public pauseRecording()V
    .locals 0

    .prologue
    .line 4598
    return-void
.end method

.method public playAFSound(Z)V
    .locals 1
    .parameter "seccess"

    .prologue
    .line 3286
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3287
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SoundController;->playAFSound(Z)V

    .line 3289
    :cond_0
    return-void
.end method

.method public playBurstShotShutterSound(Z)V
    .locals 1
    .parameter "repeat"

    .prologue
    .line 3312
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3313
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SoundController;->playBurstShotShutterSound(Z)V

    .line 3315
    :cond_0
    return-void
.end method

.method public playClearShotShutterSound(Z)V
    .locals 1
    .parameter "repeat"

    .prologue
    .line 3334
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3335
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SoundController;->playClearShotShutterSound(Z)V

    .line 3337
    :cond_0
    return-void
.end method

.method public playContinuousShutterSound()V
    .locals 1

    .prologue
    .line 3306
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3307
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->playContinuousShutterSound()V

    .line 3309
    :cond_0
    return-void
.end method

.method public playFreePanoramaShutterSound()V
    .locals 1

    .prologue
    .line 3317
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3318
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->playFreePanoramaShutterSound()V

    .line 3320
    :cond_0
    return-void
.end method

.method public playRecordingSound(Z)V
    .locals 1
    .parameter "start"

    .prologue
    .line 3281
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3282
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SoundController;->playRecordingSound(Z)V

    .line 3284
    :cond_0
    return-void
.end method

.method public playShutterSound()V
    .locals 1

    .prologue
    .line 3296
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3297
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->playShutterSound()V

    .line 3299
    :cond_0
    return-void
.end method

.method public playTimerSound(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 3291
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3292
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SoundController;->playTimerSound(I)V

    .line 3294
    :cond_0
    return-void
.end method

.method public playVoiceCommandSound(I)V
    .locals 1
    .parameter "soundIndex"

    .prologue
    .line 3270
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3271
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->stopVoiceCommandSound()V

    .line 3272
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SoundController;->playVoiceCommandSound(I)V

    .line 3274
    :cond_0
    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 432
    :cond_0
    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "action"
    .parameter "delay"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 438
    :cond_0
    return-void
.end method

.method public abstract postviewRequestInit()Z
.end method

.method public qflMenuAnimation(ZILandroid/view/animation/Animation$AnimationListener;)V
    .locals 1
    .parameter "show"
    .parameter "duration"
    .parameter "listener"

    .prologue
    .line 3219
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/QuickFunctionController;->qflMenuAnimation(ZILandroid/view/animation/Animation$AnimationListener;)V

    .line 3220
    return-void
.end method

.method public qflSettingAnimation(Landroid/view/View;Z)V
    .locals 1
    .parameter "aniView"
    .parameter "show"

    .prologue
    .line 3078
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionSettingController;->qflSettingAnimation(Landroid/view/View;Z)V

    .line 3079
    return-void
.end method

.method public quickFunctionAllMenuSelected(Z)V
    .locals 1
    .parameter "selected"

    .prologue
    .line 3104
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuSelected(Z)V

    .line 3105
    return-void
.end method

.method public quickFunctionControllerInitMenu()V
    .locals 1

    .prologue
    .line 3101
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->initMenu()V

    .line 3102
    return-void
.end method

.method public quickFunctionControllerRefresh(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 3107
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    const-string v0, "on"

    const-string v2, "key_smart_mode"

    invoke-virtual {p0, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lge/camera/controller/QuickFunctionController;->quickFunctionControllerRefresh(Z)V

    .line 3108
    return-void

    .line 3107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readVideoIntentExtras()V
    .locals 0

    .prologue
    .line 4589
    return-void
.end method

.method public recordingControllerHide()V
    .locals 0

    .prologue
    .line 4583
    return-void
.end method

.method public recordingControllerShow()V
    .locals 0

    .prologue
    .line 4584
    return-void
.end method

.method public refresh3dDepthController()V
    .locals 1

    .prologue
    .line 2994
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/Camera3dDepthController;->refreshController()V

    .line 2995
    return-void
.end method

.method public refresh3dDepthSettingBars()V
    .locals 1

    .prologue
    .line 2907
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/Camera3dDepthController;->refreshSettingBars()V

    .line 2908
    return-void
.end method

.method public refreshBeautyshotController()V
    .locals 1

    .prologue
    .line 2988
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BeautyshotController;->refreshController()V

    .line 2989
    return-void
.end method

.method public refreshBeautyshotSettingBars()V
    .locals 1

    .prologue
    .line 2903
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BeautyshotController;->refreshSettingBars()V

    .line 2904
    return-void
.end method

.method public refreshBrightnessController()V
    .locals 1

    .prologue
    .line 2985
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BrightnessController;->refreshController()V

    .line 2986
    return-void
.end method

.method public refreshBrightnessExpandSettingBars()V
    .locals 1

    .prologue
    .line 2899
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessControllerExpand:Lcom/lge/camera/controller/BrightnessControllerExpand;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BrightnessControllerExpand;->refreshSettingBars()V

    .line 2900
    return-void
.end method

.method public refreshBrightnessSettingBars()V
    .locals 1

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BrightnessController;->refreshSettingBars()V

    .line 2896
    return-void
.end method

.method public refreshManualFocusController()V
    .locals 1

    .prologue
    .line 2991
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ManualFocusController;->refreshController()V

    .line 2992
    return-void
.end method

.method public refreshMenuForVolumeShutterPress()V
    .locals 4

    .prologue
    .line 1787
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mRefreshMenuRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1790
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mRefreshMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1791
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mRefreshMenuRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1793
    :cond_0
    return-void
.end method

.method public refreshQuickButton()V
    .locals 1

    .prologue
    .line 2285
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickButtonController;->refreshQuickButton()V

    .line 2286
    return-void
.end method

.method public refreshZoomController()V
    .locals 1

    .prologue
    .line 2982
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->refreshController()V

    .line 2983
    return-void
.end method

.method public refreshZoomSettingBars()V
    .locals 1

    .prologue
    .line 2891
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->refreshSettingBars()V

    .line 2892
    return-void
.end method

.method public registerFaceTrackingCallback()V
    .locals 1

    .prologue
    .line 4051
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->registerFaceTrackingCallback()V

    .line 4052
    return-void
.end method

.method public registerObjectCallback()V
    .locals 1

    .prologue
    .line 4043
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->registerObjectCallback()V

    .line 4044
    return-void
.end method

.method protected registerReceiver()V
    .locals 1

    .prologue
    .line 1613
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mDidRegister:Z

    if-nez v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBroadCastReceiver:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    invoke-virtual {v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->registerReceiver()V

    .line 1615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/Mediator;->mDidRegister:Z

    .line 1617
    :cond_0
    return-void
.end method

.method public releaseAllEngine()V
    .locals 2

    .prologue
    .line 3648
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isReadyEngineProcessor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3649
    const-string v0, "CameraApp"

    const-string v1, "releaseAllEngine call..."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3650
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->releaseAllEngine()V

    .line 3652
    :cond_0
    return-void
.end method

.method public releaseControllerForReInitialize()V
    .locals 4

    .prologue
    .line 1262
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/Controller;

    .line 1263
    .local v0, control:Lcom/lge/camera/controller/Controller;
    invoke-virtual {v0}, Lcom/lge/camera/controller/Controller;->onPause()V

    goto :goto_0

    .line 1265
    .end local v0           #control:Lcom/lge/camera/controller/Controller;
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/Controller;

    .line 1266
    .restart local v0       #control:Lcom/lge/camera/controller/Controller;
    invoke-virtual {v0}, Lcom/lge/camera/controller/Controller;->onStop()V

    goto :goto_1

    .line 1268
    .end local v0           #control:Lcom/lge/camera/controller/Controller;
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    if-eqz v2, :cond_2

    .line 1269
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/OrientationInfo;->setOrientationListenerEnable(Z)V

    .line 1270
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v2}, Lcom/lge/camera/OrientationInfo;->releaseOrientationListener()V

    .line 1272
    :cond_2
    return-void
.end method

.method public releaseEngine(Ljava/lang/String;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 3654
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isReadyEngineProcessor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3655
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseEngine ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] call..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3656
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/olaworks/library/EngineProcessor;->releaseEngine(Ljava/lang/String;)V

    .line 3658
    :cond_0
    return-void
.end method

.method public releaseEngine(Z)V
    .locals 1
    .parameter "checkEngineTag"

    .prologue
    .line 3842
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewController;->releaseEngine(Z)V

    .line 3843
    return-void
.end method

.method public removeAllImageList()V
    .locals 0

    .prologue
    .line 4567
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    invoke-virtual {v0, p1}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 493
    :cond_0
    return-void
.end method

.method public removeFreePanoramaBlackBg()V
    .locals 0

    .prologue
    .line 4544
    return-void
.end method

.method public removeFreePanoramaView()V
    .locals 0

    .prologue
    .line 4546
    return-void
.end method

.method public removePanoramaView()V
    .locals 0

    .prologue
    .line 4535
    return-void
.end method

.method public removePostAllRunnables()V
    .locals 4

    .prologue
    .line 480
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 481
    const-string v2, "CameraApp"

    const-string v3, "mPostRunnables is null"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 485
    .local v1, r:Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 487
    .end local v1           #r:Ljava/lang/Runnable;
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public removePostRunnable(Ljava/lang/Object;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 467
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 468
    const-string v1, "CameraApp"

    const-string v2, "mPostRunnables is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 473
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 474
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 475
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removePreviewCallback()V
    .locals 1

    .prologue
    .line 3772
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->removePreviewCallback()V

    .line 3773
    return-void
.end method

.method public removeQuickButton(I)V
    .locals 1
    .parameter "buttonType"

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickButtonController;->removeQuickButton(I)V

    .line 2259
    return-void
.end method

.method public removeQuickButtonAll()V
    .locals 1

    .prologue
    .line 2255
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickButtonController;->removeQuickButtonAll()V

    .line 2256
    return-void
.end method

.method public removeQuickFunctionSettingView()V
    .locals 1

    .prologue
    .line 3075
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionSettingController;->removeSettingView()V

    .line 3076
    return-void
.end method

.method public removeScheduledAllCommand()V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0}, Lcom/lge/camera/command/CommandManager;->removeScheduledAllCommand()V

    .line 465
    return-void
.end method

.method public removeScheduledCommand(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1}, Lcom/lge/camera/command/CommandManager;->removeScheduledCommand(Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public removeSettingView()V
    .locals 1

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->removeSettingView()V

    .line 2080
    return-void
.end method

.method public removeSettingViewAll()V
    .locals 1

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->removeSettingViewAll()V

    .line 2083
    return-void
.end method

.method public reset3dDepthController()V
    .locals 1

    .prologue
    .line 2887
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->resetBarController(I)V

    .line 2888
    return-void
.end method

.method public resetAudioZoomMenu()V
    .locals 0

    .prologue
    .line 4576
    return-void
.end method

.method public resetBarController(I)V
    .locals 2
    .parameter "mBarType"

    .prologue
    const/4 v1, 0x1

    .line 2830
    packed-switch p1, :pswitch_data_0

    .line 2855
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2832
    :pswitch_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-nez v0, :cond_0

    .line 2833
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->reset()V

    goto :goto_0

    .line 2837
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BrightnessController;->reset()V

    goto :goto_0

    .line 2840
    :pswitch_3
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->getFunctionFrontCameraBeautyShot()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 2842
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BeautyshotController;->reset()V

    goto :goto_0

    .line 2846
    :pswitch_4
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraDimension()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2848
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/Camera3dDepthController;->reset()V

    goto :goto_0

    .line 2852
    :pswitch_5
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ManualFocusController;->reset()V

    goto :goto_0

    .line 2830
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public resetBeautyshotController()V
    .locals 1

    .prologue
    .line 2879
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->resetBarController(I)V

    .line 2880
    return-void
.end method

.method public resetBrightnessController()V
    .locals 1

    .prologue
    .line 2875
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->resetBarController(I)V

    .line 2876
    return-void
.end method

.method public resetController()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2857
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->resetZoomController()V

    .line 2858
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->resetBrightnessController()V

    .line 2859
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->resetBeautyshotController()V

    .line 2860
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->resetManualFocusController()V

    .line 2861
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->reset3dDepthController()V

    .line 2863
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2865
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->setLimitationToLiveeffect(Z)V

    .line 2867
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->reset()V

    .line 2868
    return-void
.end method

.method public resetControllerForReInitialize()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1275
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v2}, Lcom/lge/camera/OrientationInfo;->getOrientationListenerEnable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1276
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume() mOrientationChangeEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v4}, Lcom/lge/camera/OrientationInfo;->getOrientationListenerEnable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v2}, Lcom/lge/camera/OrientationInfo;->setOrientationListener()V

    .line 1278
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v2, v5}, Lcom/lge/camera/OrientationInfo;->setOrientationListenerEnable(Z)V

    .line 1281
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/PreviewController;->onCreate()V

    .line 1283
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/Controller;

    .line 1284
    .local v0, control:Lcom/lge/camera/controller/Controller;
    invoke-virtual {v0}, Lcom/lge/camera/controller/Controller;->reInitialize()V

    .line 1285
    invoke-virtual {v0}, Lcom/lge/camera/controller/Controller;->initController()V

    goto :goto_0

    .line 1287
    .end local v0           #control:Lcom/lge/camera/controller/Controller;
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/Controller;

    .line 1288
    .restart local v0       #control:Lcom/lge/camera/controller/Controller;
    invoke-virtual {v0}, Lcom/lge/camera/controller/Controller;->onStart()V

    goto :goto_1

    .line 1290
    .end local v0           #control:Lcom/lge/camera/controller/Controller;
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/Controller;

    .line 1291
    .restart local v0       #control:Lcom/lge/camera/controller/Controller;
    invoke-virtual {v0}, Lcom/lge/camera/controller/Controller;->onResume()V

    goto :goto_2

    .line 1293
    .end local v0           #control:Lcom/lge/camera/controller/Controller;
    :cond_3
    invoke-virtual {p0, v5}, Lcom/lge/camera/Mediator;->showDefaultQuickButton(Z)V

    .line 1294
    const-string v2, "com.lge.camera.command.Rotate"

    invoke-virtual {p0, v2}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 1295
    return-void
.end method

.method public resetControllerInitialized()V
    .locals 1

    .prologue
    .line 1333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/Mediator;->mControllerInitialized:Z

    .line 1334
    return-void
.end method

.method public resetDisplayTimeout3dDepth()V
    .locals 1

    .prologue
    .line 2979
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/Camera3dDepthController;->resetDisplayTimeout()V

    .line 2980
    return-void
.end method

.method public resetDisplayTimeoutBeautyshot()V
    .locals 1

    .prologue
    .line 2973
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BeautyshotController;->resetDisplayTimeout()V

    .line 2974
    return-void
.end method

.method public resetDisplayTimeoutBrightness()V
    .locals 1

    .prologue
    .line 2970
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BrightnessController;->resetDisplayTimeout()V

    .line 2971
    return-void
.end method

.method public resetDisplayTimeoutManualFocus()V
    .locals 1

    .prologue
    .line 2976
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ManualFocusController;->resetDisplayTimeout()V

    .line 2977
    return-void
.end method

.method public resetDisplayTimeoutZoom()V
    .locals 1

    .prologue
    .line 2967
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->resetDisplayTimeout()V

    .line 2968
    return-void
.end method

.method public resetManualFocusController()V
    .locals 1

    .prologue
    .line 2883
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->resetBarController(I)V

    .line 2884
    return-void
.end method

.method public resetQFIndex()V
    .locals 1

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/Setting;->clearQFIndex()V

    .line 2168
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/Setting;->loadQfIndex()V

    .line 2169
    return-void
.end method

.method public resetScreenTimeout()V
    .locals 3

    .prologue
    .line 1205
    const-string v1, "CameraApp"

    const-string v2, "resetScreenTimeout"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    if-nez v1, :cond_0

    .line 1216
    :goto_0
    return-void

    .line 1210
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    .line 1211
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 1212
    const-string v1, "CameraApp"

    const-string v2, "resetScreenTimeout : getActivity is null!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1215
    :cond_1
    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public resetSettingMenu()V
    .locals 2

    .prologue
    .line 3506
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_1

    .line 3507
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->initSettingMenu()V

    .line 3508
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isEffectsCamcorderActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isEffectsCameraActive()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreviousResolution()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3510
    const-string v0, "key_preview_size_on_device"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/Mediator;->setAllChildMenuEnabled(Ljava/lang/String;Z)V

    .line 3513
    :cond_1
    return-void
.end method

.method public resetSwitcherLever()V
    .locals 1

    .prologue
    .line 2761
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2762
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->resetSwitcherLever()V

    .line 2764
    :cond_0
    return-void
.end method

.method public resetTimeClearScreen()V
    .locals 3

    .prologue
    .line 836
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 842
    :goto_0
    return-void

    .line 840
    :cond_0
    const-string v0, "com.lge.camera.command.ClearScreen"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 841
    const-string v0, "com.lge.camera.command.ClearScreen"

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public resetZoomController()V
    .locals 1

    .prologue
    .line 2871
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->resetBarController(I)V

    .line 2872
    return-void
.end method

.method public restartFreePanorama()V
    .locals 0

    .prologue
    .line 4551
    return-void
.end method

.method public restartPreview(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .parameter "parameter"
    .parameter "useCallBack"

    .prologue
    .line 3591
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    .line 3592
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 3596
    :goto_0
    return-void

    .line 3594
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "mPreviewController is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract restoreAutoReviewValue()V
.end method

.method public restoreLiveEffectSubMenu()V
    .locals 1

    .prologue
    .line 3229
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->restoreLiveEffectSubMenu()V

    .line 3230
    return-void
.end method

.method public restoreSubWindow()V
    .locals 1

    .prologue
    .line 3845
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->restoreSubWindow()V

    .line 3846
    return-void
.end method

.method public resumeRecording()V
    .locals 0

    .prologue
    .line 4599
    return-void
.end method

.method public resumeUpdateReordingTime()V
    .locals 0

    .prologue
    .line 4604
    return-void
.end method

.method public rotateAllController(IZ)V
    .locals 6
    .parameter "degree"
    .parameter "animation"

    .prologue
    const v5, 0x7f09003b

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f090057

    const v1, 0x7f090039

    .line 4136
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraDimension()I

    move-result v0

    if-ne v0, v4, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1

    .line 4137
    :cond_0
    const v0, 0x7f0b0306

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->toast(Ljava/lang/String;)V

    .line 4247
    :goto_0
    return-void

    .line 4140
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->startRotation(IZ)V

    .line 4141
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SettingController;->startRotation(I)V

    .line 4142
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->startSubMenuRotation(I)V

    .line 4143
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isLiveEffectActive()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0900e7

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const v0, 0x7f0900e7

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    invoke-virtual {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->isMoving()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4146
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->startLiveEffectDrawerSubMenuRotation(I)V

    .line 4148
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isDualCameraActive()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isDualRecordingActive()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const v0, 0x7f09011a

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    const v0, 0x7f09011a

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    invoke-virtual {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->isMoving()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4151
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->startPIPFrameSubMenuRotation(I)V

    .line 4153
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->startAudiozoomMenuRotation(I)V

    .line 4155
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isSettingViewRemoving()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isQuickFunctionSettingRemoving()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4156
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isDualRecordingActive()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isDualCameraActive()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4157
    :cond_5
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->setPIPRotate(I)V

    .line 4158
    const-string v0, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 4162
    :cond_6
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4163
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getPIPRecordingController()Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 4164
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getPIPRecordingController()Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->updateOrientation()V

    .line 4168
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 4169
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/OpenGLSurfaceView;->setOrientation(I)V

    .line 4171
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4172
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/CameraPreview;->setOrientation(I)V

    .line 4175
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ToastController;->rotate()V

    .line 4176
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/DialogController;->startRotation(I)V

    .line 4178
    const v0, 0x7f090161

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 4179
    const v0, 0x7f090163

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 4180
    const v0, 0x7f090165

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 4181
    const v0, 0x7f090167

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 4182
    const v0, 0x7f090169

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 4184
    const v0, 0x7f09005b

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4185
    const v0, 0x7f09005c

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4186
    const v0, 0x7f090045

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4187
    const v0, 0x7f09005a

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4188
    const v0, 0x7f09003e

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4189
    const v0, 0x7f090043

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4190
    const v0, 0x7f09003d

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4191
    const v0, 0x7f090044

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4192
    const v0, 0x7f090041

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4193
    const v0, 0x7f090059

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4194
    invoke-virtual {p0, v5, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4196
    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->isCamcorderRotation(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4197
    const v0, 0x7f090042

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4198
    const v0, 0x7f090045

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4199
    const v0, 0x7f090040

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4200
    const v0, 0x7f090043

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4201
    const v0, 0x7f09003c

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4202
    const v0, 0x7f09003d

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4203
    const v0, 0x7f090044

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4204
    const v0, 0x7f090041

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4205
    const v0, 0x7f09003e

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4206
    const v0, 0x7f09003f

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4207
    invoke-virtual {p0, v5, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4210
    :cond_a
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickButtonController;->startRotation(IZ)V

    .line 4211
    invoke-static {}, Lcom/lge/camera/controller/BubblePopupController;->get()Lcom/lge/camera/controller/BubblePopupController;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/lge/camera/controller/BubblePopupController;->startRotation(Lcom/lge/camera/Mediator;IZ)V

    .line 4212
    invoke-static {}, Lcom/lge/camera/controller/EnteringViewController;->get()Lcom/lge/camera/controller/EnteringViewController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/lge/camera/controller/EnteringViewController;->enteringGuideRotate(Landroid/app/Activity;I)V

    .line 4214
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportZoomOnRecord()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->isCamcorderRotation(Z)Z

    move-result v0

    if-nez v0, :cond_c

    .line 4220
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/BrightnessController;->startRotation(IZ)V

    .line 4221
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/BeautyshotController;->startRotation(IZ)V

    .line 4222
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/ManualFocusController;->startRotation(IZ)V

    .line 4224
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4225
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/Camera3dDepthController;->startRotation(IZ)V

    .line 4228
    :cond_b
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1, v3}, Lcom/lge/camera/controller/IndicatorController;->startRotation(IZ)V

    .line 4230
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_d

    .line 4232
    const v0, 0x7f090095

    const v1, 0x7f09008c

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4233
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/module/Module;->startRotation(I)V

    .line 4234
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/Mediator;->startFreePanoramaRotation(IZ)V

    .line 4240
    :goto_2
    const v0, 0x7f0901ef

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 4241
    const v0, 0x7f0901ee

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 4243
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionDragController;->startRotation(IZ)V

    .line 4244
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionSettingController;->startRotation(I)V

    .line 4245
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/OptionMenuController;->startRotation(I)V

    .line 4246
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/ShotModeMenuController;->startRotation(IZ)V

    goto/16 :goto_0

    .line 4218
    :cond_c
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/ZoomController;->startRotation(IZ)V

    goto :goto_1

    .line 4236
    :cond_d
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->startRecordingControllerRotation(I)V

    .line 4237
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->startAudioZoomContollerRotation(I)V

    goto :goto_2
.end method

.method public rotateSettingBar(II)V
    .locals 1
    .parameter "mBarType"
    .parameter "degree"

    .prologue
    .line 2814
    packed-switch p1, :pswitch_data_0

    .line 2828
    :goto_0
    return-void

    .line 2816
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p2}, Lcom/lge/camera/controller/SettingController;->rotateSettingZoom(I)V

    goto :goto_0

    .line 2819
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p2}, Lcom/lge/camera/controller/SettingController;->rotateSettingBrightness(I)V

    goto :goto_0

    .line 2822
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p2}, Lcom/lge/camera/controller/SettingController;->rotateSettingBeautyShot(I)V

    goto :goto_0

    .line 2825
    :pswitch_3
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p2}, Lcom/lge/camera/controller/SettingController;->rotateSettingCamera3dDepth(I)V

    goto :goto_0

    .line 2814
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mUiThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 441
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_1

    .line 442
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public saveClearShotPicture([BI)Z
    .locals 1
    .parameter "data"
    .parameter "timeMachineTempFileCount"

    .prologue
    .line 4659
    const/4 v0, 0x1

    return v0
.end method

.method public saveImageSavers([BLandroid/graphics/Bitmap;IZ)Z
    .locals 1
    .parameter "jpegData"
    .parameter "bitmap"
    .parameter "degree"
    .parameter "isSetLastThumb"

    .prologue
    .line 4627
    const/4 v0, 0x1

    return v0
.end method

.method public savePicture([BLandroid/graphics/Bitmap;ZI)Z
    .locals 1
    .parameter "data"
    .parameter "bitmap"
    .parameter "useTimeMachine"
    .parameter "timeMachineTempFileCount"

    .prologue
    .line 4626
    const/4 v0, 0x1

    return v0
.end method

.method public saveQFLIndex()V
    .locals 1

    .prologue
    .line 3566
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/Setting;->saveQFLIndex()V

    .line 3567
    return-void
.end method

.method public saveTimeMachinePicture([BI)Z
    .locals 1
    .parameter "data"
    .parameter "timeMachineTempFileCount"

    .prologue
    .line 4658
    const/4 v0, 0x1

    return v0
.end method

.method public set3DSwitchImage()V
    .locals 1

    .prologue
    .line 2520
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2521
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->set3DSwitchImage()V

    .line 2523
    :cond_0
    return-void
.end method

.method public set3DSwitchVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 2514
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2515
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->set3DSwitchVisible(Z)V

    .line 2517
    :cond_0
    return-void
.end method

.method public setAllChildMenuEnabled(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "enable"

    .prologue
    .line 3515
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/setting/SettingMenu;->setAllChildMenuEnabled(Ljava/lang/String;Z)V

    .line 3516
    return-void
.end method

.method public setAllPreferenceApply(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "which"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    if-eqz v0, :cond_0

    .line 2187
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/SettingController;->setAllPreferenceApply(ILjava/lang/String;Ljava/lang/String;)V

    .line 2189
    :cond_0
    return-void
.end method

.method public setApplicationMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 907
    iput p1, p0, Lcom/lge/camera/Mediator;->mApplicationMode:I

    .line 908
    return-void
.end method

.method public setAudioRecogEngineStart()V
    .locals 2

    .prologue
    .line 1818
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1819
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    if-eqz v0, :cond_0

    const-string v0, "key_voiceshutter"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1821
    const-string v0, "CameraApp"

    const-string v1, "setAudioRecogEngineStart"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    invoke-virtual {v0}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->start()V

    .line 1825
    :cond_0
    return-void
.end method

.method public setAudioRecogEngineStop()V
    .locals 2

    .prologue
    .line 1809
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1810
    const-string v0, "CameraApp"

    const-string v1, "setAudioRecogEngineStop"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    if-eqz v0, :cond_0

    .line 1812
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    invoke-virtual {v0}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->stop()V

    .line 1815
    :cond_0
    return-void
.end method

.method public setAudioZoomGuideViewLayout(III)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "marginLeft"

    .prologue
    .line 4577
    return-void
.end method

.method public setAudiozoomStart(Z)V
    .locals 0
    .parameter "mAudiozoomStart"

    .prologue
    .line 4570
    return-void
.end method

.method public setAudiozoomStartInRecording(Z)V
    .locals 0
    .parameter "start"

    .prologue
    .line 4572
    return-void
.end method

.method public setAudiozoom_ExceptionCase(Z)V
    .locals 0
    .parameter "isOccured"

    .prologue
    .line 4672
    return-void
.end method

.method public setAudiozoombuttonstate()V
    .locals 0

    .prologue
    .line 4581
    return-void
.end method

.method public setAudiozoomvalue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 4670
    return-void
.end method

.method public setBack3dPreference(Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 535
    iput-object p1, p0, Lcom/lge/camera/Mediator;->mBack3dPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 536
    return-void
.end method

.method public setBackKeyRecStop(Z)V
    .locals 0
    .parameter "con"

    .prologue
    .line 4601
    return-void
.end method

.method public setBackPreference(Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 533
    return-void
.end method

.method public setBackupCurrentMenuIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 3563
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->setBackupCurrentMenuIndex(I)V

    .line 3564
    return-void
.end method

.method public setBatteryIndicator(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 3910
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    if-eqz v0, :cond_0

    .line 3911
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/IndicatorController;->setBatteryIndicator(I)V

    .line 3913
    :cond_0
    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 1123
    iput p1, p0, Lcom/lge/camera/Mediator;->mBatteryLevel:I

    .line 1124
    return-void
.end method

.method public setBatteryTemper(I)V
    .locals 1
    .parameter "temper"

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCheckTemperature:Lcom/lge/camera/CheckTemperature;

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCheckTemperature:Lcom/lge/camera/CheckTemperature;

    invoke-virtual {v0, p1}, Lcom/lge/camera/CheckTemperature;->setBatteryTemper(I)V

    .line 1129
    :cond_0
    return-void
.end method

.method public setBatteryVisibility(I)V
    .locals 1
    .parameter "batteryLevel"

    .prologue
    .line 3915
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    if-eqz v0, :cond_0

    .line 3916
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/IndicatorController;->setBatteryVisibility(I)V

    .line 3918
    :cond_0
    return-void
.end method

.method public setBeautyshotProgress(Z)V
    .locals 1
    .parameter "set"

    .prologue
    .line 3836
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewController;->setBeautyshotProgress(Z)V

    .line 3837
    return-void
.end method

.method public setBlockTouchByCallPopUp(Z)V
    .locals 0
    .parameter "block"

    .prologue
    .line 4356
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mBlockTouchByCallPopUp:Z

    .line 4357
    return-void
.end method

.method public setBlockingFaceTrFocusing(Z)V
    .locals 1
    .parameter "beBlocked"

    .prologue
    .line 3989
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/FocusController;->setBlockingFaceTrFocusing(Z)V

    .line 3990
    return-void
.end method

.method public setBurstShotStop(Z)V
    .locals 0
    .parameter "stop"

    .prologue
    .line 4664
    return-void
.end method

.method public setButtonRemainEnabled(IZ)V
    .locals 1
    .parameter "buttonType"
    .parameter "enable"

    .prologue
    .line 2279
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonRemainEnabled(IZ)V

    .line 2280
    return-void
.end method

.method public setButtonRemainEnabled(IZZ)V
    .locals 1
    .parameter "buttonType"
    .parameter "enable"
    .parameter "useDefaultIcon"

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/QuickButtonController;->setButtonRemainEnabled(IZZ)V

    .line 2283
    return-void
.end method

.method public setButtonRemainRefresh()V
    .locals 1

    .prologue
    .line 2276
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickButtonController;->setButtonRemainRefresh()V

    .line 2277
    return-void
.end method

.method public setCafOnGoing(Z)V
    .locals 1
    .parameter "cafOnGoing"

    .prologue
    .line 2575
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/FocusController;->setCafOnGoing(Z)V

    .line 2576
    return-void
.end method

.method public setCameraId(I)V
    .locals 0
    .parameter "cameraId"

    .prologue
    .line 695
    iput p1, p0, Lcom/lge/camera/Mediator;->mCameraId:I

    .line 696
    return-void
.end method

.method public setCameraIdBeforeStartInit()V
    .locals 2

    .prologue
    .line 4305
    const-string v0, "CameraApp"

    const-string v1, "SetCameraIdBeforeStartInit-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4307
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    if-eqz v0, :cond_0

    .line 4308
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->initController()V

    .line 4310
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 4311
    invoke-direct {p0}, Lcom/lge/camera/Mediator;->setCameraIDForCamera()V

    .line 4315
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_1

    .line 4316
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->initController()V

    .line 4318
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    if-eqz v0, :cond_2

    .line 4319
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->initController()V

    .line 4321
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    if-eqz v0, :cond_3

    .line 4322
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->initController()V

    .line 4324
    :cond_3
    const-string v0, "CameraApp"

    const-string v1, "SetCameraIdBeforeStartInit-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4325
    return-void

    .line 4313
    :cond_4
    invoke-direct {p0}, Lcom/lge/camera/Mediator;->setCameraIDForCamcorder()V

    goto :goto_0
.end method

.method public setCameraKeyLongPressed(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 2484
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->isCameraKeyLongPressed:Z

    .line 2485
    return-void
.end method

.method public setCameraMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 921
    iput p1, p0, Lcom/lge/camera/Mediator;->mCameraMode:I

    .line 922
    return-void
.end method

.method public setCaptureData([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 4674
    return-void
.end method

.method public setChangeMode()V
    .locals 1

    .prologue
    .line 3760
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->setChangeMode()V

    .line 3761
    return-void
.end method

.method public setChangingToOtherActivity(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1756
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mChangingToOtherActivity:Z

    .line 1757
    return-void
.end method

.method public setCheckClickTime(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 3235
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionController;->setCheckClickTime(J)V

    .line 3236
    return-void
.end method

.method public setCheckToggleTime(I)Z
    .locals 1
    .parameter "usage"

    .prologue
    .line 3238
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->setCheckToggleTime(I)Z

    move-result v0

    return v0
.end method

.method public setClearFocusAnimation()V
    .locals 1

    .prologue
    .line 3959
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->setClearFocusAnimation()V

    .line 3960
    return-void
.end method

.method public setContinuousFocusActive(Z)V
    .locals 1
    .parameter "active"

    .prologue
    .line 3971
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/FocusController;->setContinuousFocusActive(Z)V

    .line 3972
    return-void
.end method

.method public setContinuousShotAlived(Z)V
    .locals 0
    .parameter "alived"

    .prologue
    .line 4657
    return-void
.end method

.method public setCurrentIAMode(I)V
    .locals 0
    .parameter "currentIAMode"

    .prologue
    .line 4679
    return-void
.end method

.method public setCurrentPIPMask(I)V
    .locals 0
    .parameter "maskIndex"

    .prologue
    .line 3170
    sput p1, Lcom/lge/camera/controller/PIPController;->mCurrentMaskMenu:I

    .line 3171
    return-void
.end method

.method public setCurrentRecordingTime(J)V
    .locals 0
    .parameter "seconds"

    .prologue
    .line 4370
    iput-wide p1, p0, Lcom/lge/camera/Mediator;->mCurrentRecordingTime:J

    .line 4371
    return-void
.end method

.method public setCurrentSettingMenu(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 3548
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->setCurrentMenu(I)Z

    move-result v0

    return v0
.end method

.method public setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .parameter "enable"

    .prologue
    .line 3521
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3522
    return-void
.end method

.method public setCurrentSettingMenuEnable(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "enable"

    .prologue
    .line 3518
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 3519
    return-void
.end method

.method public setCurrentStorage(I)V
    .locals 1
    .parameter "storageType"

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/StorageController;->setCurrentStorage(I)V

    .line 2213
    return-void
.end method

.method public setDefaultPIPMask()V
    .locals 1

    .prologue
    .line 3173
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3175
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PIPController;->setDefaultPIPMask()V

    .line 3177
    :cond_0
    return-void
.end method

.method public setDegree(IIIZ)V
    .locals 3
    .parameter "resId"
    .parameter "degree"
    .parameter "parentResId"
    .parameter "animation"

    .prologue
    .line 4254
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4255
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_1

    .line 4289
    .end local v1           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 4259
    .restart local v1       #view:Landroid/view/View;
    :cond_1
    if-eqz p3, :cond_2

    .line 4260
    invoke-virtual {p0, p3}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4261
    .local v0, parentView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4266
    .end local v0           #parentView:Landroid/view/View;
    :cond_2
    instance-of v2, v1, Lcom/lge/camera/components/RotateImageButton;

    if-eqz v2, :cond_4

    .line 4267
    if-nez p3, :cond_3

    .line 4268
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2, p2, p4}, Lcom/lge/camera/components/RotateImageButton;->setDegree(IZ)V

    goto :goto_0

    .line 4270
    :cond_3
    invoke-virtual {p0, p3}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2, p2, p4}, Lcom/lge/camera/components/RotateImageButton;->setDegree(IZ)V

    goto :goto_0

    .line 4272
    :cond_4
    instance-of v2, v1, Lcom/lge/camera/components/RotateImageView;

    if-eqz v2, :cond_6

    .line 4273
    if-nez p3, :cond_5

    .line 4274
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v2, p2, p4}, Lcom/lge/camera/components/RotateImageView;->setDegree(IZ)V

    goto :goto_0

    .line 4276
    :cond_5
    invoke-virtual {p0, p3}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageView;

    check-cast v2, Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v2, p2, p4}, Lcom/lge/camera/components/RotateImageView;->setDegree(IZ)V

    goto :goto_0

    .line 4278
    :cond_6
    instance-of v2, v1, Lcom/lge/camera/components/SwitcherLever;

    if-eqz v2, :cond_7

    .line 4279
    check-cast v1, Lcom/lge/camera/components/SwitcherLever;

    .end local v1           #view:Landroid/view/View;
    invoke-virtual {v1, p2, p4}, Lcom/lge/camera/components/SwitcherLever;->setDegree(IZ)V

    goto :goto_0

    .line 4280
    .restart local v1       #view:Landroid/view/View;
    :cond_7
    instance-of v2, v1, Lcom/lge/camera/components/Switcher;

    if-eqz v2, :cond_8

    .line 4281
    check-cast v1, Lcom/lge/camera/components/Switcher;

    .end local v1           #view:Landroid/view/View;
    invoke-virtual {v1, p2, p4}, Lcom/lge/camera/components/Switcher;->setDegree(IZ)V

    goto :goto_0

    .line 4282
    .restart local v1       #view:Landroid/view/View;
    :cond_8
    instance-of v2, v1, Lcom/lge/camera/components/SwitcherLeverVertical;

    if-eqz v2, :cond_9

    move-object v2, v1

    .line 4283
    check-cast v2, Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v2, p2, p4}, Lcom/lge/camera/components/SwitcherLeverVertical;->setDegree(IZ)V

    .line 4284
    check-cast v1, Lcom/lge/camera/components/SwitcherLeverVertical;

    .end local v1           #view:Landroid/view/View;
    invoke-virtual {v1, p2}, Lcom/lge/camera/components/SwitcherLeverVertical;->startRotation(I)V

    goto :goto_0

    .line 4285
    .restart local v1       #view:Landroid/view/View;
    :cond_9
    instance-of v2, v1, Lcom/lge/camera/components/SwitcherLeverHorizon;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 4286
    check-cast v2, Lcom/lge/camera/components/SwitcherLeverHorizon;

    invoke-virtual {v2, p2, p4}, Lcom/lge/camera/components/SwitcherLeverHorizon;->setDegree(IZ)V

    .line 4287
    check-cast v1, Lcom/lge/camera/components/SwitcherLeverHorizon;

    .end local v1           #view:Landroid/view/View;
    invoke-virtual {v1, p2}, Lcom/lge/camera/components/SwitcherLeverHorizon;->startRotation(I)V

    goto :goto_0
.end method

.method public setDegree(IIZ)V
    .locals 1
    .parameter "resId"
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 4250
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4251
    return-void
.end method

.method public setEffectCameraOrientationHint()V
    .locals 4

    .prologue
    .line 1022
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isEffectsCameraActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1025
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isConfigureLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v0

    .line 1026
    .local v0, orientationCompensation:I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v1}, Lcom/lge/camera/EffectsCamera;->getOrientationHint()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1027
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orientationCompensation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v1, v0}, Lcom/lge/camera/EffectsCamera;->setOrientationHint(I)V

    .line 1031
    .end local v0           #orientationCompensation:I
    :cond_0
    return-void

    .line 1025
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0
.end method

.method public setEffectRecorderOrientationHint()V
    .locals 4

    .prologue
    .line 1008
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isEffectsCamcorderActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1011
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isConfigureLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v0

    .line 1013
    .local v0, orientationCompensation:I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v1}, Lcom/lge/camera/EffectsRecorder;->getOrientationHint()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1014
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orientationCompensation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v1, v0}, Lcom/lge/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 1018
    .end local v0           #orientationCompensation:I
    :cond_0
    return-void

    .line 1011
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0
.end method

.method public setEffectRecorderPausing(Z)V
    .locals 1
    .parameter "set"

    .prologue
    .line 3848
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewController;->setEffectRecorderPausing(Z)V

    .line 3849
    return-void
.end method

.method public setEnable3ALocks(Landroid/hardware/Camera$Parameters;Z)Z
    .locals 1
    .parameter "parameters"
    .parameter "lock"

    .prologue
    .line 3817
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->setEnable3ALocks(Landroid/hardware/Camera$Parameters;Z)Z

    move-result v0

    return v0
.end method

.method public setEndTime(J)V
    .locals 0
    .parameter "endTime"

    .prologue
    .line 4603
    return-void
.end method

.method public setEngineProcessor()V
    .locals 1

    .prologue
    .line 3642
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->setEngineProcessor()V

    .line 3643
    return-void
.end method

.method public setErrorOccuredAndFinish(Z)V
    .locals 0
    .parameter "error"

    .prologue
    .line 1190
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mErrorOccuredAndFinish:Z

    .line 1191
    return-void
.end method

.method public setExitIgnoreDuringSaving(Z)V
    .locals 3
    .parameter "isIgnore"

    .prologue
    .line 4362
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExitIgnoreDuringSaving :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4363
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->isEventIgnoreDuringSaving:Z

    .line 4364
    return-void
.end method

.method public setFaceBeutyShotParameter(I)V
    .locals 0
    .parameter "mValue"

    .prologue
    .line 4631
    return-void
.end method

.method public setFlashOffByHighTemperature(Z)V
    .locals 0
    .parameter "setFlashOff"

    .prologue
    .line 4524
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mIsFlashOffByHighTemperature:Z

    .line 4525
    return-void
.end method

.method public setFocalLength(F)V
    .locals 0
    .parameter "focalLength"

    .prologue
    .line 4666
    return-void
.end method

.method public setFocusAreaWindow(III)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "leftMargin"

    .prologue
    .line 3974
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/FocusController;->setFocusAreaWindow(III)V

    .line 3975
    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    const-string v1, "key_focus"

    invoke-virtual {v0, v1, p1}, Lcom/lge/camera/controller/SettingController;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2175
    return-void
.end method

.method public setFocusPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 3992
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/FocusController;->setFocusPosition(I)V

    .line 3993
    return-void
.end method

.method public setFocusRectangleInitialize()V
    .locals 1

    .prologue
    .line 3941
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->setFocusRectangleInitialize()V

    .line 3942
    return-void
.end method

.method public setFocusState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3950
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/FocusController;->setFocusState(I)V

    .line 3951
    return-void
.end method

.method public setForced_audiozoom(Z)V
    .locals 0
    .parameter "isEnable"

    .prologue
    .line 4575
    return-void
.end method

.method public setFrontPreference(Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 529
    iput-object p1, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 530
    return-void
.end method

.method public setFullFrameContinuousShot(Landroid/hardware/Camera$Parameters;I)V
    .locals 0
    .parameter "parameters"
    .parameter "bufferNum"

    .prologue
    .line 4646
    return-void
.end method

.method public setGalleryLaunching(Z)V
    .locals 1
    .parameter "isLaunching"

    .prologue
    .line 2591
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2592
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setGalleryLaunching(Z)V

    .line 2594
    :cond_0
    return-void
.end method

.method public setGoingAutoReviewForQuickView(Z)V
    .locals 3
    .parameter "isGoing"

    .prologue
    .line 636
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGoingAutoReviewForQuickView :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mGoingAutoQuickReview:Z

    .line 638
    return-void
.end method

.method public setHeadsetstate(I)V
    .locals 0
    .parameter "nConnect"

    .prologue
    .line 4578
    return-void
.end method

.method public setIAFlashStatus(Z)V
    .locals 3
    .parameter "flashStatus"

    .prologue
    .line 2009
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mIsIAFlashOn:Z

    .line 2010
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2011
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "isIAFlashOn"

    iget-boolean v2, p0, Lcom/lge/camera/Mediator;->mIsIAFlashOn:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2012
    const-string v1, "com.lge.camera.command.setting.SetSmartCameraFlashMode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2013
    return-void
.end method

.method public setImageRotationDegree(I)V
    .locals 3
    .parameter "degree"

    .prologue
    .line 674
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImageRotationDegree ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iput p1, p0, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    .line 676
    return-void
.end method

.method public setInCaptureProgress(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 632
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mInCaptureProgress:Z

    .line 633
    return-void
.end method

.method public setIndicatorLayout(I)V
    .locals 1
    .parameter "leftMargin"

    .prologue
    .line 3935
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/IndicatorController;->setIndicatorLayout(I)V

    .line 3936
    return-void
.end method

.method public setIsCharging(Z)V
    .locals 0
    .parameter "bState"

    .prologue
    .line 554
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mCharging:Z

    .line 555
    return-void
.end method

.method public setIsFileSizeLimitReached(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 4607
    return-void
.end method

.method public setIsSendBroadcastIntent(Z)V
    .locals 0
    .parameter "changed"

    .prologue
    .line 1198
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mIsSendBroadcastIntent:Z

    .line 1199
    return-void
.end method

.method public setIsSwapCameraProcessing(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1633
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mIsSwapCameraProcessing:Z

    .line 1634
    return-void
.end method

.method public setKeepLastCameraMode()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1637
    const-string v4, "CameraApp"

    const-string v5, "setKeepLastCameraMode()-start"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1639
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    const-string v5, "Main_CameraAppConfig"

    invoke-virtual {v4, v5, v7}, Lcom/lge/camera/CameraActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1640
    .local v3, pref:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/lge/camera/setting/Setting;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 1641
    .local v0, cameraModeOfCamera:I
    const-string v4, "mainCameraDimension"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1642
    .local v2, mainCameraDimension:I
    const-string v4, "mainCameraDimension"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1644
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setKeepLastCameraMode CameraID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1647
    const-string v4, "CameraApp"

    const-string v5, "setKeepLastCameraMode SmartCoverClose! CameraID : 0"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    const/4 v0, 0x0

    .line 1651
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->setCameraMode(I)V

    .line 1652
    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->setCameraId(I)V

    .line 1653
    invoke-static {v3, v0}, Lcom/lge/camera/setting/Setting;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 1655
    invoke-virtual {p0, v2}, Lcom/lge/camera/Mediator;->setMainCameraDimension(I)V

    .line 1657
    invoke-static {v1}, Lcom/lge/camera/util/AppControlUtil;->isSecureCameraIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1658
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/lge/camera/util/Common;->setSecureCamera(Z)V

    .line 1668
    :goto_0
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setKeepLastCameraMode()-end, cammode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    return-void

    .line 1659
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/AppControlUtil;->checkGalleryEnabledOnGuestMode(Landroid/content/ContentResolver;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1663
    invoke-static {v7}, Lcom/lge/camera/util/Common;->setSecureCamera(Z)V

    goto :goto_0

    .line 1665
    :cond_2
    invoke-static {v7}, Lcom/lge/camera/util/Common;->setSecureCamera(Z)V

    .line 1666
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/util/SecureImageUtil;->release()V

    goto :goto_0
.end method

.method public setKeepLastValue()V
    .locals 7

    .prologue
    .line 1674
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1675
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "keepLastValue"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1677
    .local v2, keepLastValue:Z
    const-string v5, "isFirst"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1697
    :cond_0
    return-void

    .line 1681
    :cond_1
    if-eqz v2, :cond_0

    .line 1682
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v5}, Lcom/lge/camera/setting/PreferenceGroup;->size()I

    move-result v4

    .line 1683
    .local v4, pSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_3

    .line 1684
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 1685
    .local v3, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_2

    .line 1686
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->keepLastValue()V

    .line 1683
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1689
    .end local v3           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v5}, Lcom/lge/camera/setting/PreferenceGroup;->size()I

    move-result v4

    .line 1690
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_0

    .line 1691
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 1692
    .restart local v3       #listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_4

    .line 1693
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->keepLastValue()V

    .line 1690
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setKeepScreenOn()V
    .locals 2

    .prologue
    .line 1241
    const-string v0, "CameraApp"

    const-string v1, "setKeepScreenOn"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    const-string v0, "com.lge.camera.command.ExitInteraction"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1244
    return-void
.end method

.method public setLanguageType(Ljava/lang/String;)V
    .locals 0
    .parameter "mlanguage"

    .prologue
    .line 1764
    iput-object p1, p0, Lcom/lge/camera/Mediator;->strLanguage:Ljava/lang/String;

    .line 1765
    return-void
.end method

.method public setLastPictureThumb([BLandroid/net/Uri;Z)V
    .locals 1
    .parameter "data"
    .parameter "uri"
    .parameter "isPicture"

    .prologue
    .line 2637
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2638
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/PreviewPanelController;->setLastPictureThumb([BLandroid/net/Uri;Z)V

    .line 2640
    :cond_0
    return-void
.end method

.method public setLastThumb(Landroid/net/Uri;Z)V
    .locals 1
    .parameter "uri"
    .parameter "isPicture"

    .prologue
    .line 2533
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2534
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->setLastThumb(Landroid/net/Uri;Z)V

    .line 2536
    :cond_0
    return-void
.end method

.method public setLimitationToLiveeffect(Z)V
    .locals 1
    .parameter "beSet"

    .prologue
    .line 3232
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->setLimitationToLiveeffect(Z)V

    .line 3233
    return-void
.end method

.method public setLiveEffect(Ljava/lang/String;)V
    .locals 1
    .parameter "effect"

    .prologue
    .line 3695
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewController;->setLiveEffect(Ljava/lang/String;)V

    .line 3696
    return-void
.end method

.method public setLiveeffectLimit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->setLiveeffectLimit()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLocationOn(Z)V
    .locals 1
    .parameter "setting"

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {v0, p1}, Lcom/lge/camera/LocationInfo;->setLocationOn(Z)V

    .line 2070
    return-void
.end method

.method public setLockChangeConfiguration(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 376
    return-void
.end method

.method public setLockScreenPreventPreview(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 3820
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewController;->setLockScreenPreventPreview(Z)V

    .line 3821
    return-void
.end method

.method public setMainBarAlpha(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 2460
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2461
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setMainBarAlpha(I)V

    .line 2463
    :cond_0
    return-void
.end method

.method public setMainButtonDisable()V
    .locals 1

    .prologue
    .line 2415
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2416
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonDisable()V

    .line 2418
    :cond_0
    return-void
.end method

.method public setMainButtonEnable()V
    .locals 1

    .prologue
    .line 2403
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2404
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable()V

    .line 2406
    :cond_0
    return-void
.end method

.method public setMainButtonEnable(Ljava/lang/String;)V
    .locals 1
    .parameter "lockKey"

    .prologue
    .line 2409
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2410
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable(Ljava/lang/String;)V

    .line 2412
    :cond_0
    return-void
.end method

.method public setMainButtonVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 2421
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2422
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonVisible(Z)V

    .line 2424
    :cond_0
    return-void
.end method

.method public setMainCameraDimension(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 928
    iput p1, p0, Lcom/lge/camera/Mediator;->mMainCameraDimension:I

    .line 929
    return-void
.end method

.method public setManualFocusValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 3091
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ManualFocusController;->setManualFocusValue(I)V

    .line 3092
    return-void
.end method

.method public setMediaScanning(Z)V
    .locals 1
    .parameter "scanning"

    .prologue
    .line 3473
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/StorageController;->setMediaScanning(Z)V

    .line 3474
    return-void
.end method

.method public setMediaUSBConnectAtStartRecord(Z)V
    .locals 0
    .parameter "Connect"

    .prologue
    .line 4593
    return-void
.end method

.method public setMenuEnableForSceneMode(I)V
    .locals 4
    .parameter "setting"

    .prologue
    .line 4467
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_3

    .line 4469
    const/4 v0, 0x0

    .line 4470
    .local v0, enable:Z
    const-string v2, "auto"

    const-string v3, "key_scene_mode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4471
    const-string v2, "key_camera_shot_mode"

    invoke-virtual {p0, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4472
    .local v1, shotMode:Ljava/lang/String;
    const-string v2, "shotmode_hdr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "shotmode_dual_camera"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4474
    const/4 v0, 0x1

    .line 4478
    .end local v1           #shotMode:Ljava/lang/String;
    :cond_0
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    .line 4479
    const-string v2, "key_camera_whitebalance"

    invoke-virtual {p0, v2, v0}, Lcom/lge/camera/Mediator;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 4481
    :cond_1
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_2

    .line 4482
    const-string v2, "key_camera_coloreffect"

    invoke-virtual {p0, v2, v0}, Lcom/lge/camera/Mediator;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 4484
    :cond_2
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_3

    .line 4485
    const-string v2, "key_iso"

    invoke-virtual {p0, v2, v0}, Lcom/lge/camera/Mediator;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 4488
    .end local v0           #enable:Z
    :cond_3
    return-void
.end method

.method public setMessageIndicatorReceived(IZ)V
    .locals 1
    .parameter "msgReceived"
    .parameter "isReadAllMsg"

    .prologue
    .line 3920
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/IndicatorController;->setMessageIndicatorReceived(IZ)V

    .line 3921
    return-void
.end method

.method public setModeMenuVisibility(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 3929
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/IndicatorController;->setModeMenuVisibility(I)V

    .line 3930
    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 1162
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mediator setModule : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    invoke-virtual {v0, p1}, Lcom/lge/camera/module/ModuleFactory;->getModule(Ljava/lang/String;)Lcom/lge/camera/module/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mModule:Lcom/lge/camera/module/Module;

    .line 1164
    return-void
.end method

.method public setMultiWindowAFView([I)V
    .locals 1
    .parameter "previewSizeOnScreen"

    .prologue
    .line 4378
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/FocusController;->setMultiWindowAFView([I)V

    .line 4379
    return-void
.end method

.method public setNeedProgressDuringCapture(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 1181
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->isNeedProgressDuringCapture:Z

    .line 1182
    return-void
.end method

.method public setOpenLBSSetting(Z)V
    .locals 0
    .parameter "setting"

    .prologue
    .line 1738
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mOpenLBSSetting:Z

    .line 1739
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 956
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0, p1}, Lcom/lge/camera/OrientationInfo;->setOrientation(I)V

    .line 959
    :cond_0
    return-void
.end method

.method public setOrientationListener()V
    .locals 2

    .prologue
    .line 985
    const-string v0, "CameraApp"

    const-string v1, "setOrientationListener"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/OrientationInfo;->setOrientationListener()V

    .line 989
    :cond_0
    return-void
.end method

.method public setOrientationListenerRotate(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 997
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isControllerInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 998
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 999
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "animation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1000
    const-string v1, "com.lge.camera.command.Rotate"

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1004
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 1002
    :cond_0
    const-string v1, "com.lge.camera.command.Rotate"

    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPIPMask(I)Z
    .locals 2
    .parameter "pipFrameSelectedMenu"

    .prologue
    .line 3159
    const/4 v0, 0x0

    .line 3160
    .local v0, ret:Z
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewController;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3162
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewController;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/camera/controller/PIPController;->setPIPMask(I)Z

    move-result v0

    .line 3164
    :cond_0
    return v0
.end method

.method public setPIPRotate(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 3179
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3181
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PIPController;->setPIPRotate(I)V

    .line 3183
    :cond_0
    return-void
.end method

.method public setPanoramaEngine()V
    .locals 0

    .prologue
    .line 4649
    return-void
.end method

.method public setParameteredRotation(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 650
    iput p1, p0, Lcom/lge/camera/Mediator;->mParameteredRotation:I

    .line 651
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "parameter"

    .prologue
    .line 3678
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3679
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    .line 3680
    .local v0, cameraDevice:Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    .line 3681
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3684
    .end local v0           #cameraDevice:Landroid/hardware/Camera;
    :cond_0
    return-void
.end method

.method public setPausing(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1140
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mPausing:Z

    .line 1141
    return-void
.end method

.method public setPicturesRemaining(J)V
    .locals 1
    .parameter "remain"

    .prologue
    .line 3857
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/IndicatorController;->setPicturesRemaining(J)V

    .line 3858
    return-void
.end method

.method public setPreferenceMenuEnable(Ljava/lang/String;ZZ)V
    .locals 2
    .parameter "menu"
    .parameter "enable"
    .parameter "onlySetIcon"

    .prologue
    .line 1867
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1901
    :cond_0
    :goto_0
    return-void

    .line 1872
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/AppControlUtil;->checkGalleryEnabledOnGuestMode(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1875
    const-string v1, "key_camera_auto_review"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "key_video_auto_review"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1877
    :cond_2
    const/4 p2, 0x0

    .line 1882
    :cond_3
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->getQfIndex(Ljava/lang/String;)I

    move-result v0

    .line 1884
    .local v0, menuIndex:I
    if-eqz p3, :cond_4

    .line 1885
    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->isQuickFunctionList(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1886
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v1, p1}, Lcom/lge/camera/controller/SettingController;->getSetting(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/Mediator;->setQuickFunctionControllerMenuIcon(II)V

    goto :goto_0

    .line 1891
    :cond_4
    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->isQuickFunctionList(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1892
    invoke-virtual {p0, v0, p2}, Lcom/lge/camera/Mediator;->setQFLMenuEnabled(IZ)V

    .line 1894
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1895
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/Mediator;->setCurrentSettingMenuEnable(Ljava/lang/String;Z)V

    .line 1897
    :cond_6
    const-string v1, "key_flash"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1898
    const/16 v1, 0xa

    invoke-virtual {p0, v1, p2, p2}, Lcom/lge/camera/Mediator;->setButtonRemainEnabled(IZZ)V

    .line 1900
    :cond_7
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->setQuickFunctionControllerAllMenuIcons()V

    goto :goto_0
.end method

.method public setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V
    .locals 2
    .parameter "menu"
    .parameter "enable"

    .prologue
    .line 1905
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1930
    :cond_0
    :goto_0
    return-void

    .line 1910
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/AppControlUtil;->checkGalleryEnabledOnGuestMode(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1913
    const-string v1, "key_camera_auto_review"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "key_video_auto_review"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1915
    :cond_2
    const/4 p2, 0x0

    .line 1920
    :cond_3
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->getQfIndex(Ljava/lang/String;)I

    move-result v0

    .line 1921
    .local v0, menuIndex:I
    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->isQuickFunctionList(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1922
    invoke-virtual {p0, v0, p2}, Lcom/lge/camera/Mediator;->setQFLMenuEnabled(IZ)V

    .line 1924
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1925
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/Mediator;->setCurrentSettingMenuEnable(Ljava/lang/String;Z)V

    .line 1927
    :cond_5
    const-string v1, "key_flash"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1928
    const/16 v1, 0xa

    invoke-virtual {p0, v1, p2, p2}, Lcom/lge/camera/Mediator;->setButtonRemainEnabled(IZZ)V

    goto :goto_0
.end method

.method public setPreviewEffectForBeautyShotMode(Landroid/hardware/Camera$Parameters;Z)V
    .locals 8
    .parameter "param"
    .parameter "isRendered"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1061
    const-string v4, "CameraApp"

    const-string v5, "setPreviewEffectForBeautyShotMode - start"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v3

    .line 1064
    .local v3, sPreview:Lcom/lge/camera/components/CameraPreview;
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/CameraPreview;->releasePreviewCallback(Landroid/hardware/Camera;)V

    .line 1065
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 1067
    if-eqz p2, :cond_1

    .line 1068
    const-string v4, "CameraApp"

    const-string v5, "setPreviewEffectForBeautyShotMode - shot mode is beautyshot"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v1

    .line 1072
    .local v1, gPreview:Lcom/lge/camera/components/OpenGLSurfaceView;
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreviewExtra()Landroid/view/SurfaceView;

    move-result-object v2

    .line 1074
    .local v2, gPreviewExtra:Landroid/view/SurfaceView;
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/OpenGLSurfaceView;->releasePreviewCallback(Landroid/hardware/Camera;)V

    .line 1075
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/OpenGLSurfaceView;->setVisibility(I)V

    .line 1076
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/OpenGLSurfaceView;->clearData(Z)V

    .line 1077
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/OpenGLSurfaceView;->setVisibility(I)V

    .line 1078
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1080
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/lge/camera/controller/PreviewController;->startPreview(Landroid/hardware/Camera$Parameters;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    .end local v1           #gPreview:Lcom/lge/camera/components/OpenGLSurfaceView;
    .end local v2           #gPreviewExtra:Landroid/view/SurfaceView;
    .end local v3           #sPreview:Lcom/lge/camera/components/CameraPreview;
    :cond_0
    :goto_0
    const-string v4, "CameraApp"

    const-string v5, "setPreviewEffectForBeautyShotMode - end"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    return-void

    .line 1082
    .restart local v3       #sPreview:Lcom/lge/camera/components/CameraPreview;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreviewExtra()Landroid/view/SurfaceView;

    move-result-object v2

    .line 1084
    .restart local v2       #gPreviewExtra:Landroid/view/SurfaceView;
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v1

    .line 1086
    .restart local v1       #gPreview:Lcom/lge/camera/components/OpenGLSurfaceView;
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/OpenGLSurfaceView;->releasePreviewCallback(Landroid/hardware/Camera;)V

    .line 1087
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/OpenGLSurfaceView;->setVisibility(I)V

    .line 1088
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1089
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/olaworks/library/EngineProcessor;->releaseAllEngine()V

    .line 1090
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->swapPreviewEffect(Lcom/lge/olaworks/library/BaseEngine;)V

    .line 1091
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 1093
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/lge/camera/controller/PreviewController;->startPreview(Landroid/hardware/Camera$Parameters;Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1095
    .end local v1           #gPreview:Lcom/lge/camera/components/OpenGLSurfaceView;
    .end local v2           #gPreviewExtra:Landroid/view/SurfaceView;
    .end local v3           #sPreview:Lcom/lge/camera/components/CameraPreview;
    :catch_0
    move-exception v0

    .line 1096
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "CameraApp"

    const-string v5, "NullPointerException:"

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1097
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v4, :cond_0

    .line 1098
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4, v7, v6}, Lcom/lge/camera/controller/PreviewController;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    goto :goto_0
.end method

.method public setPreviewRendered(Z)V
    .locals 3
    .parameter "render"

    .prologue
    .line 3826
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewRendered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3827
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewController;->setRendered(Z)V

    .line 3828
    return-void
.end method

.method public setPreviewVisibility(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 3811
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 3812
    return-void
.end method

.method public setPreviewing(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3619
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    .line 3620
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewController;->setPreviewing(Z)V

    .line 3622
    :cond_0
    return-void
.end method

.method public abstract setPreviousAutoReviewValue()V
.end method

.method public setPreviousRecordModeString(Ljava/lang/String;)V
    .locals 0
    .parameter "strRecordMode"

    .prologue
    .line 4637
    return-void
.end method

.method public setPreviousResolution(Ljava/lang/String;)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 3769
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewController;->setPreviousResolution(Ljava/lang/String;)V

    .line 3770
    return-void
.end method

.method public setPreviousShotModeString(Ljava/lang/String;)V
    .locals 0
    .parameter "strShotMode"

    .prologue
    .line 4635
    return-void
.end method

.method public setQFLMenuEnabled(IZ)V
    .locals 1
    .parameter "menuIndex"
    .parameter "enabled"

    .prologue
    .line 3116
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuEnabled(IZ)V

    .line 3117
    return-void
.end method

.method public setQFLMenuSelected(IZ)V
    .locals 1
    .parameter "menuIndex"
    .parameter "selected"

    .prologue
    .line 3119
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuSelected(IZ)V

    .line 3120
    return-void
.end method

.method public setQuickButtonForcedDisable(Z)V
    .locals 1
    .parameter "set"

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonForcedDisable(Z)V

    .line 2268
    return-void
.end method

.method public setQuickButtonMenuEnable(IZZ)V
    .locals 1
    .parameter "buttonType"
    .parameter "enable"
    .parameter "dimByEnable"

    .prologue
    .line 2264
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/QuickButtonController;->setMenuEnable(IZZ)V

    .line 2265
    return-void
.end method

.method public setQuickButtonMenuEnable(ZZ)V
    .locals 1
    .parameter "enable"
    .parameter "dimByEnable"

    .prologue
    .line 2261
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickButtonController;->setAllMenuEnable(ZZ)V

    .line 2262
    return-void
.end method

.method public setQuickButtonMode(Z)V
    .locals 11
    .parameter "isIAon"

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1960
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1961
    const/4 v4, 0x1

    .line 1962
    .local v4, needModeButton:Z
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "not found"

    const-string v8, "key_camera_shot_mode"

    invoke-virtual {p0, v8}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v7

    if-ne v7, v5, :cond_2

    const-string v7, "not found"

    const-string v8, "key_video_record_mode"

    invoke-virtual {p0, v8}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1966
    :cond_1
    const/4 v4, 0x0

    .line 1968
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isNoneFlashModel()Z

    move-result v7

    if-nez v7, :cond_4

    move v0, v5

    .line 1970
    .local v0, addFlash:Z
    :goto_0
    invoke-direct {p0, v4, p1, v0}, Lcom/lge/camera/Mediator;->getButtonDefine(ZZZ)Landroid/util/SparseIntArray;

    move-result-object v2

    .line 1971
    .local v2, buttonDefine:Landroid/util/SparseIntArray;
    if-eqz v2, :cond_7

    .line 1972
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/16 v7, 0xb

    if-ge v3, v7, :cond_6

    .line 1973
    const/4 v7, -0x1

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 1974
    .local v1, butLoc:I
    const/4 v7, -0x1

    if-le v1, v7, :cond_5

    .line 1975
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v1}, Lcom/lge/camera/Mediator;->addQuickButton(Landroid/content/Context;II)V

    .line 1976
    if-eqz p1, :cond_3

    .line 1977
    invoke-virtual {p0, v3, v5, v5}, Lcom/lge/camera/Mediator;->setButtonRemainEnabled(IZZ)V

    .line 1979
    :cond_3
    invoke-virtual {p0, v3, v6, v6}, Lcom/lge/camera/Mediator;->setQuickButtonVisible(IIZ)V

    .line 1972
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #addFlash:Z
    .end local v1           #butLoc:I
    .end local v2           #buttonDefine:Landroid/util/SparseIntArray;
    .end local v3           #i:I
    :cond_4
    move v0, v6

    .line 1968
    goto :goto_0

    .line 1981
    .restart local v0       #addFlash:Z
    .restart local v1       #butLoc:I
    .restart local v2       #buttonDefine:Landroid/util/SparseIntArray;
    .restart local v3       #i:I
    :cond_5
    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->removeQuickButton(I)V

    goto :goto_2

    .line 1984
    .end local v1           #butLoc:I
    :cond_6
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 2002
    .end local v0           #addFlash:Z
    .end local v2           #buttonDefine:Landroid/util/SparseIntArray;
    .end local v3           #i:I
    .end local v4           #needModeButton:Z
    :cond_7
    :goto_3
    return-void

    .line 1987
    :cond_8
    if-eqz p1, :cond_9

    .line 1988
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0, v7, v9, v8}, Lcom/lge/camera/Mediator;->addQuickButton(Landroid/content/Context;II)V

    .line 1989
    invoke-virtual {p0, v9, v6, v5}, Lcom/lge/camera/Mediator;->setQuickButtonVisible(IIZ)V

    .line 1991
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0, v7, v8, v9}, Lcom/lge/camera/Mediator;->addQuickButton(Landroid/content/Context;II)V

    .line 1992
    invoke-virtual {p0, v8, v6, v5}, Lcom/lge/camera/Mediator;->setQuickButtonVisible(IIZ)V

    .line 1994
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {p0, v7, v10, v8}, Lcom/lge/camera/Mediator;->addQuickButton(Landroid/content/Context;II)V

    .line 1995
    invoke-virtual {p0, v10, v6, v5}, Lcom/lge/camera/Mediator;->setQuickButtonVisible(IIZ)V

    goto :goto_3

    .line 1997
    :cond_9
    invoke-virtual {p0, v8}, Lcom/lge/camera/Mediator;->removeQuickButton(I)V

    .line 1998
    invoke-virtual {p0, v9}, Lcom/lge/camera/Mediator;->removeQuickButton(I)V

    .line 1999
    invoke-virtual {p0, v10}, Lcom/lge/camera/Mediator;->removeQuickButton(I)V

    goto :goto_3
.end method

.method public setQuickButtonVisible(IIZ)V
    .locals 1
    .parameter "type"
    .parameter "visible"
    .parameter "animation"

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/QuickButtonController;->setVisible(IIZ)V

    .line 2253
    return-void
.end method

.method public setQuickFunctionAllMenuEnabled(ZZ)V
    .locals 1
    .parameter "enabled"
    .parameter "dimByEnable"

    .prologue
    .line 3110
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuEnabled(ZZ)V

    .line 3111
    return-void
.end method

.method public setQuickFunctionControllerAllMenuIcons()V
    .locals 1

    .prologue
    .line 3147
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuIcons()V

    .line 3148
    return-void
.end method

.method public setQuickFunctionControllerMenu(I)V
    .locals 1
    .parameter "menuIndex"

    .prologue
    .line 3210
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->setMenu(I)V

    .line 3211
    return-void
.end method

.method public setQuickFunctionControllerMenuIcon(II)V
    .locals 1
    .parameter "menuIndex"
    .parameter "iconIndex"

    .prologue
    .line 3207
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuIcon(II)V

    .line 3208
    return-void
.end method

.method public setQuickFunctionControllerMmsLimit()V
    .locals 1

    .prologue
    .line 3213
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->setMmsLimit()V

    .line 3214
    return-void
.end method

.method public setQuickFunctionControllerMmsLimit(Z)V
    .locals 1
    .parameter "mmsVideo"

    .prologue
    .line 3216
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->setMmsLimit(Z)V

    .line 3217
    return-void
.end method

.method public setQuickFunctionControllerVisible(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 3222
    if-eqz p1, :cond_0

    .line 3223
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->qflShow()V

    .line 3227
    :goto_0
    return-void

    .line 3225
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->qflHide()V

    goto :goto_0
.end method

.method public setQuickFunctionDragControllerSelectIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 3263
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionDragController;->setSelectIndex(I)V

    .line 3264
    return-void
.end method

.method public setQuickFunctionMenuForcedDisable(Z)V
    .locals 1
    .parameter "set"

    .prologue
    .line 3241
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->setQuickFunctionMenuForcedDisable(Z)V

    .line 3242
    return-void
.end method

.method public setRecIndicatorLayout(III)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "leftMargin"

    .prologue
    .line 4619
    return-void
.end method

.method public setRecordLocation(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {v0, p1}, Lcom/lge/camera/LocationInfo;->setRecordLocation(Z)V

    .line 2064
    return-void
.end method

.method public setRecordingTime_realduration(J)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 4660
    return-void
.end method

.method public setRemoveFreePanoramaBlackBg(Z)V
    .locals 0
    .parameter "remove"

    .prologue
    .line 4556
    return-void
.end method

.method public setResultCancelForAttachMode()V
    .locals 2

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    .line 353
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isAttachMode()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 354
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/CameraActivity;->setResult(I)V

    .line 356
    :cond_0
    return-void
.end method

.method public setRotateBatteryIndicatorwithHint(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1134
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mRotateBatteryIndicatorwithHint:Z

    .line 1135
    return-void
.end method

.method public setSavedFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 691
    iput-object p1, p0, Lcom/lge/camera/Mediator;->mSavedFileName:Ljava/lang/String;

    .line 692
    return-void
.end method

.method public setSavedImageUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 683
    iput-object p1, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    .line 684
    return-void
.end method

.method public setScaleWidthHeight(F)V
    .locals 0
    .parameter "ScaleWidthHeight"

    .prologue
    .line 4588
    return-void
.end method

.method public setSceneModeForAdvanced(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0
    .parameter "parameters"
    .parameter "sceneMode"

    .prologue
    .line 4661
    return-void
.end method

.method public setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .parameter "saveSetting"

    .prologue
    .line 3524
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/setting/SettingMenu;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3525
    return-void
.end method

.method public setSelectedChild(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 3530
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->setSelectedChild(I)Z

    move-result v0

    return v0
.end method

.method public setSelectedChild(II)Z
    .locals 1
    .parameter "menuIndex"
    .parameter "index"

    .prologue
    .line 3527
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/setting/SettingMenu;->setSelectedChild(II)Z

    move-result v0

    return v0
.end method

.method public setSetting(II)Z
    .locals 1
    .parameter "settingIndex"
    .parameter "settingValue"

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSetting(II)Z

    move-result v0

    return v0
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSettingControllerMmsLimit(Z)V
    .locals 1
    .parameter "mmsVideo"

    .prologue
    .line 3485
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SettingController;->setMmsLimit(Z)V

    .line 3486
    return-void
.end method

.method public setSettingForDualCamera(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 2161
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SettingController;->setSettingForDualCamera(Z)V

    .line 2162
    return-void
.end method

.method public setSettingParameter(II)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSetting(II)Z

    .line 2178
    return-void
.end method

.method public setShowCameraErrorPopup(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 2017
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->bShowCameraErrorPopup:Z

    .line 2018
    return-void
.end method

.method public setShutterButtonClicked(Z)V
    .locals 1
    .parameter "clicked"

    .prologue
    .line 3962
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/FocusController;->setShutterButtonClicked(Z)V

    .line 3963
    return-void
.end method

.method public setShutterButtonImage(ZI)V
    .locals 1
    .parameter "buttonEnable"
    .parameter "degree"

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2455
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->setShutterButtonImage(ZI)V

    .line 2457
    :cond_0
    return-void
.end method

.method public setShutterFocusLongKey(Z)V
    .locals 1
    .parameter "set"

    .prologue
    .line 2502
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2503
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setShutterFocusLongKey(Z)V

    .line 2505
    :cond_0
    return-void
.end method

.method public setSmartCameraMode(Landroid/hardware/Camera$Parameters;Z)V
    .locals 0
    .parameter "params"
    .parameter "enable"

    .prologue
    .line 4663
    return-void
.end method

.method public setSmartModeForPictureSize(Ljava/lang/String;)V
    .locals 0
    .parameter "PictureSize"

    .prologue
    .line 4667
    return-void
.end method

.method public setSmartZoomFocusViewPosition(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3743
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->setSmartZoomFocusViewPosition(II)V

    .line 3744
    return-void
.end method

.method public setStartrecordingdegree(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 4568
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 551
    iput p1, p0, Lcom/lge/camera/Mediator;->mStatus:I

    .line 552
    return-void
.end method

.method public setStorageInitForFileNamingHelper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3479
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->setStorageInitForFileNamingHelper()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setSubButton(II)V
    .locals 1
    .parameter "loc"
    .parameter "resId"

    .prologue
    .line 2585
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2586
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 2588
    :cond_0
    return-void
.end method

.method public setSubCameraModeRunning(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1114
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mSetCameraMode:Z

    .line 1115
    return-void
.end method

.method public setSubMenuMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1108
    iput p1, p0, Lcom/lge/camera/Mediator;->mSubMenuMode:I

    .line 1109
    return-void
.end method

.method public setSwitcherVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2509
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setSwitcherVisible(Z)V

    .line 2511
    :cond_0
    return-void
.end method

.method public setSwithcerEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2756
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2757
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setSwithcerEnable(Z)V

    .line 2759
    :cond_0
    return-void
.end method

.method public setThumbnailButtonVisibility(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 2545
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2546
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setThumbnailButtonVisibility(I)V

    .line 2548
    :cond_0
    return-void
.end method

.method public setTimeMachineComplete(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 2617
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mSetTimeMachineComplete:Z

    .line 2618
    return-void
.end method

.method public setTimeMachineLimit(Z)V
    .locals 1
    .parameter "set"

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SettingController;->setTimeMachineLimit(Z)V

    .line 2172
    return-void
.end method

.method public setTimeMachineShot(Landroid/hardware/Camera$Parameters;I)V
    .locals 0
    .parameter "parameters"
    .parameter "zsl_buffer"

    .prologue
    .line 4638
    return-void
.end method

.method public setTimemachineHasPictures(Z)V
    .locals 0
    .parameter "has"

    .prologue
    .line 4640
    return-void
.end method

.method public setTimerAndSceneSmartShutterEnable(Landroid/hardware/Camera$Parameters;ZZZ)V
    .locals 0
    .parameter "parameters"
    .parameter "timer"
    .parameter "scene"
    .parameter "enable"

    .prologue
    .line 4648
    return-void
.end method

.method public setTimerSetting(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 4532
    return-void
.end method

.method public setVideoFlash(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 4681
    return-void
.end method

.method public setVideoState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1146
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set video state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/Mediator;->mVideoState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    iput p1, p0, Lcom/lge/camera/Mediator;->mVideoState:I

    .line 1148
    const-string v0, "com.lge.camera.command.UpdateCaptureButton"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 1149
    const-string v0, "com.lge.camera.command.UpdateRecIndicator"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 1150
    return-void
.end method

.method public setVideoStateOnly(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1152
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set video state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/Mediator;->mVideoState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iput p1, p0, Lcom/lge/camera/Mediator;->mVideoState:I

    .line 1154
    return-void
.end method

.method public setVisible(IZ)Z
    .locals 5
    .parameter "resId"
    .parameter "visible"

    .prologue
    const/4 v1, 0x0

    .line 386
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 388
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 389
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 394
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 389
    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    .line 391
    :cond_1
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View not found in setVisible resId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setVoiceMailIndicator(I)V
    .locals 1
    .parameter "msgReceived"

    .prologue
    .line 3923
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/IndicatorController;->setVoiceMailIndicator(I)V

    .line 3924
    return-void
.end method

.method public setZoomMaxValue(F)V
    .locals 1
    .parameter "value"

    .prologue
    .line 3003
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ZoomController;->setZoomMaxValue(F)V

    .line 3004
    return-void
.end method

.method public setZoomRatio(F)V
    .locals 1
    .parameter "value"

    .prologue
    .line 3006
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ZoomController;->setZoomRatio(F)V

    .line 3007
    return-void
.end method

.method public show3dDepthController(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 2964
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/Camera3dDepthController;->showControl(Z)V

    .line 2965
    return-void
.end method

.method public showBeautyShotBarForNewUx(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 3054
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_front_beauty"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_main_beauty"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3059
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->showBeautyshotController(Z)V

    .line 3061
    :cond_1
    return-void
.end method

.method public showBeautyshotController(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 2945
    new-instance v0, Lcom/lge/camera/Mediator$7;

    invoke-direct {v0, p0, p1}, Lcom/lge/camera/Mediator$7;-><init>(Lcom/lge/camera/Mediator;Z)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2954
    return-void
.end method

.method public showBrightnessController(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 2936
    new-instance v0, Lcom/lge/camera/Mediator$6;

    invoke-direct {v0, p0, p1}, Lcom/lge/camera/Mediator$6;-><init>(Lcom/lge/camera/Mediator;Z)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2942
    return-void
.end method

.method public showBubblePopupVisibility(IJZ)V
    .locals 0
    .parameter "popupType"
    .parameter "duration"
    .parameter "show"

    .prologue
    .line 4642
    return-void
.end method

.method public showCameraErrorAndFinish()V
    .locals 2

    .prologue
    .line 3380
    const-string v0, "CameraApp"

    const-string v1, "Error!!! showCameraErrorAndFinish"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3381
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->resetScreenTimeout()V

    .line 3382
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->setErrorOccuredAndFinish(Z)V

    .line 3383
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/DialogController;->showDialogPopup(I)V

    .line 3384
    return-void
.end method

.method public showCameraStoppedAndFinish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3386
    const-string v0, "CameraApp"

    const-string v1, "Error!!! showCameraStoppedAndFinish"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3387
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->resetScreenTimeout()V

    .line 3388
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->setErrorOccuredAndFinish(Z)V

    .line 3389
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3390
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 3391
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 3393
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0b021d

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mToast:Landroid/widget/Toast;

    .line 3395
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x31

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0019

    invoke-static {v2, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 3398
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3399
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->finish()V

    .line 3404
    :goto_0
    return-void

    .line 3401
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/DialogController;->showDialogPopup(I)V

    goto :goto_0
.end method

.method public showChildCustomView(Z)V
    .locals 3
    .parameter "useAnim"

    .prologue
    .line 3017
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "temp showChildCustomView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3018
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ZoomController;->showSettingZoomControl(Z)V

    .line 3019
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/BrightnessController;->showSettingBrightnessControl(Z)V

    .line 3020
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/BeautyshotController;->showSettingBeautyShotControl(Z)V

    .line 3021
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3022
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/Camera3dDepthController;->showSetting3dDepthControl(Z)V

    .line 3024
    :cond_0
    return-void
.end method

.method public abstract showControllerForHideSettingMenu(ZZ)V
.end method

.method public showDefaultQuickButton(Z)V
    .locals 12
    .parameter "show"

    .prologue
    const/4 v11, 0x7

    const/4 v10, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2288
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2328
    :cond_0
    :goto_0
    return-void

    .line 2292
    :cond_1
    if-eqz p1, :cond_c

    .line 2293
    const/4 v5, 0x1

    .line 2294
    .local v5, needModeButton:Z
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "not found"

    const-string v9, "key_camera_shot_mode"

    invoke-virtual {p0, v9}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v8

    if-ne v8, v6, :cond_4

    const-string v8, "not found"

    const-string v9, "key_video_record_mode"

    invoke-virtual {p0, v9}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2298
    :cond_3
    const/4 v5, 0x0

    .line 2300
    :cond_4
    const-string v8, "on"

    const-string v9, "key_smart_mode"

    invoke-virtual {p0, v9}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2301
    .local v4, isIAon:Z
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v8

    if-nez v8, :cond_6

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isNoneFlashModel()Z

    move-result v8

    if-nez v8, :cond_6

    move v0, v6

    .line 2303
    .local v0, addFlash:Z
    :goto_1
    invoke-direct {p0, v5, v4, v0}, Lcom/lge/camera/Mediator;->getButtonDefine(ZZZ)Landroid/util/SparseIntArray;

    move-result-object v2

    .line 2305
    .local v2, buttonDefine:Landroid/util/SparseIntArray;
    if-eqz v2, :cond_0

    .line 2306
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    const/16 v8, 0xb

    if-ge v3, v8, :cond_8

    .line 2307
    invoke-virtual {v2, v3, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2308
    .local v1, butLoc:I
    if-le v1, v10, :cond_7

    .line 2309
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v8, v3, v1}, Lcom/lge/camera/Mediator;->addQuickButton(Landroid/content/Context;II)V

    .line 2310
    if-eqz v0, :cond_5

    const/16 v8, 0xa

    if-ne v3, v8, :cond_5

    .line 2311
    const-string v8, "key_flash"

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFlashEnableForShotMode()Z

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/lge/camera/Mediator;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 2306
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0           #addFlash:Z
    .end local v1           #butLoc:I
    .end local v2           #buttonDefine:Landroid/util/SparseIntArray;
    .end local v3           #i:I
    :cond_6
    move v0, v7

    .line 2301
    goto :goto_1

    .line 2314
    .restart local v0       #addFlash:Z
    .restart local v1       #butLoc:I
    .restart local v2       #buttonDefine:Landroid/util/SparseIntArray;
    .restart local v3       #i:I
    :cond_7
    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->removeQuickButton(I)V

    goto :goto_3

    .line 2317
    .end local v1           #butLoc:I
    :cond_8
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isAttachMode()Z

    move-result v8

    if-nez v8, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isMMSIntent()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2319
    :cond_a
    invoke-virtual {p0, v11, v7, v6}, Lcom/lge/camera/Mediator;->setQuickButtonMenuEnable(IZZ)V

    .line 2320
    invoke-virtual {p0, v11, v7}, Lcom/lge/camera/Mediator;->setButtonRemainEnabled(IZ)V

    .line 2322
    :cond_b
    const/16 v6, 0x64

    invoke-virtual {p0, v6, v7, v7}, Lcom/lge/camera/Mediator;->setQuickButtonVisible(IIZ)V

    .line 2323
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    goto/16 :goto_0

    .line 2326
    .end local v0           #addFlash:Z
    .end local v2           #buttonDefine:Landroid/util/SparseIntArray;
    .end local v3           #i:I
    .end local v4           #isIAon:Z
    .end local v5           #needModeButton:Z
    :cond_c
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->removeQuickButtonAll()V

    goto/16 :goto_0
.end method

.method public showDialogPopup(I)V
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 3360
    new-instance v0, Lcom/lge/camera/Mediator$9;

    invoke-direct {v0, p0, p1}, Lcom/lge/camera/Mediator$9;-><init>(Lcom/lge/camera/Mediator;I)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3366
    return-void
.end method

.method public showFocus()Z
    .locals 1

    .prologue
    .line 4004
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    move-result v0

    return v0
.end method

.method public showFocus(Z)Z
    .locals 1
    .parameter "justDoIt"

    .prologue
    .line 4007
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/FocusController;->showFocus(Z)Z

    move-result v0

    return v0
.end method

.method public showFreePanoramaBlackBg()V
    .locals 0

    .prologue
    .line 4543
    return-void
.end method

.method public showFreePanoramaView()V
    .locals 0

    .prologue
    .line 4545
    return-void
.end method

.method public showGalleryQuickViewWindow(ZJ)Z
    .locals 1
    .parameter "useLongKey"
    .parameter "duration"

    .prologue
    .line 2743
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2744
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/PreviewPanelController;->showGalleryQuickViewWindow(ZJ)Z

    move-result v0

    .line 2746
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showHeatingwarning()V
    .locals 0

    .prologue
    .line 4653
    return-void
.end method

.method public showHelpGuidePopup(Ljava/lang/String;IZ)Z
    .locals 1
    .parameter "shotModeHelp"
    .parameter "dialogId"
    .parameter "useCheckBox"

    .prologue
    .line 3414
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    if-eqz v0, :cond_0

    .line 3415
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/DialogController;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    .line 3417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showIndicatorController()V
    .locals 1

    .prologue
    .line 3860
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->showIndicator()V

    .line 3861
    return-void
.end method

.method public showManualFocusController(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 2956
    new-instance v0, Lcom/lge/camera/Mediator$8;

    invoke-direct {v0, p0, p1}, Lcom/lge/camera/Mediator$8;-><init>(Lcom/lge/camera/Mediator;Z)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2962
    return-void
.end method

.method public showOptionMenu(I)V
    .locals 1
    .parameter "menuType"

    .prologue
    .line 4099
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    if-eqz v0, :cond_0

    .line 4100
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/OptionMenuController;->showOptionMenu(I)V

    .line 4102
    :cond_0
    return-void
.end method

.method public abstract showOsd()V
.end method

.method public showPanoramaView()V
    .locals 0

    .prologue
    .line 4534
    return-void
.end method

.method public showPopupAnimation(I)V
    .locals 5
    .parameter "ViewId"

    .prologue
    .line 1742
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 1743
    .local v0, rl:Lcom/lge/camera/components/RotateLayout;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/camera/util/Util;->startAlphaAnimation(Landroid/view/View;IIILandroid/view/animation/Animation$AnimationListener;)V

    .line 1744
    return-void
.end method

.method public showPreview()V
    .locals 1

    .prologue
    .line 3814
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->show()V

    .line 3815
    return-void
.end method

.method public showPreviewPanelController()V
    .locals 2

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2653
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setPreviewPanelVisibility(Z)V

    .line 2655
    :cond_0
    return-void
.end method

.method public showPreviewPanelLiveSnapShotButton()V
    .locals 1

    .prologue
    .line 2625
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2626
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->showLiveSnapshotButton()V

    .line 2628
    :cond_0
    return-void
.end method

.method public showProgressDialog()V
    .locals 2

    .prologue
    .line 3420
    const-string v0, "CameraApp"

    const-string v1, "showProgressDialog"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3421
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    if-eqz v0, :cond_0

    .line 3422
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->showProgressDialog()V

    .line 3424
    :cond_0
    return-void
.end method

.method public showQuickFunctionController()V
    .locals 1

    .prologue
    .line 3128
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->show()V

    .line 3129
    return-void
.end method

.method public showQuickFunctionDragController()V
    .locals 1

    .prologue
    .line 3257
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionDragController;->show()V

    .line 3258
    return-void
.end method

.method public showQuickMenuEnteringGuide(Z)V
    .locals 4
    .parameter "isShow"

    .prologue
    .line 1944
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1950
    :cond_0
    :goto_0
    return-void

    .line 1947
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportHelpSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1948
    invoke-static {}, Lcom/lge/camera/controller/EnteringViewController;->get()Lcom/lge/camera/controller/EnteringViewController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/lge/camera/controller/EnteringViewController;->showQuickMenuEnteringGuide(Landroid/app/Activity;Lcom/lge/camera/controller/QuickFunctionController;ZI)V

    goto :goto_0
.end method

.method public showRecoridngStopButton()V
    .locals 0

    .prologue
    .line 4616
    return-void
.end method

.method public showRequestedSizeLimit()V
    .locals 0

    .prologue
    .line 4563
    return-void
.end method

.method public showSavingProgressDialog()V
    .locals 2

    .prologue
    .line 3432
    const-string v0, "CameraApp"

    const-string v1, "showProgressDialog"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3433
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    if-eqz v0, :cond_0

    .line 3434
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->showSavingProgressDialog()V

    .line 3436
    :cond_0
    return-void
.end method

.method public showSetting3dDepthControl(Z)V
    .locals 1
    .parameter "useAnim"

    .prologue
    .line 2923
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/Camera3dDepthController;->showSetting3dDepthControl(Z)V

    .line 2924
    return-void
.end method

.method public showSettingBeautyShotControl(Z)V
    .locals 1
    .parameter "useAnim"

    .prologue
    .line 2915
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/BeautyshotController;->showSettingBeautyShotControl(Z)V

    .line 2916
    return-void
.end method

.method public showSettingBrightnessControl(Z)V
    .locals 1
    .parameter "useAnim"

    .prologue
    .line 2911
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/BrightnessController;->showSettingBrightnessControl(Z)V

    .line 2912
    return-void
.end method

.method public showSettingZoomControl(Z)V
    .locals 1
    .parameter "useAnim"

    .prologue
    .line 2919
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ZoomController;->showSettingZoomControl(Z)V

    .line 2920
    return-void
.end method

.method public showShotModeMenu()V
    .locals 1

    .prologue
    .line 4123
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ShotModeMenuController;->show()V

    .line 4124
    return-void
.end method

.method public showSmartZoomFocusView()V
    .locals 1

    .prologue
    .line 3737
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->showSmartZoomFocusView()V

    .line 3738
    return-void
.end method

.method public showStorageHint(I)V
    .locals 1
    .parameter "storageState"

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/StorageController;->showStorageHint(I)V

    .line 2228
    return-void
.end method

.method public showSubButtonInit(Z)V
    .locals 1
    .parameter "updateThumb"

    .prologue
    .line 2579
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2580
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->showSubButtonInit(Z)V

    .line 2582
    :cond_0
    return-void
.end method

.method public showSubWindowResizeHandler(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3716
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->showSubWindowResizeHandler(FF)V

    .line 3717
    return-void
.end method

.method public showZoomController(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 2927
    new-instance v0, Lcom/lge/camera/Mediator$5;

    invoke-direct {v0, p0, p1}, Lcom/lge/camera/Mediator$5;-><init>(Lcom/lge/camera/Mediator;Z)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2933
    return-void
.end method

.method public smartShutterEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 4645
    return-void
.end method

.method public snapshotOnContinuousFocus()Z
    .locals 1

    .prologue
    .line 2564
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2565
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->snapshotOnContinuousFocus()Z

    move-result v0

    .line 2567
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public snapshotOnIdle()Z
    .locals 1

    .prologue
    .line 2440
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2441
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->snapshotOnIdle()Z

    move-result v0

    .line 2443
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 303
    return-void
.end method

.method public startAudioZoomContollerRotation(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 4586
    return-void
.end method

.method public startAudiozoom()V
    .locals 0

    .prologue
    .line 4573
    return-void
.end method

.method public startFaceDetection()V
    .locals 0

    .prologue
    .line 4623
    return-void
.end method

.method public startFaceDetectionFromHal()V
    .locals 0

    .prologue
    .line 4676
    return-void
.end method

.method public startFocusByTouchPress(IIZ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "bTouchedAFbyFaceTr"

    .prologue
    .line 3995
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/FocusController;->startFocusByTouchPress(IIZ)V

    .line 3996
    return-void
.end method

.method public startFreePanorama()V
    .locals 0

    .prologue
    .line 4547
    return-void
.end method

.method public startFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "parameters"

    .prologue
    .line 4549
    return-void
.end method

.method public startFreePanoramaRotation(IZ)V
    .locals 0
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 4557
    return-void
.end method

.method public startHeatingwarning()V
    .locals 0

    .prologue
    .line 4651
    return-void
.end method

.method public startLiveEffectDrawerSubMenuRotation(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 3153
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->startLiveEffectDrawerSubMenuRotation(I)V

    .line 3154
    return-void
.end method

.method public startObjectTrackingFocus(IIIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "state"

    .prologue
    .line 4030
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/controller/FocusController;->startObjectTrackingFocus(IIIII)V

    .line 4031
    return-void
.end method

.method public startObjectTrackingFocusForSmartZoom(IIIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "state"

    .prologue
    .line 4033
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/controller/FocusController;->startObjectTrackingFocusForSmartZoom(IIIII)V

    .line 4034
    return-void
.end method

.method public startPIPFrameSubMenuRotation(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 3156
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->startPIPFrameSubMenuRotation(I)V

    .line 3157
    return-void
.end method

.method public startPanorama()V
    .locals 0

    .prologue
    .line 4536
    return-void
.end method

.method public startPreview(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .parameter "parameter"
    .parameter "useCallback"

    .prologue
    .line 3577
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    .line 3578
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 3582
    :goto_0
    return-void

    .line 3580
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "mPreviewController is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startPreviewEffect()V
    .locals 2

    .prologue
    .line 3598
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    .line 3599
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->startPreviewEffect()V

    .line 3603
    :goto_0
    return-void

    .line 3601
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "mPreviewController is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startReceivingLocationUpdates()V
    .locals 2

    .prologue
    .line 2036
    const-string v0, "CameraApp"

    const-string v1, "startReceivingLocationUpdates()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    if-eqz v0, :cond_0

    .line 2038
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/LocationInfo;->startReceivingLocationUpdates()V

    .line 2040
    :cond_0
    return-void
.end method

.method public startRecording()V
    .locals 0

    .prologue
    .line 4595
    return-void
.end method

.method public startRecordingControllerRotation(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 4585
    return-void
.end method

.method public startRecordingEffect()V
    .locals 1

    .prologue
    .line 3775
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->startRecordingEffect()V

    .line 3776
    return-void
.end method

.method public startSubMenuRotation(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 3150
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->startSubMenuRotation(I)V

    .line 3151
    return-void
.end method

.method public startTimerShot()V
    .locals 0

    .prologue
    .line 4633
    return-void
.end method

.method public stopAudiozoom()V
    .locals 0

    .prologue
    .line 4580
    return-void
.end method

.method public stopBurstShotSound()V
    .locals 2

    .prologue
    .line 3327
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3328
    const-string v0, "CameraApp"

    const-string v1, "stopBurstShotSound"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3329
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->stopSoundBurstShot()V

    .line 3331
    :cond_0
    return-void
.end method

.method public stopByUserAction()Z
    .locals 1

    .prologue
    .line 4564
    const/4 v0, 0x0

    return v0
.end method

.method public stopClearShotSound()V
    .locals 1

    .prologue
    .line 3340
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3341
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->stopClearShotSound()V

    .line 3343
    :cond_0
    return-void
.end method

.method public stopFaceDetection()V
    .locals 0

    .prologue
    .line 4624
    return-void
.end method

.method public stopFaceDetectionFromHal()V
    .locals 0

    .prologue
    .line 4677
    return-void
.end method

.method public stopFreePanorama()V
    .locals 0

    .prologue
    .line 4548
    return-void
.end method

.method public stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "parameters"

    .prologue
    .line 4550
    return-void
.end method

.method public stopHeatingwarning()V
    .locals 0

    .prologue
    .line 4652
    return-void
.end method

.method public stopPanorama()V
    .locals 0

    .prologue
    .line 4540
    return-void
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    .line 3584
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    .line 3585
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 3589
    :goto_0
    return-void

    .line 3587
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "mPreviewController is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopReceivingLocationUpdates()V
    .locals 2

    .prologue
    .line 2042
    const-string v0, "CameraApp"

    const-string v1, "stopReceivingLocationUpdates"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    if-eqz v0, :cond_0

    .line 2044
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/LocationInfo;->stopReceivingLocationUpdates()V

    .line 2046
    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 0

    .prologue
    .line 4596
    return-void
.end method

.method public stopRecording(Z)V
    .locals 0
    .parameter "isFromMountedAction"

    .prologue
    .line 4597
    return-void
.end method

.method public stopRecordingByPausing()V
    .locals 0

    .prologue
    .line 4600
    return-void
.end method

.method public stopRecordingEffect()V
    .locals 1

    .prologue
    .line 3778
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->stopRecordingEffect()V

    .line 3779
    return-void
.end method

.method public stopSoundContinuous()V
    .locals 1

    .prologue
    .line 3322
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3323
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->stopSoundContinuous()V

    .line 3325
    :cond_0
    return-void
.end method

.method public stopTimerShot()Z
    .locals 1

    .prologue
    .line 4533
    const/4 v0, 0x1

    return v0
.end method

.method public stopVoiceCommandSound()V
    .locals 1

    .prologue
    .line 3276
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3277
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->stopVoiceCommandSound()V

    .line 3279
    :cond_0
    return-void
.end method

.method public storageToastShow(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter "message"
    .parameter "immediately"
    .parameter "shortToast"

    .prologue
    .line 4078
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/ToastController;->storageToastShow(Ljava/lang/String;ZZ)V

    .line 4079
    return-void
.end method

.method public storageToasthide(Z)V
    .locals 1
    .parameter "immediately"

    .prologue
    .line 4081
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ToastController;->storageToasthide(Z)V

    .line 4082
    return-void
.end method

.method public swapPreviewEffect(Lcom/lge/olaworks/library/BaseEngine;)V
    .locals 1
    .parameter "engine"

    .prologue
    .line 3672
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewController;->swapPreviewEffect(Lcom/lge/olaworks/library/BaseEngine;)V

    .line 3673
    return-void
.end method

.method public abstract switchCameraId(I)V
.end method

.method public toast(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 4057
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->toast(Ljava/lang/String;)V

    .line 4058
    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 1
    .parameter "strString"

    .prologue
    .line 4060
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ToastController;->showShortToast(Ljava/lang/String;)V

    .line 4061
    return-void
.end method

.method public toast(Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "immediately"

    .prologue
    .line 4063
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;Z)V

    .line 4064
    return-void
.end method

.method public toastControllerHide(Z)V
    .locals 1
    .parameter "immediately"

    .prologue
    .line 4072
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ToastController;->hide(Z)V

    .line 4073
    return-void
.end method

.method public toastLong(Ljava/lang/String;)V
    .locals 1
    .parameter "strString"

    .prologue
    .line 4069
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ToastController;->showLongToast(Ljava/lang/String;)V

    .line 4070
    return-void
.end method

.method public toastMiddleLong(Ljava/lang/String;)V
    .locals 3
    .parameter "strString"

    .prologue
    .line 4066
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p1, v1, v2}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;J)V

    .line 4067
    return-void
.end method

.method public toggleClearView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 795
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v2

    if-nez v2, :cond_1

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/QuickFunctionController;->isSliding()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/PreviewPanelController;->isSliding()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getQuickButtonController()Lcom/lge/camera/controller/QuickButtonController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/QuickButtonController;->isSliding()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 801
    :cond_2
    const-string v2, "CameraApp"

    const-string v3, "return toggleClearView because on sliding"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 805
    :cond_3
    const-string v2, "CameraApp"

    const-string v3, "toggleClearView"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_5

    .line 807
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isTimerShotCountdown()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isContinuousShotAlived()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isPanoramaStarted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/lge/camera/Mediator;->mInCaptureProgress:Z

    if-nez v2, :cond_0

    .line 819
    :cond_4
    iget-boolean v2, p0, Lcom/lge/camera/Mediator;->mIsClearView:Z

    if-eqz v2, :cond_6

    .line 820
    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->clearViewOff(Z)V

    .line 825
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 826
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v2

    const-string v3, "Main_CameraAppConfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/CameraActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 827
    .local v1, pref:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 828
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 829
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cleanViewOn"

    iget-boolean v3, p0, Lcom/lge/camera/Mediator;->mIsClearView:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 830
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 814
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 822
    :cond_6
    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->clearViewOn(Z)V

    goto :goto_1
.end method

.method public unregisterCAFCallback()V
    .locals 1

    .prologue
    .line 4039
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->unregisterCallback()V

    .line 4040
    return-void
.end method

.method public unregisterObjectCallback()V
    .locals 1

    .prologue
    .line 4046
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->unregisterObjectCallback()V

    .line 4047
    return-void
.end method

.method protected unregisterReceivers()V
    .locals 1

    .prologue
    .line 1622
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mDidRegister:Z

    if-eqz v0, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBroadCastReceiver:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    invoke-virtual {v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->unregisterReceivers()V

    .line 1624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/Mediator;->mDidRegister:Z

    .line 1626
    :cond_0
    return-void
.end method

.method public updateAllBars(II)V
    .locals 1
    .parameter "mBarType"
    .parameter "value"

    .prologue
    .line 2777
    packed-switch p1, :pswitch_data_0

    .line 2812
    :cond_0
    :goto_0
    return-void

    .line 2780
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    if-eqz v0, :cond_0

    .line 2781
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0, p2}, Lcom/lge/camera/controller/ZoomController;->updateAllBars(I)V

    goto :goto_0

    .line 2787
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    if-eqz v0, :cond_1

    .line 2788
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0, p2}, Lcom/lge/camera/controller/BrightnessController;->updateAllBars(I)V

    .line 2790
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessControllerExpand:Lcom/lge/camera/controller/BrightnessControllerExpand;

    if-eqz v0, :cond_0

    .line 2791
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessControllerExpand:Lcom/lge/camera/controller/BrightnessControllerExpand;

    invoke-virtual {v0, p2}, Lcom/lge/camera/controller/BrightnessControllerExpand;->updateAllBars(I)V

    goto :goto_0

    .line 2796
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    if-eqz v0, :cond_0

    .line 2797
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0, p2}, Lcom/lge/camera/controller/BeautyshotController;->updateAllBars(I)V

    goto :goto_0

    .line 2802
    :pswitch_3
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    if-eqz v0, :cond_0

    .line 2803
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0, p2}, Lcom/lge/camera/controller/Camera3dDepthController;->updateAllBars(I)V

    goto :goto_0

    .line 2807
    :pswitch_4
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    if-eqz v0, :cond_0

    .line 2808
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    invoke-virtual {v0, p2}, Lcom/lge/camera/controller/ManualFocusController;->updateAllBars(I)V

    goto :goto_0

    .line 2777
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public updateAudioIndicator()V
    .locals 0

    .prologue
    .line 3905
    return-void
.end method

.method public updateAudiozoom(ZI)V
    .locals 0
    .parameter "updateangle"
    .parameter "zoomvalue"

    .prologue
    .line 4574
    return-void
.end method

.method public updateDualRecordingSelection()Z
    .locals 1

    .prologue
    .line 3725
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->updateEffectSelection()Z

    move-result v0

    return v0
.end method

.method public updateEffectSelection()Z
    .locals 1

    .prologue
    .line 3666
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->updateEffectSelection()Z

    move-result v0

    return v0
.end method

.method public updateFlashIndicator(ZLjava/lang/String;)V
    .locals 1
    .parameter "useLocalSetting"
    .parameter "value"

    .prologue
    .line 3895
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/IndicatorController;->updateFlashIndicator(ZLjava/lang/String;)V

    .line 3896
    return-void
.end method

.method public updateFocusIndicator()V
    .locals 0

    .prologue
    .line 3902
    return-void
.end method

.method public updateFocusStateIndicator()V
    .locals 1

    .prologue
    .line 3965
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->updateFocusStateIndicator()V

    .line 3966
    return-void
.end method

.method public updateGpsIndicator()V
    .locals 1

    .prologue
    .line 3872
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->updateGpsIndicator()V

    .line 3873
    return-void
.end method

.method public updateGpsIndicator(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 3879
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getRecordLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3882
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->updateGpsIndicator()V

    .line 3884
    :cond_1
    return-void
.end method

.method public updateModeMenuIndicator()V
    .locals 1

    .prologue
    .line 3926
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->updateModeMenuIndicator()V

    .line 3927
    return-void
.end method

.method public updateModeMenuIndicator(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 3932
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/IndicatorController;->updateModeMenuIndicator(Ljava/lang/String;)V

    .line 3933
    return-void
.end method

.method public updateNavigationBarShape()V
    .locals 1

    .prologue
    .line 4396
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4397
    new-instance v0, Lcom/lge/camera/Mediator$10;

    invoke-direct {v0, p0}, Lcom/lge/camera/Mediator$10;-><init>(Lcom/lge/camera/Mediator;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 4418
    :cond_0
    return-void
.end method

.method public updateRemainIndicator()V
    .locals 1

    .prologue
    .line 3886
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->updateRemainIndicator()V

    .line 3887
    return-void
.end method

.method public updateSceneIndicator(ZLjava/lang/String;)V
    .locals 0
    .parameter "useLocalSetting"
    .parameter "value"

    .prologue
    .line 3893
    return-void
.end method

.method public updateSizeIndicator()V
    .locals 0

    .prologue
    .line 3867
    return-void
.end method

.method public updateSmartZoomRecordingSelection()Z
    .locals 1

    .prologue
    .line 3734
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->updateEffectSelection()Z

    move-result v0

    return v0
.end method

.method public updateStabilizationIndicator()V
    .locals 1

    .prologue
    .line 3869
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->updateStabilizationIndicator()V

    .line 3870
    return-void
.end method

.method public updateStorageIndicator()V
    .locals 1

    .prologue
    .line 3898
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->updateStorageIndicator()V

    .line 3899
    return-void
.end method

.method public updateThumbnailButton()V
    .locals 1

    .prologue
    .line 2551
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2552
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButton()V

    .line 2554
    :cond_0
    return-void
.end method

.method public updateThumbnailButtonVisibility()V
    .locals 1

    .prologue
    .line 2539
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2540
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButtonVisibility()V

    .line 2542
    :cond_0
    return-void
.end method

.method public updateTimerIndicator()V
    .locals 1

    .prologue
    .line 3889
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->updateTimerIndicator()V

    .line 3890
    return-void
.end method

.method public updateVoiceShutterIndicator(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 4562
    return-void
.end method

.method public updateZoomBar(IIZ)V
    .locals 4
    .parameter "cursorStep"
    .parameter "factor"
    .parameter "scaleEnd"

    .prologue
    .line 3049
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3050
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    mul-int v1, p2, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/lge/camera/components/ZoomBar;->updateBar(IZZZ)V

    .line 3052
    :cond_0
    return-void
.end method

.method public waitAvailableQueueCount(I)V
    .locals 0
    .parameter "availableCount"

    .prologue
    .line 4630
    return-void
.end method

.method public waitSaveImageTreadDone()V
    .locals 0

    .prologue
    .line 4629
    return-void
.end method

.method public waitStopRecordingEffectThreadDone()V
    .locals 1

    .prologue
    .line 3784
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->waitStopRecordingEffectThreadDone()V

    .line 3785
    return-void
.end method
