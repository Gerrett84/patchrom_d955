.class Lcom/lge/camera/controller/PreviewPanelController$14;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PreviewPanelController;
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
    .line 2953
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$14;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2955
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$14;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2956
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$14;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 2957
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$14;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-eqz v0, :cond_0

    .line 2958
    const-string v0, "CameraApp"

    const-string v1, "mShutterButtonRunnable : click"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2959
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$14;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$14;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V

    .line 2962
    :cond_0
    return-void
.end method
