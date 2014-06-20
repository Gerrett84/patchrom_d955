.class public Lcom/lge/camera/command/setting/SetBrightness;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetBrightness.java"


# static fields
.field private static final VALUE_ERROR:I = -0x80000000


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 17
    return-void
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetBrightness;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 7
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/high16 v6, -0x8000

    .line 25
    const-string v4, "CameraApp"

    const-string v5, "SetBrightness"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    .line 27
    check-cast v0, Landroid/os/Bundle;

    .line 28
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "mValue"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 30
    .local v2, value:I
    if-ne v2, v6, :cond_1

    .line 32
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_brightness"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, stringValue:Ljava/lang/String;
    const-string v4, "not found"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    const-string v4, "CameraApp"

    const-string v5, "Need to check string whether it is convertable or not."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .end local v1           #stringValue:Ljava/lang/String;
    :goto_0
    return-void

    .line 38
    .restart local v1       #stringValue:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_brightness"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 41
    .end local v1           #stringValue:Ljava/lang/String;
    :cond_1
    if-gez v2, :cond_2

    .line 42
    const/4 v2, 0x0

    .line 45
    :cond_2
    invoke-static {v2, p1}, Lcom/lge/camera/util/Common;->scaleParameter(ILandroid/hardware/Camera$Parameters;)I

    move-result v3

    .line 47
    .local v3, valueForParameter:I
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "brightness value to parameter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    goto :goto_0
.end method
