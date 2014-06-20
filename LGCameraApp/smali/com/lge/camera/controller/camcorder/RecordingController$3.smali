.class Lcom/lge/camera/controller/camcorder/RecordingController$3;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/RecordingController;->doAfterRecordingProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

.field final synthetic val$savedUriForThread:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/RecordingController;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 817
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    iput-object p2, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->val$savedUriForThread:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v6, 0x0

    const/4 v11, 0x0

    .line 819
    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #calls: Lcom/lge/camera/controller/camcorder/RecordingController;->checkMediator()Z
    invoke-static {v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1600(Lcom/lge/camera/controller/camcorder/RecordingController;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 821
    :try_start_0
    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1700(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v8

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1800(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v8

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_2

    .line 854
    :cond_0
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #setter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mAfterRecordingThread:Ljava/lang/Thread;
    invoke-static {v6, v11}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1902(Lcom/lge/camera/controller/camcorder/RecordingController;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 857
    :cond_1
    :goto_0
    return-void

    .line 825
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mAfterRecordingThread:Ljava/lang/Thread;
    invoke-static {v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1900(Lcom/lge/camera/controller/camcorder/RecordingController;)Ljava/lang/Thread;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mAfterRecordingThread:Ljava/lang/Thread;
    invoke-static {v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1900(Lcom/lge/camera/controller/camcorder/RecordingController;)Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-eqz v8, :cond_3

    .line 854
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #setter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mAfterRecordingThread:Ljava/lang/Thread;
    invoke-static {v6, v11}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1902(Lcom/lge/camera/controller/camcorder/RecordingController;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_0

    .line 830
    :cond_3
    :try_start_2
    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$2000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->val$savedUriForThread:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/lge/camera/ControllerFunction;->setLastThumb(Landroid/net/Uri;Z)V

    .line 831
    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$2100(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v8

    const-string v9, "com.lge.camera.command.OnDelayOff"

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 832
    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$2200(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->setBackKeyRecStop(Z)V

    .line 833
    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mIsStopRecordingByMountedAction:Z
    invoke-static {v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$2300(Lcom/lge/camera/controller/camcorder/RecordingController;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 834
    const-string v6, "CameraApp"

    const-string v7, "do not show quick post view (2sec, 5sec)"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 854
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #setter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mAfterRecordingThread:Ljava/lang/Thread;
    invoke-static {v6, v11}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1902(Lcom/lge/camera/controller/camcorder/RecordingController;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_0

    .line 837
    :cond_4
    :try_start_3
    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$2400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v8

    const-string v9, "key_video_auto_review"

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, autoReview:Ljava/lang/String;
    const-string v8, "on_delay_2sec"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-wide/16 v3, 0x7d0

    .line 839
    .local v3, duration:J
    :goto_1
    const-string v8, "on_delay_5sec"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-wide/16 v1, 0x1388

    .line 840
    .local v1, autoReviewDuration:J
    :goto_2
    cmp-long v6, v1, v6

    if-eqz v6, :cond_5

    .line 841
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v6}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$2500(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 842
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v6}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$2900(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v6

    new-instance v7, Lcom/lge/camera/controller/camcorder/RecordingController$3$1;

    invoke-direct {v7, p0, v1, v2}, Lcom/lge/camera/controller/camcorder/RecordingController$3$1;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController$3;J)V

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 854
    :cond_5
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #setter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mAfterRecordingThread:Ljava/lang/Thread;
    invoke-static {v6, v11}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1902(Lcom/lge/camera/controller/camcorder/RecordingController;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto/16 :goto_0

    .end local v1           #autoReviewDuration:J
    .end local v3           #duration:J
    :cond_6
    move-wide v3, v6

    .line 838
    goto :goto_1

    .restart local v3       #duration:J
    :cond_7
    move-wide v1, v3

    .line 839
    goto :goto_2

    .line 851
    .end local v0           #autoReview:Ljava/lang/String;
    .end local v3           #duration:J
    :catch_0
    move-exception v5

    .line 852
    .local v5, e:Ljava/lang/Exception;
    :try_start_4
    const-string v6, "CameraApp"

    const-string v7, "get Video Thumbnail error : "

    invoke-static {v6, v7, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 854
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #setter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mAfterRecordingThread:Ljava/lang/Thread;
    invoke-static {v6, v11}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1902(Lcom/lge/camera/controller/camcorder/RecordingController;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto/16 :goto_0

    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #setter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mAfterRecordingThread:Ljava/lang/Thread;
    invoke-static {v7, v11}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1902(Lcom/lge/camera/controller/camcorder/RecordingController;Ljava/lang/Thread;)Ljava/lang/Thread;

    throw v6
.end method
