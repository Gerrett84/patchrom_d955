.class public Lcom/lge/camera/command/setting/SetOlaMainBeautyShot;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetOlaMainBeautyShot.java"


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


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetOlaMainBeautyShot;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 5
    .parameter "parameters"
    .parameter "arg"

    .prologue
    .line 25
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v2

    instance-of v2, v2, Lcom/lge/camera/module/MainBeautyShot;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v2

    const-string v3, "FaceBeauty"

    invoke-virtual {v2, v3}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    :goto_0
    return-void

    .line 30
    :cond_0
    const-string v2, "dual-recorder"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 31
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "MainBeautyShot"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setModule(Ljava/lang/String;)V

    .line 32
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getFaceBeauty()Lcom/lge/olaworks/library/FaceBeauty;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/olaworks/library/EngineProcessor;->setEngine(Lcom/lge/olaworks/library/BaseEngine;)Lcom/lge/olaworks/library/BaseEngine;

    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, value:I
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_beautyshot"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 36
    .local v0, preference:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_1

    .line 37
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_beautyshot"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 38
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beautyshot value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_1
    if-gez v1, :cond_2

    .line 41
    const/4 v1, 0x0

    .line 43
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->setFaceBeutyShotParameter(I)V

    goto :goto_0
.end method
