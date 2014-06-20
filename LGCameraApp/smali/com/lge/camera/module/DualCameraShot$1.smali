.class Lcom/lge/camera/module/DualCameraShot$1;
.super Ljava/lang/Object;
.source "DualCameraShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/DualCameraShot;->takePicture()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/DualCameraShot;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/DualCameraShot;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lge/camera/module/DualCameraShot$1;->this$0:Lcom/lge/camera/module/DualCameraShot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/camera/module/DualCameraShot$1;->this$0:Lcom/lge/camera/module/DualCameraShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/lge/camera/module/DualCameraShot$1;->this$0:Lcom/lge/camera/module/DualCameraShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setMainButtonDisable()V

    .line 49
    invoke-static {}, Lcom/lge/camera/platform/PlatformDevice;->DualRec_takePreviewFrame()V

    .line 51
    iget-object v0, p0, Lcom/lge/camera/module/DualCameraShot$1;->this$0:Lcom/lge/camera/module/DualCameraShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->playShutterSound()V

    .line 52
    iget-object v0, p0, Lcom/lge/camera/module/DualCameraShot$1;->this$0:Lcom/lge/camera/module/DualCameraShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.SnapshotEffect"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/lge/camera/module/DualCameraShot$1;->this$0:Lcom/lge/camera/module/DualCameraShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 55
    iget-object v0, p0, Lcom/lge/camera/module/DualCameraShot$1;->this$0:Lcom/lge/camera/module/DualCameraShot;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 56
    return-void
.end method
