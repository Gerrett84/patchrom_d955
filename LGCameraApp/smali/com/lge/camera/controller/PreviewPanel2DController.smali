.class public Lcom/lge/camera/controller/PreviewPanel2DController;
.super Lcom/lge/camera/controller/PreviewPanelController;
.source "PreviewPanel2DController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 10
    return-void
.end method


# virtual methods
.method public initController()V
    .locals 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0900c7

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 14
    invoke-super {p0}, Lcom/lge/camera/controller/PreviewPanelController;->initController()V

    .line 15
    return-void
.end method
