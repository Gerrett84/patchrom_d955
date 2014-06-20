.class Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;
.super Ljava/lang/Object;
.source "CamcorderPreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->stopRecordingEffect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;)V
    .locals 0
    .parameter

    .prologue
    .line 893
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 895
    const-string v3, "CameraApp"

    const-string v4, "stopRecordingEffect in run()-start"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    iget-object v3, v3, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-nez v3, :cond_0

    .line 897
    const-string v3, "CameraApp"

    const-string v4, "stopRecordingEffect in run()-end, effectsrecorder is null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :goto_0
    return-void

    .line 900
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    iget-object v3, v3, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v3}, Lcom/lge/camera/EffectsRecorder;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 901
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, v3, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectRecordingDoneLatch:Ljava/util/concurrent/CountDownLatch;

    .line 903
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    iget-object v3, v3, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v3}, Lcom/lge/camera/EffectsRecorder;->stopRecording()V

    .line 904
    const-wide/16 v1, 0x0

    .line 906
    .local v1, latchCount:J
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    iget-object v3, v3, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectRecordingDoneLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_2

    .line 907
    const-string v3, "CameraApp"

    const-string v4, "START stopRecordingEffect await"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    iget-object v3, v3, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectRecordingDoneLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 909
    const-string v3, "CameraApp"

    const-string v4, "END stopRecordingEffect await"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    iget-object v3, v3, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectRecordingDoneLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 915
    :cond_2
    :goto_1
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopRecordingEffect in run()-end, tryCnt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    #getter for: Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->tryCnt:I
    invoke-static {v5}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->access$000(Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Latch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
