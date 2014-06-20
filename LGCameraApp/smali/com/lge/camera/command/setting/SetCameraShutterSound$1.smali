.class Lcom/lge/camera/command/setting/SetCameraShutterSound$1;
.super Ljava/lang/Object;
.source "SetCameraShutterSound.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraShutterSound;->onExecuteAlone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraShutterSound;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraShutterSound;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraShutterSound$1;->this$0:Lcom/lge/camera/command/setting/SetCameraShutterSound;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShutterSound$1;->this$0:Lcom/lge/camera/command/setting/SetCameraShutterSound;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShutterSound$1;->this$0:Lcom/lge/camera/command/setting/SetCameraShutterSound;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->playShutterSound()V

    .line 46
    return-void
.end method
