.class public Lcom/lge/camera/dialog/StoragePopupRotatableDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "StoragePopupRotatableDialog.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/RotateDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 32
    return-void
.end method

.method private OnPositiveButtonClick()V
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_voiceshutter"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, mVoiceShutterValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.SetVoiceShutterMode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 80
    .end local v0           #mVoiceShutterValue:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getStorageMessageId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 81
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getEmmcName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_storage"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_storage"

    const-string v3, "external memory"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.SetStorage"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 88
    :cond_1
    return-void

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_storage"

    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getEmmcName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lge/camera/dialog/StoragePopupRotatableDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->OnPositiveButtonClick()V

    return-void
.end method


# virtual methods
.method public create()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 35
    iget-object v9, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f030030

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v8

    .line 36
    .local v8, v:Landroid/view/View;
    const v9, 0x7f0900b6

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 37
    .local v7, titleText:Landroid/widget/TextView;
    const v9, 0x7f0900bd

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 38
    .local v4, messageText:Landroid/widget/TextView;
    const v9, 0x7f0900c0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 39
    .local v1, btnOk:Landroid/widget/Button;
    const v9, 0x7f090183

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 40
    .local v0, btnCancel:Landroid/widget/Button;
    const v9, 0x7f0900be

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 43
    .local v2, button_layout:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 44
    .local v5, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x1

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 45
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 47
    const v9, 0x7f02041e

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 49
    const v9, 0x7f0b0055

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    .line 50
    iget-object v9, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getStoragePopupMessage()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, message:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 52
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    .line 54
    .local v6, scrollView:Landroid/widget/ScrollView;
    invoke-virtual {v6, v11, v11}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 57
    .end local v6           #scrollView:Landroid/widget/ScrollView;
    :cond_0
    iget-object v9, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0b002e

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 59
    new-instance v9, Lcom/lge/camera/dialog/StoragePopupRotatableDialog$1;

    invoke-direct {v9, p0}, Lcom/lge/camera/dialog/StoragePopupRotatableDialog$1;-><init>(Lcom/lge/camera/dialog/StoragePopupRotatableDialog;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-super {p0, v8}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;)V

    .line 68
    return-void
.end method
