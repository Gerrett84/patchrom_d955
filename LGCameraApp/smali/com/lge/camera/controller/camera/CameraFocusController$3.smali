.class Lcom/lge/camera/controller/camera/CameraFocusController$3;
.super Ljava/lang/Object;
.source "CameraFocusController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/CameraFocusController;->callbackAutoFocusOnCaf(ZLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/CameraFocusController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/CameraFocusController;)V
    .locals 0
    .parameter

    .prologue
    .line 870
    iput-object p1, p0, Lcom/lge/camera/controller/camera/CameraFocusController$3;->this$0:Lcom/lge/camera/controller/camera/CameraFocusController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 872
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController$3;->this$0:Lcom/lge/camera/controller/camera/CameraFocusController;

    #calls: Lcom/lge/camera/controller/camera/CameraFocusController;->checkMediator()Z
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->access$1400(Lcom/lge/camera/controller/camera/CameraFocusController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController$3;->this$0:Lcom/lge/camera/controller/camera/CameraFocusController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->access$1500(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 874
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController$3;->this$0:Lcom/lge/camera/controller/camera/CameraFocusController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->access$1600(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkPreviewPanelController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController$3;->this$0:Lcom/lge/camera/controller/camera/CameraFocusController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->access$1700(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->snapshotOnContinuousFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController$3;->this$0:Lcom/lge/camera/controller/camera/CameraFocusController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->access$1800(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 877
    const-string v0, "CameraApp"

    const-string v1, "mDoSnapRunnable by AutoFocusOnCaf Callback!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController$3;->this$0:Lcom/lge/camera/controller/camera/CameraFocusController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->access$2000(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController$3;->this$0:Lcom/lge/camera/controller/camera/CameraFocusController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->access$1900(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSnapshotRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 882
    :cond_0
    return-void
.end method
