.class public Lcom/lge/camera/controller/BeautyshotController;
.super Lcom/lge/camera/controller/BarController;
.source "BeautyshotController.java"


# static fields
.field public static final MAX_BEAUTYSHOT_STEP:I = 0x8


# instance fields
.field private mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

.field private mSettingBeautyshotBar:Lcom/lge/camera/components/SettingBeautyshotBar;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/BarController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 22
    return-void
.end method


# virtual methods
.method public clearSettingBeautyshotBar()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mSettingBeautyshotBar:Lcom/lge/camera/components/SettingBeautyshotBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/SettingBeautyshotBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/BeautyshotController;->hideSettingBeautyShotControl(Z)V

    .line 73
    :cond_0
    return-void
.end method

.method public getCursorMaxStep()I
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    if-nez v0, :cond_1

    .line 64
    :cond_0
    const/16 v0, 0x8

    .line 66
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/BeautyshotBar;->getCursorMaxStep()I

    move-result v0

    goto :goto_0
.end method

.method public hideSettingBeautyShotControl(Z)V
    .locals 1
    .parameter "useAnim"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    const v0, 0x7f09018e

    invoke-super {p0, v0, p1}, Lcom/lge/camera/controller/BarController;->hideSettingBarControl(IZ)V

    goto :goto_0
.end method

.method public initController()V
    .locals 9

    .prologue
    .line 26
    const-string v0, "CameraApp"

    const-string v1, "BeautyshotController init()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0900d4

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 29
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/BeautyshotController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/BeautyshotBar;

    iput-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    .line 30
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    invoke-super {p0, v0}, Lcom/lge/camera/controller/BarController;->setNormalBarView(Lcom/lge/camera/components/BarView;)V

    .line 31
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    const-string v1, "key_beautyshot"

    const-string v2, "com.lge.camera.command.setting.SetBeautyshot"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/BeautyshotBar;->setBarSettingCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    const-wide/16 v1, 0x3e8

    const-wide/16 v3, 0xc8

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/lge/camera/components/BeautyshotBar;->setBarValueInitialization(JJIIII)V

    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    const/4 v1, 0x2

    const v2, 0x7f09001f

    const v3, 0x7f09001d

    const v4, 0x7f090021

    const v5, 0x7f090020

    const v6, 0x7f09001b

    const v7, 0x7f09001a

    invoke-virtual/range {v0 .. v7}, Lcom/lge/camera/components/BeautyshotBar;->setBarResources(IIIIIII)V

    .line 40
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/BeautyshotBar;->initBar(Lcom/lge/camera/components/BarAction;)V

    .line 41
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/BeautyshotBar;->setListener(Z)V

    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0900d5

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 44
    const v0, 0x7f09018f

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/BeautyshotController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/SettingBeautyshotBar;

    iput-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mSettingBeautyshotBar:Lcom/lge/camera/components/SettingBeautyshotBar;

    .line 45
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mSettingBeautyshotBar:Lcom/lge/camera/components/SettingBeautyshotBar;

    invoke-super {p0, v0}, Lcom/lge/camera/controller/BarController;->setSettingBarView(Lcom/lge/camera/components/BarView;)V

    .line 46
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mSettingBeautyshotBar:Lcom/lge/camera/components/SettingBeautyshotBar;

    const-string v1, "key_beautyshot"

    const-string v2, "com.lge.camera.command.setting.SetBeautyshot"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/SettingBeautyshotBar;->setBarSettingCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mSettingBeautyshotBar:Lcom/lge/camera/components/SettingBeautyshotBar;

    const-wide/16 v1, 0x3e8

    const-wide/16 v3, 0xc8

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/lge/camera/components/SettingBeautyshotBar;->setBarValueInitialization(JJIIII)V

    .line 48
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mSettingBeautyshotBar:Lcom/lge/camera/components/SettingBeautyshotBar;

    const/4 v1, 0x6

    const v2, 0x7f090195

    const v3, 0x7f090193

    const v4, 0x7f090197

    const v5, 0x7f090196

    const v6, 0x7f090191

    const v7, 0x7f090190

    invoke-virtual/range {v0 .. v7}, Lcom/lge/camera/components/SettingBeautyshotBar;->setBarResources(IIIIIII)V

    .line 55
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mSettingBeautyshotBar:Lcom/lge/camera/components/SettingBeautyshotBar;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/SettingBeautyshotBar;->initBar(Lcom/lge/camera/components/BarAction;)V

    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mSettingBeautyshotBar:Lcom/lge/camera/components/SettingBeautyshotBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/SettingBeautyshotBar;->setListener(Z)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 60
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 96
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/BeautyshotController;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 100
    const/4 v0, 0x4

    .line 102
    .local v0, value:I
    iget-object v1, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v1, v0}, Lcom/lge/camera/components/BeautyshotBar;->resetValue(I)V

    .line 104
    iget-object v1, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v1, v0}, Lcom/lge/camera/components/BeautyshotBar;->resetCursor(I)V

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/BeautyshotController;->mSettingBeautyshotBar:Lcom/lge/camera/components/SettingBeautyshotBar;

    invoke-virtual {v1, v0}, Lcom/lge/camera/components/SettingBeautyshotBar;->resetValue(I)V

    .line 107
    iget-object v1, p0, Lcom/lge/camera/controller/BeautyshotController;->mSettingBeautyshotBar:Lcom/lge/camera/components/SettingBeautyshotBar;

    invoke-virtual {v1, v0}, Lcom/lge/camera/components/SettingBeautyshotBar;->resetCursor(I)V

    .line 108
    const-string v1, "key_beautyshot"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/controller/BeautyshotController;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 109
    const-string v1, "com.lge.camera.command.setting.SetBeautyshot"

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/BeautyshotController;->doCommandNoneParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showSettingBeautyShotControl(Z)V
    .locals 1
    .parameter "useAnim"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    const v0, 0x7f09018e

    invoke-super {p0, v0, p1}, Lcom/lge/camera/controller/BarController;->showSettingBarControl(IZ)V

    goto :goto_0
.end method

.method public updateAllBars(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/lge/camera/controller/BeautyshotController;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-super {p0, p1}, Lcom/lge/camera/controller/BarController;->updateAllBars(I)V

    .line 93
    :cond_0
    return-void
.end method
