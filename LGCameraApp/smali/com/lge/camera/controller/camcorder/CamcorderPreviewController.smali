.class public Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;
.super Lcom/lge/camera/controller/PreviewController;
.source "CamcorderPreviewController.java"


# instance fields
.field protected mEffectRecordingDoneLatch:Ljava/util/concurrent/CountDownLatch;

.field private mStopRecordingEffectThread:Ljava/lang/Thread;

.field private tryCnt:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectRecordingDoneLatch:Ljava/util/concurrent/CountDownLatch;

    .line 887
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->tryCnt:I

    .line 34
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->makeEffectList()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->tryCnt:I

    return v0
.end method

.method private getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "effectSelection"

    .prologue
    .line 540
    const-string v0, "squeeze"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 558
    :goto_0
    return-object v0

    .line 542
    :cond_0
    const-string v0, "big nose"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 544
    :cond_1
    const-string v0, "big eyes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 545
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 546
    :cond_2
    const-string v0, "small eyes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 547
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 548
    :cond_3
    const-string v0, "big mouth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 549
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 550
    :cond_4
    const-string v0, "small mouth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 551
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 552
    :cond_5
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 553
    const-string v0, "on"

    goto :goto_0

    .line 554
    :cond_6
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 555
    const-string v0, "on"

    goto :goto_0

    .line 557
    :cond_7
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

    .line 558
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkQualityAndStartPreview()V
    .locals 9

    .prologue
    const/16 v7, 0xe

    const/4 v8, 0x7

    const/4 v5, 0x4

    .line 941
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 942
    .local v1, previewSize:Landroid/hardware/Camera$Size;
    if-nez v1, :cond_0

    .line 943
    const-string v5, "CameraApp"

    const-string v6, "size is null"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    :goto_0
    return-void

    .line 947
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->isDualRecordingActive()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->isSmartZoomRecordingActive()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 948
    :cond_1
    const/4 v4, 0x0

    .line 949
    .local v4, videoSize:Ljava/lang/String;
    const/4 v3, 0x0

    .line 950
    .local v3, size:[I
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->checkPreviewController()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 951
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 952
    const-string v4, "1280x960"

    .line 956
    :goto_1
    invoke-static {v4}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v3

    .line 958
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v5

    invoke-static {v5, v3}, Lcom/lge/camera/properties/MultimediaProperties;->getProfileQulity(I[I)I

    move-result v5

    iput v5, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    .line 959
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v5

    iget v6, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    invoke-static {v5, v6}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    .line 981
    .end local v3           #size:[I
    .end local v4           #videoSize:Ljava/lang/String;
    :cond_3
    :goto_2
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPreviewSize:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "profile mProfile size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    const/16 v6, 0x440

    if-ne v5, v6, :cond_4

    .line 985
    const/16 v5, 0x438

    iput v5, v1, Landroid/hardware/Camera$Size;->height:I

    .line 988
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 989
    .local v2, profileRatio:Ljava/lang/Float;
    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v5, v5

    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 991
    .local v0, previewRatio:Ljava/lang/Float;
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->effectsCamcorderActive()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v2, v0}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getPreviousEffectType()I

    move-result v5

    if-ne v5, v8, :cond_5

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v5

    if-nez v5, :cond_c

    :cond_5
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getPreviousEffectType()I

    move-result v5

    if-ne v5, v8, :cond_6

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isLiveEffectActive()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v5

    if-nez v5, :cond_c

    .line 997
    :cond_6
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " setAspectRatio: profileRatio:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", previewRatio:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lge/camera/components/CameraPreview;->setAspectRatio(F)V

    goto/16 :goto_0

    .line 954
    .end local v0           #previewRatio:Ljava/lang/Float;
    .end local v2           #profileRatio:Ljava/lang/Float;
    .restart local v3       #size:[I
    .restart local v4       #videoSize:Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 960
    .end local v3           #size:[I
    .end local v4           #videoSize:Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->isLiveEffectActive()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 961
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 962
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v5

    invoke-static {v5, v7}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 965
    iput v7, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    .line 976
    :goto_3
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v5

    iget v6, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    invoke-static {v5, v6}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    .line 977
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reset profile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v5, v6}, Lcom/lge/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    goto/16 :goto_2

    .line 967
    :cond_9
    const-string v5, "CameraApp"

    const-string v6, "Cannot find the profile; CamcorderProfile.QUALITY_960P"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 970
    :cond_a
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v6

    invoke-static {v6, v5}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v6

    if-eqz v6, :cond_b

    :goto_4
    iput v5, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    goto :goto_3

    :cond_b
    const/16 v5, 0xa

    goto :goto_4

    .line 1003
    .restart local v0       #previewRatio:Ljava/lang/Float;
    .restart local v2       #profileRatio:Ljava/lang/Float;
    :cond_c
    iget v5, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-nez v5, :cond_d

    .line 1004
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_0

    .line 1006
    :cond_d
    const-string v5, "CameraApp"

    const-string v6, "Call startPreviewEffect in checkQualityAndStartPreview "

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->startPreviewEffect()V

    goto/16 :goto_0
.end method

.method protected doOnEffectesError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 6
    .parameter "exception"
    .parameter "fileName"

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->checkMediator()Z

    move-result v2

    if-nez v2, :cond_0

    .line 787
    const-string v2, "CameraApp"

    const-string v3, "checkMediator() is false"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :goto_0
    return-void

    .line 790
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 791
    :cond_1
    const-string v2, "CameraApp"

    const-string v3, "ongoing finish"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 795
    :cond_2
    instance-of v2, p1, Landroid/filterpacks/videosink/MediaRecorderStopException;

    if-eqz v2, :cond_3

    .line 796
    const-string v2, "CameraApp"

    const-string v3, "Problem recoding video file. Removing incomplete file."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 800
    :cond_3
    if-eqz p2, :cond_5

    .line 801
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 802
    .local v1, videoFile:Ljava/io/File;
    const/4 v0, 0x0

    .line 803
    .local v0, nVideoFileMinSize:I
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentRecordingTime()J

    move-result-wide v2

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMinRecordingTime()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_5

    .line 804
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 805
    const-string v2, "CameraApp"

    const-string v3, "Short recording time! Not Error!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 808
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v2, :cond_5

    .line 809
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    mul-int/2addr v2, v3

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMinRecordingTime()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    mul-int v0, v2, v3

    .line 810
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 811
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Short recording time! Not Error!! file soon delete! -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 820
    .end local v0           #nVideoFileMinSize:I
    .end local v1           #videoFile:Ljava/io/File;
    :cond_5
    const-string v2, "CameraApp"

    const-string v3, "Error during recording!"

    invoke-static {v2, v3, p1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 821
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->closeCamera()V

    .line 822
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showCameraStoppedAndFinish()V

    goto/16 :goto_0
.end method

.method protected doOnEffectsUpdate(II)V
    .locals 8
    .parameter "effectId"
    .parameter "effectMsg"

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 710
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_1

    .line 711
    const-string v0, "CameraApp"

    const-string v1, "checkMediator() is false"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    invoke-virtual {p0, p1, p2, v3}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->doOnPauseForEffectsUpdate(IIZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 716
    const-string v0, "CameraApp"

    const-string v1, "doOnPauseForEffectsUpdate is working"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 720
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-nez v0, :cond_3

    .line 721
    const-string v0, "CameraApp"

    const-string v1, "mEffectsRecorder is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 725
    :cond_3
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

    .line 727
    if-ne p2, v5, :cond_4

    .line 728
    const-string v0, "CameraApp"

    const-string v1, "-------EFFECT_MSG_EFFECTS_STOPPED"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget v0, v0, Lcom/lge/camera/EffectsBase;->mCalledFrom:I

    if-ne v0, v7, :cond_0

    .line 731
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->checkQualityAndStartPreview()V

    .line 732
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    goto :goto_0

    .line 735
    :cond_4
    const/4 v0, 0x7

    if-ne p2, v0, :cond_9

    .line 736
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------EFFECT_MSG_SURFACE_TEARDOWN :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget v2, v2, Lcom/lge/camera/EffectsBase;->mCalledFrom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget v0, v0, Lcom/lge/camera/EffectsBase;->mCalledFrom:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_6

    .line 738
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ResetMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    .line 746
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iput v7, v0, Lcom/lge/camera/EffectsBase;->mCalledFrom:I

    goto/16 :goto_0

    .line 740
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget v0, v0, Lcom/lge/camera/EffectsBase;->mCalledFrom:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_5

    .line 741
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 742
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 744
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.SwapCamera"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_1

    .line 748
    :cond_9
    const/4 v0, 0x5

    if-ne p2, v0, :cond_c

    .line 749
    const-string v0, "CameraApp"

    const-string v1, "-------EFFECT_MSG_PREVIEW_DONE"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    if-eq v0, v5, :cond_a

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    if-ne v0, v6, :cond_b

    .line 752
    :cond_a
    const-string v0, "CameraApp"

    const-string v1, "return nPreview Done in Recording state"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 755
    :cond_b
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 756
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mIsStartPreviewEffectOnGoing:Z

    .line 757
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 758
    const-string v0, "CameraApp"

    const-string v1, "enableInput(true) in onEffectsUpdate"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    goto/16 :goto_0

    .line 760
    :cond_c
    if-ne p2, v6, :cond_e

    .line 761
    const-string v0, "CameraApp"

    const-string v1, "-------EFFECT_MSG_RECORDING_DONE"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectRecordingDoneLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_d

    .line 763
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectRecordingDoneLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 765
    :cond_d
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    goto/16 :goto_0

    .line 766
    :cond_e
    const/4 v0, 0x6

    if-ne p2, v0, :cond_f

    .line 767
    const-string v0, "CameraApp"

    const-string v1, "-------EFFECT_MSG_ERROR"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->closeCamera()V

    .line 769
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showCameraErrorAndFinish()V

    goto/16 :goto_0

    .line 770
    :cond_f
    if-ne p2, v4, :cond_0

    .line 771
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 772
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 773
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setButtonRemainRefresh()V

    goto/16 :goto_0
.end method

.method public doOnPauseForEffectsUpdate(IIZ)Z
    .locals 5
    .parameter "effectId"
    .parameter "effectMsg"
    .parameter "isPausing"

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    .line 686
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectMsg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mEffectRecordingDoneLatch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectRecordingDoneLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isPausing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 690
    :cond_0
    if-eq p2, v4, :cond_1

    const/4 v1, 0x6

    if-eq p2, v1, :cond_1

    const/4 v1, 0x7

    if-ne p2, v1, :cond_3

    .line 693
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectRecordingDoneLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_2

    .line 694
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectRecordingDoneLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 696
    :cond_2
    if-ne p2, v4, :cond_3

    .line 697
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    .line 700
    :cond_3
    const/4 v0, 0x1

    .line 705
    :goto_0
    return v0

    .line 702
    :cond_4
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail count down latch :  isPausing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isFinishing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public effectsCamcorderActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 565
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isSmartZoomSupported()Z

    move-result v3

    if-nez v3, :cond_1

    .line 576
    :cond_0
    :goto_0
    return v2

    .line 571
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->readEffectType()I

    move-result v0

    .line 576
    .local v0, type:I
    if-eqz v0, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public getLiveEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
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
    .line 108
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPIPRecordingController()Lcom/lge/camera/controller/camcorder/PIPRecordingController;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    return-object v0
.end method

.method public getPreviewSizeOnDevice()Ljava/lang/String;
    .locals 5

    .prologue
    .line 73
    const/4 v2, 0x0

    .line 74
    .local v2, previewSizeOnDevice:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_preview_size_on_device"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, prefVideoSize:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/lge/camera/properties/MmsProperties;->isAvailableMmsResolution(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    move-object v2, v1

    .end local v1           #prefVideoSize:Ljava/lang/String;
    :goto_0
    move-object v3, v2

    .line 89
    :goto_1
    return-object v3

    .line 79
    .restart local v1       #prefVideoSize:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/properties/MmsProperties;->getMmsResolutions(Landroid/content/ContentResolver;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v2, v3, v4

    goto :goto_0

    .line 82
    .end local v1           #prefVideoSize:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_preview_size_on_device"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 83
    .local v0, pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_2

    .line 84
    const-string v3, "CameraApp"

    const-string v4, " pref is null "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v3, 0x0

    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getPreviewSizeOnScreen()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 38
    const/4 v2, 0x0

    .line 39
    .local v2, previewSizeOnScreen:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 40
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_preview_size_on_device"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 41
    .local v0, pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 42
    const-string v4, "CameraApp"

    const-string v5, " pref is null "

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_0
    return-object v3

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 46
    .local v1, prefVideoSizeIndex:I
    if-gez v1, :cond_1

    .line 47
    const/4 v1, 0x0

    .line 49
    :cond_1
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfos()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1           #prefVideoSizeIndex:I
    :goto_1
    move-object v3, v2

    .line 69
    goto :goto_0

    .line 51
    .end local v0           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_preview_size_on_device"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 52
    .restart local v0       #pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_3

    .line 53
    const-string v4, "CameraApp"

    const-string v5, " pref is null "

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->isLiveEffectActive()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 58
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getLiveEffectPreviewOnDevice()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 59
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->isDualRecordingActive()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->isSmartZoomRecordingActive()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 60
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 61
    const-string v2, "1280x960"

    goto :goto_1

    .line 63
    :cond_6
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 66
    :cond_7
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getPreviousEffectType()I
    .locals 1

    .prologue
    .line 1016
    iget v0, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    return v0
.end method

.method public hideSmartZoomFocusView()V
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->isSmartZoomFocusViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->hideSmartZoomFocusView()V

    .line 656
    const-string v0, "CameraApp"

    const-string v1, "Hide smart zoom focus view"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_0
    return-void
.end method

.method public hideSubWindowResizeHandler()V
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->isResizeHandlerShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->hideSubWindowResizeHandler()V

    .line 638
    const-string v0, "CameraApp"

    const-string v1, "KMIN - Hide DualRec SubWindow Handler"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :cond_0
    return-void
.end method

.method protected initPIPSubWindow(Ljava/lang/String;)V
    .locals 7
    .parameter "videoSize"

    .prologue
    .line 221
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    float-to-int v1, v2

    .line 222
    .local v1, subWindowThick:I
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v2, p1}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->getInitPIPSubWindowPosition(Ljava/lang/String;)[I

    move-result-object v0

    .line 224
    .local v0, initPosition:[I
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x2

    aget v5, v0, v5

    const/4 v6, 0x3

    aget v6, v0, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/lge/camera/EffectsRecorder;->setPIPSubWindowPosition(IIII)V

    .line 225
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v2, v1}, Lcom/lge/camera/EffectsRecorder;->setPIPSubWindowThick(I)V

    .line 228
    .end local v0           #initPosition:[I
    :cond_0
    return-void
.end method

.method public initSmartZoomFocusView()V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->initSmartZoomFocusView()V

    .line 678
    :cond_0
    return-void
.end method

.method protected initializeEffectsPreview()V
    .locals 11

    .prologue
    const/16 v9, 0xe

    const/4 v10, 0x7

    const/4 v6, 0x4

    .line 123
    const-string v7, "CameraApp"

    const-string v8, "initializeEffectsPreview"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v7, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-nez v7, :cond_2

    .line 129
    const-string v6, "CameraApp"

    const-string v7, "mEffectsRecorder is null"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v7, v8}, Lcom/lge/camera/EffectsRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 138
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/lge/camera/EffectsRecorder;->setCameraFacing(I)V

    .line 140
    iget v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_3

    iget v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-ne v7, v10, :cond_b

    .line 142
    :cond_3
    const/4 v5, 0x0

    .line 143
    .local v5, videoSize:Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->checkPreviewController()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 144
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 145
    const-string v5, "1280x960"

    .line 150
    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    .line 151
    invoke-static {v5}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v4

    .line 152
    .local v4, size:[I
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v6

    invoke-static {v6, v4}, Lcom/lge/camera/properties/MultimediaProperties;->getProfileQulity(I[I)I

    move-result v6

    iput v6, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    .line 154
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->initPIPSubWindow(Ljava/lang/String;)V

    .line 172
    .end local v4           #size:[I
    .end local v5           #videoSize:Ljava/lang/String;
    :cond_5
    :goto_2
    const/4 v4, 0x0

    .line 173
    .restart local v4       #size:[I
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v5

    .line 174
    .restart local v5       #videoSize:Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 175
    invoke-static {v5}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v4

    .line 177
    :cond_6
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v6

    invoke-static {v6, v4}, Lcom/lge/camera/properties/MultimediaProperties;->getProfileQulity(I[I)I

    move-result v2

    .line 178
    .local v2, quality:I
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v6

    invoke-static {v6, v2}, Lcom/lge/camera/properties/MultimediaProperties;->getBitrate(II)I

    move-result v1

    .line 179
    .local v1, profileBitrate:I
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v6, v1}, Lcom/lge/camera/EffectsRecorder;->setVideoEncodingBitRate(I)V

    .line 181
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v6

    iget v7, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    invoke-static {v6, v7}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    .line 182
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "profile : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v6, v7}, Lcom/lge/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 184
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectRecorderListener:Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;

    invoke-virtual {v6, v7}, Lcom/lge/camera/EffectsRecorder;->setEffectsListener(Lcom/lge/camera/EffectsBase$EffectsListener;)V

    .line 185
    new-instance v0, Lcom/lge/camera/listeners/MediaRecorderListener;

    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v0, v6}, Lcom/lge/camera/listeners/MediaRecorderListener;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 186
    .local v0, listener:Lcom/lge/camera/listeners/MediaRecorderListener;
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v6, v0}, Lcom/lge/camera/EffectsRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 187
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v6, v0}, Lcom/lge/camera/EffectsRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 190
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v3

    .line 191
    .local v3, rotation:I
    :goto_3
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mEffectsRecorder.setOrientationHint("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v6, v3}, Lcom/lge/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 194
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mEffectsRecorder.setPreviewDisplay width:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",height:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget v8, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceWidth:I

    iget v9, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHeight:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/lge/camera/EffectsRecorder;->setPreviewDisplay(Landroid/view/SurfaceHolder;II)V

    .line 197
    iget v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-ne v6, v10, :cond_7

    .line 199
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 200
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const-string v7, "2104x1560"

    invoke-virtual {v6, v7}, Lcom/lge/camera/EffectsRecorder;->setTextureSize(Ljava/lang/String;)V

    .line 209
    :cond_7
    :goto_4
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/lge/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    .line 211
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 212
    :cond_8
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCurrentPIPMask()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->setPIPMask(I)Z

    move-result v6

    if-nez v6, :cond_9

    .line 213
    const-string v6, "CameraApp"

    const-string v7, "setPIPMask returns FALSE"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_9
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->setPIPRotate(I)V

    goto/16 :goto_0

    .line 147
    .end local v0           #listener:Lcom/lge/camera/listeners/MediaRecorderListener;
    .end local v1           #profileBitrate:I
    .end local v2           #quality:I
    .end local v3           #rotation:I
    .end local v4           #size:[I
    :cond_a
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 158
    .end local v5           #videoSize:Ljava/lang/String;
    :cond_b
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 159
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v6

    invoke-static {v6, v9}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 162
    iput v9, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    goto/16 :goto_2

    .line 164
    :cond_c
    const-string v6, "CameraApp"

    const-string v7, "Cannot find the profile; CamcorderProfile.QUALITY_960P"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 167
    :cond_d
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v7

    invoke-static {v7, v6}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v7

    if-eqz v7, :cond_e

    :goto_5
    iput v6, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    goto/16 :goto_2

    :cond_e
    const/16 v6, 0xa

    goto :goto_5

    .line 190
    .restart local v0       #listener:Lcom/lge/camera/listeners/MediaRecorderListener;
    .restart local v1       #profileBitrate:I
    .restart local v2       #quality:I
    .restart local v4       #size:[I
    .restart local v5       #videoSize:Ljava/lang/String;
    :cond_f
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v6

    add-int/lit8 v6, v6, 0x5a

    rem-int/lit16 v3, v6, 0x168

    goto/16 :goto_3

    .line 204
    .restart local v3       #rotation:I
    :cond_10
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const-string v7, "2104x1184"

    invoke-virtual {v6, v7}, Lcom/lge/camera/EffectsRecorder;->setTextureSize(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public initializeRecordingEffect(Ljava/lang/String;JIJ)V
    .locals 5
    .parameter "filepath_name"
    .parameter "mMaxFileSize"
    .parameter "mMaxDurationTime"
    .parameter "freeSpace"

    .prologue
    const-wide/16 v3, 0x0

    .line 837
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->effectsCamcorderActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v0, :cond_2

    .line 838
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v0, v1}, Lcom/lge/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 839
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/EffectsRecorder;->setCaptureRate(D)V

    .line 840
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v0, p1}, Lcom/lge/camera/EffectsRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 841
    cmp-long v0, p2, v3

    if-nez v0, :cond_1

    .line 842
    sget-wide v0, Lcom/lge/camera/properties/CameraConstants;->VIDEO_LOW_STORAGE_THRESHOLD:J

    sub-long p2, p5, v0

    .line 844
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMediaRecoderLimitSize()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 845
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMediaRecoderLimitSize()J

    move-result-wide p2

    .line 847
    :cond_0
    cmp-long v0, p2, v3

    if-gez v0, :cond_1

    .line 848
    sget-wide p2, Lcom/lge/camera/properties/CameraConstants;->VIDEO_LOW_STORAGE_THRESHOLD:J

    .line 852
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v0, p2, p3}, Lcom/lge/camera/EffectsRecorder;->setMaxFileSize(J)V

    .line 853
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v0, p4}, Lcom/lge/camera/EffectsRecorder;->setMaxDuration(I)V

    .line 855
    :cond_2
    return-void
.end method

.method public isDualRecordingActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 582
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 583
    const-string v2, "CameraApp"

    const-string v3, "Do not support Dual Recording"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :cond_0
    :goto_0
    return v1

    .line 587
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->readEffectType()I

    move-result v0

    .line 588
    .local v0, type:I
    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isLiveEffectActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 593
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 594
    const-string v2, "CameraApp"

    const-string v3, "Do not support Live Effect"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_0
    :goto_0
    return v1

    .line 598
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->readEffectType()I

    move-result v0

    .line 599
    .local v0, type:I
    if-eqz v0, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSmartZoomRecordingActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 607
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isSmartZoomSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 608
    const-string v2, "CameraApp"

    const-string v3, "Do not support Smart Zoom Recording"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :cond_0
    :goto_0
    return v1

    .line 612
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->readEffectType()I

    move-result v0

    .line 613
    .local v0, type:I
    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected makeEffectList()V
    .locals 7

    .prologue
    .line 99
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07026d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, effectList:[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mEffectList:Ljava/util/ArrayList;

    .line 101
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 102
    .local v4, s:Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mEffectList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Lcom/lge/camera/controller/PreviewController;->onResume()V

    .line 95
    return-void
.end method

.method public pauseAndResumeRecording(Z)V
    .locals 3
    .parameter "pause"

    .prologue
    .line 880
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 881
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EffectsRecorder: pause/resume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/lge/camera/EffectsRecorder;->pauseAndResumeRecording(Landroid/filterfw/core/Filter;Z)V

    .line 884
    :cond_0
    return-void
.end method

.method protected readEffectParameter()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 452
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-object v2

    .line 455
    :cond_1
    const/4 v1, 0x0

    .line 456
    .local v1, flag:Z
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 458
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_live_effect"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 459
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_live_effect"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, effectSelection:Ljava/lang/String;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current liveeffect type :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    if-eqz v0, :cond_2

    const-string v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 463
    :cond_2
    const/4 v1, 0x1

    .line 478
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_dual_recording"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 479
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_dual_recording"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current dual recording setting value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    if-eqz v0, :cond_3

    const-string v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 483
    :cond_3
    const/4 v1, 0x1

    .line 489
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_smart_zoom"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 490
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_smart_zoom"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current smart zoom setting value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    if-eqz v0, :cond_5

    const-string v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 494
    :cond_5
    const/4 v1, 0x1

    .line 500
    :cond_6
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_video_record_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 501
    const-string v3, "recordmode_dual"

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_video_record_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 502
    const-string v2, "recordmode_live_effect"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreviousRecordModeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "recordmode_smart_zoom"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreviousRecordModeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 504
    :cond_7
    const-string v2, "off"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 465
    :cond_8
    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 468
    .end local v0           #effectSelection:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getLiveEffect()Ljava/lang/String;

    move-result-object v0

    .line 469
    .restart local v0       #effectSelection:Ljava/lang/String;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current liveeffect type (record mode exists) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    if-eqz v0, :cond_a

    const-string v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 472
    :cond_a
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 474
    :cond_b
    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 485
    :cond_c
    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 496
    :cond_d
    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 507
    :cond_e
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current dual recording setting value (record mode exists) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "on"

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v2, "on"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 509
    :cond_f
    const-string v3, "recordmode_smart_zoom"

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_video_record_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 510
    const-string v2, "recordmode_dual"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreviousRecordModeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "recordmode_live_effect"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreviousRecordModeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 512
    :cond_10
    const-string v2, "off"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 515
    :cond_11
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current smart zoom setting value (record mode exists) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "on"

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v2, "on"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 517
    :cond_12
    const-string v3, "recordmode_live_effect"

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_video_record_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 518
    const-string v2, "recordmode_dual"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreviousRecordModeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "recordmode_smart_zoom"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreviousRecordModeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 520
    :cond_13
    const-string v2, "off"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 523
    :cond_14
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current live effect setting value (record mode exists) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mCurrentEffect:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCurrentEffect:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 528
    :cond_15
    if-nez v1, :cond_0

    .line 532
    const-string v3, "CameraApp"

    const-string v4, "Invalid effect selection, preference is null "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 535
    .end local v0           #effectSelection:Ljava/lang/String;
    :cond_16
    const-string v3, "CameraApp"

    const-string v4, "Invalid effect selection, getPreferenceGroup is null "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected readEffectType()I
    .locals 8

    .prologue
    .line 372
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v5

    if-nez v5, :cond_1

    .line 373
    const/4 v4, 0x0

    .line 442
    :cond_0
    :goto_0
    return v4

    .line 375
    :cond_1
    const/4 v3, 0x0

    .line 376
    .local v3, preference:Lcom/lge/camera/setting/ListPreference;
    const/4 v4, 0x0

    .line 377
    .local v4, retValue:I
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 378
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_live_effect"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 379
    const/4 v1, 0x0

    .line 380
    .local v1, effectSelection:Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 381
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_live_effect"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    if-nez v4, :cond_3

    .line 391
    const-string v5, "off"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 392
    const/4 v4, 0x0

    .line 398
    :cond_3
    :goto_2
    if-nez v4, :cond_4

    .line 399
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_dual_recording"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 400
    if-eqz v3, :cond_9

    .line 401
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_dual_recording"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, dualSelection:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 403
    const-string v5, "on"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 404
    const/4 v4, 0x5

    .line 420
    .end local v0           #dualSelection:Ljava/lang/String;
    :cond_4
    :goto_3
    if-nez v4, :cond_0

    .line 421
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_smart_zoom"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 422
    if-eqz v3, :cond_c

    .line 423
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_smart_zoom"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, modeSelection:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 425
    const-string v5, "on"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 426
    const/4 v4, 0x7

    goto :goto_0

    .line 382
    .end local v2           #modeSelection:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_video_record_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 383
    const-string v5, "recordmode_live_effect"

    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_video_record_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 384
    const/4 v4, 0x1

    goto :goto_1

    .line 387
    :cond_6
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getLiveEffect()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 394
    :cond_7
    const/4 v4, 0x1

    goto :goto_2

    .line 406
    .restart local v0       #dualSelection:Ljava/lang/String;
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 409
    .end local v0           #dualSelection:Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_video_record_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 410
    const-string v5, "recordmode_dual"

    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_video_record_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 411
    const/4 v4, 0x5

    goto :goto_3

    .line 413
    :cond_a
    const/4 v4, 0x0

    goto :goto_3

    .line 428
    .restart local v2       #modeSelection:Ljava/lang/String;
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 431
    .end local v2           #modeSelection:Ljava/lang/String;
    :cond_c
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_video_record_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 432
    const-string v5, "recordmode_smart_zoom"

    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_video_record_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 433
    const/4 v4, 0x7

    goto/16 :goto_0

    .line 435
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public setLiveEffect(Ljava/lang/String;)V
    .locals 0
    .parameter "effect"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController;->mCurrentEffect:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setPreviousResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "resolution"

    .prologue
    .line 670
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    .line 671
    return-void
.end method

.method public setSmartZoomFocusViewPosition(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->isSmartZoomFocusViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->setSmartZoomFocusViewPosition(II)V

    .line 665
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmartZoomFocusViewPosition: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :cond_0
    return-void
.end method

.method public showSmartZoomFocusView()V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->isResizeHandlerShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->showSmartZoomFocusView()V

    .line 647
    const-string v0, "CameraApp"

    const-string v1, "Show smart zoom focus view"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :cond_0
    return-void
.end method

.method public showSubWindowResizeHandler(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->isDualRecordingActive()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->isSmartZoomRecordingActive()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    if-eqz v4, :cond_1

    .line 620
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->getLeftTopX()I

    move-result v0

    .line 621
    .local v0, x0:I
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->getLeftTopY()I

    move-result v2

    .line 622
    .local v2, y0:I
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->getRightBottomX()I

    move-result v1

    .line 623
    .local v1, x1:I
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->getRightBottomY()I

    move-result v3

    .line 625
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

    .line 626
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->isResizeHandlerShown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 627
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->showSubWindowResizeHandler()V

    .line 631
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
    .line 1022
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->startPIPFrameSubMenuRotation(I)V

    .line 1023
    return-void
.end method

.method public startPreviewEffect()V
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->effectsCamcorderActive()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->startPreviewEffect(Lcom/lge/camera/EffectsBase;Z)V

    .line 828
    return-void
.end method

.method public startRecordingEffect()V
    .locals 5

    .prologue
    .line 859
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v2, :cond_1

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->effectsCamcorderActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 867
    const/4 v0, 0x1

    .line 868
    .local v0, beUnmute:Z
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_video_audio_recording"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 869
    .local v1, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_2

    .line 870
    const-string v2, "unmute"

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 873
    :cond_2
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRecordingEffect() unmute?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v2, v0}, Lcom/lge/camera/EffectsRecorder;->startRecording(Z)V

    goto :goto_0
.end method

.method public stopPreviewEffect()V
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->stopPreviewEffect(Lcom/lge/camera/EffectsBase;)V

    .line 833
    return-void
.end method

.method public stopRecordingEffect()V
    .locals 2

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->effectsCamcorderActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    const-string v0, "CameraApp"

    const-string v1, "stopRecordingEffect"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->tryCnt:I

    .line 893
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;-><init>(Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mStopRecordingEffectThread:Ljava/lang/Thread;

    .line 919
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mStopRecordingEffectThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 921
    :cond_0
    return-void
.end method

.method public updateEffectSelection()Z
    .locals 11

    .prologue
    const/16 v10, 0x64

    const/4 v9, 0x5

    const/4 v8, 0x7

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 258
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 259
    const-string v3, "CameraApp"

    const-string v4, "Do not support liveeffect"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :goto_0
    return v5

    .line 263
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_4

    .line 264
    :cond_1
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

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v7, :cond_3

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    .line 271
    :cond_4
    const-string v6, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateEffectSelection() [previous] mEffectType: "

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

    :goto_3
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    iput v3, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    .line 275
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    iput-object v3, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectParameter:Ljava/lang/Object;

    .line 277
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->readEffectType()I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    .line 278
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->readEffectParameter()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    .line 279
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

    if-nez v3, :cond_7

    const-string v3, "null"

    :goto_4
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-ne v3, v8, :cond_5

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/PIPController;->isObjectTrackingEnabledForSmartZoom()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 284
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->disableObjectTrackingForSmartZoom()V

    .line 287
    :cond_5
    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    iget v6, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    if-ne v3, v6, :cond_a

    .line 288
    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-nez v3, :cond_8

    .line 289
    const-string v3, "CameraApp"

    const-string v4, "mEffectType is none"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    :cond_6
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 279
    :cond_7
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 292
    :cond_8
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    if-nez v3, :cond_9

    .line 293
    const-string v3, "CameraApp"

    const-string v4, "effectparameter is null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 297
    :cond_9
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 299
    const-string v3, "CameraApp"

    const-string v4, "effectparameter is same"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 304
    :cond_a
    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    if-nez v3, :cond_b

    .line 305
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_preview_size_on_device"

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 306
    .local v2, videoSizePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_d

    .line 307
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    .line 308
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

    .line 316
    .end local v2           #videoSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_b
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 317
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5, v4}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 318
    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-nez v3, :cond_e

    .line 319
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 320
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

    .line 322
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_preview_size_on_device"

    invoke-interface {v3, v6, v4}, Lcom/lge/camera/ControllerFunction;->setAllChildMenuEnabled(Ljava/lang/String;Z)V

    .line 323
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_preview_size_on_device"

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    invoke-interface {v3, v6, v7, v4}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 327
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_preview_size_on_device"

    invoke-interface {v3, v6, v4, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 328
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->setLimitationToLiveeffect(Z)V

    .line 331
    :cond_c
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v3, v10}, Lcom/lge/camera/EffectsRecorder;->stopPreview(I)V

    move v5, v4

    .line 332
    goto/16 :goto_0

    .line 311
    .restart local v2       #videoSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_d
    const-string v3, "CameraApp"

    const-string v5, "videoSizePref is null"

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 312
    goto/16 :goto_0

    .line 333
    .end local v2           #videoSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_e
    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    if-eqz v3, :cond_f

    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-eq v3, v9, :cond_11

    :cond_f
    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    if-eqz v3, :cond_10

    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-eq v3, v8, :cond_11

    :cond_10
    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    if-eq v3, v9, :cond_11

    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    if-ne v3, v8, :cond_12

    .line 337
    :cond_11
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v3, v10}, Lcom/lge/camera/EffectsRecorder;->stopPreview(I)V

    .line 339
    :cond_12
    const-string v3, "CameraApp"

    const-string v6, "set to live effect limit"

    invoke-static {v3, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->setLiveeffectLimit()Ljava/lang/String;

    .line 342
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, getSizeOnScreen:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 344
    invoke-static {v0}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v1

    .line 345
    .local v1, previewSizeOnScreen:[I
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

    .line 346
    aget v3, v1, v5

    aget v5, v1, v4

    invoke-virtual {p0, v3, v5}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->changePreviewModeOnUiThread(II)V

    .line 349
    .end local v1           #previewSizeOnScreen:[I
    :cond_13
    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    if-eqz v3, :cond_15

    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-eqz v3, :cond_15

    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    if-eqz v3, :cond_14

    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-eq v3, v9, :cond_15

    :cond_14
    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    if-eqz v3, :cond_16

    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-ne v3, v8, :cond_16

    .line 354
    :cond_15
    const-string v3, "CameraApp"

    const-string v5, "#### mCameraDevice.stopPreview"

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 356
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->checkQualityAndStartPreview()V

    :goto_5
    move v5, v4

    .line 367
    goto/16 :goto_0

    .line 359
    :cond_16
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget v5, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lcom/lge/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    .line 360
    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    if-ne v3, v4, :cond_17

    iget v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    iget v5, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    if-ne v3, v5, :cond_17

    .line 362
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 363
    const-string v3, "CameraApp"

    const-string v5, "enableInput(true) in updateEffectSelection"

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_17
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    goto :goto_5
.end method

.method public waitStopRecordingEffectThreadDone()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 926
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mStopRecordingEffectThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mStopRecordingEffectThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 927
    const-string v1, "CameraApp"

    const-string v2, "Wait for stop effectRecording done.."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mStopRecordingEffectThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 929
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mStopRecordingEffectThread:Ljava/lang/Thread;

    .line 930
    const-string v1, "CameraApp"

    const-string v2, "Stop effectRecording done.."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 932
    :catch_0
    move-exception v0

    .line 933
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "Failed to join stop recording thread!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
