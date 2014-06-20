.class Lcom/lge/camera/controller/camcorder/RecordingController$1;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/RecordingController;->stopRecording(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camcorder/RecordingController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/RecordingController;)V
    .locals 0
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 698
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getFunctionUITimer()I

    move-result v0

    if-nez v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    #setter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J
    invoke-static {v0, v1, v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$002(Lcom/lge/camera/controller/camcorder/RecordingController;J)J

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J
    invoke-static {v1}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$100(Lcom/lge/camera/controller/camcorder/RecordingController;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$000(Lcom/lge/camera/controller/camcorder/RecordingController;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/camera/controller/camcorder/RecordingController;->setRecDurationTime(JJ)V

    .line 703
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$200(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 704
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$300(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopRecordingEffect()V

    .line 705
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->waitStopRecordingEffectThreadDone()V

    .line 715
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$800(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/controller/camcorder/RecordingController$1$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camcorder/RecordingController$1$1;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController$1;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 724
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    const/4 v1, 0x1

    #setter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mCheckResumeVideo:Z
    invoke-static {v0, v1}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$902(Lcom/lge/camera/controller/camcorder/RecordingController;Z)Z

    .line 725
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 726
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1100(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->setFlashOffByHighTemperature(Z)V

    .line 727
    return-void

    .line 708
    :cond_2
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    .line 709
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getStopRecordingDuringCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$500(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    goto :goto_0
.end method
