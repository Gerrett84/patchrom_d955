.class Lcom/lge/camera/command/setting/SetSaveDirectionMode$1;
.super Ljava/lang/Object;
.source "SetSaveDirectionMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetSaveDirectionMode;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetSaveDirectionMode;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetSaveDirectionMode;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetSaveDirectionMode$1;->this$0:Lcom/lge/camera/command/setting/SetSaveDirectionMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSaveDirectionMode$1;->this$0:Lcom/lge/camera/command/setting/SetSaveDirectionMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSaveDirectionMode$1;->this$0:Lcom/lge/camera/command/setting/SetSaveDirectionMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSaveDirectionMode$1;->this$0:Lcom/lge/camera/command/setting/SetSaveDirectionMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSaveDirectionMode$1;->this$0:Lcom/lge/camera/command/setting/SetSaveDirectionMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSaveDirectionMode$1;->this$0:Lcom/lge/camera/command/setting/SetSaveDirectionMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showFocus()Z

    goto :goto_0
.end method
