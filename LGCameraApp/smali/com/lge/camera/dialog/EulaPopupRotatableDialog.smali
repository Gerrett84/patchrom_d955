.class public Lcom/lge/camera/dialog/EulaPopupRotatableDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "EulaPopupRotatableDialog.java"


# instance fields
.field private mDoNotShowAgain:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/RotateDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->mDoNotShowAgain:Z

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/dialog/EulaPopupRotatableDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->mDoNotShowAgain:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lge/camera/dialog/EulaPopupRotatableDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->mDoNotShowAgain:Z

    return p1
.end method


# virtual methods
.method public create()V
    .locals 8

    .prologue
    .line 31
    iget-object v6, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f030031

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v5

    .line 32
    .local v5, v:Landroid/view/View;
    const v6, 0x7f0900b6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 33
    .local v4, titleText:Landroid/widget/TextView;
    const v6, 0x7f0900bd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 34
    .local v3, messageText:Landroid/widget/TextView;
    const v6, 0x7f0900c0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 35
    .local v1, btnOk:Landroid/widget/Button;
    const v6, 0x7f090183

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 36
    .local v0, btnCancel:Landroid/widget/Button;
    const v6, 0x7f090068

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 38
    .local v2, checkboxText:Landroid/widget/CheckBox;
    const v6, 0x7f0b0222

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 39
    const v6, 0x7f0b0224

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 41
    const v6, 0x7f0b0223

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setText(I)V

    .line 42
    const v6, 0x7f0b002e

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 43
    const v6, 0x7f0b0039

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 44
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 46
    new-instance v6, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$1;

    invoke-direct {v6, p0}, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$1;-><init>(Lcom/lge/camera/dialog/EulaPopupRotatableDialog;)V

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    new-instance v6, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$2;

    invoke-direct {v6, p0}, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$2;-><init>(Lcom/lge/camera/dialog/EulaPopupRotatableDialog;)V

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    invoke-super {p0, v5}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;)V

    .line 64
    new-instance v6, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$3;

    invoke-direct {v6, p0}, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$3;-><init>(Lcom/lge/camera/dialog/EulaPopupRotatableDialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v6, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$4;

    invoke-direct {v6, p0}, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$4;-><init>(Lcom/lge/camera/dialog/EulaPopupRotatableDialog;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method
