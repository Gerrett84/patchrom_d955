.class Lcom/lge/camera/command/setting/SetLiveEffect$1;
.super Ljava/lang/Object;
.source "SetLiveEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetLiveEffect;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetLiveEffect;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetLiveEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 94
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_live_effect"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v0

    .line 95
    .local v0, mMenuIndex:I
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 96
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_live_effect"

    const-string v4, "off"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "off"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setLiveEffect(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0, v5}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerMenuIcon(II)V

    .line 101
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "setting rollback to off. no Previewing now"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_1
    :goto_0
    return-void

    .line 104
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v1

    .line 105
    .local v1, video_state:I
    if-eqz v1, :cond_3

    .line 106
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_live_effect"

    const-string v4, "off"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "off"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setLiveEffect(Ljava/lang/String;)V

    .line 108
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting rollback to off. video is not idle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0, v5}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerMenuIcon(II)V

    goto :goto_0

    .line 114
    :cond_3
    const-string v2, "CameraApp"

    const-string v3, "resetting EffectParameter in previewing!!!! "

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->updateEffectSelection()Z

    .line 118
    const-string v2, "off"

    iget-object v3, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    iget-object v3, v3, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_live_effect"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 119
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HideLiveEffectSubMenuDrawer"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 121
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isSmartZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 122
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->hideSmartZoomFocusView()V

    .line 125
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->updateThumbnailButtonVisibility()V

    goto/16 :goto_0
.end method
