.class public Lcom/lge/camera/dialog/MassStorageRotatableDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "MassStorageRotatableDialog.java"


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
    .locals 9

    .prologue
    .line 23
    iget-object v7, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f030030

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v6

    .line 24
    .local v6, v:Landroid/view/View;
    if-nez v6, :cond_0

    .line 64
    :goto_0
    return-void

    .line 27
    :cond_0
    const v7, 0x7f0900b6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 28
    .local v5, titleText:Landroid/widget/TextView;
    const v7, 0x7f0900bd

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 29
    .local v3, messageText:Landroid/widget/TextView;
    const v7, 0x7f0900c0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 30
    .local v1, btnOk:Landroid/widget/Button;
    const v7, 0x7f090183

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 31
    .local v0, btnCancel:Landroid/widget/Button;
    const v7, 0x7f0900be

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 33
    .local v2, button_layout:Landroid/widget/LinearLayout;
    const v7, 0x7f0b004b

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 34
    const v7, 0x7f0b004c

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 35
    const v7, 0x7f0b002e

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 39
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 40
    .local v4, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, 0x1

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 41
    const/high16 v7, 0x3f00

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 42
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 44
    if-eqz v2, :cond_1

    .line 45
    const v7, 0x7f02041e

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 47
    :cond_1
    invoke-super {p0, v6}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;)V

    .line 50
    new-instance v7, Lcom/lge/camera/dialog/MassStorageRotatableDialog$1;

    invoke-direct {v7, p0}, Lcom/lge/camera/dialog/MassStorageRotatableDialog$1;-><init>(Lcom/lge/camera/dialog/MassStorageRotatableDialog;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/lge/camera/dialog/RotateDialog;->onDismiss()V

    .line 69
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 70
    return-void
.end method
