.class public Lcom/lge/camera/controller/ZoomController;
.super Lcom/lge/camera/controller/BarController;
.source "ZoomController.java"


# static fields
.field private static mZoomMaxValue:F

.field private static mZoomRatio:F


# instance fields
.field private mSettingZoomBar:Lcom/lge/camera/components/SettingZoomBar;

.field private mZoomBar:Lcom/lge/camera/components/ZoomBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput v0, Lcom/lge/camera/controller/ZoomController;->mZoomMaxValue:F

    .line 21
    sput v0, Lcom/lge/camera/controller/ZoomController;->mZoomRatio:F

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/BarController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 25
    return-void
.end method


# virtual methods
.method public clearSettingZoom()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mSettingZoomBar:Lcom/lge/camera/components/SettingZoomBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mSettingZoomBar:Lcom/lge/camera/components/SettingZoomBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/SettingZoomBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/ZoomController;->hideSettingZoomControl(Z)V

    .line 134
    :cond_0
    return-void
.end method

.method public endZoomInOut()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 161
    :goto_0
    return v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/ZoomBar;->stopTimerTask()V

    .line 160
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mSettingZoomBar:Lcom/lge/camera/components/SettingZoomBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/SettingZoomBar;->stopTimerTask()V

    .line 161
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCursorMaxStep()I
    .locals 5

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, ret:I
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 97
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    .line 98
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device getMaxZoom = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "RuntimeException : getParameters failed."

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    const/16 v1, 0x5a

    .line 102
    goto :goto_0

    .line 104
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "device is not ready."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/16 v1, 0x5a

    goto :goto_0
.end method

.method public getZoomBar()Lcom/lge/camera/components/ZoomBar;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    return-object v0
.end method

.method public getZoomBarValue()I
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    if-nez v0, :cond_1

    .line 198
    :cond_0
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/ZoomBar;->getValue()I

    move-result v0

    goto :goto_0
.end method

.method public getZoomMaxValue()F
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/lge/camera/controller/ZoomController;->mZoomMaxValue:F

    return v0
.end method

.method public getZoomRatio()F
    .locals 2

    .prologue
    .line 81
    sget v0, Lcom/lge/camera/controller/ZoomController;->mZoomRatio:F

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    return v0
.end method

.method public hideSettingZoomControl(Z)V
    .locals 1
    .parameter "useAnim"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    const v0, 0x7f0901c2

    invoke-super {p0, v0, p1}, Lcom/lge/camera/controller/BarController;->hideSettingBarControl(IZ)V

    goto :goto_0
.end method

.method public initController()V
    .locals 9

    .prologue
    .line 29
    const-string v0, "CameraApp"

    const-string v1, "ZoomController init()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0900d0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 32
    const v0, 0x7f09020f

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/ZoomController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ZoomBar;

    iput-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-super {p0, v0}, Lcom/lge/camera/controller/BarController;->setNormalBarView(Lcom/lge/camera/components/BarView;)V

    .line 34
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    const-string v1, "key_zoom"

    const-string v2, "com.lge.camera.command.setting.SetZoom"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/ZoomBar;->setBarSettingCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    const-wide/16 v1, 0x1f4

    const-wide/16 v3, 0x32

    const/16 v5, 0x5a

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/4 v8, 0x2

    invoke-virtual/range {v0 .. v8}, Lcom/lge/camera/components/ZoomBar;->setBarValueInitialization(JJIIII)V

    .line 36
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    const/4 v1, 0x0

    const v2, 0x7f090215

    const v3, 0x7f090212

    const v4, 0x7f090217

    const v5, 0x7f090216

    const v6, 0x7f090211

    const v7, 0x7f090210

    invoke-virtual/range {v0 .. v7}, Lcom/lge/camera/components/ZoomBar;->setBarResources(IIIIIII)V

    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/ZoomBar;->initBar(Lcom/lge/camera/components/BarAction;)V

    .line 44
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/ZoomBar;->setListener(Z)V

    .line 45
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/ZoomBar;->updateZoomText()V

    .line 47
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0900d1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 48
    const v0, 0x7f0901c3

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/ZoomController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/SettingZoomBar;

    iput-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mSettingZoomBar:Lcom/lge/camera/components/SettingZoomBar;

    .line 49
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mSettingZoomBar:Lcom/lge/camera/components/SettingZoomBar;

    invoke-super {p0, v0}, Lcom/lge/camera/controller/BarController;->setSettingBarView(Lcom/lge/camera/components/BarView;)V

    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mSettingZoomBar:Lcom/lge/camera/components/SettingZoomBar;

    const-string v1, "key_zoom"

    const-string v2, "com.lge.camera.command.setting.SetZoom"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/SettingZoomBar;->setBarSettingCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mSettingZoomBar:Lcom/lge/camera/components/SettingZoomBar;

    const-wide/16 v1, 0x1f4

    const-wide/16 v3, 0x32

    const/16 v5, 0x5a

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/4 v8, 0x2

    invoke-virtual/range {v0 .. v8}, Lcom/lge/camera/components/SettingZoomBar;->setBarValueInitialization(JJIIII)V

    .line 52
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mSettingZoomBar:Lcom/lge/camera/components/SettingZoomBar;

    const/4 v1, 0x4

    const v2, 0x7f0901c9

    const v3, 0x7f0901c6

    const v4, 0x7f0901cb

    const v5, 0x7f0901ca

    const v6, 0x7f0901c5

    const v7, 0x7f0901c4

    invoke-virtual/range {v0 .. v7}, Lcom/lge/camera/components/SettingZoomBar;->setBarResources(IIIIIII)V

    .line 60
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mSettingZoomBar:Lcom/lge/camera/components/SettingZoomBar;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/SettingZoomBar;->initBar(Lcom/lge/camera/components/BarAction;)V

    .line 61
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mSettingZoomBar:Lcom/lge/camera/components/SettingZoomBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/SettingZoomBar;->setListener(Z)V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 65
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 204
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_0

    .line 218
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/ZoomController;->getZoomMaxValue()F

    move-result v2

    float-to-int v0, v2

    .line 209
    .local v0, zoomMaxValue:I
    iget-object v2, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v2}, Lcom/lge/camera/components/ZoomBar;->getValue()I

    move-result v1

    .line 210
    .local v1, zoomValue:I
    iget-object v2, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v2}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v2

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_1

    .line 211
    mul-int v2, v1, v0

    div-int/lit8 v1, v2, 0x5a

    .line 213
    :cond_1
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zoombar : mValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v2, "key_zoom"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/controller/ZoomController;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 216
    iget-object v2, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v2}, Lcom/lge/camera/components/ZoomBar;->stopTimerTask()V

    .line 217
    iget-object v2, p0, Lcom/lge/camera/controller/ZoomController;->mSettingZoomBar:Lcom/lge/camera/components/SettingZoomBar;

    invoke-virtual {v2}, Lcom/lge/camera/components/SettingZoomBar;->stopTimerTask()V

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 165
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_zoom"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 166
    .local v0, preference:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/ZoomController;->mSettingZoomBar:Lcom/lge/camera/components/SettingZoomBar;

    if-eqz v2, :cond_0

    .line 168
    const-string v2, "key_zoom"

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/controller/ZoomController;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 169
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 170
    .local v1, value:I
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/ZoomController;->reset(I)V

    .line 172
    .end local v1           #value:I
    :cond_0
    return-void
.end method

.method public reset(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mSettingZoomBar:Lcom/lge/camera/components/SettingZoomBar;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/ZoomBar;->resetValue(I)V

    .line 177
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/ZoomBar;->resetCursor(I)V

    .line 178
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mSettingZoomBar:Lcom/lge/camera/components/SettingZoomBar;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/SettingZoomBar;->resetValue(I)V

    .line 179
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mSettingZoomBar:Lcom/lge/camera/components/SettingZoomBar;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/SettingZoomBar;->resetCursor(I)V

    .line 181
    :cond_0
    return-void
.end method

.method public setZoomCursorMaxStep(I)V
    .locals 1
    .parameter "step"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/ZoomBar;->setCursorMaxStep(I)V

    .line 89
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mSettingZoomBar:Lcom/lge/camera/components/SettingZoomBar;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/SettingZoomBar;->setCursorMaxStep(I)V

    goto :goto_0
.end method

.method public setZoomMaxValue(F)V
    .locals 0
    .parameter "max"

    .prologue
    .line 68
    sput p1, Lcom/lge/camera/controller/ZoomController;->mZoomMaxValue:F

    .line 69
    return-void
.end method

.method public setZoomRatio(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 76
    sput p1, Lcom/lge/camera/controller/ZoomController;->mZoomRatio:F

    .line 77
    return-void
.end method

.method public showControl(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const v3, 0x7f09020c

    .line 111
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/ZoomController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v2, p1}, Lcom/lge/camera/components/ZoomBar;->showControl(Z)V

    .line 117
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/ZoomController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 118
    .local v1, zoomText:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 119
    if-eqz p1, :cond_4

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :cond_2
    if-nez p1, :cond_3

    .line 122
    invoke-virtual {p0}, Lcom/lge/camera/controller/ZoomController;->endZoomInOut()Z

    .line 124
    :cond_3
    const v2, 0x7f090213

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/ZoomController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, zoomProgress:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 126
    check-cast v0, Lcom/lge/camera/components/ZoomProgressBar;

    .end local v0           #zoomProgress:Landroid/view/View;
    invoke-virtual {p0}, Lcom/lge/camera/controller/ZoomController;->getCursorMaxStep()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/ZoomProgressBar;->initZoomProgressBar(I)V

    goto :goto_0

    .line 119
    :cond_4
    const/4 v2, 0x4

    goto :goto_1
.end method

.method public showSettingZoomControl(Z)V
    .locals 1
    .parameter "useAnim"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    const v0, 0x7f0901c2

    invoke-super {p0, v0, p1}, Lcom/lge/camera/controller/BarController;->showSettingBarControl(IZ)V

    goto :goto_0
.end method

.method public updateAllBars(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/lge/camera/controller/ZoomController;->getCursorMaxStep()I

    move-result v0

    .line 185
    .local v0, maxValue:I
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v1, v0}, Lcom/lge/camera/components/ZoomBar;->setCursorMaxStep(I)V

    .line 188
    iget-object v1, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v1, p1}, Lcom/lge/camera/components/ZoomBar;->setBarValue(I)V

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/ZoomController;->mSettingZoomBar:Lcom/lge/camera/components/SettingZoomBar;

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/lge/camera/controller/ZoomController;->mSettingZoomBar:Lcom/lge/camera/components/SettingZoomBar;

    invoke-virtual {v1, v0}, Lcom/lge/camera/components/SettingZoomBar;->setCursorMaxStep(I)V

    .line 192
    iget-object v1, p0, Lcom/lge/camera/controller/ZoomController;->mSettingZoomBar:Lcom/lge/camera/components/SettingZoomBar;

    invoke-virtual {v1, p1}, Lcom/lge/camera/components/SettingZoomBar;->setBarValue(I)V

    .line 194
    :cond_1
    return-void
.end method
