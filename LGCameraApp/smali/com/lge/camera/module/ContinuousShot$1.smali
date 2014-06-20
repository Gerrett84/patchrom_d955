.class Lcom/lge/camera/module/ContinuousShot$1;
.super Ljava/util/TimerTask;
.source "ContinuousShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/ContinuousShot;->takePicture()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/ContinuousShot;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/ContinuousShot;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private checkAvailablePictureCount()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 287
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v2, v2, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 288
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v2, v2, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->stopSoundContinuous()V

    .line 289
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    invoke-virtual {v2}, Lcom/lge/camera/module/ContinuousShot;->stopContinuousShot()V

    .line 291
    const-string v2, "CameraApp"

    const-string v3, "Available picture count:%d"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v5, v5, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v3, v3, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/util/FileNamer;->setErrorFeedback(I)V

    .line 296
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v2, v2, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v2, v2, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 299
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v2, v2, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 300
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v2, v2, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 301
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v2, v2, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #setter for: Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z
    invoke-static {v1, v0}, Lcom/lge/camera/module/ContinuousShot;->access$002(Lcom/lge/camera/module/ContinuousShot;Z)Z

    .line 306
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private finishContinuousShot()V
    .locals 4

    .prologue
    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v1, v1, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 202
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isExternalMemoryOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v1, v1, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isExternalStorageRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v1, v1, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 205
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v1, v1, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getImageListRotation()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v1, v1, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v1, v1, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    invoke-virtual {v1}, Lcom/lge/camera/module/ContinuousShot;->stopContinuousShotThread()V

    .line 212
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v1, v1, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v1, v1, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.OnDelayOff"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 243
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v1, v1, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/module/ContinuousShot$1$3;

    invoke-direct {v2, p0}, Lcom/lge/camera/module/ContinuousShot$1$3;-><init>(Lcom/lge/camera/module/ContinuousShot$1;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "taskContinuous run() - failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    invoke-virtual {v1}, Lcom/lge/camera/module/ContinuousShot;->stopContinuousShotThread()V

    .line 228
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v1

    if-lez v1, :cond_3

    .line 229
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v1, v1, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/module/ContinuousShot$1$4;

    invoke-direct {v2, p0}, Lcom/lge/camera/module/ContinuousShot$1$4;-><init>(Lcom/lge/camera/module/ContinuousShot$1;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 238
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v1, v1, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private getTakeImagesForContinuousShot()V
    .locals 6

    .prologue
    .line 246
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v2, v2, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 248
    :try_start_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useContinuousSound()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mSound_isPlayed:Z
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$900(Lcom/lge/camera/module/ContinuousShot;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v2, v2, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->playContinuousShutterSound()V

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    const/4 v3, 0x1

    #setter for: Lcom/lge/camera/module/ContinuousShot;->mSound_isPlayed:Z
    invoke-static {v2, v3}, Lcom/lge/camera/module/ContinuousShot;->access$902(Lcom/lge/camera/module/ContinuousShot;Z)Z

    .line 257
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCount:I
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$100(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I
    invoke-static {v3}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 258
    const/4 v1, 0x0

    .line 259
    .local v1, waitcnt:I
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCount:I
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$100(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I
    invoke-static {v3}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v3

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$200(Lcom/lge/camera/module/ContinuousShot;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_3

    .line 261
    const-wide/16 v2, 0xa

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 262
    add-int/lit8 v1, v1, 0x1

    .line 263
    const/16 v2, 0x64

    if-lt v1, v2, :cond_1

    .line 264
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    const/4 v3, 0x1

    #setter for: Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z
    invoke-static {v2, v3}, Lcom/lge/camera/module/ContinuousShot;->access$202(Lcom/lge/camera/module/ContinuousShot;Z)Z

    .line 266
    :cond_1
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "continuous waitcnt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 277
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #waitcnt:I
    :catch_1
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "Camera Device is null..."

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    .end local v0           #e:Ljava/lang/Exception;
    :goto_2
    return-void

    .line 254
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v2, v2, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->playContinuousShutterSound()V

    goto :goto_0

    .line 273
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v2, v2, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    new-instance v3, Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;

    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;-><init>(Lcom/lge/camera/module/ContinuousShot;Lcom/lge/camera/module/ContinuousShot$1;)V

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 274
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$108(Lcom/lge/camera/module/ContinuousShot;)I

    .line 275
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOneShotPreviewCallback : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCount:I
    invoke-static {v4}, Lcom/lge/camera/module/ContinuousShot;->access$100(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    #setter for: Lcom/lge/camera/module/ContinuousShot;->mCheckOneShotCallbackTime:J
    invoke-static {v2, v3, v4}, Lcom/lge/camera/module/ContinuousShot;->access$1102(Lcom/lge/camera/module/ContinuousShot;J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 282
    :cond_4
    const-string v2, "CameraApp"

    const-string v3, "Camera device is null. One shot callback is not set."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private waitContinuousShotSave()V
    .locals 4

    .prologue
    .line 185
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$700(Lcom/lge/camera/module/ContinuousShot;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$800(Lcom/lge/camera/module/ContinuousShot;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContinuousShot Running :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z
    invoke-static {v3}, Lcom/lge/camera/module/ContinuousShot;->access$800(Lcom/lge/camera/module/ContinuousShot;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 128
    const-string v1, "CameraApp"

    const-string v2, "taskContinuous run()-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v1, v1, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$000(Lcom/lge/camera/module/ContinuousShot;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "continuous shot thread return: error flag"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    invoke-virtual {v1}, Lcom/lge/camera/module/ContinuousShot;->stopByUserAction()V

    .line 181
    :cond_1
    :goto_0
    return-void

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCount:I
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$100(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v1

    if-ge v1, v3, :cond_3

    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$200(Lcom/lge/camera/module/ContinuousShot;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 138
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot$1;->getTakeImagesForContinuousShot()V

    .line 141
    :cond_3
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot$1;->checkAvailablePictureCount()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v1

    if-lt v1, v3, :cond_4

    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCount:I
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$100(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v1

    if-ge v1, v3, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$200(Lcom/lge/camera/module/ContinuousShot;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 147
    :cond_5
    const-string v1, "CameraApp"

    const-string v2, "Save cont. shot pictures."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    invoke-virtual {v1}, Lcom/lge/camera/module/ContinuousShot;->stopContinuousShot()V

    .line 150
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v1, v1, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/module/ContinuousShot$1$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/module/ContinuousShot$1$1;-><init>(Lcom/lge/camera/module/ContinuousShot$1;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;

    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;-><init>(Lcom/lge/camera/module/ContinuousShot;Lcom/lge/camera/module/ContinuousShot$1;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #setter for: Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/lge/camera/module/ContinuousShot;->access$402(Lcom/lge/camera/module/ContinuousShot;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 158
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$400(Lcom/lge/camera/module/ContinuousShot;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$000(Lcom/lge/camera/module/ContinuousShot;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 165
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$400(Lcom/lge/camera/module/ContinuousShot;)Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$400(Lcom/lge/camera/module/ContinuousShot;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 167
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot$1;->waitContinuousShotSave()V

    .line 169
    :cond_6
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #calls: Lcom/lge/camera/module/ContinuousShot;->stopSaveImageThread()V
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$600(Lcom/lge/camera/module/ContinuousShot;)V

    .line 172
    :cond_7
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v1, v1, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/module/ContinuousShot$1$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/module/ContinuousShot$1$2;-><init>(Lcom/lge/camera/module/ContinuousShot$1;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 178
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot$1;->finishContinuousShot()V

    .line 180
    :cond_8
    const-string v1, "CameraApp"

    const-string v2, "taskContinuous run()-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #calls: Lcom/lge/camera/module/ContinuousShot;->stopSaveImageThread()V
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$600(Lcom/lge/camera/module/ContinuousShot;)V

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
