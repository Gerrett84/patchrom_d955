.class public Lcom/lge/camera/controller/BrightnessController;
.super Lcom/lge/camera/controller/BarController;
.source "BrightnessController.java"


# instance fields
.field private mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

.field private mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/BarController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 23
    return-void
.end method


# virtual methods
.method public clearSettingBrightnessBar()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/SettingBrightnessBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/BrightnessController;->hideSettingBrightnessControl(Z)V

    .line 74
    :cond_0
    return-void
.end method

.method public getCursorMaxStep()I
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    if-nez v0, :cond_1

    .line 65
    :cond_0
    sget v0, Lcom/lge/camera/properties/CameraConstants;->MAX_BRIGHTNESS_STEP:I

    .line 67
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/BrightnessBar;->getCursorMaxStep()I

    move-result v0

    goto :goto_0
.end method

.method public hideSettingBrightnessControl(Z)V
    .locals 1
    .parameter "useAnim"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    const v0, 0x7f090199

    invoke-super {p0, v0, p1}, Lcom/lge/camera/controller/BarController;->hideSettingBarControl(IZ)V

    goto :goto_0
.end method

.method public initController()V
    .locals 9

    .prologue
    .line 27
    const-string v0, "CameraApp"

    const-string v1, "BrightnessController init()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0900d2

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 30
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/BrightnessController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/BrightnessBar;

    iput-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    .line 31
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    invoke-super {p0, v0}, Lcom/lge/camera/controller/BarController;->setNormalBarView(Lcom/lge/camera/components/BarView;)V

    .line 32
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    const-string v1, "key_brightness"

    const-string v2, "com.lge.camera.command.setting.SetBrightness"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/BrightnessBar;->setBarSettingCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    const-wide/16 v1, 0x3e8

    const-wide/16 v3, 0xc8

    sget v5, Lcom/lge/camera/properties/CameraConstants;->MAX_BRIGHTNESS_STEP:I

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/lge/camera/components/BrightnessBar;->setBarValueInitialization(JJIIII)V

    .line 34
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    const/4 v1, 0x1

    const v2, 0x7f09002e

    const v3, 0x7f09002c

    const v4, 0x7f090030

    const v5, 0x7f09002f

    const v6, 0x7f09002a

    const v7, 0x7f090029

    invoke-virtual/range {v0 .. v7}, Lcom/lge/camera/components/BrightnessBar;->setBarResources(IIIIIII)V

    .line 41
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/BrightnessBar;->initBar(Lcom/lge/camera/components/BarAction;)V

    .line 42
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/BrightnessBar;->setListener(Z)V

    .line 44
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0900d3

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 45
    const v0, 0x7f09019a

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/BrightnessController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/SettingBrightnessBar;

    iput-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;

    .line 46
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;

    invoke-super {p0, v0}, Lcom/lge/camera/controller/BarController;->setSettingBarView(Lcom/lge/camera/components/BarView;)V

    .line 47
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;

    const-string v1, "key_brightness"

    const-string v2, "com.lge.camera.command.setting.SetBrightness"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/SettingBrightnessBar;->setBarSettingCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;

    const-wide/16 v1, 0x3e8

    const-wide/16 v3, 0xc8

    sget v5, Lcom/lge/camera/properties/CameraConstants;->MAX_BRIGHTNESS_STEP:I

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/lge/camera/components/SettingBrightnessBar;->setBarValueInitialization(JJIIII)V

    .line 49
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;

    const/4 v1, 0x5

    const v2, 0x7f090195

    const v3, 0x7f090193

    const v4, 0x7f090197

    const v5, 0x7f090196

    const v6, 0x7f090191

    const v7, 0x7f090190

    invoke-virtual/range {v0 .. v7}, Lcom/lge/camera/components/SettingBrightnessBar;->setBarResources(IIIIIII)V

    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/SettingBrightnessBar;->initBar(Lcom/lge/camera/components/BarAction;)V

    .line 57
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/SettingBrightnessBar;->setListener(Z)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 61
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 104
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_brightness"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 105
    .local v0, preference:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_1

    .line 106
    const-string v2, "key_brightness"

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/controller/BrightnessController;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 108
    .local v1, value:I
    iget-object v2, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/BrightnessBar;->resetValue(I)V

    .line 110
    iget-object v2, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/BrightnessBar;->resetCursor(I)V

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/BrightnessController;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/lge/camera/controller/BrightnessController;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/SettingBrightnessBar;->resetValue(I)V

    .line 114
    iget-object v2, p0, Lcom/lge/camera/controller/BrightnessController;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/SettingBrightnessBar;->resetCursor(I)V

    .line 117
    .end local v1           #value:I
    :cond_1
    return-void
.end method

.method public showControl(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 85
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v1, p1}, Lcom/lge/camera/components/BrightnessBar;->showControl(Z)V

    .line 90
    const v1, 0x7f090026

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/BrightnessController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, indexView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 92
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_1
.end method

.method public showSettingBrightnessControl(Z)V
    .locals 1
    .parameter "useAnim"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    const v0, 0x7f090199

    invoke-super {p0, v0, p1}, Lcom/lge/camera/controller/BarController;->showSettingBarControl(IZ)V

    goto :goto_0
.end method
