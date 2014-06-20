.class public Lcom/lge/camera/command/ShowResetDialog;
.super Lcom/lge/camera/command/Command;
.source "ShowResetDialog.java"


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

    const-string v1, "ShowResetDialog is EXECUTE !!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->showDialogPopup(I)V

    .line 17
    return-void
.end method
