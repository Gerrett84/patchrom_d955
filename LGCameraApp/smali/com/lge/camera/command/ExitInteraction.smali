.class public Lcom/lge/camera/command/ExitInteraction;
.super Lcom/lge/camera/command/Command;
.source "ExitInteraction.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 10
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 14
    const-string v0, "CameraApp"

    const-string v1, "ExitInteraction"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/lge/camera/command/ExitInteraction;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    :goto_0
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->resetScreenTimeout()V

    goto :goto_0
.end method
