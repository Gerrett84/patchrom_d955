.class public Lcom/lge/camera/module/TimeMachineShot;
.super Lcom/lge/camera/module/Module;
.source "TimeMachineShot.java"

# interfaces
.implements Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;


# instance fields
.field private mTimeMachineCount:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/module/Module;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    .line 23
    return-void
.end method

.method private processJpegCallbackAfter()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 126
    iget v1, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 128
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->setTimemachineHasPictures(Z)V

    .line 129
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->waitSaveImageThreadDone()V

    .line 131
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 133
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v5}, Lcom/lge/camera/ControllerFunction;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 135
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "fromJpegCallback"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.DisplayPreview"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 146
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    iput v5, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    .line 148
    :cond_1
    return-void

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewForQuickView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v1, "useTimeMachinePostview"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.DisplayCameraPostview"

    invoke-interface {v1, v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public checkCurrentShotMode()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleTakePictureError(I)V
    .locals 4
    .parameter "resource"

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 153
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 154
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current TimeMachine count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iput v3, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    .line 156
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/FileNamer;->setErrorFeedback(I)V

    .line 159
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 160
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 163
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public jpegCallbackOnPictureTaken([BLandroid/hardware/Camera;)V
    .locals 8
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 65
    const-string v2, "CameraApp"

    const-string v3, "#### TIME_CHECK JpegPictureCallbackTimeMachine()-start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/lge/camera/module/TimeMachineShot;->checkMediator()Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v7}, Lcom/lge/camera/ControllerFunction;->setCaptureData([B)V

    .line 73
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setImageRotationDegree(I)V

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, isSuccessSave:Z
    if-nez p1, :cond_1

    .line 77
    const-string v2, "CameraApp"

    const-string v3, "error!! TimeMachineShot-onPictureTaken (jpegData == null)"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    .line 80
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useJpegPictureCallbackError()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 81
    invoke-virtual {p0}, Lcom/lge/camera/module/TimeMachineShot;->jpegPictureCallbackError()V

    goto :goto_0

    .line 85
    :cond_1
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finalJpegData size ["

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

    .line 86
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    aget-byte v2, p1, v6

    const/16 v3, -0x28

    if-eq v2, v3, :cond_3

    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useJpegPictureCallbackError()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    const-string v2, "CameraApp"

    const-string v3, "error!! TimeMachineShot abnormal jpegData stream"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/lge/camera/module/TimeMachineShot;->jpegPictureCallbackError()V

    goto :goto_0

    .line 91
    :cond_3
    array-length v2, p1

    int-to-long v2, v2

    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFreeSpace()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    .line 92
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->waitSaveImageThreadDone()V

    .line 93
    iget v2, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    if-nez v2, :cond_4

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, timeMachineTempFileDelete:Z
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->deleteTimeMachineImages()Z

    move-result v1

    .line 96
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v1           #timeMachineTempFileDelete:Z
    :cond_4
    iget v2, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    .line 99
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    iget v3, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    invoke-interface {v2, p1, v3}, Lcom/lge/camera/ControllerFunction;->saveTimeMachinePicture([BI)Z

    move-result v0

    .line 101
    iget v2, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 103
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v3

    invoke-interface {v2, p1, v7, v3, v6}, Lcom/lge/camera/ControllerFunction;->saveImageSavers([BLandroid/graphics/Bitmap;IZ)Z

    .line 114
    :cond_5
    if-nez v0, :cond_7

    .line 115
    const-string v2, "CameraApp"

    const-string v3, "savePicture() fail!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const v2, 0x7f0b018f

    invoke-virtual {p0, v2}, Lcom/lge/camera/module/TimeMachineShot;->handleTakePictureError(I)V

    goto/16 :goto_0

    .line 107
    :cond_6
    const-string v2, "CameraApp"

    const-string v3, "savePicture() not enough memory!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    .line 109
    const v2, 0x7f0b006f

    invoke-virtual {p0, v2}, Lcom/lge/camera/module/TimeMachineShot;->handleTakePictureError(I)V

    goto/16 :goto_0

    .line 119
    :cond_7
    invoke-direct {p0}, Lcom/lge/camera/module/TimeMachineShot;->processJpegCallbackAfter()V

    .line 121
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTimeMachineCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v2, "CameraApp"

    const-string v3, "JpegPictureCallbackTimeMachine()-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public stopByUserAction()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public takePicture()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 40
    const-string v1, "CameraApp"

    const-string v2, "TIME_CHECK [Module]TimeMachineShot::takePicture-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput v6, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    .line 42
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->removeAllImageList()V

    .line 43
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 44
    const-string v1, "CameraApp"

    const-string v2, "#### Device().takePicture()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    new-instance v2, Lcom/lge/camera/listeners/ShutterCallback;

    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v2, v3}, Lcom/lge/camera/listeners/ShutterCallback;-><init>(Lcom/lge/camera/ControllerFunction;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/lge/camera/listeners/JpegPictureCallback;

    invoke-direct {v5, p0}, Lcom/lge/camera/listeners/JpegPictureCallback;-><init>(Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->setPreviewing(Z)V

    .line 59
    const-string v1, "CameraApp"

    const-string v2, "[Module]TimeMachineShot::takePicture-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_0
    return v7

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimeMachineShot-takePicture  failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const v1, 0x7f0b0310

    invoke-virtual {p0, v1}, Lcom/lge/camera/module/TimeMachineShot;->handleTakePictureError(I)V

    goto :goto_0
.end method
