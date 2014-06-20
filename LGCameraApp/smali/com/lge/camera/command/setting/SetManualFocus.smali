.class public Lcom/lge/camera/command/setting/SetManualFocus;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetManualFocus.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 14
    return-void
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetManualFocus;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 19
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 6
    .parameter "parameters"
    .parameter "arg"

    .prologue
    .line 22
    const-string v3, "CameraApp"

    const-string v4, "SetManualFocus"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetManualFocus;->checkMediator()Z

    move-result v3

    if-nez v3, :cond_0

    .line 24
    const-string v3, "CameraApp"

    const-string v4, "Mediator is null."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    .line 27
    check-cast v0, Landroid/os/Bundle;

    .line 28
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "mValue"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 29
    .local v1, value:I
    if-nez v1, :cond_1

    .line 30
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getManualFocusValue()I

    move-result v1

    .line 32
    :cond_1
    if-gez v1, :cond_2

    .line 33
    const/4 v1, 0x0

    .line 35
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v1}, Lcom/lge/camera/ControllerFunction;->setManualFocusValue(I)V

    .line 36
    invoke-virtual {p0, v1, p1}, Lcom/lge/camera/command/setting/SetManualFocus;->scaleParameter(ILandroid/hardware/Camera$Parameters;)I

    move-result v2

    .line 38
    .local v2, valueForParameter:I
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetManualFocus value to parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v3, "manualfocus_step"

    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public scaleParameter(ILandroid/hardware/Camera$Parameters;)I
    .locals 4
    .parameter "value"
    .parameter "params"

    .prologue
    .line 43
    const/4 v2, 0x0

    .line 44
    .local v2, scaledValue:I
    if-eqz p2, :cond_0

    .line 46
    const/high16 v1, 0x4270

    .line 47
    .local v1, max:F
    const/high16 v3, 0x4270

    div-float v0, v1, v3

    .line 48
    .local v0, compensationFactor:F
    int-to-float v3, p1

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 50
    .end local v0           #compensationFactor:F
    .end local v1           #max:F
    :cond_0
    return v2
.end method
