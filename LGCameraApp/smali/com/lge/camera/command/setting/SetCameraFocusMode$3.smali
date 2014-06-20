.class Lcom/lge/camera/command/setting/SetCameraFocusMode$3;
.super Ljava/lang/Object;
.source "SetCameraFocusMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraFocusMode;->setFocusAuto(Landroid/hardware/Camera$Parameters;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

.field final synthetic val$allSetting:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraFocusMode;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iput-boolean p2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->val$allSetting:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isfacePreviewInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "off"

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_smart_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->stopFaceDetection()V

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, shotMode:Ljava/lang/String;
    const-string v1, "shotmode_normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "not found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->releaseAllEngine()V

    .line 154
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->removePreviewCallback()V

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->setFocusRectangleInitialize()V

    .line 158
    iget-boolean v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->val$allSetting:Z

    if-eqz v1, :cond_3

    .line 159
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    #calls: Lcom/lge/camera/command/setting/SetCameraFocusMode;->showFocusForSetFocusMode()V
    invoke-static {v1}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->access$000(Lcom/lge/camera/command/setting/SetCameraFocusMode;)V

    .line 161
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->showManualFocusController(Z)V

    .line 162
    return-void
.end method
