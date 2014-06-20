.class public Lcom/lge/camera/dialog/ProgressRotatableDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "ProgressRotatableDialog.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/RotateDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 13
    return-void
.end method


# virtual methods
.method public create(I)V
    .locals 4
    .parameter "rId"

    .prologue
    .line 17
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f03002a

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v1

    .line 18
    .local v1, v:Landroid/view/View;
    const v2, 0x7f0900bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 19
    .local v0, titleText:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 20
    const/4 v2, 0x0

    invoke-super {p0, v1, v2}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;Z)V

    .line 21
    return-void
.end method
