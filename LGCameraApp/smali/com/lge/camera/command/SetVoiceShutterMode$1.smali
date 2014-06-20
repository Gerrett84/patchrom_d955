.class Lcom/lge/camera/command/SetVoiceShutterMode$1;
.super Ljava/lang/Object;
.source "SetVoiceShutterMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/SetVoiceShutterMode;->execute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/SetVoiceShutterMode;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/SetVoiceShutterMode;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lge/camera/command/SetVoiceShutterMode$1;->this$0:Lcom/lge/camera/command/SetVoiceShutterMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/camera/command/SetVoiceShutterMode$1;->this$0:Lcom/lge/camera/command/SetVoiceShutterMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/SetVoiceShutterMode$1;->this$0:Lcom/lge/camera/command/SetVoiceShutterMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/SetVoiceShutterMode$1;->this$0:Lcom/lge/camera/command/SetVoiceShutterMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/lge/camera/command/SetVoiceShutterMode$1;->this$0:Lcom/lge/camera/command/SetVoiceShutterMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setAudioRecogEngineStart()V

    goto :goto_0
.end method
