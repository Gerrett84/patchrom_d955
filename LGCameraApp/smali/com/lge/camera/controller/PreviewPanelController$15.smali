.class Lcom/lge/camera/controller/PreviewPanelController$15;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonLongPressed(Lcom/lge/camera/components/ShutterButton;)V
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
    .line 3041
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$15;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3043
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$15;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3044
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$15;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 3045
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$15;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->showFocus(Z)Z

    .line 3046
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$15;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->doCameraShutterButtonFocus(Z)V

    .line 3048
    :cond_0
    return-void
.end method
