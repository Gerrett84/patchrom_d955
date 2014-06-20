.class public Lcom/lge/camera/command/setting/SetZoom;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetZoom.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 16
    return-void
.end method

.method private scaleParameter(ILandroid/hardware/Camera$Parameters;)I
    .locals 6
    .parameter "value"
    .parameter "params"

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, max:F
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v3

    int-to-float v1, v3

    .line 70
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    .line 71
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v1}, Lcom/lge/camera/ControllerFunction;->setZoomMaxValue(F)V

    .line 76
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getZoomCursorMaxStep()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v1, v3

    .line 78
    .local v0, compensationFactor:F
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compensationFactor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", max = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    int-to-float v3, p1

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 80
    .local v2, scaledValue:I
    int-to-float v3, v2

    cmpl-float v3, v3, v1

    if-lez v3, :cond_0

    .line 81
    float-to-int v2, v1

    .line 83
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v4, v3}, Lcom/lge/camera/ControllerFunction;->setZoomRatio(F)V

    .line 84
    return v2

    .line 73
    .end local v0           #compensationFactor:F
    .end local v2           #scaledValue:I
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getZoomMaxValue()F

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 20
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetZoom;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 10
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v9, 0x1

    .line 25
    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 26
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "mValue"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 28
    .local v1, mZoomValue:I
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetZoom;->checkMediator()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    if-nez v1, :cond_3

    .line 34
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_zoom"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, stringValue:Ljava/lang/String;
    const-string v6, "not found"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 36
    const-string v6, "CameraApp"

    const-string v7, "Need to check string whether it is convertable or not."

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_2
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_zoom"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 42
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getZoomCursorMaxStep()I

    move-result v5

    .line 43
    .local v5, zoomCursorMaxStep:I
    const/4 v2, 0x0

    .line 44
    .local v2, max:I
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    .line 46
    const/16 v6, 0x5a

    if-ne v5, v6, :cond_3

    if-lez v2, :cond_3

    .line 47
    mul-int/lit8 v6, v1, 0x5a

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 51
    .end local v2           #max:I
    .end local v3           #stringValue:Ljava/lang/String;
    .end local v5           #zoomCursorMaxStep:I
    :cond_3
    if-gez v1, :cond_4

    .line 52
    const/4 v1, 0x0

    .line 54
    :cond_4
    invoke-direct {p0, v1, p1}, Lcom/lge/camera/command/setting/SetZoom;->scaleParameter(ILandroid/hardware/Camera$Parameters;)I

    move-result v4

    .line 55
    .local v4, valueOfParameter:I
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "zoom value to parameter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 58
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v6

    if-ne v6, v9, :cond_5

    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getAudiozoomStart()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 60
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v9, v4}, Lcom/lge/camera/ControllerFunction;->updateAudiozoom(ZI)V

    .line 63
    :cond_5
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "com.lge.camera.command.setting.SetSuperZoom"

    invoke-interface {v6, v7, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
