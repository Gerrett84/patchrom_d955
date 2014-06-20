.class Lcom/lge/camera/command/setting/SetCameraFocusMode$2;
.super Ljava/lang/Object;
.source "SetCameraFocusMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraFocusMode;->setFocusFaceTracking(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Z)V
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
    .line 101
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iput-boolean p2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;->val$allSetting:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->facePreviewInitController()V

    .line 106
    iget-boolean v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;->val$allSetting:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useFaceDetectionFromHal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->startFaceDetection()V

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setFocusRectangleInitialize()V

    .line 110
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->showManualFocusController(Z)V

    .line 111
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 113
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isReadyEngineProcessor()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPreviewOnGoing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setEngineProcessor()V

    .line 116
    :cond_2
    return-void
.end method
