.class public Lcom/lge/camera/listeners/OnKeyEventListener;
.super Ljava/lang/Object;
.source "OnKeyEventListener.java"


# static fields
.field private static mQClipHotkeyFlag:I


# instance fields
.field needFocusFalse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    sput v0, Lcom/lge/camera/listeners/OnKeyEventListener;->mQClipHotkeyFlag:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->needFocusFalse:Z

    .line 30
    return-void
.end method

.method private checkHelpDialogForShutterHotKey(Lcom/lge/camera/Mediator;)Z
    .locals 2
    .parameter "mediator"

    .prologue
    .line 910
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isRotateDialogVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 911
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getDialogID()I

    move-result v0

    .line 912
    .local v0, dialogId:I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/16 v1, 0x79

    if-gt v0, v1, :cond_0

    .line 914
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->onDismissRotateDialog()V

    .line 916
    :cond_0
    const/4 v1, 0x1

    .line 918
    .end local v0           #dialogId:I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkKeyAction(Lcom/lge/camera/Mediator;)Z
    .locals 3
    .parameter "mediator"

    .prologue
    const/4 v0, 0x1

    .line 337
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickFunctionController;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 373
    :cond_0
    :goto_0
    return v0

    .line 342
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useHideQFLWhenSettingMenuDisplay()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    .line 348
    :cond_2
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isShotModeMenuVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isControllerInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isPressedShutterButton()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getBeautyshotProgress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    const-string v1, "zoom"

    const-string v2, "key_volume"

    invoke-virtual {p1, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 361
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v1

    if-eq v1, v0, :cond_3

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->checkShotModeForZoomInOut()Z

    move-result v1

    if-nez v1, :cond_4

    .line 363
    :cond_3
    const v1, 0x7f0b0350

    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_4
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_5

    .line 369
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isSnapOnFinish()Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkQFLmenuAndSubMenu(ILcom/lge/camera/Mediator;Z)Z
    .locals 4
    .parameter "repeatCount"
    .parameter "mediator"
    .parameter "isShutterKey"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 787
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 789
    :cond_0
    const-string v1, "com.lge.camera.command.RemoveSettingMenu"

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/camera/listeners/OnKeyEventListener;->doSubmenuOffAndHideMenu(Ljava/lang/String;ILcom/lge/camera/Mediator;)V

    .line 790
    invoke-direct {p0, p2}, Lcom/lge/camera/listeners/OnKeyEventListener;->dismissRotateDialog(Lcom/lge/camera/Mediator;)V

    .line 822
    :cond_1
    :goto_0
    return v0

    .line 792
    :cond_2
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_3

    .line 793
    const-string v1, "com.lge.camera.command.HideQuickFunctionDragDrop"

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/camera/listeners/OnKeyEventListener;->doSubmenuOffAndHideMenu(Ljava/lang/String;ILcom/lge/camera/Mediator;)V

    goto :goto_0

    .line 795
    :cond_3
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x15

    if-ne v2, v3, :cond_4

    .line 796
    const-string v1, "com.lge.camera.command.HideQuickFunctionSettingMenu"

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/camera/listeners/OnKeyEventListener;->doSubmenuOffAndHideMenu(Ljava/lang/String;ILcom/lge/camera/Mediator;)V

    goto :goto_0

    .line 798
    :cond_4
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_5

    .line 799
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->restoreLiveEffectSubMenu()V

    .line 800
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    goto :goto_0

    .line 802
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isShotModeMenuVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 803
    const-string v1, "com.lge.camera.command.HideModeMenu"

    invoke-virtual {p2, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 805
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_7

    .line 806
    if-eqz p3, :cond_1

    move v0, v1

    .line 807
    goto :goto_0

    .line 810
    :cond_7
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    if-eqz v2, :cond_9

    .line 811
    if-nez p1, :cond_8

    .line 812
    invoke-virtual {p2, v1}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 813
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    .line 814
    const-string v1, "face_tracking"

    const-string v2, "key_focus"

    invoke-virtual {p2, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "manual"

    const-string v2, "key_focus"

    invoke-virtual {p2, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 816
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->showFocus()Z

    .line 819
    :cond_8
    invoke-direct {p0, p2}, Lcom/lge/camera/listeners/OnKeyEventListener;->dismissRotateDialog(Lcom/lge/camera/Mediator;)V

    goto :goto_0

    :cond_9
    move v0, v1

    .line 822
    goto/16 :goto_0
.end method

.method private checkQFLmenuAndSubMenuForBackKey(Lcom/lge/camera/Mediator;)Z
    .locals 5
    .parameter "mediator"

    .prologue
    const/16 v4, 0x10

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 526
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isQuickFunctionSettingControllerShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 527
    const-string v1, "com.lge.camera.command.HideQuickFunctionSettingMenu"

    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 579
    :cond_0
    :goto_0
    return v0

    .line 531
    :cond_1
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isQuickFunctionDragControllerVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 532
    const-string v1, "com.lge.camera.command.HideQuickFunctionDragDrop"

    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 536
    :cond_2
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isRotateDialogVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 537
    invoke-direct {p0, p1}, Lcom/lge/camera/listeners/OnKeyEventListener;->dismissRotateDialog(Lcom/lge/camera/Mediator;)V

    goto :goto_0

    .line 541
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isShotModeMenuVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 543
    const-string v1, "com.lge.camera.command.HideModeMenu"

    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 548
    :cond_4
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 549
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/camera/controller/SettingController;->removeChildSettingView(Z)V

    .line 550
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->clearSettingBarControll()V

    goto :goto_0

    .line 554
    :cond_5
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->checkAndCloseChildView()Z

    move-result v2

    if-nez v2, :cond_0

    .line 558
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    if-ne v2, v4, :cond_7

    .line 560
    :cond_6
    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 561
    const-string v1, "com.lge.camera.command.RemoveSettingMenu"

    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 563
    :cond_7
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_8

    .line 564
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->restoreLiveEffectSubMenu()V

    .line 565
    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 566
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    goto :goto_0

    .line 568
    :cond_8
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_9

    move v0, v1

    .line 569
    goto :goto_0

    .line 570
    :cond_9
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    if-eqz v2, :cond_a

    .line 571
    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 572
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    .line 573
    const-string v1, "manual"

    const-string v2, "key_focus"

    invoke-virtual {p1, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 574
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->showFocus()Z

    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 579
    goto/16 :goto_0
.end method

.method private checkQuickViewForBackKey(Lcom/lge/camera/Mediator;)Z
    .locals 1
    .parameter "mediator"

    .prologue
    .line 583
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isShowingQuickView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    const/4 v0, 0x1

    .line 586
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkShutterHotKeyInCamera(ILcom/lge/camera/Mediator;)Z
    .locals 6
    .parameter "repeatCount"
    .parameter "mediator"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 853
    invoke-direct {p0, p2}, Lcom/lge/camera/listeners/OnKeyEventListener;->isTimerSettingActive(Lcom/lge/camera/Mediator;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 906
    :cond_0
    :goto_0
    return v2

    .line 857
    :cond_1
    const-string v4, "key_camera_shot_mode"

    invoke-virtual {p2, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 858
    .local v1, shotmode:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "shotmode_normal"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "shotmode_front_beauty"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "not found"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "shotmode_dual_camera"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 863
    if-gtz p1, :cond_0

    .line 867
    const-string v4, "shotmode_panorama"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 868
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isSynthesisInProgress()Z

    move-result v4

    if-nez v4, :cond_0

    .line 871
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isPanoramaStarted()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 872
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->stopPanorama()V

    .line 873
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/lge/camera/controller/SoundController;->playRecordingSound(Z)V

    goto :goto_0

    .line 876
    :cond_2
    const-string v4, "shotmode_free_panorama"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 877
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getFreePanoramaStatus()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getFreePanoramaStatus()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 881
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getFreePanoramaStatus()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 882
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->stopFreePanorama()V

    goto :goto_0

    .line 885
    :cond_3
    const-string v4, "shotmode_continuous"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->stopByUserAction()Z

    move-result v4

    if-nez v4, :cond_0

    .line 888
    :cond_4
    const-string v4, "shotmode_clear_shot"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isCurrnetModuleRunning()Z

    move-result v4

    if-nez v4, :cond_0

    .line 894
    :cond_5
    const-string v4, "key_camera_auto_review"

    invoke-virtual {p2, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 895
    .local v0, autoReview:Ljava/lang/String;
    const-string v4, "on_delay_2sec"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "on_delay_5sec"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    if-gtz p1, :cond_0

    .line 899
    :cond_7
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "shotmode_front_beauty"

    const-string v5, "key_camera_shot_mode"

    invoke-virtual {p2, v5}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/components/OpenGLSurfaceView;->isCompleteProcessFrame()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_8
    move v2, v3

    .line 906
    goto/16 :goto_0
.end method

.method private checkZoomOnRecord(Landroid/view/KeyEvent;ZLcom/lge/camera/Mediator;)Z
    .locals 2
    .parameter "event"
    .parameter "upKey"
    .parameter "mediator"

    .prologue
    .line 377
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportZoomOnRecord()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "zoom"

    const-string v1, "key_volume"

    invoke-virtual {p3, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const-string v0, "com.lge.camera.command.TakePicture"

    invoke-virtual {p3, v0}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x1

    .line 391
    :goto_0
    return v0

    .line 383
    :cond_0
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-nez v0, :cond_2

    .line 384
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 386
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->updateZoom(Landroid/view/KeyEvent;ZLcom/lge/camera/Mediator;)Z

    .line 391
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dismissRotateDialog(Lcom/lge/camera/Mediator;)V
    .locals 2
    .parameter "mediator"

    .prologue
    .line 833
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isRotateDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getDialogID()I

    move-result v0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getDialogID()I

    move-result v0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    .line 836
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->onDismissRotateDialog()V

    .line 837
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 838
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lge/camera/Mediator;->quickFunctionAllMenuSelected(Z)V

    .line 841
    :cond_0
    return-void
.end method

.method private doBackKey(Lcom/lge/camera/Mediator;)Z
    .locals 3
    .parameter "mediator"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 431
    invoke-virtual {p0, p1}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkMediator(Lcom/lge/camera/Mediator;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v0

    .line 434
    :cond_1
    const-string v2, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-virtual {p1, v2}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/PreviewPanelController;->isGalleryLaunching()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 437
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setGalleryLaunching(Z)V

    .line 439
    :cond_2
    invoke-direct {p0, p1}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkQFLmenuAndSubMenuForBackKey(Lcom/lge/camera/Mediator;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 443
    invoke-direct {p0, p1}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkQuickViewForBackKey(Lcom/lge/camera/Mediator;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 447
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isOptionMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 448
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->hideOptionMenu()V

    goto :goto_0

    .line 452
    :cond_3
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_4

    .line 453
    invoke-direct {p0, p1}, Lcom/lge/camera/listeners/OnKeyEventListener;->doBackKeyForCamera(Lcom/lge/camera/Mediator;)Z

    move-result v0

    goto :goto_0

    .line 454
    :cond_4
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-ne v2, v0, :cond_5

    .line 455
    invoke-virtual {p1, v1, v0}, Lcom/lge/camera/Mediator;->checkCamcorderStop(IZ)Z

    move-result v0

    .line 456
    .local v0, checkCamcorderStop:Z
    if-nez v0, :cond_0

    .line 457
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->hideSmartZoomFocusView()V

    goto :goto_0

    .end local v0           #checkCamcorderStop:Z
    :cond_5
    move v0, v1

    .line 461
    goto :goto_0
.end method

.method private doBackKeyForCamera(Lcom/lge/camera/Mediator;)Z
    .locals 4
    .parameter "mediator"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 465
    invoke-direct {p0, p1}, Lcom/lge/camera/listeners/OnKeyEventListener;->isTimerSettingActive(Lcom/lge/camera/Mediator;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 466
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->stopTimerShot()Z

    .line 467
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    .line 468
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setSwitcherVisible(Z)V

    .line 469
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->showQuickFunctionController()V

    .line 470
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->showIndicatorController()V

    .line 471
    const-string v1, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->showFocus()Z

    .line 474
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "on"

    const-string v2, "key_voiceshutter"

    invoke-virtual {p1, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    const-string v1, "com.lge.camera.command.SetVoiceShutterMode"

    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 478
    :cond_0
    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_front_beauty"

    invoke-virtual {p1, v1, v2}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_main_beauty"

    invoke-virtual {p1, v1, v2}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 483
    :cond_1
    invoke-virtual {p1, v0}, Lcom/lge/camera/Mediator;->showBeautyshotController(Z)V

    .line 521
    :cond_2
    :goto_0
    return v0

    .line 488
    :cond_3
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isEnteringViewShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 489
    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->showQuickMenuEnteringGuide(Z)V

    goto :goto_0

    .line 493
    :cond_4
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->setResultCancelForAttachMode()V

    .line 495
    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_panorama"

    invoke-virtual {p1, v2, v3}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 496
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isPanoramaStarted()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 497
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->stopPanorama()V

    .line 498
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/camera/controller/SoundController;->playRecordingSound(Z)V

    goto :goto_0

    .line 501
    :cond_5
    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_free_panorama"

    invoke-virtual {p1, v2, v3}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 502
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getFreePanoramaStatus()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    .line 503
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->stopFreePanorama()V

    goto :goto_0

    .line 506
    :cond_6
    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_continuous"

    invoke-virtual {p1, v2, v3}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->stopByUserAction()Z

    move-result v2

    if-nez v2, :cond_2

    .line 509
    :cond_7
    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_clear_shot"

    invoke-virtual {p1, v2, v3}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->stopByUserAction()Z

    move-result v2

    if-nez v2, :cond_2

    .line 512
    :cond_8
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v2

    if-nez v2, :cond_2

    .line 514
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isExitIgnoreDuringSaving()Z

    move-result v2

    if-nez v2, :cond_2

    .line 516
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getQueueCount()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_9

    .line 517
    invoke-virtual {p1, v0}, Lcom/lge/camera/Mediator;->setExitIgnoreDuringSaving(Z)V

    .line 518
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->showSavingProgressDialog()V

    goto :goto_0

    :cond_9
    move v0, v1

    .line 521
    goto :goto_0
.end method

.method private doHeadSetHookAndMediaKey(Lcom/lge/camera/Mediator;Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "mediator"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 265
    invoke-virtual {p0, p1}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkMediator(Lcom/lge/camera/Mediator;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v1, v2

    .line 297
    :cond_1
    :goto_0
    return v1

    .line 270
    :cond_2
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MEDIA_KEY or HEADSETHOOK UP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 273
    const-string v2, "CameraApp"

    const-string v3, "go to incomming call"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_3
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 278
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    .line 279
    .local v0, video_state:I
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_4
    move v1, v2

    .line 284
    goto :goto_0

    .line 287
    .end local v0           #video_state:I
    :cond_5
    invoke-direct {p0, p1}, Lcom/lge/camera/listeners/OnKeyEventListener;->isTimerSettingActive(Lcom/lge/camera/Mediator;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    .line 288
    goto :goto_0

    .line 291
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    const-string v3, "on"

    const-string v4, "key_voiceshutter"

    invoke-virtual {p1, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 293
    goto :goto_0
.end method

.method private doHotKey(ILandroid/view/KeyEvent;ZLcom/lge/camera/Mediator;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"
    .parameter "isKeyDown"
    .parameter "mediator"

    .prologue
    const/4 v1, 0x0

    .line 189
    if-eqz p2, :cond_0

    sget v2, Lcom/lge/camera/properties/ProjectVariables;->KEYCODE_QCLIP_HOT_KEY:I

    if-ne p1, v2, :cond_0

    .line 190
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getBlockTouchByCallPopUp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    const-string v2, "CameraApp"

    const-string v3, "Do not support photo story in call popup state"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_0
    :goto_0
    return v1

    .line 195
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 196
    .local v0, nRepeatCount:I
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportQClipCustomization()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 198
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEYCODE_QCLIP_HOT_KEY, isKeyDown = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nRepeatCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 200
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/AppControlUtil;->getQClipHotkeyFlag(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/lge/camera/listeners/OnKeyEventListener;->mQClipHotkeyFlag:I

    .line 201
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mQClipHotkeyFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lge/camera/listeners/OnKeyEventListener;->mQClipHotkeyFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_2
    sget v2, Lcom/lge/camera/listeners/OnKeyEventListener;->mQClipHotkeyFlag:I

    sparse-switch v2, :sswitch_data_0

    .line 228
    const-string v2, "CameraApp"

    const-string v3, "Common.QCLIP_HOTKEY_FLAG_NONE"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_3
    :goto_1
    if-nez p3, :cond_4

    .line 232
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isCameraKeyLongPressed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 233
    invoke-virtual {p4, v1}, Lcom/lge/camera/Mediator;->setCameraKeyLongPressed(Z)V

    .line 234
    const-string v2, "on"

    const-string v3, "key_voiceshutter"

    invoke-virtual {p4, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 235
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 248
    :cond_4
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 206
    :sswitch_0
    if-nez p3, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 207
    const-string v2, "CameraApp"

    const-string v3, "Common.QCLIP_HOTKEY_FLAG_NOT_SUPPORT"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v2, "com.lge.camera.command.QuickClipStart"

    invoke-virtual {p4, v2}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    goto :goto_1

    .line 212
    :sswitch_1
    if-eqz p3, :cond_5

    .line 213
    const-string v2, "CameraApp"

    const-string v3, "Common.QCLIP_HOTKEY_FLAG_KEYDOWN_SHUTTER"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-direct {p0, p1, v0, p4}, Lcom/lge/camera/listeners/OnKeyEventListener;->doShutterKey(IILcom/lge/camera/Mediator;)Z

    goto :goto_1

    .line 216
    :cond_5
    invoke-direct {p0, p4}, Lcom/lge/camera/listeners/OnKeyEventListener;->releaseBurstShotPressed(Lcom/lge/camera/Mediator;)V

    .line 217
    invoke-direct {p0, p4}, Lcom/lge/camera/listeners/OnKeyEventListener;->refreshMenusForShutterHotKey(Lcom/lge/camera/Mediator;)V

    goto :goto_1

    .line 221
    :sswitch_2
    if-nez p3, :cond_3

    .line 222
    const-string v2, "CameraApp"

    const-string v3, "Common.QCLIP_HOTKEY_FLAG_KEYUP_QMEMO"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v2, "com.lge.camera.command.QuickClipStart"

    invoke-virtual {p4, v2}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 224
    sput v1, Lcom/lge/camera/listeners/OnKeyEventListener;->mQClipHotkeyFlag:I

    goto :goto_1

    .line 240
    :cond_6
    if-eqz p3, :cond_7

    .line 241
    const-string v1, "CameraApp"

    const-string v2, "Common.QCLIP_HOTKEY - shutter"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-direct {p0, p1, v0, p4}, Lcom/lge/camera/listeners/OnKeyEventListener;->doShutterKey(IILcom/lge/camera/Mediator;)Z

    goto :goto_2

    .line 244
    :cond_7
    invoke-direct {p0, p4}, Lcom/lge/camera/listeners/OnKeyEventListener;->releaseBurstShotPressed(Lcom/lge/camera/Mediator;)V

    .line 245
    invoke-direct {p0, p4}, Lcom/lge/camera/listeners/OnKeyEventListener;->refreshMenusForShutterHotKey(Lcom/lge/camera/Mediator;)V

    goto :goto_2

    .line 204
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x200 -> :sswitch_2
    .end sparse-switch
.end method

.method private doKeyEnter(ILandroid/view/KeyEvent;Lcom/lge/camera/Mediator;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"
    .parameter "mediator"

    .prologue
    const/4 v1, 0x1

    .line 414
    invoke-virtual {p0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkMediator(Lcom/lge/camera/Mediator;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v1

    .line 417
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->shutterHotKey(IILcom/lge/camera/Mediator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHDMI_MHL()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->isHDMIConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-direct {p0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkKeyAction(Lcom/lge/camera/Mediator;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private doMenuKey(Lcom/lge/camera/Mediator;)Z
    .locals 4
    .parameter "mediator"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 651
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 693
    :cond_0
    :goto_0
    return v1

    .line 655
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkMediator(Lcom/lge/camera/Mediator;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isTimerShotCountdown()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isEnteringViewShowing()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    .line 661
    goto :goto_0

    .line 666
    :cond_3
    invoke-direct {p0, v1, p1, v1}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkQFLmenuAndSubMenu(ILcom/lge/camera/Mediator;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 670
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isRotateDialogVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 671
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getDialogID()I

    move-result v2

    const/16 v3, 0x16

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getDialogID()I

    move-result v2

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_0

    .line 673
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->onDismissRotateDialog()V

    goto :goto_0

    .line 678
    :cond_4
    const/4 v0, 0x0

    .line 679
    .local v0, optionMenuType:I
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_6

    .line 680
    const/4 v0, 0x0

    .line 681
    const-string v1, "on"

    const-string v3, "key_smart_mode"

    invoke-virtual {p1, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 682
    const/4 v0, 0x1

    .line 688
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isOptionMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 689
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->hideOptionMenu()V

    :goto_2
    move v1, v2

    .line 693
    goto :goto_0

    .line 685
    :cond_6
    const/4 v0, 0x2

    goto :goto_1

    .line 691
    :cond_7
    invoke-virtual {p1, v0}, Lcom/lge/camera/Mediator;->showOptionMenu(I)V

    goto :goto_2
.end method

.method private doShutterKey(IILcom/lge/camera/Mediator;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "mediator"

    .prologue
    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkMediator(Lcom/lge/camera/Mediator;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v0

    .line 258
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->shutterHotKey(IILcom/lge/camera/Mediator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doSubmenuOffAndHideMenu(Ljava/lang/String;ILcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "command"
    .parameter "repeatCount"
    .parameter "mediator"

    .prologue
    .line 826
    if-nez p2, :cond_0

    .line 827
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 828
    invoke-virtual {p3, p1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 830
    :cond_0
    return-void
.end method

.method private doVolumeKeyUpDown(ILandroid/view/KeyEvent;ZLcom/lge/camera/Mediator;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"
    .parameter "upKey"
    .parameter "mediator"

    .prologue
    const/4 v0, 0x1

    .line 301
    invoke-virtual {p0, p4}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkMediator(Lcom/lge/camera/Mediator;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v0

    .line 305
    :cond_1
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getShowCameraErrorPopup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    invoke-static {}, Lcom/lge/camera/components/CameraCoverView;->isCoverOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isRotateDialogVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getDialogID()I

    move-result v1

    const/16 v2, 0x6a

    if-ne v1, v2, :cond_2

    .line 315
    const/4 v0, 0x0

    goto :goto_0

    .line 318
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportCameraKey()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    invoke-virtual {p0, p1, v1, p4}, Lcom/lge/camera/listeners/OnKeyEventListener;->shutterHotKey(IILcom/lge/camera/Mediator;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    :cond_3
    invoke-direct {p0, p4}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkKeyAction(Lcom/lge/camera/Mediator;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2, p3, p4}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkZoomOnRecord(Landroid/view/KeyEvent;ZLcom/lge/camera/Mediator;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v1

    if-nez v1, :cond_0

    .line 330
    invoke-direct {p0, p2, p3, p4}, Lcom/lge/camera/listeners/OnKeyEventListener;->updateZoom(Landroid/view/KeyEvent;ZLcom/lge/camera/Mediator;)Z

    goto :goto_0
.end method

.method private isTimerSettingActive(Lcom/lge/camera/Mediator;)Z
    .locals 2
    .parameter "mediator"

    .prologue
    .line 844
    const-string v1, "key_camera_timer"

    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 845
    .local v0, timerSetting:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isTimerShotCountdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 847
    const/4 v1, 0x1

    .line 849
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshMenusForShutterHotKey(Lcom/lge/camera/Mediator;)V
    .locals 3
    .parameter "mediator"

    .prologue
    const/4 v2, 0x0

    .line 922
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAFonCAF()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->snapshotOnContinuousFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_clear_shot"

    invoke-virtual {p1, v0, v1}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_panorama"

    invoke-virtual {p1, v0, v1}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 932
    :cond_1
    :goto_0
    return-void

    .line 928
    :cond_2
    invoke-virtual {p1, v2}, Lcom/lge/camera/Mediator;->setQuickFunctionMenuForcedDisable(Z)V

    .line 929
    invoke-virtual {p1, v2}, Lcom/lge/camera/Mediator;->setQuickButtonForcedDisable(Z)V

    .line 930
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->refreshMenuForVolumeShutterPress()V

    goto :goto_0
.end method

.method private releaseBurstShotPressed(Lcom/lge/camera/Mediator;)V
    .locals 4
    .parameter "mediator"

    .prologue
    const/4 v3, 0x0

    .line 936
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_full_continuous"

    invoke-virtual {p1, v1, v2}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 938
    iget-boolean v1, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->needFocusFalse:Z

    if-eqz v1, :cond_0

    .line 939
    const v1, 0x7f090147

    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ShutterButton;

    .line 940
    .local v0, button:Lcom/lge/camera/components/ShutterButton;
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    .line 941
    iput-boolean v3, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->needFocusFalse:Z

    .line 944
    .end local v0           #button:Lcom/lge/camera/components/ShutterButton;
    :cond_0
    return-void
.end method

.method private updateZoom(Landroid/view/KeyEvent;ZLcom/lge/camera/Mediator;)Z
    .locals 7
    .parameter "event"
    .parameter "upKey"
    .parameter "mediator"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 395
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    :cond_0
    :goto_0
    return v4

    .line 398
    :cond_1
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/16 v3, 0x10

    if-eq v0, v3, :cond_2

    .line 406
    const-string v0, "com.lge.camera.command.ShowZoom"

    invoke-virtual {p3, v0}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 408
    :cond_2
    if-eqz p2, :cond_3

    sget v2, Lcom/lge/camera/components/BarView;->CURSOR_ONE_STEP_PLUS:I

    .line 409
    .local v2, zoomStep:I
    :goto_1
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    move-object v3, v1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/components/ZoomBar;->updateBarWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;ZZZ)V

    goto :goto_0

    .line 408
    .end local v2           #zoomStep:I
    :cond_3
    sget v2, Lcom/lge/camera/components/BarView;->CURSOR_ONE_STEP_MINUS:I

    goto :goto_1
.end method


# virtual methods
.method public checkMediator(Lcom/lge/camera/Mediator;)Z
    .locals 3
    .parameter "mediator"

    .prologue
    const/4 v0, 0x0

    .line 698
    if-nez p1, :cond_0

    .line 699
    const-string v1, "CameraApp"

    const-string v2, "checkKeyOperation : return, mediator is not initialized..."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :goto_0
    return v0

    .line 702
    :cond_0
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isControllerInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 703
    const-string v1, "CameraApp"

    const-string v2, "checkKeyOperation : return, mediator is not initialized..."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 706
    :cond_1
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 707
    const-string v1, "CameraApp"

    const-string v2, "checkKeyOperation : return, mediator is pausing..."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 710
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lcom/lge/camera/Mediator;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"
    .parameter "mediator"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 35
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const/16 v2, 0x18

    if-eq p1, v2, :cond_0

    const/16 v2, 0x19

    if-eq p1, v2, :cond_0

    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1b

    if-eq p1, v2, :cond_0

    sget v2, Lcom/lge/camera/properties/ProjectVariables;->KEYCODE_QCLIP_HOT_KEY:I

    if-eq p1, v2, :cond_0

    const/16 v2, 0x42

    if-eq p1, v2, :cond_0

    .line 120
    :goto_0
    return v0

    .line 46
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 120
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->doHotKey(ILandroid/view/KeyEvent;ZLcom/lge/camera/Mediator;)Z

    move-result v0

    goto :goto_0

    .line 48
    :sswitch_0
    const-string v0, "CameraApp"

    const-string v2, "KEYCODE_MENU"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/lge/camera/components/CameraCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 50
    goto :goto_0

    .line 52
    :cond_1
    invoke-direct {p0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->doMenuKey(Lcom/lge/camera/Mediator;)Z

    move-result v0

    goto :goto_0

    .line 55
    :sswitch_1
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_BACK"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->doBackKey(Lcom/lge/camera/Mediator;)Z

    move-result v0

    goto :goto_0

    .line 59
    :sswitch_2
    const-string v0, "CameraApp"

    const-string v2, "KEYCODE_CAMERA"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkMediator(Lcom/lge/camera/Mediator;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 62
    goto :goto_0

    .line 64
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->shutterHotKey(IILcom/lge/camera/Mediator;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 65
    goto :goto_0

    :cond_3
    move v0, v1

    .line 67
    goto :goto_0

    :sswitch_3
    move v0, v1

    .line 79
    goto :goto_0

    .line 84
    :sswitch_4
    const-string v0, "CameraApp"

    const-string v1, "&&KEYCODE_ENTER"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->doKeyEnter(ILandroid/view/KeyEvent;Lcom/lge/camera/Mediator;)Z

    move-result v0

    goto :goto_0

    .line 88
    :sswitch_5
    const-string v0, "CameraApp"

    const-string v2, "&&KEYCODE_VOLUME_UP"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->doVolumeKeyUpDown(ILandroid/view/KeyEvent;ZLcom/lge/camera/Mediator;)Z

    move-result v0

    goto :goto_0

    .line 92
    :sswitch_6
    const-string v1, "CameraApp"

    const-string v2, "&&KEYCODE_VOLUME_DOWN"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->doVolumeKeyUpDown(ILandroid/view/KeyEvent;ZLcom/lge/camera/Mediator;)Z

    move-result v0

    goto :goto_0

    :sswitch_7
    move v0, v1

    .line 100
    goto :goto_0

    .line 110
    :sswitch_8
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA_KEY or HEADSETHOOK DOWN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0, p3, p2}, Lcom/lge/camera/listeners/OnKeyEventListener;->doHeadSetHookAndMediaKey(Lcom/lge/camera/Mediator;Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 115
    :sswitch_9
    const-string v0, "CameraApp"

    const-string v2, "KEYCODE_SEARCH"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 116
    goto/16 :goto_0

    .line 46
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_7
        0x14 -> :sswitch_7
        0x15 -> :sswitch_7
        0x16 -> :sswitch_7
        0x17 -> :sswitch_3
        0x18 -> :sswitch_5
        0x19 -> :sswitch_6
        0x1b -> :sswitch_2
        0x42 -> :sswitch_4
        0x4f -> :sswitch_8
        0x50 -> :sswitch_7
        0x52 -> :sswitch_0
        0x54 -> :sswitch_9
        0x55 -> :sswitch_8
        0x56 -> :sswitch_8
        0x57 -> :sswitch_8
        0x58 -> :sswitch_8
        0x59 -> :sswitch_8
        0x5a -> :sswitch_8
        0x7e -> :sswitch_8
        0x7f -> :sswitch_8
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Lcom/lge/camera/Mediator;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"
    .parameter "mediator"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 128
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v5

    .line 134
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 184
    invoke-direct {p0, p1, p2, v5, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->doHotKey(ILandroid/view/KeyEvent;ZLcom/lge/camera/Mediator;)Z

    move-result v5

    goto :goto_0

    .line 137
    :sswitch_0
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_MENU or KEYCODE_BACK keyup"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :sswitch_1
    const-string v0, "CameraApp"

    const-string v2, "KEYCODE_VOLUME keyUp."

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-nez p3, :cond_2

    move v5, v4

    .line 145
    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->isRotateDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getDialogID()I

    move-result v0

    const/16 v2, 0x6a

    if-eq v0, v2, :cond_0

    .line 153
    :cond_3
    const-string v0, "zoom"

    const-string v2, "key_volume"

    invoke-virtual {p3, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x42

    if-eq p1, v0, :cond_5

    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 156
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 157
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    sget v2, Lcom/lge/camera/components/BarView;->CURSOR_ONE_STEP_MINUS:I

    move-object v3, v1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/components/ZoomBar;->updateBarWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;ZZZ)V

    .line 158
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/components/ZoomBar;->stopTimerTask()V

    :cond_4
    :goto_1
    move v5, v4

    .line 171
    goto :goto_0

    .line 161
    :cond_5
    invoke-direct {p0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->releaseBurstShotPressed(Lcom/lge/camera/Mediator;)V

    .line 162
    invoke-direct {p0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->refreshMenusForShutterHotKey(Lcom/lge/camera/Mediator;)V

    .line 164
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->isCameraKeyLongPressed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    invoke-virtual {p3, v5}, Lcom/lge/camera/Mediator;->setCameraKeyLongPressed(Z)V

    .line 166
    const-string v0, "on"

    const-string v1, "key_voiceshutter"

    invoke-virtual {p3, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 167
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    goto :goto_1

    .line 181
    :sswitch_2
    invoke-direct {p0, p3, p2}, Lcom/lge/camera/listeners/OnKeyEventListener;->doHeadSetHookAndMediaKey(Lcom/lge/camera/Mediator;Landroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 134
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x42 -> :sswitch_1
        0x4f -> :sswitch_2
        0x52 -> :sswitch_0
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method public shutterHotKey(IILcom/lge/camera/Mediator;)Z
    .locals 6
    .parameter "keycode"
    .parameter "repeatCount"
    .parameter "mediator"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 715
    invoke-static {}, Lcom/lge/camera/components/CameraCoverView;->isCoverOpen()Z

    move-result v3

    if-nez v3, :cond_1

    .line 783
    :cond_0
    :goto_0
    return v1

    .line 719
    :cond_1
    const-string v3, "shutter"

    const-string v4, "key_volume"

    invoke-virtual {p3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportCameraKey()Z

    move-result v3

    if-nez v3, :cond_2

    sget v3, Lcom/lge/camera/properties/ProjectVariables;->KEYCODE_QCLIP_HOT_KEY:I

    if-eq p1, v3, :cond_2

    const/16 v3, 0x42

    if-ne p1, v3, :cond_a

    .line 724
    :cond_2
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shutterHotKey : repeatCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->isOptionMenuShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 727
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->hideOptionMenu()V

    goto :goto_0

    .line 731
    :cond_3
    invoke-direct {p0, p2, p3, v1}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkQFLmenuAndSubMenu(ILcom/lge/camera/Mediator;Z)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkHelpDialogForShutterHotKey(Lcom/lge/camera/Mediator;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 736
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, p2, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkShutterHotKeyInCamera(ILcom/lge/camera/Mediator;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 741
    :cond_4
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-ne v3, v1, :cond_5

    invoke-virtual {p3, p2, v2}, Lcom/lge/camera/Mediator;->checkCamcorderStop(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 743
    goto :goto_0

    .line 746
    :cond_5
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->isPreviewing()Z

    move-result v3

    if-nez v3, :cond_6

    .line 747
    const-string v2, "CameraApp"

    const-string v3, "KeyEvent.KEYCODE_HOT_KEY return, not previewing"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 751
    :cond_6
    const v3, 0x7f090147

    invoke-virtual {p3, v3}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ShutterButton;

    .line 752
    .local v0, button:Lcom/lge/camera/components/ShutterButton;
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 755
    const-string v3, "CameraApp"

    const-string v4, "KeyEvent.KEYCODE_HOT_KEY"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    if-lez p2, :cond_7

    .line 758
    invoke-virtual {p3, v1}, Lcom/lge/camera/Mediator;->setCameraKeyLongPressed(Z)V

    .line 759
    const-string v3, "on"

    const-string v4, "key_voiceshutter"

    invoke-virtual {p3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 760
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 764
    :cond_7
    invoke-virtual {p3, v1}, Lcom/lge/camera/Mediator;->setQuickFunctionMenuForcedDisable(Z)V

    .line 765
    invoke-virtual {p3, v1}, Lcom/lge/camera/Mediator;->setQuickButtonForcedDisable(Z)V

    .line 766
    iput-boolean v2, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->needFocusFalse:Z

    .line 768
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    .line 769
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V

    .line 770
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_full_continuous"

    invoke-virtual {p3, v3, v4}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getFocusState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    .line 774
    :cond_8
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    goto/16 :goto_0

    .line 777
    :cond_9
    iput-boolean v1, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->needFocusFalse:Z

    goto/16 :goto_0

    .end local v0           #button:Lcom/lge/camera/components/ShutterButton;
    :cond_a
    move v1, v2

    .line 783
    goto/16 :goto_0
.end method
