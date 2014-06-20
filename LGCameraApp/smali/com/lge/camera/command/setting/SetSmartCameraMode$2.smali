.class Lcom/lge/camera/command/setting/SetSmartCameraMode$2;
.super Ljava/lang/Object;
.source "SetSmartCameraMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetSmartCameraMode;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

.field final synthetic val$allSetting:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetSmartCameraMode;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$2;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    iput-boolean p2, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$2;->val$allSetting:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$2;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    #calls: Lcom/lge/camera/command/setting/SetSmartCameraMode;->checkMediator()Z
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetSmartCameraMode;->access$100(Lcom/lge/camera/command/setting/SetSmartCameraMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$2;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$2;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$2;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$2;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    #getter for: Lcom/lge/camera/command/setting/SetSmartCameraMode;->mSmartModeValueOn:Z
    invoke-static {v1}, Lcom/lge/camera/command/setting/SetSmartCameraMode;->access$000(Lcom/lge/camera/command/setting/SetSmartCameraMode;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMode(Z)V

    .line 112
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$2;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$2;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    #getter for: Lcom/lge/camera/command/setting/SetSmartCameraMode;->mSmartModeValueOn:Z
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetSmartCameraMode;->access$000(Lcom/lge/camera/command/setting/SetSmartCameraMode;)Z

    move-result v2

    iget-boolean v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$2;->val$allSetting:Z

    if-nez v0, :cond_1

    const/16 v0, 0x12c

    :goto_0
    #calls: Lcom/lge/camera/command/setting/SetSmartCameraMode;->setSmartMode(ZI)V
    invoke-static {v1, v2, v0}, Lcom/lge/camera/command/setting/SetSmartCameraMode;->access$200(Lcom/lge/camera/command/setting/SetSmartCameraMode;ZI)V

    .line 115
    :cond_0
    return-void

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
