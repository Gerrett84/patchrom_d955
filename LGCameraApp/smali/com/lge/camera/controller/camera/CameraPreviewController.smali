.class public Lcom/lge/camera/controller/camera/CameraPreviewController;
.super Lcom/lge/camera/controller/PreviewController;
.source "CameraPreviewController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 29
    return-void
.end method

.method private getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "effectSelection"

    .prologue
    .line 399
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const-string v0, "on"

    .line 403
    :goto_0
    return-object v0

    .line 402
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid effect selection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkQualityAndStartPreview()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 560
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 561
    .local v2, previewSize:Landroid/hardware/Camera$Size;
    if-nez v2, :cond_1

    .line 562
    const-string v7, "CameraApp"

    const-string v8, "size is null"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->isDualCameraActive()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 567
    const/4 v6, 0x0

    .line 568
    .local v6, videoSize:Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->checkPreviewController()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 569
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v6

    .line 571
    :cond_2
    if-eqz v6, :cond_3

    .line 572
    invoke-static {v6}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v5

    .line 573
    .local v5, size:[I
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v7

    invoke-static {v7, v5}, Lcom/lge/camera/properties/MultimediaProperties;->getProfileQulity(I[I)I

    move-result v7

    iput v7, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    .line 575
    .end local v5           #size:[I
    :cond_3
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v7

    iget v8, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    invoke-static {v7, v8}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    .line 578
    .end local v6           #videoSize:Ljava/lang/String;
    :cond_4
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPreviewSize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "profile mProfile size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    const/16 v8, 0x440

    if-ne v7, v8, :cond_5

    .line 582
    const/16 v7, 0x438

    iput v7, v2, Landroid/hardware/Camera$Size;->height:I

    .line 585
    :cond_5
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 586
    .local v4, profileRatio:Ljava/lang/Float;
    iget v7, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-float v7, v7

    iget v8, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 588
    .local v1, previewRatio:Ljava/lang/Float;
    iget v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-nez v7, :cond_9

    .line 589
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isPreviewRendered()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 590
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, getSizeOnScreen:Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 592
    invoke-static {v0}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v3

    .line 594
    .local v3, previewSizeOnScreen:[I
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPreviewSizeOnScreen: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    aget v7, v3, v11

    aget v8, v3, v10

    invoke-virtual {p0, v7, v8}, Lcom/lge/camera/controller/camera/CameraPreviewController;->changePreviewModeOnUiThread(II)V

    .line 599
    .end local v3           #previewSizeOnScreen:[I
    :cond_6
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v12, v10}, Lcom/lge/camera/ControllerFunction;->setPreviewEffectForBeautyShotMode(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_0

    .line 601
    .end local v0           #getSizeOnScreen:Ljava/lang/String;
    :cond_7
    invoke-virtual {v4, v1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v7

    if-eqz v7, :cond_8

    .line 602
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v0

    .line 603
    .restart local v0       #getSizeOnScreen:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 604
    invoke-static {v0}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v3

    .line 606
    .restart local v3       #previewSizeOnScreen:[I
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPreviewSizeOnScreen: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    aget v7, v3, v11

    aget v8, v3, v10

    invoke-virtual {p0, v7, v8}, Lcom/lge/camera/controller/camera/CameraPreviewController;->changePreviewModeOnUiThread(II)V

    goto/16 :goto_0

    .line 613
    .end local v0           #getSizeOnScreen:Ljava/lang/String;
    .end local v3           #previewSizeOnScreen:[I
    :cond_8
    invoke-virtual {p0, v12, v10}, Lcom/lge/camera/controller/camera/CameraPreviewController;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_0

    .line 617
    :cond_9
    const-string v7, "CameraApp"

    const-string v8, "Call startPreviewEffect in checkQualityAndStartPreview "

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->startPreviewEffect()V

    goto/16 :goto_0
.end method

.method protected doOnEffectesError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2
    .parameter "exception"
    .parameter "fileName"

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    const-string v0, "CameraApp"

    const-string v1, "checkMediator() is false"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 536
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "ongoing finish"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_2
    const-string v0, "CameraApp"

    const-string v1, "Error!"

    invoke-static {v0, v1, p1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 542
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->closeCamera()V

    .line 543
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showCameraStoppedAndFinish()V

    goto :goto_0
.end method

.method protected doOnEffectsUpdate(II)V
    .locals 8
    .parameter "effectId"
    .parameter "effectMsg"

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 466
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    const-string v0, "CameraApp"

    const-string v1, "checkMediator() is false"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    if-nez v0, :cond_2

    .line 471
    const-string v0, "CameraApp"

    const-string v1, "mEffectsCamera is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :cond_2
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEffectsUpdate: id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    if-ne p2, v5, :cond_3

    .line 478
    const-string v0, "CameraApp"

    const-string v1, "-------EFFECT_MSG_EFFECTS_STOPPED"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iget v0, v0, Lcom/lge/camera/EffectsBase;->mCalledFrom:I

    if-ne v0, v7, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->checkQualityAndStartPreview()V

    .line 482
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    goto :goto_0

    .line 485
    :cond_3
    const/4 v0, 0x7

    if-ne p2, v0, :cond_7

    .line 486
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------EFFECT_MSG_SURFACE_TEARDOWN :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iget v2, v2, Lcom/lge/camera/EffectsBase;->mCalledFrom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iget v0, v0, Lcom/lge/camera/EffectsBase;->mCalledFrom:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_5

    .line 488
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ResetMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 495
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iput v7, v0, Lcom/lge/camera/EffectsBase;->mCalledFrom:I

    goto :goto_0

    .line 489
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iget v0, v0, Lcom/lge/camera/EffectsBase;->mCalledFrom:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_4

    .line 490
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualCameraActive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 491
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 493
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.SwapCamera"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_1

    .line 497
    :cond_7
    const/4 v0, 0x5

    if-ne p2, v0, :cond_a

    .line 498
    const-string v0, "CameraApp"

    const-string v1, "-------EFFECT_MSG_PREVIEW_DONE"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    if-eq v0, v5, :cond_8

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    if-ne v0, v6, :cond_9

    .line 501
    :cond_8
    const-string v0, "CameraApp"

    const-string v1, "return nPreview Done in Recording state"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 504
    :cond_9
    iput-boolean v4, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 505
    iput-boolean v4, p0, Lcom/lge/camera/controller/PreviewController;->mIsStartPreviewEffectOnGoing:Z

    .line 506
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 507
    const-string v0, "CameraApp"

    const-string v1, "enableInput(true) in onEffectsUpdate"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    goto/16 :goto_0

    .line 509
    :cond_a
    if-ne p2, v6, :cond_b

    .line 510
    const-string v0, "CameraApp"

    const-string v1, "-------EFFECT_MSG_RECORDING_DONE"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 511
    :cond_b
    const/4 v0, 0x6

    if-ne p2, v0, :cond_c

    .line 512
    const-string v0, "CameraApp"

    const-string v1, "-------EFFECT_MSG_ERROR"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->closeCamera()V

    .line 514
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showCameraErrorAndFinish()V

    goto/16 :goto_0

    .line 515
    :cond_c
    if-ne p2, v3, :cond_0

    .line 516
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 517
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 518
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setButtonRemainRefresh()V

    goto/16 :goto_0
.end method

.method public effectsCameraActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 408
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualCameraSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 409
    const-string v2, "CameraApp"

    const-string v3, "Do not support Dual Camera"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_0
    :goto_0
    return v1

    .line 413
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->readEffectType()I

    move-result v0

    .line 418
    .local v0, type:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getLiveEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCurrentEffect:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveEffectList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPIPCameraController()Lcom/lge/camera/controller/camera/PIPCameraController;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    return-object v0
.end method

.method public getPreviewSizeOnDevice()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 68
    const/4 v2, 0x0

    .line 69
    .local v2, previewSizeOnDevice:Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, shotMode:Ljava/lang/String;
    const-string v5, "shotmode_normal"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "not found"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shotmode_hdr"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shotmode_full_continuous"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shotmode_front_beauty"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shotmode_clear_shot"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 77
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_picturesize"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 78
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_1

    .line 79
    const-string v5, "CameraApp"

    const-string v6, " pref is null "

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    :goto_0
    return-object v4

    .line 82
    .restart local v1       #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_1
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo2()Ljava/lang/String;

    move-result-object v2

    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    :goto_1
    move-object v4, v2

    .line 106
    goto :goto_0

    .line 83
    :cond_2
    const-string v5, "shotmode_main_beauty"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 84
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_picturesize"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 86
    .restart local v1       #pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_3

    .line 87
    const-string v5, "CameraApp"

    const-string v6, " pref is null "

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_3
    const-string v4, ""

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo4()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 91
    const-string v4, "CameraApp"

    const-string v5, "extra info4 is null, so normal preview return"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo2()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 94
    :cond_4
    const-string v4, "CameraApp"

    const-string v5, "extra info4 is not null, so beauty shot preview return"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo4()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 99
    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_5
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 100
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_6

    .line 101
    const-string v5, "CameraApp"

    const-string v6, " pref is null "

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_6
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getPreviewSizeOnScreen()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, previewSizeOnScreen:Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, shotMode:Ljava/lang/String;
    const-string v5, "shotmode_normal"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "not found"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shotmode_hdr"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shotmode_full_continuous"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shotmode_front_beauty"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shotmode_main_beauty"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shotmode_clear_shot"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 50
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_picturesize"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 51
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_1

    .line 52
    const-string v5, "CameraApp"

    const-string v6, " pref is null "

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    :goto_0
    return-object v4

    .line 55
    .restart local v1       #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_1
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v2

    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    :goto_1
    move-object v4, v2

    .line 64
    goto :goto_0

    .line 57
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 58
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_3

    .line 59
    const-string v5, "CameraApp"

    const-string v6, " pref is null "

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_3
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo2()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public hideSubWindowResizeHandler()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PIPCameraController;->isResizeHandlerShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PIPCameraController;->hideSubWindowResizeHandler()V

    .line 455
    const-string v0, "CameraApp"

    const-string v1, "KMIN - Hide DualRec SubWindow Handler"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_0
    return-void
.end method

.method protected initPIPSubWindow(Ljava/lang/String;)V
    .locals 7
    .parameter "videoSize"

    .prologue
    .line 214
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    float-to-int v1, v2

    .line 215
    .local v1, subWindowThick:I
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    invoke-virtual {v2, p1}, Lcom/lge/camera/controller/camera/PIPCameraController;->getInitPIPSubWindowPosition(Ljava/lang/String;)[I

    move-result-object v0

    .line 217
    .local v0, initPosition:[I
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x2

    aget v5, v0, v5

    const/4 v6, 0x3

    aget v6, v0, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/lge/camera/EffectsCamera;->setPIPSubWindowPosition(IIII)V

    .line 218
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v2, v1}, Lcom/lge/camera/EffectsCamera;->setPIPSubWindowThick(I)V

    .line 221
    .end local v0           #initPosition:[I
    :cond_0
    return-void
.end method

.method protected initializeEffectsPreview()V
    .locals 11

    .prologue
    const/4 v7, 0x4

    .line 135
    const-string v8, "CameraApp"

    const-string v9, "initializeEffectsPreview"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v8, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    if-nez v8, :cond_2

    .line 141
    const-string v7, "CameraApp"

    const-string v8, "mEffectsCamera is null"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v8, v9}, Lcom/lge/camera/EffectsCamera;->setCamera(Landroid/hardware/Camera;)V

    .line 150
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/lge/camera/EffectsCamera;->setCameraFacing(I)V

    .line 152
    iget v8, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_8

    .line 153
    const/4 v5, 0x0

    .line 154
    .local v5, videoSize:Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->checkPreviewController()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 155
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 156
    const-string v5, "1280x960"

    .line 161
    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    .line 162
    invoke-static {v5}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v4

    .line 163
    .local v4, size:[I
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v7

    invoke-static {v7, v4}, Lcom/lge/camera/properties/MultimediaProperties;->getProfileQulity(I[I)I

    move-result v7

    iput v7, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    .line 165
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/camera/CameraPreviewController;->initPIPSubWindow(Ljava/lang/String;)V

    .line 173
    .end local v4           #size:[I
    .end local v5           #videoSize:Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_preview_size_on_device"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v6

    .line 174
    .local v6, videoSizePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v6, :cond_a

    .line 175
    invoke-virtual {v6}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo2()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, sVideoBitrate:Ljava/lang/String;
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sVideoBitrate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, iVideoBitrate:I
    if-eqz v3, :cond_5

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 180
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 181
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v7, v0}, Lcom/lge/camera/EffectsCamera;->setVideoEncodingBitRate(I)V

    .line 187
    .end local v0           #iVideoBitrate:I
    .end local v3           #sVideoBitrate:Ljava/lang/String;
    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v7

    iget v8, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    invoke-static {v7, v8}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    .line 188
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "profile : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v7, v8}, Lcom/lge/camera/EffectsCamera;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 190
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewController;->mEffectCameraListener:Lcom/lge/camera/controller/PreviewController$EffectCameraListener;

    invoke-virtual {v7, v8}, Lcom/lge/camera/EffectsCamera;->setEffectsListener(Lcom/lge/camera/EffectsBase$EffectsListener;)V

    .line 191
    new-instance v1, Lcom/lge/camera/listeners/MediaRecorderListener;

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v1, v7}, Lcom/lge/camera/listeners/MediaRecorderListener;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 192
    .local v1, listener:Lcom/lge/camera/listeners/MediaRecorderListener;
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v7, v1}, Lcom/lge/camera/EffectsCamera;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 193
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v7, v1}, Lcom/lge/camera/EffectsCamera;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 196
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    .line 197
    .local v2, rotation:I
    :goto_4
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mEffectsCamera.setOrientationHint("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v7, v2}, Lcom/lge/camera/EffectsCamera;->setOrientationHint(I)V

    .line 200
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mEffectsCamera.setPreviewDisplay width:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget v9, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceWidth:I

    iget v10, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHeight:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/lge/camera/EffectsCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;II)V

    .line 203
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iget v8, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/lge/camera/EffectsCamera;->setEffect(ILjava/lang/Object;)V

    .line 204
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isDualCameraActive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 205
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getCurrentPIPMask()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->setPIPMask(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 206
    const-string v7, "CameraApp"

    const-string v8, "setPIPMask returns FALSE"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_6
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->setPIPRotate(I)V

    goto/16 :goto_0

    .line 158
    .end local v1           #listener:Lcom/lge/camera/listeners/MediaRecorderListener;
    .end local v2           #rotation:I
    .end local v6           #videoSizePref:Lcom/lge/camera/setting/ListPreference;
    .restart local v5       #videoSize:Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 169
    .end local v5           #videoSize:Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v8

    invoke-static {v8, v7}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v8

    if-eqz v8, :cond_9

    :goto_5
    iput v7, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    goto/16 :goto_2

    :cond_9
    const/16 v7, 0xa

    goto :goto_5

    .line 184
    .restart local v6       #videoSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_a
    const-string v7, "CameraApp"

    const-string v8, "videoSizePref is null"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 196
    .restart local v1       #listener:Lcom/lge/camera/listeners/MediaRecorderListener;
    :cond_b
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v7

    add-int/lit8 v7, v7, 0x5a

    rem-int/lit16 v2, v7, 0x168

    goto/16 :goto_4
.end method

.method public isDualCameraActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 423
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 424
    const-string v2, "CameraApp"

    const-string v3, "Do not support Dual Recording"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_0
    :goto_0
    return v1

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->readEffectType()I

    move-result v0

    .line 429
    .local v0, type:I
    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected makeEffectList()V
    .locals 7

    .prologue
    .line 111
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07026d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, effectList:[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mEffectList:Ljava/util/ArrayList;

    .line 113
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 114
    .local v4, s:Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mEffectList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/lge/olaworks/library/EngineProcessor;

    invoke-direct {v0}, Lcom/lge/olaworks/library/EngineProcessor;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 36
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/PreviewController;->onResume()V

    .line 37
    return-void
.end method

.method protected readEffectParameter()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 385
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 387
    const-string v1, "shotmode_dual_camera"

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current dual camera setting value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "on"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v0, "on"

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 395
    :cond_0
    :goto_0
    return-object v0

    .line 392
    :cond_1
    const-string v1, "CameraApp"

    const-string v2, "Invalid effect selection"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected readEffectType()I
    .locals 6

    .prologue
    .line 341
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_3

    .line 342
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 343
    const/4 v2, 0x0

    .line 344
    .local v2, retValue:I
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 345
    const-string v3, "shotmode_dual_camera"

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 346
    const/4 v2, 0x6

    .line 380
    :cond_0
    :goto_0
    return v2

    .line 348
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 351
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 357
    .end local v2           #retValue:I
    :cond_3
    const/4 v1, 0x0

    .line 358
    .local v1, preference:Lcom/lge/camera/setting/ListPreference;
    const/4 v2, 0x0

    .line 359
    .restart local v2       #retValue:I
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 360
    if-nez v2, :cond_0

    .line 361
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_dual_recording"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 362
    if-eqz v1, :cond_5

    .line 363
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_dual_recording"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, dualSelection:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 365
    const-string v3, "on"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 366
    const/4 v2, 0x6

    goto :goto_0

    .line 368
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 371
    .end local v0           #dualSelection:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_video_record_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 372
    const-string v3, "recordmode_dual"

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_video_record_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 373
    const/4 v2, 0x6

    goto :goto_0

    .line 375
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setLiveEffect(Ljava/lang/String;)V
    .locals 0
    .parameter "effect"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController;->mCurrentEffect:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public showSubWindowResizeHandler(FF)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 434
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->isDualCameraActive()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "shotmode_dual_camera"

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 437
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/PIPCameraController;->getLeftTopX()I

    move-result v0

    .line 438
    .local v0, x0:I
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/PIPCameraController;->getLeftTopY()I

    move-result v2

    .line 439
    .local v2, y0:I
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/PIPCameraController;->getRightBottomX()I

    move-result v1

    .line 440
    .local v1, x1:I
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/PIPCameraController;->getRightBottomY()I

    move-result v3

    .line 442
    .local v3, y1:I
    int-to-float v4, v0

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    int-to-float v4, v2

    cmpl-float v4, p2, v4

    if-lez v4, :cond_1

    int-to-float v4, v1

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1

    int-to-float v4, v3

    cmpg-float v4, p2, v4

    if-gez v4, :cond_1

    .line 443
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/PIPCameraController;->isResizeHandlerShown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 444
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/PIPCameraController;->showSubWindowResizeHandler()V

    .line 448
    .end local v0           #x0:I
    .end local v1           #x1:I
    .end local v2           #y0:I
    .end local v3           #y1:I
    :cond_1
    return-void
.end method

.method public startPIPFrameSubMenuRotation(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 624
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->startPIPFrameSubMenuRotation(I)V

    .line 625
    return-void
.end method

.method public startPreviewEffect()V
    .locals 4

    .prologue
    .line 548
    const-string v1, "shotmode_dual_camera"

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 549
    .local v0, checkCondition:Z
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->startPreviewEffect(Lcom/lge/camera/EffectsBase;Z)V

    .line 550
    return-void
.end method

.method public stopPreviewEffect()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->stopPreviewEffect(Lcom/lge/camera/EffectsBase;)V

    .line 555
    return-void
.end method

.method public updateEffectSelection()Z
    .locals 10

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 251
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_4

    .line 252
    :cond_0
    const-string v6, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateEffectSelection() return:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    if-nez v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v7, :cond_3

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_1
    :goto_2
    return v5

    :cond_2
    move v3, v5

    .line 252
    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1

    .line 259
    :cond_4
    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    iput v3, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    .line 260
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    iput-object v3, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectParameter:Ljava/lang/Object;

    .line 261
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->readEffectType()I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    .line 262
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->readEffectParameter()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    .line 264
    const-string v6, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateEffectSelection() [previous] previousEffectType: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", previousEffectParameter: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectParameter:Ljava/lang/Object;

    if-nez v3, :cond_5

    const-string v3, "null"

    :goto_3
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v6, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateEffectSelection() [current] mEffectType: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", mEffectParameter: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    if-nez v3, :cond_6

    const-string v3, "null"

    :goto_4
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    iget v6, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    if-ne v3, v6, :cond_7

    .line 270
    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 275
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 277
    const-string v3, "CameraApp"

    const-string v4, "effectparameter is same"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 264
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 266
    :cond_6
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 282
    :cond_7
    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    if-nez v3, :cond_8

    .line 283
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_preview_size_on_device"

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 284
    .local v1, imageSizePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_a

    .line 285
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    .line 286
    const-string v3, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "backup previous resolution:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .end local v1           #imageSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_8
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 294
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5, v5}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 295
    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-nez v3, :cond_b

    .line 296
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 297
    const-string v3, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set previous resolution :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_preview_size_on_device"

    invoke-interface {v3, v6, v4}, Lcom/lge/camera/ControllerFunction;->setAllChildMenuEnabled(Ljava/lang/String;Z)V

    .line 300
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_preview_size_on_device"

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    invoke-interface {v3, v6, v7, v4}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 304
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_preview_size_on_device"

    invoke-interface {v3, v6, v4, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 307
    :cond_9
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v3, v9}, Lcom/lge/camera/EffectsCamera;->stopPreview(I)V

    move v5, v4

    .line 308
    goto/16 :goto_2

    .line 288
    .restart local v1       #imageSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_a
    const-string v3, "CameraApp"

    const-string v5, "imageSizePref is null"

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 289
    goto/16 :goto_2

    .line 309
    .end local v1           #imageSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_b
    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    if-eqz v3, :cond_c

    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-eq v3, v8, :cond_d

    :cond_c
    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    if-ne v3, v8, :cond_e

    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-eqz v3, :cond_e

    .line 311
    :cond_d
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v3, v9}, Lcom/lge/camera/EffectsCamera;->stopPreview(I)V

    .line 314
    :cond_e
    const-string v3, "CameraApp"

    const-string v6, "set to live effect limit"

    invoke-static {v3, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->setLiveeffectLimit()Ljava/lang/String;

    .line 317
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, getSizeOnScreen:Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 319
    invoke-static {v0}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v2

    .line 320
    .local v2, previewSizeOnScreen:[I
    const-string v3, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPreviewSizeOnScreen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    aget v3, v2, v5

    aget v5, v2, v4

    invoke-virtual {p0, v3, v5}, Lcom/lge/camera/controller/camera/CameraPreviewController;->changePreviewModeOnUiThread(II)V

    .line 324
    .end local v2           #previewSizeOnScreen:[I
    :cond_f
    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    if-eqz v3, :cond_10

    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-eqz v3, :cond_10

    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    if-eqz v3, :cond_11

    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-ne v3, v8, :cond_11

    .line 328
    :cond_10
    const-string v3, "CameraApp"

    const-string v5, "#### mCameraDevice.stopPreview"

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 330
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->checkQualityAndStartPreview()V

    :goto_5
    move v5, v4

    .line 336
    goto/16 :goto_2

    .line 333
    :cond_11
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iget v5, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lcom/lge/camera/EffectsCamera;->setEffect(ILjava/lang/Object;)V

    .line 334
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    goto :goto_5
.end method
