.class Lcom/lge/camera/controller/camcorder/RecordingController$1$1;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/RecordingController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/camcorder/RecordingController$1;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/RecordingController$1;)V
    .locals 0
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$600(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 718
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->doAfterRecordingProcess()V

    .line 719
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$700(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setVideoFlash(Z)V

    .line 722
    :cond_0
    return-void
.end method
