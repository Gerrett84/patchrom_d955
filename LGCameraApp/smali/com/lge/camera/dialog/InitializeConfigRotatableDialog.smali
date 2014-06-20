.class public Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "InitializeConfigRotatableDialog.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/RotateDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 19
    return-void
.end method


# virtual methods
.method public create()V
    .locals 7

    .prologue
    .line 23
    iget-object v5, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f030030

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v4

    .line 24
    .local v4, v:Landroid/view/View;
    const v5, 0x7f0900b6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 25
    .local v3, titleText:Landroid/widget/TextView;
    const v5, 0x7f0900bd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 26
    .local v2, messageText:Landroid/widget/TextView;
    const v5, 0x7f0900c0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 27
    .local v1, btnOk:Landroid/widget/Button;
    const v5, 0x7f090183

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 28
    .local v0, btnCancel:Landroid/widget/Button;
    const v5, 0x7f0b0038

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 29
    const v5, 0x7f0b0032

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 30
    const v5, 0x7f0b003a

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 31
    const v5, 0x7f0b003b

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 33
    invoke-super {p0, v4}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;)V

    .line 35
    new-instance v5, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;

    invoke-direct {v5, p0}, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;-><init>(Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    new-instance v5, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$2;

    invoke-direct {v5, p0}, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$2;-><init>(Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method
