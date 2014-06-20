.class public abstract Lcom/lge/camera/module/Module;
.super Ljava/lang/Object;
.source "Module.java"


# static fields
.field public static final CLEAR_SHOT:Ljava/lang/String; = "ClearShot"

.field public static final CONTINUOUS_SHOT:Ljava/lang/String; = "ContinuousShot"

.field public static final DEFAULT_NORMAL_SHOT:Ljava/lang/String; = "DefaultNormalShot"

.field public static final DUAL_CAMERA_SHOT:Ljava/lang/String; = "DualCameraShot"

.field public static final FACE_TRACKING:Ljava/lang/String; = "FaceTracking"

.field public static final FREE_PANORAMA_SHOT:Ljava/lang/String; = "FreePanoramaShot"

.field public static final FULLFRAME_CONTINUOUS_SHOT:Ljava/lang/String; = "FullFrameContinuousShot"

.field public static final HDR_SHOT:Ljava/lang/String; = "HDRShot"

.field public static final MAIN_BEAUTY_SHOT:Ljava/lang/String; = "MainBeautyShot"

.field public static final PANORAMA_SHOT:Ljava/lang/String; = "PanoramaShot"

.field public static final SMILE_SHOT:Ljava/lang/String; = "SmileShot"

.field public static final TIMER_SHOT:Ljava/lang/String; = "TimerShot"

.field public static final TIME_MACHINE_SHOT:Ljava/lang/String; = "TimeMachineShot"

.field private static afterTime:J

.field private static beforeTime:J


# instance fields
.field protected mGet:Lcom/lge/camera/ControllerFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 42
    sput-wide v0, Lcom/lge/camera/module/Module;->beforeTime:J

    .line 43
    sput-wide v0, Lcom/lge/camera/module/Module;->afterTime:J

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 48
    iput-object p1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 49
    return-void
.end method


# virtual methods
.method protected checkAutoReview()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 86
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    const-string v1, "shotmode_dual_camera"

    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v4}, Lcom/lge/camera/ControllerFunction;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 90
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "fromJpegCallback"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v1, v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public abstract checkCurrentShotMode()Z
.end method

.method protected checkMediator()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected checkProgressdialog()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getNeedProgressDuringCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/module/Module$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/Module$1;-><init>(Lcom/lge/camera/module/Module;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 108
    :cond_0
    return-void
.end method

.method protected checkShotTime()V
    .locals 6

    .prologue
    .line 73
    sget-wide v2, Lcom/lge/camera/module/Module;->beforeTime:J

    sget-wide v4, Lcom/lge/camera/module/Module;->afterTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/lge/camera/module/Module;->beforeTime:J

    .line 83
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/lge/camera/module/Module;->beforeTime:J

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/lge/camera/module/Module;->afterTime:J

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/lge/camera/module/Module;->beforeTime:J

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/lge/camera/properties/ProjectVariables;->mCaptureStartTime:J

    sub-long v0, v2, v4

    .line 79
    .local v0, jpegCallbackLag:J
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SHOT TIME] JPEG callback lag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SHOT TIME] ShotToShot time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/lge/camera/module/Module;->afterTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/lge/camera/module/Module;->afterTime:J

    goto :goto_0
.end method

.method public doAfterCapture()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method protected handleTakePictureError(I)V
    .locals 5
    .parameter "resource"

    .prologue
    .line 279
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/module/Module$3;

    invoke-direct {v2, p0}, Lcom/lge/camera/module/Module$3;-><init>(Lcom/lge/camera/module/Module;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 288
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 289
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 291
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 292
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "fromJpegCallback"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 293
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.DisplayPreview"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 295
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0b0310

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 296
    return-void
.end method

.method public abstract isRunning()Z
.end method

.method public jpegCallbackOnDualCameraPictureTaken([BLandroid/hardware/Camera;)V
    .locals 0
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/module/Module;->jpegCallbackOnPictureTaken([BLandroid/hardware/Camera;)V

    .line 63
    return-void
.end method

.method protected jpegCallbackOnPictureTaken([BLandroid/hardware/Camera;)V
    .locals 9
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 111
    const-string v2, "CameraApp"

    const-string v3, "#### TIME_CHECK JpegPictureCallback()-start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :try_start_0
    invoke-static {}, Lcom/lge/camera/platform/PlatformDevice;->perfLockRelease()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/module/Module;->checkMediator()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    const-string v2, "CameraApp"

    const-string v3, "JpegPictureCallback()-end, null -> return or pausing."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_1
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/module/Module;->checkShotTime()V

    .line 123
    invoke-virtual {p0}, Lcom/lge/camera/module/Module;->checkProgressdialog()V

    .line 124
    invoke-virtual {p0}, Lcom/lge/camera/module/Module;->checkAutoReview()V

    .line 126
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v8}, Lcom/lge/camera/ControllerFunction;->setCaptureData([B)V

    .line 127
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setImageRotationDegree(I)V

    .line 128
    invoke-virtual {p0}, Lcom/lge/camera/module/Module;->doAfterCapture()V

    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, isSuccessSave:Z
    invoke-virtual {p0, p1}, Lcom/lge/camera/module/Module;->processFinalJpegData([B)[B

    move-result-object v0

    .line 133
    .local v0, finalJpegData:[B
    if-eqz p1, :cond_1

    if-nez v0, :cond_2

    .line 134
    :cond_1
    const-string v2, "CameraApp"

    const-string v3, "error!! Module-onPictureTaken (jpegData == null)"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v1, 0x0

    .line 137
    if-nez p1, :cond_5

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useJpegPictureCallbackError()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 138
    invoke-virtual {p0}, Lcom/lge/camera/module/Module;->jpegPictureCallbackError()V

    goto :goto_1

    .line 142
    :cond_2
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finalJpegData size ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], jpegData size ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    aget-byte v2, p1, v6

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    aget-byte v2, p1, v7

    const/16 v3, -0x28

    if-eq v2, v3, :cond_4

    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useJpegPictureCallbackError()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 144
    const-string v2, "CameraApp"

    const-string v3, "error!! Module abnormal jpegData stream"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/lge/camera/module/Module;->jpegPictureCallbackError()V

    goto :goto_1

    .line 148
    :cond_4
    array-length v2, p1

    int-to-long v2, v2

    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFreeSpace()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    .line 149
    invoke-virtual {p0, v0}, Lcom/lge/camera/module/Module;->savePictureInJpegCallback([B)Z

    move-result v1

    .line 169
    :cond_5
    invoke-virtual {p0, v1}, Lcom/lge/camera/module/Module;->processJpegCallbackAfter(Z)V

    .line 170
    const-string v2, "CameraApp"

    const-string v3, "JpegPictureCallback()-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 151
    :cond_6
    const-string v2, "CameraApp"

    const-string v3, "savePicture() not enough memory!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v1, 0x0

    .line 153
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0b006f

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 154
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 156
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/util/FileNamer;->setErrorFeedback(I)V

    .line 158
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v2

    if-nez v2, :cond_7

    .line 159
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v8, v7}, Lcom/lge/camera/ControllerFunction;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 160
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    goto/16 :goto_1

    .line 164
    :cond_7
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v7}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    goto/16 :goto_1

    .line 115
    .end local v0           #finalJpegData:[B
    .end local v1           #isSuccessSave:Z
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method protected jpegPictureCallbackError()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/module/Module$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/Module$2;-><init>(Lcom/lge/camera/module/Module;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 276
    return-void
.end method

.method protected makeBeautyShotImage([BIIZ)[B
    .locals 3
    .parameter "jpegData"
    .parameter "format"
    .parameter "orientation"
    .parameter "isFlip"

    .prologue
    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, finalJpegData:[B
    invoke-static {p1, p4}, Lcom/lge/camera/util/Util;->makeBitmap([BZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 301
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 302
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v2

    invoke-virtual {v2, p1, v0, p2, p3}, Lcom/lge/olaworks/library/EngineProcessor;->processCapture([BLandroid/graphics/Bitmap;II)[B

    move-result-object v1

    .line 306
    :goto_0
    return-object v1

    .line 304
    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method protected makeNormalShotImage([BZ)[B
    .locals 6
    .parameter "jpegData"
    .parameter "isFlip"

    .prologue
    .line 310
    const/16 v2, 0x5f

    .line 311
    .local v2, jpegQuality:I
    const/4 v1, 0x0

    .line 312
    .local v1, finalJpegData:[B
    invoke-static {p1, p2}, Lcom/lge/camera/util/Util;->makeBitmap([BZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 313
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 314
    .local v3, ostream:Ljava/io/ByteArrayOutputStream;
    if-eqz v0, :cond_0

    .line 315
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5f

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 316
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {p1, v4, v0}, Lcom/lge/olaworks/library/Exif;->processLoadExif([B[BLandroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 318
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 319
    const/4 v0, 0x0

    .line 323
    :goto_0
    return-object v1

    .line 321
    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method protected processFinalJpegData([B)[B
    .locals 9
    .parameter "jpegData"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 174
    const/16 v2, 0x100

    .line 175
    .local v2, format:I
    const/4 v1, 0x0

    .line 176
    .local v1, finalJpegData:[B
    iget-object v5, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getParameteredRotation()I

    move-result v0

    .line 177
    .local v0, degree:I
    if-nez v0, :cond_1

    move v3, v4

    .line 179
    .local v3, ola_Orientation:I
    :goto_0
    if-eqz p1, :cond_0

    .line 180
    iget-object v5, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v5

    if-ne v5, v8, :cond_5

    .line 182
    const-string v5, "off"

    iget-object v6, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_save_direction"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 183
    const-string v4, "shotmode_front_beauty"

    iget-object v5, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 185
    invoke-virtual {p0, p1, v2, v3, v8}, Lcom/lge/camera/module/Module;->makeBeautyShotImage([BIIZ)[B

    move-result-object v1

    .line 201
    :goto_1
    if-nez v1, :cond_0

    .line 202
    const-string v4, "CameraApp"

    const-string v5, "error!! onPictureTaken (finalJpegData == null)"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_0
    return-object v1

    .line 177
    .end local v3           #ola_Orientation:I
    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    .line 188
    .restart local v3       #ola_Orientation:I
    :cond_2
    invoke-virtual {p0, p1, v8}, Lcom/lge/camera/module/Module;->makeNormalShotImage([BZ)[B

    move-result-object v1

    goto :goto_1

    .line 191
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->getFunctionFrontCameraBeautyShot()I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 193
    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/lge/camera/module/Module;->makeBeautyShotImage([BIIZ)[B

    move-result-object v1

    goto :goto_1

    .line 195
    :cond_4
    move-object v1, p1

    goto :goto_1

    .line 199
    :cond_5
    move-object v1, p1

    goto :goto_1
.end method

.method protected processJpegCallbackAfter(Z)V
    .locals 4
    .parameter "isSuccessSave"

    .prologue
    const/4 v3, 0x0

    .line 227
    if-nez p1, :cond_2

    .line 228
    const-string v0, "CameraApp"

    const-string v1, "savePicture() fail!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0b018f

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 234
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/FileNamer;->setErrorFeedback(I)V

    .line 237
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 238
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 267
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImageListUri size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 252
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->waitSaveImageThreadDone()V

    .line 253
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 255
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->beDirectlyGoingToCropGallery()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->doAttach()V

    goto :goto_0

    .line 258
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewForQuickView()Z

    move-result v0

    if-nez v0, :cond_5

    .line 259
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.DisplayCameraPostview"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method protected savePictureInJpegCallback([B)Z
    .locals 6
    .parameter "finalJpegData"

    .prologue
    const/4 v5, 0x0

    .line 210
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, p1, v5, v2, v3}, Lcom/lge/camera/ControllerFunction;->saveImageSavers([BLandroid/graphics/Bitmap;IZ)Z

    move-result v0

    .line 213
    .local v0, isSuccessSave:Z
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageSaver Queue count is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getQueueCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_0
    return v0

    .line 215
    .end local v0           #isSuccessSave:Z
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->waitSaveImageThreadDone()V

    .line 216
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p1, v5}, Lcom/lge/camera/ControllerFunction;->savePicture([BLandroid/graphics/Bitmap;)Z

    move-result v0

    .restart local v0       #isSuccessSave:Z
    goto :goto_0

    .line 219
    .end local v0           #isSuccessSave:Z
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->waitSaveImageThreadDone()V

    .line 220
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p1, v5}, Lcom/lge/camera/ControllerFunction;->savePicture([BLandroid/graphics/Bitmap;)Z

    move-result v0

    .restart local v0       #isSuccessSave:Z
    goto :goto_0
.end method

.method public startRotation(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 56
    return-void
.end method

.method public abstract stopByUserAction()V
.end method

.method public abstract takePicture()Z
.end method
