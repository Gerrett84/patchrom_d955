.class Lcom/lge/camera/controller/camcorder/RecordingController$2;
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


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/RecordingController;)V
    .locals 0
    .parameter

    .prologue
    .line 791
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #calls: Lcom/lge/camera/controller/camcorder/RecordingController;->checkMediator()Z
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1200(Lcom/lge/camera/controller/camcorder/RecordingController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1300(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 795
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->resetRecTime()V

    .line 796
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 797
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1500(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateThumbnailButtonVisibility()V

    .line 799
    :cond_0
    return-void
.end method
