.class public Lcom/lge/camera/command/SelectVideoLength;
.super Lcom/lge/camera/command/Command;
.source "SelectVideoLength.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 11
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 15
    const-string v0, "CameraApp"

    const-string v1, "SelectVideoLength"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->showDialogPopup(I)V

    .line 17
    return-void
.end method
