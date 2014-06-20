.class Lcom/lge/camera/controller/PreviewPanelController$13;
.super Ljava/lang/Thread;
.source "PreviewPanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewPanelController;->deleteImageAndUpdateThumbnail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewPanelController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController;)V
    .locals 0
    .parameter

    .prologue
    .line 2636
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2638
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/lge/camera/controller/PreviewPanelController;->access$000(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 2640
    .local v2, filePath:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2641
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2642
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2643
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/lge/camera/controller/PreviewPanelController;->access$000(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2644
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/lge/camera/controller/PreviewPanelController;->access$000(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v6, v6, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/util/SecureImageUtil;->removeSecureLockUri(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2651
    .end local v1           #file:Ljava/io/File;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController$13;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2652
    const-string v4, "CameraApp"

    const-string v5, "mDeleteThumbnailThread is isInterrupted()"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2690
    :goto_1
    return-void

    .line 2647
    :catch_0
    move-exception v0

    .line 2648
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v5, "delete Thumbnail fail : "

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2656
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachinShotSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2657
    const/4 v3, 0x0

    .line 2659
    .local v3, timeMachineTempFileDelete:Z
    :try_start_1
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isTimemachineHasPictures()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2660
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->deleteTimeMachineImages()Z

    move-result v3

    .line 2661
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->setTimemachineHasPictures(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2666
    :cond_2
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    .end local v3           #timeMachineTempFileDelete:Z
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController$13;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2671
    const-string v4, "CameraApp"

    const-string v5, "mDeleteThumbnailThread is isInterrupted()"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2663
    .restart local v3       #timeMachineTempFileDelete:Z
    :catch_1
    move-exception v0

    .line 2664
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "CameraApp"

    const-string v5, "Exception:"

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2666
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 2675
    .end local v3           #timeMachineTempFileDelete:Z
    :cond_4
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v5, Lcom/lge/camera/controller/PreviewPanelController$13$1;

    invoke-direct {v5, p0}, Lcom/lge/camera/controller/PreviewPanelController$13$1;-><init>(Lcom/lge/camera/controller/PreviewPanelController$13;)V

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method
