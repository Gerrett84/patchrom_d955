.class Lcom/lge/camera/controller/PreviewController$6;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PreviewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewController;)V
    .locals 0
    .parameter

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController$6;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1042
    :try_start_0
    const-string v2, "CameraApp"

    const-string v3, "mStartPreviewThread start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController$6;->this$0:Lcom/lge/camera/controller/PreviewController;

    const/4 v3, 0x0

    #setter for: Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z
    invoke-static {v2, v3}, Lcom/lge/camera/controller/PreviewController;->access$202(Lcom/lge/camera/controller/PreviewController;Z)Z

    .line 1045
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController$6;->this$0:Lcom/lge/camera/controller/PreviewController;

    #getter for: Lcom/lge/camera/controller/PreviewController;->mUseOnResume:Z
    invoke-static {v2}, Lcom/lge/camera/controller/PreviewController;->access$300(Lcom/lge/camera/controller/PreviewController;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1046
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController$6;->this$0:Lcom/lge/camera/controller/PreviewController;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/controller/PreviewController;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 1074
    :goto_0
    return-void

    .line 1050
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController$6;->this$0:Lcom/lge/camera/controller/PreviewController;

    #calls: Lcom/lge/camera/controller/PreviewController;->ensureCameraDevice()V
    invoke-static {v2}, Lcom/lge/camera/controller/PreviewController;->access$400(Lcom/lge/camera/controller/PreviewController;)V
    :try_end_0
    .catch Lcom/lge/camera/util/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1053
    :try_start_1
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController$6;->this$0:Lcom/lge/camera/controller/PreviewController;

    #getter for: Lcom/lge/camera/controller/PreviewController;->mLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v2}, Lcom/lge/camera/controller/PreviewController;->access$500(Lcom/lge/camera/controller/PreviewController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1054
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController$6;->this$0:Lcom/lge/camera/controller/PreviewController;

    #getter for: Lcom/lge/camera/controller/PreviewController;->mLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v2}, Lcom/lge/camera/controller/PreviewController;->access$500(Lcom/lge/camera/controller/PreviewController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/lge/camera/util/CameraHardwareException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1060
    :cond_1
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController$6;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-boolean v2, v2, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-nez v2, :cond_2

    .line 1061
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController$6;->this$0:Lcom/lge/camera/controller/PreviewController;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/controller/PreviewController;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 1063
    :cond_2
    const-string v2, "CameraApp"

    const-string v3, "mStartPreviewThread end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/lge/camera/util/CameraHardwareException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    .local v0, e:Lcom/lge/camera/util/CameraHardwareException;
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController$6;->this$0:Lcom/lge/camera/controller/PreviewController;

    #setter for: Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z
    invoke-static {v2, v5}, Lcom/lge/camera/controller/PreviewController;->access$202(Lcom/lge/camera/controller/PreviewController;Z)Z

    .line 1066
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController$6;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/PreviewController$6$1;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/PreviewController$6$1;-><init>(Lcom/lge/camera/controller/PreviewController$6;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1072
    const-string v2, "CameraApp"

    const-string v3, "CameraHardwareException : "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1056
    .end local v0           #e:Lcom/lge/camera/util/CameraHardwareException;
    :catch_1
    move-exception v1

    .line 1057
    .local v1, ie:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "CameraApp"

    const-string v3, "InterruptedException : "

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1058
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController$6;->this$0:Lcom/lge/camera/controller/PreviewController;

    const/4 v3, 0x1

    #setter for: Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z
    invoke-static {v2, v3}, Lcom/lge/camera/controller/PreviewController;->access$202(Lcom/lge/camera/controller/PreviewController;Z)Z
    :try_end_3
    .catch Lcom/lge/camera/util/CameraHardwareException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
