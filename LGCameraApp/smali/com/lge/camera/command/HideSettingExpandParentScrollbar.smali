.class public Lcom/lge/camera/command/HideSettingExpandParentScrollbar;
.super Lcom/lge/camera/command/Command;
.source "HideSettingExpandParentScrollbar.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 12
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/HideSettingExpandParentScrollbar;->execute(Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 2
    .parameter "arg"

    .prologue
    .line 20
    const-string v0, "CameraApp"

    const-string v1, "HideSettingExpandParentScrollbar  !!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->hideParentScrollbar()V

    .line 22
    return-void
.end method
