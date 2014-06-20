.class public Lcom/lge/camera/module/ClearShot;
.super Lcom/lge/camera/module/Module;
.source "ClearShot.java"

# interfaces
.implements Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;


# instance fields
.field private iDegree:I

.field private isCaptureFailed:Z

.field private mCheckShotTimeInterval:J

.field private mClearCount:I

.field private mGuideImageView:Landroid/view/View;

.field private mIsClearShotTaking:Z

.field private mStopByUser:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 3
    .parameter "function"

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/lge/camera/module/Module;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 24
    iput v2, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/module/ClearShot;->mCheckShotTimeInterval:J

    .line 26
    iput-boolean v2, p0, Lcom/lge/camera/module/ClearShot;->mStopByUser:Z

    .line 27
    iput-boolean v2, p0, Lcom/lge/camera/module/ClearShot;->mIsClearShotTaking:Z

    .line 28
    iput v2, p0, Lcom/lge/camera/module/ClearShot;->iDegree:I

    .line 29
    iput-boolean v2, p0, Lcom/lge/camera/module/ClearShot;->isCaptureFailed:Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGuideImageView:Landroid/view/View;

    .line 34
    return-void
.end method

.method static synthetic access$002(Lcom/lge/camera/module/ClearShot;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/lge/camera/module/ClearShot;->mCheckShotTimeInterval:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/lge/camera/module/ClearShot;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/module/ClearShot;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/lge/camera/module/ClearShot;->iDegree:I

    return v0
.end method

.method static synthetic access$202(Lcom/lge/camera/module/ClearShot;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/lge/camera/module/ClearShot;->iDegree:I

    return p1
.end method

.method static synthetic access$302(Lcom/lge/camera/module/ClearShot;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/lge/camera/module/ClearShot;->isCaptureFailed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lge/camera/module/ClearShot;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGuideImageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lge/camera/module/ClearShot;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lge/camera/module/ClearShot;->mGuideImageView:Landroid/view/View;

    return-object p1
.end method

.method private deviceTakePicture(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/module/ClearShot$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/ClearShot$1;-><init>(Lcom/lge/camera/module/ClearShot;)V

    invoke-interface {v0, v1, p1, p2}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 106
    return-void
.end method

.method private processJpegCallbackAfter()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x28a

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 166
    iget-boolean v5, p0, Lcom/lge/camera/module/ClearShot;->mStopByUser:Z

    if-eqz v5, :cond_2

    .line 167
    iget-object v5, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v7}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 168
    iget-object v5, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v7}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/lge/camera/module/ClearShot;->removewClearShotView()V

    .line 170
    iget-object v5, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->stopClearShotSound()V

    .line 171
    iget-boolean v5, p0, Lcom/lge/camera/module/ClearShot;->isCaptureFailed:Z

    if-eqz v5, :cond_0

    .line 172
    iget-object v5, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0b02ea

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 174
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->waitSaveImageThreadDone()V

    .line 175
    iget-object v5, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->deleteClearShotImages()Z

    .line 176
    iput-boolean v7, p0, Lcom/lge/camera/module/ClearShot;->mStopByUser:Z

    .line 178
    iget-object v5, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8, v9}, Lcom/lge/camera/ControllerFunction;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 179
    iget-object v5, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 180
    iget-object v5, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v7}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 181
    iget-object v5, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8, v7}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Landroid/hardware/Camera$Parameters;Z)Z

    .line 183
    iput v7, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    .line 184
    iput-boolean v7, p0, Lcom/lge/camera/module/ClearShot;->mIsClearShotTaking:Z

    .line 185
    iget-object v5, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v7}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 186
    :cond_2
    iget v5, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    const/4 v6, 0x6

    if-lt v5, v6, :cond_3

    .line 187
    invoke-virtual {p0}, Lcom/lge/camera/module/ClearShot;->removewClearShotView()V

    .line 188
    iget-object v5, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->waitSaveImageThreadDone()V

    .line 190
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 191
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "useClearShotPostview"

    invoke-virtual {v0, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    iget-object v5, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.DisplayCameraPostview"

    invoke-interface {v5, v6, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    iget-object v5, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8, v7}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Landroid/hardware/Camera$Parameters;Z)Z

    .line 196
    iput v7, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    .line 197
    iput-boolean v7, p0, Lcom/lge/camera/module/ClearShot;->mIsClearShotTaking:Z

    goto :goto_0

    .line 199
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v5

    if-nez v5, :cond_1

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/lge/camera/module/ClearShot;->mCheckShotTimeInterval:J

    sub-long v1, v5, v7

    .line 201
    .local v1, currentInterval:J
    const-wide/16 v3, 0x0

    .line 202
    .local v3, delayTime:J
    cmp-long v5, v1, v10

    if-gtz v5, :cond_4

    .line 203
    sub-long v3, v10, v1

    .line 205
    :cond_4
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delayTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0, v3, v4}, Lcom/lge/camera/module/ClearShot;->deviceTakePicture(J)V

    goto :goto_0
.end method


# virtual methods
.method public checkCurrentShotMode()Z
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_clear_shot"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

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

    .line 213
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 214
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 215
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current mClearCount count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iput v3, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    .line 217
    iput-boolean v3, p0, Lcom/lge/camera/module/ClearShot;->mIsClearShotTaking:Z

    .line 219
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/FileNamer;->setErrorFeedback(I)V

    .line 221
    invoke-virtual {p0}, Lcom/lge/camera/module/ClearShot;->removewClearShotView()V

    .line 222
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 223
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 225
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/lge/camera/module/ClearShot;->mIsClearShotTaking:Z

    return v0
.end method

.method public jpegCallbackOnPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 110
    const-string v2, "CameraApp"

    const-string v3, "#### TIME_CHECK JpegPictureCallbackClearShot()-start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/lge/camera/module/ClearShot;->checkMediator()Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setCaptureData([B)V

    .line 118
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setImageRotationDegree(I)V

    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, isSuccessSave:Z
    if-nez p1, :cond_1

    .line 122
    const-string v2, "CameraApp"

    const-string v3, "error!! ClearShot-onPictureTaken (jpegData == null)"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v1, 0x0

    .line 125
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useJpegPictureCallbackError()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    invoke-virtual {p0}, Lcom/lge/camera/module/ClearShot;->jpegPictureCallbackError()V

    goto :goto_0

    .line 130
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

    .line 132
    array-length v2, p1

    int-to-long v2, v2

    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFreeSpace()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 133
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->waitSaveImageThreadDone()V

    .line 134
    iget v2, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    if-nez v2, :cond_2

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, clearShotTempFileDelete:Z
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->deleteClearShotImages()Z

    move-result v0

    .line 137
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClearShotFileDeleted ? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v0           #clearShotTempFileDelete:Z
    :cond_2
    iget v2, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    .line 141
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    iget v3, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    invoke-interface {v2, p1, v3}, Lcom/lge/camera/ControllerFunction;->saveClearShotPicture([BI)Z

    move-result v1

    .line 151
    :cond_3
    if-nez v1, :cond_5

    .line 152
    const-string v2, "CameraApp"

    const-string v3, "savePicture() fail!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const v2, 0x7f0b018f

    invoke-virtual {p0, v2}, Lcom/lge/camera/module/ClearShot;->handleTakePictureError(I)V

    goto/16 :goto_0

    .line 144
    :cond_4
    const-string v2, "CameraApp"

    const-string v3, "savePicture() not enough memory!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v1, 0x0

    .line 146
    const v2, 0x7f0b006f

    invoke-virtual {p0, v2}, Lcom/lge/camera/module/ClearShot;->handleTakePictureError(I)V

    goto/16 :goto_0

    .line 156
    :cond_5
    iget-boolean v2, p0, Lcom/lge/camera/module/ClearShot;->isCaptureFailed:Z

    if-eqz v2, :cond_6

    .line 157
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/camera/module/ClearShot;->mStopByUser:Z

    .line 159
    :cond_6
    invoke-direct {p0}, Lcom/lge/camera/module/ClearShot;->processJpegCallbackAfter()V

    .line 161
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mClearCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v2, "CameraApp"

    const-string v3, "JpegPictureCallbackmClearCount()-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public playSound()V
    .locals 2

    .prologue
    .line 228
    iget v0, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->playClearShotShutterSound(Z)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget v0, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->playClearShotShutterSound(Z)V

    goto :goto_0
.end method

.method public removewClearShotView()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/module/ClearShot$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/ClearShot$3;-><init>(Lcom/lge/camera/module/ClearShot;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method

.method public showClearShotView()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/module/ClearShot$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/ClearShot$2;-><init>(Lcom/lge/camera/module/ClearShot;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 250
    return-void
.end method

.method public startRotation(I)V
    .locals 2
    .parameter "degree"

    .prologue
    .line 271
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isClearShotSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGuideImageView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGuideImageView:Landroid/view/View;

    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    goto :goto_0
.end method

.method public stopByUserAction()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/module/ClearShot;->mStopByUser:Z

    .line 49
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopClearShotSound()V

    .line 50
    invoke-virtual {p0}, Lcom/lge/camera/module/ClearShot;->removewClearShotView()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/module/ClearShot;->mIsClearShotTaking:Z

    .line 52
    return-void
.end method

.method public takePicture()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    const-string v0, "CameraApp"

    const-string v1, "TIME_CHECK [Module]ClearShot::takePicture-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput v2, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    .line 58
    iput-boolean v2, p0, Lcom/lge/camera/module/ClearShot;->mStopByUser:Z

    .line 59
    iput-boolean v3, p0, Lcom/lge/camera/module/ClearShot;->mIsClearShotTaking:Z

    .line 61
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->removeAllImageList()V

    .line 62
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 63
    const-string v0, "CameraApp"

    const-string v1, "#### Device().takePicture()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Landroid/hardware/Camera$Parameters;Z)Z

    .line 65
    invoke-virtual {p0}, Lcom/lge/camera/module/ClearShot;->showClearShotView()V

    .line 67
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/module/ClearShot;->deviceTakePicture(J)V

    .line 69
    iput-boolean v2, p0, Lcom/lge/camera/module/ClearShot;->isCaptureFailed:Z

    .line 71
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setPreviewing(Z)V

    .line 72
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 73
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setMainButtonDisable()V

    .line 74
    const-string v0, "CameraApp"

    const-string v1, "[Module]ClearShot::takePicture-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return v3
.end method
