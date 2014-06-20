.class public Lcom/lge/camera/module/TimerShot;
.super Lcom/lge/camera/module/Module;
.source "TimerShot.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/lge/camera/module/Module;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 9
    return-void
.end method


# virtual methods
.method public checkCurrentShotMode()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public doAfterCapture()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public stopByUserAction()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public takePicture()Z
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    return v0
.end method
