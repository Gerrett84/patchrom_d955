.class public Lcom/lge/camera/dialog/DeleteRotatableDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "DeleteRotatableDialog.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/RotateDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 17
    return-void
.end method


# virtual methods
.method public create()V
    .locals 8

    .prologue
    .line 21
    iget-object v6, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f030030

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v5

    .line 22
    .local v5, v:Landroid/view/View;
    const v6, 0x7f0900b6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 23
    .local v4, titleText:Landroid/widget/TextView;
    const v6, 0x7f0900bd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 24
    .local v2, messageText:Landroid/widget/TextView;
    const v6, 0x7f0900c0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 25
    .local v1, btnOk:Landroid/widget/Button;
    const v6, 0x7f090183

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 27
    .local v0, btnCancel:Landroid/widget/Button;
    const v6, 0x7f0b0171

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 28
    iget-object v6, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v6

    if-nez v6, :cond_0

    const v3, 0x7f0b02ce

    .line 32
    .local v3, stringId:I
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 33
    const v6, 0x7f0b003a

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 34
    const v6, 0x7f0b003b

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 36
    invoke-super {p0, v5}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;)V

    .line 38
    new-instance v6, Lcom/lge/camera/dialog/DeleteRotatableDialog$1;

    invoke-direct {v6, p0}, Lcom/lge/camera/dialog/DeleteRotatableDialog$1;-><init>(Lcom/lge/camera/dialog/DeleteRotatableDialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    new-instance v6, Lcom/lge/camera/dialog/DeleteRotatableDialog$2;

    invoke-direct {v6, p0}, Lcom/lge/camera/dialog/DeleteRotatableDialog$2;-><init>(Lcom/lge/camera/dialog/DeleteRotatableDialog;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void

    .line 28
    .end local v3           #stringId:I
    :cond_0
    const v3, 0x7f0b02cf

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/lge/camera/dialog/RotateDialog;->onDismiss()V

    .line 56
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->closeGalleryQuickView(Z)V

    .line 57
    return-void
.end method

.method public onDismiss(Z)V
    .locals 1
    .parameter "clickOk"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/lge/camera/dialog/DeleteRotatableDialog;->onDismiss()V

    .line 61
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->closeGalleryQuickView(Z)V

    .line 62
    return-void
.end method
