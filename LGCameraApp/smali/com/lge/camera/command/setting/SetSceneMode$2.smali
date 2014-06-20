.class Lcom/lge/camera/command/setting/SetSceneMode$2;
.super Ljava/lang/Object;
.source "SetSceneMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetSceneMode;->onExecuteAlone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetSceneMode;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetSceneMode;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 166
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 167
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_scene_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, currentSceneMode:Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 169
    const-string v1, "shotmode_normal"

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    #getter for: Lcom/lge/camera/command/setting/SetSceneMode;->oldSceneModeValue:Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/camera/command/setting/SetSceneMode;->access$000(Lcom/lge/camera/command/setting/SetSceneMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Smart shutter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Smart shutter"

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    #getter for: Lcom/lge/camera/command/setting/SetSceneMode;->oldSceneModeValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/camera/command/setting/SetSceneMode;->access$000(Lcom/lge/camera/command/setting/SetSceneMode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Smart shutter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5, v4}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 177
    const-string v1, "Smart shutter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 179
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0b0242

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->toast(Ljava/lang/String;)V

    .line 193
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    #calls: Lcom/lge/camera/command/setting/SetSceneMode;->showHelpGuideDialog(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/lge/camera/command/setting/SetSceneMode;->access$200(Lcom/lge/camera/command/setting/SetSceneMode;Ljava/lang/String;)Z

    .line 195
    :cond_2
    return-void

    .line 183
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    #getter for: Lcom/lge/camera/command/setting/SetSceneMode;->oldSceneModeValue:Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/camera/command/setting/SetSceneMode;->access$000(Lcom/lge/camera/command/setting/SetSceneMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "night"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "night"

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    #getter for: Lcom/lge/camera/command/setting/SetSceneMode;->oldSceneModeValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/camera/command/setting/SetSceneMode;->access$000(Lcom/lge/camera/command/setting/SetSceneMode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "night"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_4
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    #getter for: Lcom/lge/camera/command/setting/SetSceneMode;->noNeedRestartPreview:Z
    invoke-static {v1}, Lcom/lge/camera/command/setting/SetSceneMode;->access$100(Lcom/lge/camera/command/setting/SetSceneMode;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    iget-object v1, v1, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5, v4}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    goto :goto_0
.end method
