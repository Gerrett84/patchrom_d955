.class public Lcom/lge/camera/controller/PreviewPanel3DController;
.super Lcom/lge/camera/controller/PreviewPanelController;
.source "PreviewPanel3DController.java"


# instance fields
.field private m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

.field private m3DSwitchButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    .line 104
    new-instance v0, Lcom/lge/camera/controller/PreviewPanel3DController$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewPanel3DController$1;-><init>(Lcom/lge/camera/controller/PreviewPanel3DController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButtonListener:Landroid/view/View$OnClickListener;

    .line 19
    return-void
.end method


# virtual methods
.method public enableCommand(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    .line 54
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f09015b

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 61
    :cond_1
    return-void
.end method

.method public initController()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0900c8

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f09015b

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    .line 25
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setFocusable(Z)V

    .line 28
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanel3DController;->enableCommand(Z)V

    .line 29
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanel3DController;->set3DSwitchImage()V

    .line 30
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/lge/camera/controller/PreviewPanel3DController;->startRotation(IZ)V

    .line 32
    invoke-super {p0}, Lcom/lge/camera/controller/PreviewPanelController;->initController()V

    .line 33
    return-void
.end method

.method public initReleaseArea()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lcom/lge/camera/controller/PreviewPanelController;->initReleaseArea()V

    .line 37
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 97
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanel3DController;->set3DSwitchVisible(Z)V

    .line 101
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/PreviewPanelController;->onResume()V

    .line 102
    return-void
.end method

.method public set3DSwitchImage()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDimension()I

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    const v1, 0x7f020455

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    const v1, 0x7f020456

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public set3DSwitchVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public showCommand()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanel3DController;->setSwitcherVisible(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanel3DController;->setMainButtonEnable()V

    .line 43
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanel3DController;->showSubButtonInit(Z)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 49
    :cond_1
    return-void
.end method

.method public startRotation(IZ)V
    .locals 2
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDimension()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->startRotation(IZ)V

    .line 70
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f09015b

    invoke-interface {v0, v1, p1, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    goto :goto_0
.end method
