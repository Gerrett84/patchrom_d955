.class Lcom/lge/camera/command/SetVoiceShutterMode$2;
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
    .line 91
    iput-object p1, p0, Lcom/lge/camera/command/SetVoiceShutterMode$2;->this$0:Lcom/lge/camera/command/SetVoiceShutterMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/lge/camera/command/SetVoiceShutterMode$2;->this$0:Lcom/lge/camera/command/SetVoiceShutterMode;

    invoke-virtual {v0}, Lcom/lge/camera/command/SetVoiceShutterMode;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/lge/camera/command/SetVoiceShutterMode$2;->this$0:Lcom/lge/camera/command/SetVoiceShutterMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/lge/camera/command/SetVoiceShutterMode$2;->this$0:Lcom/lge/camera/command/SetVoiceShutterMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/lge/camera/command/SetVoiceShutterMode$2;->this$0:Lcom/lge/camera/command/SetVoiceShutterMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->updateVoiceShutterIndicator(Z)V

    .line 97
    iget-object v0, p0, Lcom/lge/camera/command/SetVoiceShutterMode$2;->this$0:Lcom/lge/camera/command/SetVoiceShutterMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/SetVoiceShutterMode$2;->this$0:Lcom/lge/camera/command/SetVoiceShutterMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/command/SetVoiceShutterMode$2;->this$0:Lcom/lge/camera/command/SetVoiceShutterMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->checkVoiceShutterEnable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/SetVoiceShutterMode$2;->this$0:Lcom/lge/camera/command/SetVoiceShutterMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_voiceshutter"

    invoke-interface {v0, v1, v2, v2}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/SetVoiceShutterMode$2;->this$0:Lcom/lge/camera/command/SetVoiceShutterMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_voiceshutter"

    invoke-interface {v0, v1, v3, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method
