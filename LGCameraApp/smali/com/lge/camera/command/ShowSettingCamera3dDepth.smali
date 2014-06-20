.class public Lcom/lge/camera/command/ShowSettingCamera3dDepth;
.super Lcom/lge/camera/command/Command;
.source "ShowSettingCamera3dDepth.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 8
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->showSetting3dDepthControl(Z)V

    .line 13
    return-void
.end method
