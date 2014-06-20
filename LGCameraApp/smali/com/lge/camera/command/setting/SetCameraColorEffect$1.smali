.class Lcom/lge/camera/command/setting/SetCameraColorEffect$1;
.super Ljava/lang/Object;
.source "SetCameraColorEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraColorEffect;->checkFocusMode(Landroid/hardware/Camera$Parameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraColorEffect;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraColorEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect$1;->this$0:Lcom/lge/camera/command/setting/SetCameraColorEffect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect$1;->this$0:Lcom/lge/camera/command/setting/SetCameraColorEffect;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect$1;->this$0:Lcom/lge/camera/command/setting/SetCameraColorEffect;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showFocus()Z

    .line 87
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect$1;->this$0:Lcom/lge/camera/command/setting/SetCameraColorEffect;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateFocusIndicator()V

    .line 88
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect$1;->this$0:Lcom/lge/camera/command/setting/SetCameraColorEffect;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->showManualFocusController(Z)V

    .line 89
    return-void
.end method
