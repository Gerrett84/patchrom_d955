.class Lcom/lge/camera/command/setting/SetCameraShotMode$1;
.super Ljava/lang/Object;
.source "SetCameraShotMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraShotMode;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

.field final synthetic val$params:Landroid/hardware/Camera$Parameters;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraShotMode;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    iput-object p2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$1;->val$params:Landroid/hardware/Camera$Parameters;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetCameraShotMode"

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$1;->val$params:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    return-void
.end method
