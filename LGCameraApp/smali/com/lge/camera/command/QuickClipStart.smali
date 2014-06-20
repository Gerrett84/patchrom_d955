.class public Lcom/lge/camera/command/QuickClipStart;
.super Lcom/lge/camera/command/Command;
.source "QuickClipStart.java"


# static fields
.field private static final STATE_CONTINUOUS_TAKING:I = 0x4

.field private static final STATE_DISABLE:I = 0x6

.field private static final STATE_FREE_PANO_TAKING:I = 0x3

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_PANO_TAKING:I = 0x2

.field private static final STATE_PICTURE_TAKING:I = 0x1

.field private static final STATE_VIDEO_RECORDING:I = 0x5


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 19
    return-void
.end method

.method private checkQuickClip()I
    .locals 4

    .prologue
    .line 203
    const-string v1, "CameraApp"

    const-string v2, "checkQuickClip()-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x0

    .line 206
    .local v0, state:I
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->checkPreviewPanelController()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPreviewOnGoing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isGalleryLaunching()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    :cond_0
    const/4 v0, 0x6

    .line 219
    :cond_1
    :goto_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v1, "CameraApp"

    const-string v2, "checkQuickClip()-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return v0

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_3

    .line 213
    invoke-direct {p0}, Lcom/lge/camera/command/QuickClipStart;->checkQuickClipForCamera()I

    move-result v0

    goto :goto_0

    .line 214
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 215
    invoke-direct {p0}, Lcom/lge/camera/command/QuickClipStart;->checkQuickClipForCamcorder()I

    move-result v0

    goto :goto_0
.end method

.method private checkQuickClipForCamcorder()I
    .locals 3

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 260
    .local v0, state:I
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 262
    const/4 v0, 0x5

    .line 264
    :cond_0
    return v0
.end method

.method private checkQuickClipForCamera()I
    .locals 4

    .prologue
    .line 233
    const-string v1, "CameraApp"

    const-string v2, "checkQuickClipForCamera()-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, state:I
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_panorama"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPanoramaStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const/4 v0, 0x2

    .line 252
    :cond_0
    :goto_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v1, "CameraApp"

    const-string v2, "checkQuickClipForCamera()-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return v0

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_free_panorama"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v1

    if-lez v1, :cond_0

    .line 242
    const/4 v0, 0x2

    goto :goto_0

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_continuous"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isCurrnetModuleRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const/4 v0, 0x4

    goto :goto_0

    .line 248
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clearViewForQuickClipStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEnteringViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->showQuickMenuEnteringGuide(Z)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionSettingControllerShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->removeQuickFunctionSettingView()V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionDragControllerVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setMainButtonVisible(Z)V

    .line 188
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->hideQuickFunctionDragController(Z)V

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setMainButtonVisible(Z)V

    .line 195
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->removeSettingViewAll()V

    .line 200
    :cond_4
    :goto_0
    return-void

    .line 196
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 198
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    goto :goto_0
.end method

.method private returnToQuickClip()V
    .locals 3

    .prologue
    .line 75
    const-string v1, "CameraApp"

    const-string v2, "returnToQuickClip() - start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->removeScheduledAllCommand()V

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.QuickClip.action.internal.RETURN_TO_QUICKMEMO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    const/4 v1, 0x1

    sput-boolean v1, Lcom/lge/camera/util/AppControlUtil;->ENABLE_QUICK_CLIP_KEY:Z

    .line 80
    const-string v1, "CameraApp"

    const-string v2, "returnToQuickClip() - end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private startQuickClip()V
    .locals 3

    .prologue
    .line 58
    const-string v1, "CameraApp"

    const-string v2, "startQuickClip() - start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->removeScheduledAllCommand()V

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.QuickClip.action.START_QUICKCLIP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    const/4 v1, 0x0

    sput-boolean v1, Lcom/lge/camera/util/AppControlUtil;->ENABLE_QUICK_CLIP_KEY:Z

    .line 63
    const-string v1, "CameraApp"

    const-string v2, "startQuickClip() - end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private startQuickClipForCleanView()V
    .locals 11

    .prologue
    const v10, 0x7f09017c

    const/4 v9, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 84
    const-string v5, "CameraApp"

    const-string v6, "startQuickClipForCleanView()-start"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v3, 0x0

    .line 87
    .local v3, state:I
    invoke-direct {p0}, Lcom/lge/camera/command/QuickClipStart;->checkQuickClip()I

    move-result v3

    .line 88
    if-nez v3, :cond_6

    .line 89
    const-wide/16 v0, 0xc8

    .line 91
    .local v0, delay:J
    invoke-direct {p0}, Lcom/lge/camera/command/QuickClipStart;->clearViewForQuickClipStart()V

    .line 94
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->deleteProgressDialog()V

    .line 97
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isRotateDialogVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 98
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->onDismissRotateDialog()V

    .line 102
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->hideForPhotoStory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    const-wide/16 v5, 0xc8

    add-long/2addr v0, v5

    .line 106
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v5

    if-nez v5, :cond_5

    .line 108
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 109
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->setFocusRectangleInitialize()V

    .line 110
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 111
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 112
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->unregisterCAFCallback()V

    .line 114
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->stopFaceDetection()V

    .line 122
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 123
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.HideLiveEffectSubMenuDrawer"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 124
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-wide/16 v6, 0x1388

    invoke-interface {v5, v8, v6, v7, v8}, Lcom/lge/camera/ControllerFunction;->showBubblePopupVisibility(IJZ)V

    .line 127
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->hideIndicatorController()V

    .line 133
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->hidePreviewPanelController()V

    .line 136
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerVisible(Z)V

    .line 139
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v6, 0x64

    invoke-interface {v5, v6, v9, v8}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 142
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->showBeautyshotController(Z)V

    .line 144
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isOptionMenuShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 145
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->hideOptionMenu()V

    .line 146
    const-wide/16 v5, 0x64

    add-long/2addr v0, v5

    .line 151
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->removeScheduledAllCommand()V

    .line 152
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.QuickClipPhotoStory"

    invoke-interface {v5, v6, v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 153
    sput-boolean v8, Lcom/lge/camera/util/AppControlUtil;->ENABLE_QUICK_CLIP_KEY:Z

    .line 174
    .end local v0           #delay:J
    :goto_1
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v5, "CameraApp"

    const-string v6, "startQuickClipForCleanView()-end"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void

    .line 117
    .restart local v0       #delay:J
    :cond_5
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->needProgressBar()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 118
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 155
    .end local v0           #delay:J
    :cond_6
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 160
    :pswitch_0
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0b032a

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, qMemoToastMsg:Ljava/lang/String;
    const/4 v4, 0x0

    .line 162
    .local v4, toastMsg:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isDomesticModel()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isJapanModel()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 163
    :cond_7
    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0b032b

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 167
    :goto_2
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v4}, Lcom/lge/camera/ControllerFunction;->toast(Ljava/lang/String;)V

    goto :goto_1

    .line 165
    :cond_8
    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0b032c

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private stopQuickClip()V
    .locals 3

    .prologue
    .line 67
    const-string v1, "CameraApp"

    const-string v2, "stopQuickClip() - start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.QuickClip.action.STOP_QUICKCLIP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    const/4 v1, 0x1

    sput-boolean v1, Lcom/lge/camera/util/AppControlUtil;->ENABLE_QUICK_CLIP_KEY:Z

    .line 71
    const-string v1, "CameraApp"

    const-string v2, "stopQuickClip() - end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/QuickClipStart;->execute(Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 4
    .parameter "arg"

    .prologue
    .line 28
    const-string v1, "CameraApp"

    const-string v2, "QuickClipStart executed - start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/AppControlUtil;->getQuickClipRunType(Landroid/app/Activity;)I

    move-result v0

    .line 35
    .local v0, nRunType:I
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nRunType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    packed-switch v0, :pswitch_data_0

    .line 52
    :goto_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Common.ENABLE_QUICK_CLIP_KEY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/lge/camera/util/AppControlUtil;->ENABLE_QUICK_CLIP_KEY:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .end local v0           #nRunType:I
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "QuickClipStart executed - end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void

    .line 38
    .restart local v0       #nRunType:I
    :pswitch_0
    invoke-direct {p0}, Lcom/lge/camera/command/QuickClipStart;->startQuickClipForCleanView()V

    goto :goto_0

    .line 41
    :pswitch_1
    invoke-direct {p0}, Lcom/lge/camera/command/QuickClipStart;->startQuickClip()V

    goto :goto_0

    .line 44
    :pswitch_2
    invoke-direct {p0}, Lcom/lge/camera/command/QuickClipStart;->stopQuickClip()V

    goto :goto_0

    .line 47
    :pswitch_3
    invoke-direct {p0}, Lcom/lge/camera/command/QuickClipStart;->returnToQuickClip()V

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
