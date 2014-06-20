.class Lcom/lge/camera/controller/camcorder/RecordingController$3$1;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/RecordingController$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/camcorder/RecordingController$3;

.field final synthetic val$autoReviewDuration:J


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/RecordingController$3;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 842
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$3;

    iput-wide p2, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3$1;->val$autoReviewDuration:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 844
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$3;

    iget-object v0, v0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$2600(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$3;

    iget-object v0, v0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$2700(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 846
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$3;

    iget-object v0, v0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$2800(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3$1;->val$autoReviewDuration:J

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->showGalleryQuickViewWindow(ZJ)Z

    .line 848
    :cond_0
    return-void
.end method
