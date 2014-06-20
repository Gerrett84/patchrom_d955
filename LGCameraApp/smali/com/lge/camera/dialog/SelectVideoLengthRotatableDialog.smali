.class public Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "SelectVideoLengthRotatableDialog.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/RotateDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;->onMmsClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;->onLongVideoClick()V

    return-void
.end method

.method private onLongVideoClick()V
    .locals 5

    .prologue
    .line 75
    const-string v2, "CameraApp"

    const-string v3, "Long Video Selected"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_preview_size_on_device"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 79
    .local v0, pref:Lcom/lge/camera/setting/ListPreference;
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_video_record_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, shotmode:Ljava/lang/String;
    const-string v2, "recordmode_dual"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "recordmode_live_effect"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "recordmode_smart_zoom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_preview_size_on_device"

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetVideoImageSize"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->recordingControllerHide()V

    .line 92
    return-void
.end method

.method private onMmsClick()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 54
    const-string v2, "CameraApp"

    const-string v3, "Mms Selected"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/properties/MmsProperties;->getMmsResolutions(Landroid/content/ContentResolver;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v5

    .line 57
    .local v0, resolution:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_video_record_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, shotmode:Ljava/lang/String;
    const-string v2, "recordmode_dual"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "recordmode_live_effect"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "recordmode_smart_zoom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_video_record_mode"

    const-string v4, "recordmode_normal"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->setPreviousResolution(Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetVideoRecordMode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "recordmode_normal"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreviousRecordModeString(Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 66
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->setButtonRemainRefresh()V

    .line 71
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->recordingControllerShow()V

    .line 72
    return-void

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_preview_size_on_device"

    invoke-interface {v2, v3, v0}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 69
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetVideoImageSize"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public create()V
    .locals 6

    .prologue
    .line 25
    iget-object v4, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f030033

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v3

    .line 26
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0900b6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 27
    .local v2, titleText:Landroid/widget/TextView;
    const v4, 0x7f0900c0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 28
    .local v1, btnOk:Landroid/widget/Button;
    const v4, 0x7f090183

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 29
    .local v0, btnCancel:Landroid/widget/Button;
    const v4, 0x7f0b022c

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 30
    const v4, 0x7f0b022d

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 31
    const v4, 0x7f0b022b

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 33
    const/4 v4, 0x0

    invoke-super {p0, v3, v4}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;Z)V

    .line 36
    new-instance v4, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog$1;

    invoke-direct {v4, p0}, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog$1;-><init>(Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    new-instance v4, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog$2;

    invoke-direct {v4, p0}, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog$2;-><init>(Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/lge/camera/dialog/RotateDialog;->onDismiss()V

    .line 97
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->afterOnDismissForSelectVideoLength()V

    .line 100
    :cond_0
    return-void
.end method
