.class public Lcom/lge/camera/command/setting/SetVideoSelectMemory;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetVideoSelectMemory.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 10
    return-void
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetVideoSelectMemory;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 0
    .parameter "parameters"
    .parameter "arg"

    .prologue
    .line 18
    return-void
.end method
