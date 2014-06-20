.class Lcom/lge/camera/module/FullFrameContinuousShot$7;
.super Ljava/lang/Object;
.source "FullFrameContinuousShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/FullFrameContinuousShot;->processJpegCallbackAfter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/FullFrameContinuousShot;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/FullFrameContinuousShot;)V
    .locals 0
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/lge/camera/module/FullFrameContinuousShot$7;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 436
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const-string v0, "CameraApp"

    const-string v1, "BurstShot CancelPicture Start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$7;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/platform/PlatformDevice;->cancelBurstShotPictures(Landroid/hardware/Camera;)V

    .line 439
    const-string v0, "CameraApp"

    const-string v1, "BurstShot CancelPicture End"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$7;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$7;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    #getter for: Lcom/lge/camera/module/FullFrameContinuousShot;->mTakePictureLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lge/camera/module/FullFrameContinuousShot;->access$300(Lcom/lge/camera/module/FullFrameContinuousShot;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$7;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 445
    monitor-exit v1

    .line 447
    :cond_1
    return-void

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
