.class public Lcom/lge/camera/controller/Camera3dDepthController;
.super Lcom/lge/camera/controller/BarController;
.source "Camera3dDepthController.java"


# static fields
.field public static final MAX_3D_STEP:I = 0xf


# instance fields
.field private mCamera3dDepthBar:Lcom/lge/camera/components/Camera3dDepthBar;

.field private mSettingCamera3dDepthBar:Lcom/lge/camera/components/SettingCamera3dDepthBar;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/BarController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 24
    return-void
.end method


# virtual methods
.method public clearSettingDepth3DBar()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lge/camera/controller/Camera3dDepthController;->mSettingCamera3dDepthBar:Lcom/lge/camera/components/SettingCamera3dDepthBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/SettingCamera3dDepthBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/Camera3dDepthController;->hideSettingDepth3DControl(Z)V

    .line 68
    :cond_0
    return-void
.end method

.method public hideSettingDepth3DControl(Z)V
    .locals 1
    .parameter "useAnim"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    const v0, 0x7f09019c

    invoke-super {p0, v0, p1}, Lcom/lge/camera/controller/BarController;->hideSettingBarControl(IZ)V

    goto :goto_0
.end method

.method public initController()V
    .locals 9

    .prologue
    .line 28
    const-string v0, "CameraApp"

    const-string v1, "Camera3dDepthController init()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0900d7

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 31
    const v0, 0x7f09004c

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/Camera3dDepthController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/Camera3dDepthBar;

    iput-object v0, p0, Lcom/lge/camera/controller/Camera3dDepthController;->mCamera3dDepthBar:Lcom/lge/camera/components/Camera3dDepthBar;

    .line 32
    iget-object v0, p0, Lcom/lge/camera/controller/Camera3dDepthController;->mCamera3dDepthBar:Lcom/lge/camera/components/Camera3dDepthBar;

    invoke-super {p0, v0}, Lcom/lge/camera/controller/BarController;->setNormalBarView(Lcom/lge/camera/components/BarView;)V

    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/Camera3dDepthController;->mCamera3dDepthBar:Lcom/lge/camera/components/Camera3dDepthBar;

    const-string v1, "key_camera_3d_depth"

    const-string v2, "com.lge.camera.command.setting.setCamera3dDepth"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/Camera3dDepthBar;->setBarSettingCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/lge/camera/controller/Camera3dDepthController;->mCamera3dDepthBar:Lcom/lge/camera/components/Camera3dDepthBar;

    const-wide/16 v1, 0x3e8

    const-wide/16 v3, 0xc8

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/lge/camera/components/Camera3dDepthBar;->setBarValueInitialization(JJIIII)V

    .line 35
    iget-object v0, p0, Lcom/lge/camera/controller/Camera3dDepthController;->mCamera3dDepthBar:Lcom/lge/camera/components/Camera3dDepthBar;

    const/4 v1, 0x3

    const v2, 0x7f090052

    const v3, 0x7f090050

    const v4, 0x7f090054

    const v5, 0x7f090053

    const v6, 0x7f09004e

    const v7, 0x7f09004d

    invoke-virtual/range {v0 .. v7}, Lcom/lge/camera/components/Camera3dDepthBar;->setBarResources(IIIIIII)V

    .line 42
    iget-object v0, p0, Lcom/lge/camera/controller/Camera3dDepthController;->mCamera3dDepthBar:Lcom/lge/camera/components/Camera3dDepthBar;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/Camera3dDepthBar;->initBar(Lcom/lge/camera/components/BarAction;)V

    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Camera3dDepthController;->mCamera3dDepthBar:Lcom/lge/camera/components/Camera3dDepthBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/Camera3dDepthBar;->setListener(Z)V

    .line 45
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0900d8

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 46
    const v0, 0x7f09019e

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/Camera3dDepthController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/SettingCamera3dDepthBar;

    iput-object v0, p0, Lcom/lge/camera/controller/Camera3dDepthController;->mSettingCamera3dDepthBar:Lcom/lge/camera/components/SettingCamera3dDepthBar;

    .line 47
    iget-object v0, p0, Lcom/lge/camera/controller/Camera3dDepthController;->mSettingCamera3dDepthBar:Lcom/lge/camera/components/SettingCamera3dDepthBar;

    invoke-super {p0, v0}, Lcom/lge/camera/controller/BarController;->setSettingBarView(Lcom/lge/camera/components/BarView;)V

    .line 48
    iget-object v0, p0, Lcom/lge/camera/controller/Camera3dDepthController;->mSettingCamera3dDepthBar:Lcom/lge/camera/components/SettingCamera3dDepthBar;

    const-string v1, "key_camera_3d_depth"

    const-string v2, "com.lge.camera.command.setting.setCamera3dDepth"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/SettingCamera3dDepthBar;->setBarSettingCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/lge/camera/controller/Camera3dDepthController;->mSettingCamera3dDepthBar:Lcom/lge/camera/components/SettingCamera3dDepthBar;

    const-wide/16 v1, 0x3e8

    const-wide/16 v3, 0xc8

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/lge/camera/components/SettingCamera3dDepthBar;->setBarValueInitialization(JJIIII)V

    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/Camera3dDepthController;->mSettingCamera3dDepthBar:Lcom/lge/camera/components/SettingCamera3dDepthBar;

    const/4 v1, 0x7

    const v2, 0x7f090195

    const v3, 0x7f090193

    const v4, 0x7f090197

    const v5, 0x7f090196

    const v6, 0x7f090191

    const v7, 0x7f090190

    invoke-virtual/range {v0 .. v7}, Lcom/lge/camera/components/SettingCamera3dDepthBar;->setBarResources(IIIIIII)V

    .line 57
    iget-object v0, p0, Lcom/lge/camera/controller/Camera3dDepthController;->mSettingCamera3dDepthBar:Lcom/lge/camera/components/SettingCamera3dDepthBar;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/SettingCamera3dDepthBar;->initBar(Lcom/lge/camera/components/BarAction;)V

    .line 58
    iget-object v0, p0, Lcom/lge/camera/controller/Camera3dDepthController;->mSettingCamera3dDepthBar:Lcom/lge/camera/components/SettingCamera3dDepthBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/SettingCamera3dDepthBar;->setListener(Z)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 62
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 85
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_3d_depth"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 86
    .local v0, preference:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_0

    .line 87
    const-string v2, "key_camera_3d_depth"

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/controller/Camera3dDepthController;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 88
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 89
    .local v1, value:I
    iget-object v2, p0, Lcom/lge/camera/controller/Camera3dDepthController;->mCamera3dDepthBar:Lcom/lge/camera/components/Camera3dDepthBar;

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/Camera3dDepthBar;->resetValue(I)V

    .line 90
    iget-object v2, p0, Lcom/lge/camera/controller/Camera3dDepthController;->mCamera3dDepthBar:Lcom/lge/camera/components/Camera3dDepthBar;

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/Camera3dDepthBar;->resetCursor(I)V

    .line 91
    iget-object v2, p0, Lcom/lge/camera/controller/Camera3dDepthController;->mSettingCamera3dDepthBar:Lcom/lge/camera/components/SettingCamera3dDepthBar;

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/SettingCamera3dDepthBar;->resetValue(I)V

    .line 92
    iget-object v2, p0, Lcom/lge/camera/controller/Camera3dDepthController;->mSettingCamera3dDepthBar:Lcom/lge/camera/components/SettingCamera3dDepthBar;

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/SettingCamera3dDepthBar;->resetCursor(I)V

    .line 94
    .end local v1           #value:I
    :cond_0
    return-void
.end method

.method public showSetting3dDepthControl(Z)V
    .locals 1
    .parameter "useAnim"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    const v0, 0x7f09019c

    invoke-super {p0, v0, p1}, Lcom/lge/camera/controller/BarController;->showSettingBarControl(IZ)V

    goto :goto_0
.end method
