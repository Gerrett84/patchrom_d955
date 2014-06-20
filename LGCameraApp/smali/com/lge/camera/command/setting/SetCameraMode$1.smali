.class Lcom/lge/camera/command/setting/SetCameraMode$1;
.super Ljava/lang/Object;
.source "SetCameraMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraMode;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraMode;

.field final synthetic val$allSetting:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraMode;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iput-boolean p2, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->val$allSetting:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 34
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 35
    iget-boolean v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->val$allSetting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isStorageFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "StorageControllerLockKey"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setMainButtonEnable(Ljava/lang/String;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_swap"

    invoke-interface {v0, v1, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 39
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 40
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_zoom"

    invoke-interface {v0, v1, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 41
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_flash"

    invoke-interface {v0, v1, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 42
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_focus"

    invoke-interface {v0, v1, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 43
    const-string v0, "shotmode_dual_camera"

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_brightness"

    invoke-interface {v0, v1, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_beautyshot"

    invoke-interface {v0, v1, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_live_effect"

    invoke-interface {v0, v1, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 62
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_video_record_mode"

    invoke-interface {v0, v1, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 86
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerAllMenuIcons()V

    .line 87
    return-void

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "shotmode_timemachine"

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3, v4}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 54
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    goto :goto_0

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_zoom"

    invoke-interface {v0, v1, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto :goto_0

    .line 64
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->checkVoiceShutterEnable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 66
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_voiceshutter"

    invoke-interface {v0, v1, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 70
    :goto_2
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 71
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    invoke-interface {v0, v1, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 74
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSettingControllerVisible()Z

    move-result v0

    if-nez v0, :cond_7

    .line 75
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 76
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 79
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 80
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.SelectDuration"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->applyCameraChange()V

    .line 84
    const-string v0, "CameraApp"

    const-string v1, "SetCameraMode-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 68
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_voiceshutter"

    invoke-interface {v0, v1, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto :goto_2
.end method
