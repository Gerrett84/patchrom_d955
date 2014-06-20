.class Lcom/lge/camera/controller/QuickFunctionController$4;
.super Ljava/lang/Object;
.source "QuickFunctionController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/QuickFunctionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionController;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkQFLitemAndClearSubMenu(Ljava/lang/String;)Z
    .locals 7
    .parameter "prefKey"

    .prologue
    const/16 v6, 0x15

    const/16 v5, 0x10

    const/4 v4, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 381
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v3, p1}, Lcom/lge/camera/controller/QuickFunctionController;->isEqualPreferenceAndSubmenu(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 382
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 384
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 385
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 421
    :cond_1
    :goto_0
    return v1

    .line 388
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 389
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 390
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HideQuickFunctionSettingMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    if-eqz v3, :cond_6

    .line 393
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 394
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 395
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->setClearFocusAnimation()V

    .line 396
    const-string v2, "face_tracking"

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_focus"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "manual"

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_focus"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 398
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showFocus()Z

    goto :goto_0

    .line 404
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    if-ne v3, v5, :cond_7

    .line 406
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v1}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 407
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 408
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "showAll"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 409
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v1, v3, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_6
    :goto_1
    move v1, v2

    .line 421
    goto/16 :goto_0

    .line 411
    :cond_7
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    if-ne v3, v6, :cond_8

    .line 412
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v1}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 413
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 414
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v1, "immediately"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 415
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HideQuickFunctionSettingMenu"

    invoke-interface {v1, v3, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 416
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_8
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v3, 0x12

    if-ne v1, v3, :cond_6

    .line 418
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    goto :goto_1
.end method

.method private clearPIPRecordingUI()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualCameraActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 429
    :cond_1
    return-void
.end method

.method private selectSwapCamera(ILcom/lge/camera/setting/ListPreference;)V
    .locals 6
    .parameter "index"
    .parameter "pref"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 305
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v1, v5}, Lcom/lge/camera/controller/QuickFunctionController;->setCheckToggleTime(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    const-string v1, "CameraApp"

    const-string v2, "SwapCameraPrepared-start, liveeffect active"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v2, 0x66

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->effectRecorderStopPreviewByCallFrom(I)V

    .line 310
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->hideSmartZoomFocusView()V

    .line 313
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J
    invoke-static {v1, v2, v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$502(Lcom/lge/camera/controller/QuickFunctionController;J)J

    .line 315
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v1, v5}, Lcom/lge/camera/controller/QuickFunctionController;->setQuickFunctionMenuForcedDisable(Z)V

    .line 316
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v1, v4, v4}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuEnabled(ZZ)V

    .line 317
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 318
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 339
    :goto_0
    return-void

    .line 322
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "SwapCameraPrepared-start, go to swap"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_1

    .line 324
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 325
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 326
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "immediately"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 327
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.HideQuickFunctionSettingMenu"

    invoke-interface {v1, v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v1, v5}, Lcom/lge/camera/controller/QuickFunctionController;->setQuickFunctionMenuForcedDisable(Z)V

    .line 330
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v1, v4, v4}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuEnabled(ZZ)V

    .line 331
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 332
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 334
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p2}, Lcom/lge/camera/setting/ListPreference;->getCommand()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 335
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J
    invoke-static {v1, v2, v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$502(Lcom/lge/camera/controller/QuickFunctionController;J)J

    goto :goto_0

    .line 338
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v1, p1, v4}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuSelected(IZ)V

    goto :goto_0
.end method

.method private useToggleButton(ILcom/lge/camera/setting/ListPreference;Ljava/lang/String;)V
    .locals 14
    .parameter "index"
    .parameter "pref"
    .parameter "prefKey"

    .prologue
    .line 343
    iget-object v8, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v8, v8, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 344
    iget-object v8, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v8, v8, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 345
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "QFL checkTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J
    invoke-static {v12}, Lcom/lge/camera/controller/QuickFunctionController;->access$500(Lcom/lge/camera/controller/QuickFunctionController;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v8, "key_time_machine"

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v2, 0x0

    .line 348
    .local v2, checkUsage:I
    :goto_0
    iget-object v8, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v8, v2}, Lcom/lge/camera/controller/QuickFunctionController;->setCheckToggleTime(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 349
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v1, bundle:Landroid/os/Bundle;
    const-string v8, "subMenuClicked"

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 351
    iget-object v8, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v8, v8, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v0, p3

    invoke-interface {v8, v0}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 352
    .local v7, value:Ljava/lang/String;
    iget-object v8, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v8, v8, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    const-string v8, "key_flash"

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "off"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v6, "torch"

    .line 355
    .local v6, setValue:Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v8, v8, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v0, p3

    invoke-interface {v8, v0, v6}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 357
    iget-object v8, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v8, v8, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v0, p3

    invoke-interface {v8, v0}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex(Ljava/lang/String;)I

    move-result v4

    .line 358
    .local v4, menuIndex:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 359
    .local v3, childIndex:I
    iget-object v8, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v8, v8, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8, v4, v3}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(II)Z

    .line 361
    const-string v8, "key_smart_mode"

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 362
    iget-object v8, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v8, v8, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 367
    :goto_2
    iget-object v8, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    #setter for: Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J
    invoke-static {v8, v9, v10}, Lcom/lge/camera/controller/QuickFunctionController;->access$502(Lcom/lge/camera/controller/QuickFunctionController;J)J

    .line 368
    iget-object v8, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;
    invoke-static {v8}, Lcom/lge/camera/controller/QuickFunctionController;->access$600(Lcom/lge/camera/controller/QuickFunctionController;)Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 369
    iget-object v8, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v8, p1}, Lcom/lge/camera/controller/QuickFunctionController;->getMenuView(I)Landroid/view/View;

    move-result-object v5

    .line 370
    .local v5, qfl:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 371
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 372
    iget-object v8, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;
    invoke-static {v8}, Lcom/lge/camera/controller/QuickFunctionController;->access$600(Lcom/lge/camera/controller/QuickFunctionController;)Landroid/view/animation/Animation;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 376
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #childIndex:I
    .end local v4           #menuIndex:I
    .end local v5           #qfl:Landroid/view/View;
    .end local v6           #setValue:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuSelected(IZ)V

    .line 377
    return-void

    .line 347
    .end local v2           #checkUsage:I
    :cond_1
    const/4 v2, 0x2

    goto/16 :goto_0

    .line 352
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v2       #checkUsage:I
    .restart local v7       #value:Ljava/lang/String;
    :cond_2
    const-string v6, "off"

    goto :goto_1

    :cond_3
    const-string v8, "on"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v6, "off"

    goto :goto_1

    :cond_4
    const-string v6, "on"

    goto :goto_1

    .line 364
    .restart local v3       #childIndex:I
    .restart local v4       #menuIndex:I
    .restart local v6       #setValue:Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v8, v8, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 255
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #calls: Lcom/lge/camera/controller/QuickFunctionController;->checkOnClick()Z
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$200(Lcom/lge/camera/controller/QuickFunctionController;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 260
    .local v0, index:I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/ListPreference;

    .line 262
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 263
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionController;->blockObject:Ljava/lang/Object;
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$400(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 264
    :try_start_0
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "key_setting"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 265
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->initSettingMenu()V

    .line 269
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 270
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->setSaveSettingEnabled(Z)V

    .line 274
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v5}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuSelected(IZ)V

    .line 275
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, prefKey:Ljava/lang/String;
    const-string v3, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ===> pref.getKey(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0, v2}, Lcom/lge/camera/controller/QuickFunctionController$4;->checkQFLitemAndClearSubMenu(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 282
    monitor-exit v4

    goto :goto_0

    .line 300
    .end local v2           #prefKey:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 272
    :cond_3
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->setSaveSettingEnabled(Z)V

    goto :goto_1

    .line 285
    .restart local v2       #prefKey:Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionController$4;->clearPIPRecordingUI()V

    .line 287
    const-string v3, "key_voiceshutter"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "key_time_machine"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "key_uplus_box"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "key_smart_mode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 291
    :cond_5
    invoke-direct {p0, v0, v1, v2}, Lcom/lge/camera/controller/QuickFunctionController$4;->useToggleButton(ILcom/lge/camera/setting/ListPreference;Ljava/lang/String;)V

    .line 297
    :goto_2
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    const/16 v5, 0x12

    if-ne v3, v5, :cond_6

    .line 298
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v5}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuSelected(IZ)V

    .line 300
    :cond_6
    monitor-exit v4

    goto/16 :goto_0

    .line 292
    :cond_7
    const-string v3, "key_swap"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 293
    invoke-direct {p0, v0, v1}, Lcom/lge/camera/controller/QuickFunctionController$4;->selectSwapCamera(ILcom/lge/camera/setting/ListPreference;)V

    goto :goto_2

    .line 295
    :cond_8
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getCommand()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
