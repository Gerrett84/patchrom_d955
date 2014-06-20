.class public abstract Lcom/lge/camera/controller/FocusController;
.super Lcom/lge/camera/controller/Controller;
.source "FocusController.java"


# static fields
.field public static final FOCUS_POSITION_DEFAULT:I = 0x0

.field public static final FOCUS_POSITION_FACE:I = 0x2

.field public static final FOCUS_POSITION_TOUCH:I = 0x1


# instance fields
.field public final FOCUS_GUIDE_HEIGHT:I

.field public final FOCUS_GUIDE_WIDTH:I

.field public final PREVIEW_MARGINE_LEFT:I

.field public final RECTANGLE_HEIGHT:I

.field public final RECTANGLE_MARGINE_LEFT:I

.field public final RECTANGLE_MARGINE_TOP:I

.field public final RECTANGLE_WIDTH:I

.field private continuousFocus:Ljava/lang/Runnable;

.field private isCafOnGoing:Z

.field protected mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field protected mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field protected mAutoFocusOnCafCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field protected mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

.field protected mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

.field protected mContinuousFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field mFailShowFocusBeforeInit:Z

.field public mFocusAreaHeight:I

.field public mFocusAreaLeftMargin:I

.field public mFocusAreaTopMargin:I

.field public mFocusAreaWidth:I

.field protected mFocusPosition:I

.field protected mFocusRect:Landroid/graphics/Rect;

.field protected mFocusState:I

.field private mIsRegisterObjectCallback:Z

.field private mObjectState:I

.field protected mObjectTrackingFocusCallback:Lcom/lge/camera/listeners/ObjectTrackingFocusCallback;

.field public mRegister:Z

.field protected mTouchedAFbyFaceTr:Z

.field private scaleRatio:F


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 3
    .parameter "function"

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a01a3

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    .line 44
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a01a4

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    .line 45
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a01a5

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_MARGINE_LEFT:I

    .line 46
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a01a6

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_MARGINE_TOP:I

    .line 47
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a000c

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/FocusController;->PREVIEW_MARGINE_LEFT:I

    .line 48
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a01a0

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/FocusController;->FOCUS_GUIDE_WIDTH:I

    .line 49
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a01a1

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/FocusController;->FOCUS_GUIDE_HEIGHT:I

    .line 53
    iput v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    .line 59
    iput-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->mFailShowFocusBeforeInit:Z

    .line 64
    iput v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusPosition:I

    .line 66
    iput v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    .line 67
    iput v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    .line 68
    iput v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    .line 69
    iput v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaTopMargin:I

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusRect:Landroid/graphics/Rect;

    .line 71
    iput-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->mTouchedAFbyFaceTr:Z

    .line 73
    iput-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->mRegister:Z

    .line 74
    iput-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->isCafOnGoing:Z

    .line 158
    new-instance v0, Lcom/lge/camera/controller/FocusController$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/FocusController$1;-><init>(Lcom/lge/camera/controller/FocusController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->continuousFocus:Ljava/lang/Runnable;

    .line 749
    iput v2, p0, Lcom/lge/camera/controller/FocusController;->mObjectState:I

    .line 750
    iput-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->mIsRegisterObjectCallback:Z

    .line 78
    return-void
.end method

.method private setLayoutForObjectFocus(IIIILandroid/widget/ImageView;)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "objectTracking"

    .prologue
    const/4 v3, 0x0

    .line 939
    invoke-virtual {p5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 940
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 941
    const v4, 0x3f333333

    invoke-virtual {p5, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 943
    :cond_0
    invoke-virtual {p5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 947
    .local v1, otp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    iget v5, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    add-int/2addr v4, v5

    div-int/lit8 v5, p3, 0x2

    sub-int/2addr v4, v5

    if-le p1, v4, :cond_1

    .line 948
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    iget v5, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    add-int/2addr v4, v5

    div-int/lit8 v5, p3, 0x2

    sub-int p1, v4, v5

    .line 951
    :cond_1
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    iget v5, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaTopMargin:I

    add-int/2addr v4, v5

    div-int/lit8 v5, p4, 0x2

    sub-int/2addr v4, v5

    if-le p2, v4, :cond_2

    .line 952
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    iget v5, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaTopMargin:I

    add-int/2addr v4, v5

    div-int/lit8 v5, p4, 0x2

    sub-int p2, v4, v5

    .line 955
    :cond_2
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    sub-int v4, p1, v4

    div-int/lit8 v5, p3, 0x2

    sub-int v0, v4, v5

    .line 956
    .local v0, left:I
    div-int/lit8 v4, p4, 0x2

    sub-int v2, p2, v4

    .line 958
    .local v2, top:I
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 959
    if-gez v0, :cond_3

    move v0, v3

    .end local v0           #left:I
    :cond_3
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 960
    if-gez v2, :cond_4

    :goto_0
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 961
    iput p3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 962
    iput p4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 970
    .end local v2           #top:I
    :goto_1
    invoke-virtual {p5, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 971
    return-void

    .restart local v2       #top:I
    :cond_4
    move v3, v2

    .line 960
    goto :goto_0

    .line 964
    .restart local v0       #left:I
    :cond_5
    if-gez v2, :cond_6

    move v2, v3

    .end local v2           #top:I
    :cond_6
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 965
    if-gez v0, :cond_7

    :goto_2
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 966
    iput p4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 967
    iput p3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_7
    move v3, v0

    .line 965
    goto :goto_2
.end method


# virtual methods
.method public calculateObjectScaleRatio()V
    .locals 4

    .prologue
    .line 784
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 786
    .local v0, previewSizeOnDevice:Landroid/hardware/Camera$Size;
    iget v1, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    int-to-float v1, v1

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/lge/camera/controller/FocusController;->scaleRatio:F

    .line 787
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object scale ratio : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/controller/FocusController;->scaleRatio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 0

    .prologue
    .line 1084
    return-void
.end method

.method public checkAvailablePreviewSize()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 767
    const/16 v2, 0x140

    .line 768
    .local v2, qvgaWidth:I
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v4

    .line 769
    .local v4, sizeOnDeviceString:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v1

    .line 771
    .local v1, previewSizeOnDevice:[I
    const-string v3, "off"

    .line 772
    .local v3, sVideoFps:Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_preview_size_on_device"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 774
    .local v0, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v3

    .line 777
    :cond_0
    aget v6, v1, v5

    const/16 v7, 0x140

    if-gt v6, v7, :cond_1

    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isLiveEffectActive()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const-string v6, "off"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "3840x2160"

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_preview_size_on_device"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5
.end method

.method public checkFocusResigerCallBack()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 539
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkMediator()Z

    move-result v2

    if-nez v2, :cond_0

    .line 540
    const-string v2, "CameraApp"

    const-string v3, "mediator is null, return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :goto_0
    return v1

    .line 544
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->checkPreviewController()Z

    move-result v2

    if-nez v2, :cond_1

    .line 545
    const-string v2, "CameraApp"

    const-string v3, "previewcontroller is null, return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "RuntimeException : "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 548
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPreviewOnGoing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 549
    const-string v2, "CameraApp"

    const-string v3, "Preview is not started yet, return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-nez v2, :cond_4

    .line 553
    :cond_3
    const-string v2, "CameraApp"

    const-string v3, "device or parameter is null, return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 560
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public checkMultiWindowAFCondition()Z
    .locals 3

    .prologue
    .line 1058
    const-string v0, "multiwindowaf"

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "face_tracking"

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkShotModeForMultiWindowAF()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusPosition:I

    if-nez v0, :cond_1

    .line 1062
    const/4 v0, 0x1

    .line 1064
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkShotModeForMultiWindowAF()Z
    .locals 3

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_free_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1052
    :cond_0
    const/4 v0, 0x0

    .line 1054
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearFocusState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 659
    const-string v0, "CameraApp"

    const-string v1, "clearFocusState"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iput v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    .line 661
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/FocusController;->setFocusPosition(I)V

    .line 663
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->updateFocusStateIndicator()V

    .line 664
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 666
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->beSupportMoveCallbackFromSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/FocusController;->setCafOnGoing(Z)V

    .line 668
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/FocusController;->setContinuousFocusActive(Z)V

    .line 670
    :cond_0
    return-void
.end method

.method public abstract doFocus(Z)V
.end method

.method public doFocusOnCaf()V
    .locals 0

    .prologue
    .line 1099
    return-void
.end method

.method public getCafOnGoing()Z
    .locals 1

    .prologue
    .line 1022
    iget-boolean v0, p0, Lcom/lge/camera/controller/FocusController;->isCafOnGoing:Z

    return v0
.end method

.method public getDefaultFocusModeParameterForMultiWindowAF(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 4
    .parameter "param"

    .prologue
    .line 1068
    const/4 v0, 0x0

    .line 1069
    .local v0, defaultFocusMode:Ljava/lang/String;
    const-string v1, "multiwindowaf"

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "face_tracking"

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "mw_continuous-picture"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkShotModeForMultiWindowAF()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1073
    const-string v0, "mw_continuous-picture"

    .line 1077
    :goto_0
    return-object v0

    .line 1075
    :cond_1
    const-string v0, "continuous-picture"

    goto :goto_0
.end method

.method public getFocusState()I
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x4

    .line 206
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    goto :goto_0
.end method

.method public getObjectTrackingState()I
    .locals 1

    .prologue
    .line 753
    iget v0, p0, Lcom/lge/camera/controller/FocusController;->mObjectState:I

    return v0
.end method

.method public hideFocus()Z
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 288
    const-string v0, "CameraApp"

    const-string v1, "hideFocus-init"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 291
    const-string v0, "CameraApp"

    const-string v1, "mInit is false, return"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v0, 0x0

    .line 307
    :goto_0
    return v0

    .line 295
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "hideFocus-gone"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setBackgroundDefault()V

    .line 300
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->clearAnimation()V

    .line 301
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraFocusView;->clearAnimation()V

    .line 304
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/CameraFocusView;->setVisibility(I)V

    .line 307
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initController()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FocusController init-start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0900c3

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090088

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/CameraFocusView;

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    .line 86
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f09008a

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/CameraMultiWindowAFView;

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    .line 87
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->initMultiWindowAFView()V

    .line 90
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3, v3}, Lcom/lge/camera/properties/FunctionProperties;->isCafAnimationSupported(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraFocusView;->setVisibility(I)V

    .line 97
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visible? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v2}, Lcom/lge/camera/components/CameraFocusView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    .line 99
    iput-boolean v4, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 101
    iget-boolean v0, p0, Lcom/lge/camera/controller/FocusController;->mFailShowFocusBeforeInit:Z

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "face_tracking"

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "manual"

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_free_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    const-string v0, "CameraApp"

    const-string v1, "### showFocus & register "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->registerCallback()V

    .line 112
    :cond_2
    iput-boolean v3, p0, Lcom/lge/camera/controller/FocusController;->mFailShowFocusBeforeInit:Z

    .line 114
    :cond_3
    const-string v0, "CameraApp"

    const-string v1, "FocusController init-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public initFocusAreas()V
    .locals 0

    .prologue
    .line 1094
    return-void
.end method

.method public initMultiWindowAFView()V
    .locals 4

    .prologue
    .line 1031
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v1}, Lcom/lge/camera/components/CameraMultiWindowAFView;->isInitialize()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1032
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1033
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v0

    .line 1035
    .local v0, previewSizeOnScreen:[I
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/platform/PlatformDevice;->getMultiWindowFocusAreas(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1036
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/platform/PlatformDevice;->getMultiWindowFocusAreas(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->init(Landroid/content/Context;Ljava/util/List;[I)V

    .line 1041
    .end local v0           #previewSizeOnScreen:[I
    :cond_0
    return-void
.end method

.method public isBlockingFaceTrFocusing()Z
    .locals 1

    .prologue
    .line 1083
    const/4 v0, 0x0

    return v0
.end method

.method public isContinuousFocusActivating()Z
    .locals 1

    .prologue
    .line 1091
    const/4 v0, 0x0

    return v0
.end method

.method public isFocusViewVisible()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraFocusView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 282
    :cond_1
    const/4 v0, 0x1

    .line 284
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRegisterObjectCallback()Z
    .locals 1

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/lge/camera/controller/FocusController;->mIsRegisterObjectCallback:Z

    return v0
.end method

.method public isShutterButtonClicked()Z
    .locals 1

    .prologue
    .line 1089
    const/4 v0, 0x0

    return v0
.end method

.method public isSnapOnFinish()Z
    .locals 1

    .prologue
    .line 1085
    const/4 v0, 0x1

    return v0
.end method

.method public reInitialize()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->reInitialize()V

    .line 121
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->destroyMultiWindowAFGuide()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    .line 125
    :cond_0
    return-void
.end method

.method public registerCallback()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 451
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRegister = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lge/camera/controller/FocusController;->mRegister:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkFocusResigerCallBack()Z

    move-result v2

    if-nez v2, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSamsungModel()Z

    move-result v2

    if-nez v2, :cond_0

    .line 459
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->beSupportCafCallbackFromSensor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 461
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, focusMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 464
    const-string v2, "continuous-video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "continuous-picture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mw_continuous-picture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->beSupportMoveCallbackFromSensor()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 468
    iget-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->mRegister:Z

    if-nez v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/FocusController;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 470
    const-string v2, "CameraApp"

    const-string v3, "### CameraDevice().setAutoFocusMoveCallback(callback) - for registerCallback caf"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->mRegister:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 481
    .end local v1           #focusMode:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 482
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v2, "CameraApp"

    const-string v3, "Continuous focus not supported!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 474
    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    .restart local v1       #focusMode:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v2, "CameraApp"

    const-string v3, "### CameraDevice().autoFocus(callback) - for registerCallback caf"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/FocusController;->mContinuousFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 484
    .end local v1           #focusMode:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 485
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "Continuous focus not supported!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public registerFaceTrackingCallback()V
    .locals 0

    .prologue
    .line 1095
    return-void
.end method

.method public registerObjectCallback()V
    .locals 4

    .prologue
    .line 974
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportObjectTracking()Z

    move-result v2

    if-nez v2, :cond_1

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    .line 979
    .local v0, cameraDevice:Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    .line 980
    const-string v2, "CameraApp"

    const-string v3, "Register object callback"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 982
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mObjectTrackingFocusCallback:Lcom/lge/camera/listeners/ObjectTrackingFocusCallback;

    invoke-static {v0, v2}, Lcom/lge/camera/platform/PlatformDevice;->setISPDataCallbackMode(Landroid/hardware/Camera;Landroid/hardware/Camera$CameraDataCallback;)V

    .line 986
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->mIsRegisterObjectCallback:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 988
    .end local v0           #cameraDevice:Landroid/hardware/Camera;
    :catch_0
    move-exception v1

    .line 989
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "registerObjectCallback:RuntimeException : "

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 984
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v0       #cameraDevice:Landroid/hardware/Camera;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mObjectTrackingFocusCallback:Lcom/lge/camera/listeners/ObjectTrackingFocusCallback;

    invoke-static {v0, v2}, Lcom/lge/camera/platform/PlatformDevice;->setOBTDataCallbackMode(Landroid/hardware/Camera;Landroid/hardware/Camera$CameraDataCallback;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public removeContinuousFocusRunnable()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->continuousFocus:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public setBlockingFaceTrFocusing(Z)V
    .locals 0
    .parameter "beBlocked"

    .prologue
    .line 1082
    return-void
.end method

.method public setCafOnGoing(Z)V
    .locals 0
    .parameter "CafOnGoing"

    .prologue
    .line 1026
    iput-boolean p1, p0, Lcom/lge/camera/controller/FocusController;->isCafOnGoing:Z

    .line 1027
    return-void
.end method

.method public setClearFocusAnimation()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraFocusView;->clearAnimation()V

    .line 567
    :cond_0
    return-void
.end method

.method public setContinuousFocusActive(Z)V
    .locals 0
    .parameter "active"

    .prologue
    .line 1092
    return-void
.end method

.method public setFocusAreaWindow(III)V
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "leftMargin"

    .prologue
    .line 128
    iput p1, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    .line 129
    iput p2, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    .line 130
    iput p3, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    .line 131
    sget v1, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    iget v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaTopMargin:I

    .line 133
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFrontTouchAESupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090141

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 136
    .local v0, v:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 137
    const v1, 0x7f020369

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 143
    .end local v0           #v:Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 139
    .restart local v0       #v:Landroid/widget/ImageView;
    :cond_1
    const v1, 0x7f020362

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setFocusPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 742
    iput p1, p0, Lcom/lge/camera/controller/FocusController;->mFocusPosition:I

    .line 743
    return-void
.end method

.method public setFocusRectangle(IIII)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 718
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mFocusRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v1, :cond_1

    .line 719
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v1}, Lcom/lge/camera/components/CameraFocusView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 720
    .local v0, rl:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 721
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 722
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 727
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v1, v0}, Lcom/lge/camera/components/CameraFocusView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    iget v1, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    sub-int v1, p1, v1

    if-gez v1, :cond_0

    .line 729
    const/4 p1, 0x0

    .line 730
    iget p3, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mFocusRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    sub-int v3, p3, v3

    invoke-virtual {v1, v2, p2, v3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 734
    .end local v0           #rl:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void

    .line 724
    .restart local v0       #rl:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 725
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method public setFocusRectangle(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "rect"

    .prologue
    .line 737
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/controller/FocusController;->setFocusRectangle(IIII)V

    .line 738
    return-void
.end method

.method public setFocusRectangleInitialize()V
    .locals 1

    .prologue
    .line 673
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/FocusController;->setFocusRectangleInitialize(Z)V

    .line 674
    return-void
.end method

.method public setFocusRectangleInitialize(Z)V
    .locals 11
    .parameter "isRemoveCafRunable"

    .prologue
    const/4 v10, 0x0

    .line 677
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setFocusRectangleInitialize isRemoveCAFrunable="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    if-eqz p1, :cond_0

    .line 679
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->removeContinuousFocusRunnable()V

    .line 681
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->clearFocusState()V

    .line 682
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->setClearFocusAnimation()V

    .line 684
    iget v2, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_MARGINE_LEFT:I

    .line 685
    .local v2, marginLeft:I
    iget v3, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_MARGINE_TOP:I

    .line 687
    .local v3, marginTop:I
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0a0008

    invoke-static {v7, v8}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 688
    .local v0, lcdWidth:I
    const v7, 0x7f0a000c

    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/FocusController;->getPixelFromDimens(I)I

    move-result v1

    .line 689
    .local v1, leftMargin:I
    const v7, 0x7f0a000a

    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/FocusController;->getPixelFromDimens(I)I

    move-result v5

    .line 691
    .local v5, previewWidth:I
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v6

    .line 692
    .local v6, sizeOnScreenString:Ljava/lang/String;
    invoke-static {v6}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v4

    .line 694
    .local v4, previewSizeOnScreen:[I
    aget v7, v4, v10

    if-le v7, v5, :cond_3

    .line 695
    iget v7, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    sub-int v7, v0, v7

    div-int/lit8 v2, v7, 0x2

    .line 703
    :goto_0
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 704
    sget v7, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeWidth:I

    iget v8, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    sub-int/2addr v7, v8

    div-int/lit8 v2, v7, 0x2

    .line 707
    :cond_1
    iget v7, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    add-int/2addr v7, v2

    iget v8, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    add-int/2addr v8, v3

    invoke-virtual {p0, v2, v3, v7, v8}, Lcom/lge/camera/controller/FocusController;->setFocusRectangle(IIII)V

    .line 709
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFrontTouchAESupported()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 713
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->initFocusAreas()V

    .line 715
    :cond_2
    return-void

    .line 697
    :cond_3
    aget v7, v4, v10

    sub-int v8, v5, v1

    if-le v7, v8, :cond_4

    .line 698
    aget v7, v4, v10

    iget v8, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    sub-int/2addr v7, v8

    div-int/lit8 v1, v7, 0x2

    goto :goto_0

    .line 700
    :cond_4
    aget v7, v4, v10

    iget v8, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    goto :goto_0
.end method

.method public setFocusState(I)V
    .locals 5
    .parameter "state"

    .prologue
    .line 181
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->beSupportMoveCallbackFromSensor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    iput p1, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const/16 v1, 0x9

    if-ne p1, v1, :cond_3

    .line 185
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    const-wide/16 v3, 0xbb8

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 187
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->continuousFocus:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 189
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, focus:Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "not found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->continuousFocus:Ljava/lang/Runnable;

    const-wide/16 v3, 0x320

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 193
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/controller/FocusController;->updateFocusStateIndicator(ILjava/util/List;)V

    goto :goto_0

    .line 196
    .end local v0           #focus:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->continuousFocus:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 197
    iput p1, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    goto :goto_0
.end method

.method public setFocusView(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFrontTouchAESupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 152
    const/16 p1, 0x9

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/CameraFocusView;->setState(I)V

    goto :goto_0
.end method

.method public setMoveNormalFocusRect(II)V
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 572
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    sub-int v1, p1, v6

    .line 573
    .local v1, left:I
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sub-int v5, p2, v6

    .line 574
    .local v5, top:I
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    add-int v4, p1, v6

    .line 575
    .local v4, right:I
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    add-int v0, p2, v6

    .line 577
    .local v0, bottom:I
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    if-gt v1, v6, :cond_0

    .line 578
    iget v1, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    .line 579
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    iget v7, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    add-int v4, v6, v7

    .line 581
    :cond_0
    if-gtz v5, :cond_1

    .line 582
    const/4 v5, 0x0

    .line 583
    iget v0, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    .line 585
    :cond_1
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    iget v7, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    add-int/2addr v6, v7

    if-lt v4, v6, :cond_2

    .line 586
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    iget v7, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    add-int v4, v6, v7

    .line 587
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    iget v7, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    sub-int v1, v6, v7

    .line 589
    :cond_2
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    if-lt v0, v6, :cond_3

    .line 590
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    iget v7, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    sub-int v5, v6, v7

    .line 591
    iget v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    .line 594
    :cond_3
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "move to top = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", left = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", right = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bottom = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0, v1, v5, v4, v0}, Lcom/lge/camera/controller/FocusController;->setFocusRectangle(IIII)V

    .line 598
    iget-boolean v6, p0, Lcom/lge/camera/controller/FocusController;->mTouchedAFbyFaceTr:Z

    if-eqz v6, :cond_4

    .line 599
    const-string v6, "CameraApp"

    const-string v7, "setMoveNormalFocusRect - No need to start animation"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :goto_0
    return-void

    .line 603
    :cond_4
    const/4 v2, 0x0

    .line 604
    .local v2, pivotX:F
    const/4 v3, 0x0

    .line 605
    .local v3, pivotY:F
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 606
    sub-int v6, p1, v1

    int-to-float v2, v6

    .line 607
    sub-int v6, p2, v5

    int-to-float v3, v6

    .line 612
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/controller/FocusController;->startGuideViewAnimation(FF)V

    .line 613
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "x = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / y = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / left = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / top = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / x - left = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v8, p1, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / y - top  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v8, p2, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 609
    :cond_5
    sub-int v6, v0, p2

    int-to-float v2, v6

    .line 610
    sub-int v6, p1, v1

    int-to-float v3, v6

    goto :goto_1
.end method

.method public setMoveNormalFocusRectCenter()V
    .locals 7

    .prologue
    .line 646
    const/4 v2, 0x0

    .local v2, x:I
    const/4 v3, 0x0

    .line 647
    .local v3, y:I
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v1

    .line 648
    .local v1, sizeOnScreenString:Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v0

    .line 649
    .local v0, previewSizeOnScreen:[I
    const/4 v4, 0x0

    aget v4, v0, v4

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a000a

    invoke-static {v5, v6}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v5

    if-le v4, v5, :cond_0

    .line 650
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0008

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    div-int/lit8 v2, v4, 0x2

    .line 654
    :goto_0
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_MARGINE_TOP:I

    iget v5, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 655
    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/controller/FocusController;->setMoveNormalFocusRect(II)V

    .line 656
    return-void

    .line 652
    :cond_0
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_MARGINE_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    add-int v2, v4, v5

    goto :goto_0
.end method

.method public setMultiWindowAFView([I)V
    .locals 1
    .parameter "previewSizeOnScreen"

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/CameraMultiWindowAFView;->refresh([I)V

    .line 1047
    :cond_0
    return-void
.end method

.method public setObjectFocusState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 757
    iput p1, p0, Lcom/lge/camera/controller/FocusController;->mObjectState:I

    .line 758
    return-void
.end method

.method public setShutterButtonClicked(Z)V
    .locals 0
    .parameter "clicked"

    .prologue
    .line 1090
    return-void
.end method

.method public showFocus()Z
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 211
    const-string v2, "CameraApp"

    const-string v3, "showFocus"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    const-string v1, "CameraApp"

    const-string v2, "showFocus, return: is fixed focus"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :goto_0
    return v0

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 221
    :cond_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showFocus, return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/camera/properties/FunctionProperties;->isCafAnimationSupported(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 226
    const-string v1, "CameraApp"

    const-string v2, "showFocus, return: mode is camcorder"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isNullSettingView()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isSettingViewRemoving()Z

    move-result v2

    if-nez v2, :cond_4

    .line 232
    const-string v1, "CameraApp"

    const-string v2, "settingview is not null && is not Removing"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_4
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_5

    .line 237
    const-string v2, "CameraApp"

    const-string v3, "mInit is false, return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iput-boolean v1, p0, Lcom/lge/camera/controller/FocusController;->mFailShowFocusBeforeInit:Z

    goto :goto_0

    .line 242
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 243
    const-string v1, "CameraApp"

    const-string v2, "front camera, return"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 247
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_dual_camera"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 250
    :cond_7
    const-string v1, "CameraApp"

    const-string v2, "dual camera / panorama mode, return"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    :cond_8
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showFocus - visible, mFocusPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v2, :cond_a

    .line 258
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shotMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkMultiWindowAFCondition()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 260
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v2, v0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraFocusView;->clearAnimation()V

    .line 263
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, v6}, Lcom/lge/camera/components/CameraFocusView;->setVisibility(I)V

    :goto_1
    move v0, v1

    .line 276
    goto/16 :goto_0

    .line 265
    :cond_9
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v2}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setBackgroundDefault()V

    .line 266
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v2}, Lcom/lge/camera/components/CameraMultiWindowAFView;->clearAnimation()V

    .line 267
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v2, v6}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setVisibility(I)V

    .line 269
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v2, v0}, Lcom/lge/camera/components/CameraFocusView;->setVisibility(I)V

    goto :goto_1

    .line 272
    :cond_a
    const-string v0, "CameraApp"

    const-string v2, "mCameraMultiWindowAFView or mCameraFocusView is null!"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public showFocus(Z)Z
    .locals 1
    .parameter "justDoIt"

    .prologue
    .line 1093
    const/4 v0, 0x1

    return v0
.end method

.method public startAEByTouchPress(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1086
    return-void
.end method

.method public startFocusByTouchPress(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1087
    return-void
.end method

.method public startFocusByTouchPress(IIZ)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "bTouchedAFbyFaceTr"

    .prologue
    .line 1088
    return-void
.end method

.method public startGuideViewAnimation(FF)V
    .locals 11
    .parameter "pivotX"
    .parameter "pivotY"

    .prologue
    const/16 v5, 0xb

    const/16 v4, 0x8

    const/4 v10, 0x1

    const/high16 v9, 0x3f80

    .line 623
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->getFocusState()I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->getFocusState()I

    move-result v3

    if-ne v3, v5, :cond_2

    :cond_0
    const/high16 v1, 0x3fc0

    .line 624
    .local v1, scaleStart:F
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->getFocusState()I

    move-result v3

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->getFocusState()I

    move-result v3

    if-ne v3, v5, :cond_3

    :cond_1
    move v2, v9

    .line 626
    .local v2, scaleEnd:F
    :goto_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 627
    .local v0, mAniFocusScale:Landroid/view/animation/ScaleAnimation;
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3e80

    invoke-direct {v8, v3, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 629
    .local v8, mAniFocusAlpha:Landroid/view/animation/AlphaAnimation;
    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 630
    .local v7, aniSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 631
    invoke-virtual {v7, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 632
    invoke-virtual {v7, v10}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 633
    const-wide/16 v3, 0x12c

    invoke-virtual {v7, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 634
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 637
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkMultiWindowAFCondition()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 638
    iget-object v3, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v3, v7}, Lcom/lge/camera/components/CameraMultiWindowAFView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 643
    :goto_2
    return-void

    .end local v0           #mAniFocusScale:Landroid/view/animation/ScaleAnimation;
    .end local v1           #scaleStart:F
    .end local v2           #scaleEnd:F
    .end local v7           #aniSet:Landroid/view/animation/AnimationSet;
    .end local v8           #mAniFocusAlpha:Landroid/view/animation/AlphaAnimation;
    :cond_2
    move v1, v9

    .line 623
    goto :goto_0

    .line 624
    .restart local v1       #scaleStart:F
    :cond_3
    const v2, 0x3f170a3d

    goto :goto_1

    .line 640
    .restart local v0       #mAniFocusScale:Landroid/view/animation/ScaleAnimation;
    .restart local v2       #scaleEnd:F
    .restart local v7       #aniSet:Landroid/view/animation/AnimationSet;
    .restart local v8       #mAniFocusAlpha:Landroid/view/animation/AlphaAnimation;
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v3, v7}, Lcom/lge/camera/components/CameraFocusView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2
.end method

.method public startObjectTrackingFocus(IIIII)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "state"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 827
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportObjectTracking()Z

    move-result v0

    if-nez v0, :cond_1

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 831
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 834
    :cond_2
    const/4 p5, 0x0

    .line 838
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090142

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/components/RotateImageButton;

    .line 839
    .local v5, objectTracking:Lcom/lge/camera/components/RotateImageButton;
    if-eqz v5, :cond_0

    .line 840
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getAudiozoomStart()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 842
    const/4 p5, 0x0

    .line 844
    :cond_4
    iput p5, p0, Lcom/lge/camera/controller/FocusController;->mObjectState:I

    .line 845
    packed-switch p5, :pswitch_data_0

    goto :goto_0

    .line 864
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->unregisterObjectCallback()V

    .line 865
    const v0, 0x7f020276

    invoke-virtual {v5, v0}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    .line 866
    invoke-virtual {v5, v7}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 867
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->removeQuickButton(I)V

    goto :goto_0

    .line 847
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, v2, v6}, Lcom/lge/camera/ControllerFunction;->addQuickButton(Landroid/content/Context;II)V

    .line 848
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 849
    const v0, 0x7f020276

    invoke-virtual {v5, v0}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    :goto_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 873
    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/controller/FocusController;->setLayoutForObjectFocus(IIIILandroid/widget/ImageView;)V

    goto :goto_0

    .line 852
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, v2, v6}, Lcom/lge/camera/ControllerFunction;->addQuickButton(Landroid/content/Context;II)V

    .line 853
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 854
    const v0, 0x7f020275

    invoke-virtual {v5, v0}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 857
    :pswitch_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->unregisterObjectCallback()V

    .line 858
    const v0, 0x7f020274

    invoke-virtual {v5, v0}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    .line 859
    invoke-virtual {v5, v7}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->removeQuickButton(I)V

    goto :goto_1

    .line 845
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public startObjectTrackingFocus([I)V
    .locals 13
    .parameter "data"

    .prologue
    const/4 v12, 0x4

    const/4 v4, 0x2

    const/high16 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 795
    const/4 v5, 0x0

    .local v5, status:I
    const/4 v7, 0x0

    .local v7, left:I
    const/4 v9, 0x0

    .local v9, top:I
    const/4 v8, 0x0

    .local v8, right:I
    const/4 v6, 0x0

    .line 796
    .local v6, bottom:I
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    aget v0, p1, v1

    and-int/lit16 v5, v0, 0xff

    .line 798
    aget v0, p1, v1

    and-int/2addr v0, v3

    ushr-int/lit8 v7, v0, 0x10

    .line 799
    aget v0, p1, v2

    const v1, 0xffff

    and-int v9, v0, v1

    .line 800
    aget v0, p1, v2

    and-int/2addr v0, v3

    ushr-int/lit8 v8, v0, 0x10

    .line 801
    aget v0, p1, v4

    const v1, 0xffff

    and-int v6, v0, v1

    .line 810
    :goto_0
    if-eqz v5, :cond_0

    if-le v5, v12, :cond_2

    .line 823
    :cond_0
    :goto_1
    return-void

    .line 803
    :cond_1
    aget v5, p1, v1

    .line 804
    aget v7, p1, v2

    .line 805
    aget v9, p1, v4

    .line 806
    const/4 v0, 0x3

    aget v8, p1, v0

    .line 807
    aget v6, p1, v12

    goto :goto_0

    .line 814
    :cond_2
    sub-int v0, v8, v7

    div-int/lit8 v0, v0, 0x2

    add-int v10, v7, v0

    .line 815
    .local v10, x:I
    sub-int v0, v6, v9

    div-int/lit8 v0, v0, 0x2

    add-int v11, v9, v0

    .line 816
    .local v11, y:I
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object callback values, x : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", object status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", coordinate left : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", top : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", right : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bottom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 819
    int-to-float v0, v10

    iget v1, p0, Lcom/lge/camera/controller/FocusController;->scaleRatio:F

    mul-float/2addr v0, v1

    float-to-int v1, v0

    int-to-float v0, v11

    iget v2, p0, Lcom/lge/camera/controller/FocusController;->scaleRatio:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaTopMargin:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v2, v0

    sub-int v0, v8, v7

    int-to-float v0, v0

    iget v3, p0, Lcom/lge/camera/controller/FocusController;->scaleRatio:F

    mul-float/2addr v0, v3

    float-to-int v3, v0

    sub-int v0, v6, v9

    int-to-float v0, v0

    iget v4, p0, Lcom/lge/camera/controller/FocusController;->scaleRatio:F

    mul-float/2addr v0, v4

    float-to-int v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/controller/FocusController;->startObjectTrackingFocusForSmartZoom(IIIII)V

    goto/16 :goto_1

    .line 821
    :cond_3
    int-to-float v0, v10

    iget v1, p0, Lcom/lge/camera/controller/FocusController;->scaleRatio:F

    mul-float/2addr v0, v1

    float-to-int v1, v0

    int-to-float v0, v11

    iget v2, p0, Lcom/lge/camera/controller/FocusController;->scaleRatio:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaTopMargin:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v2, v0

    sub-int v0, v8, v7

    int-to-float v0, v0

    iget v3, p0, Lcom/lge/camera/controller/FocusController;->scaleRatio:F

    mul-float/2addr v0, v3

    float-to-int v3, v0

    sub-int v0, v6, v9

    int-to-float v0, v0

    iget v4, p0, Lcom/lge/camera/controller/FocusController;->scaleRatio:F

    mul-float/2addr v0, v4

    float-to-int v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/controller/FocusController;->startObjectTrackingFocus(IIIII)V

    goto/16 :goto_1
.end method

.method public startObjectTrackingFocusForSmartZoom(IIIII)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "state"

    .prologue
    const v8, 0x7f020276

    const/16 v7, 0x8

    .line 879
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportObjectTracking()Z

    move-result v5

    if-nez v5, :cond_1

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v5

    if-nez v5, :cond_3

    .line 883
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 885
    :cond_2
    const/4 p5, 0x0

    .line 889
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f090142

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    .line 890
    .local v2, objectTracking:Lcom/lge/camera/components/RotateImageButton;
    if-eqz v2, :cond_0

    .line 891
    iput p5, p0, Lcom/lge/camera/controller/FocusController;->mObjectState:I

    .line 892
    packed-switch p5, :pswitch_data_0

    .line 917
    :goto_1
    move v0, p1

    .line 918
    .local v0, convX:I
    move v1, p2

    .line 920
    .local v1, convY:I
    const/4 v5, 0x4

    if-ne p5, v5, :cond_4

    .line 921
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->initSmartZoomFocusView()V

    .line 922
    const-string v5, "CameraApp"

    const-string v6, "startObjectTrackingFocusForSmartZoom : focus view moves to default position"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 894
    .end local v0           #convX:I
    .end local v1           #convY:I
    :pswitch_0
    invoke-virtual {v2, v8}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 897
    :pswitch_1
    const v5, 0x7f020275

    invoke-virtual {v2, v5}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 900
    :pswitch_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->unregisterObjectCallback()V

    .line 901
    const v5, 0x7f020274

    invoke-virtual {v2, v5}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    .line 902
    invoke-virtual {v2, v7}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    goto :goto_1

    .line 905
    :pswitch_3
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->disableObjectTrackingForSmartZoom()V

    .line 906
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->unregisterObjectCallback()V

    goto :goto_1

    .line 909
    :pswitch_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->unregisterObjectCallback()V

    .line 910
    invoke-virtual {v2, v8}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    .line 911
    invoke-virtual {v2, v7}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    goto :goto_0

    .line 924
    .restart local v0       #convX:I
    .restart local v1       #convY:I
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v5

    if-nez v5, :cond_5

    .line 925
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 926
    .local v3, outMetrics:Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 927
    .local v4, wm:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 928
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v0, v5, p2

    .line 929
    move v1, p1

    .line 931
    .end local v3           #outMetrics:Landroid/util/DisplayMetrics;
    .end local v4           #wm:Landroid/view/WindowManager;
    :cond_5
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startObjectTrackingFocusForSmartZoom : convX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", convY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v0, v1}, Lcom/lge/camera/ControllerFunction;->setSmartZoomFocusViewPosition(II)V

    goto/16 :goto_0

    .line 892
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public unregisterCallback()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 491
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRegister = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lge/camera/controller/FocusController;->mRegister:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->mRegister:Z

    if-eqz v2, :cond_1

    .line 494
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 495
    const-string v2, "CameraApp"

    const-string v3, "### CameraDevice().setAutoFocusMoveCallback(null) - for unRegisterCallback caf"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 498
    :cond_0
    iput-boolean v5, p0, Lcom/lge/camera/controller/FocusController;->mRegister:Z

    .line 499
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/FocusController;->setCafOnGoing(Z)V

    .line 501
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkFocusResigerCallBack()Z

    move-result v2

    if-nez v2, :cond_3

    .line 536
    :cond_2
    :goto_0
    return-void

    .line 505
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSamsungModel()Z

    move-result v2

    if-nez v2, :cond_2

    .line 508
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->beSupportCafCallbackFromSensor()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 509
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, focusMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 512
    const-string v2, "continuous-video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "continuous-picture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "mw_continuous-picture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 515
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->beSupportMoveCallbackFromSensor()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 516
    iget-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->mRegister:Z

    if-eqz v2, :cond_2

    .line 517
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 518
    const-string v2, "CameraApp"

    const-string v3, "### CameraDevice().setAutoFocusMoveCallback(null) - for unRegisterCallback caf"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->mRegister:Z

    .line 520
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/FocusController;->setCafOnGoing(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 529
    .end local v1           #focusMode:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 530
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v2, "CameraApp"

    const-string v3, "Continuous focus not supported!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 523
    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    .restart local v1       #focusMode:Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v2, "CameraApp"

    const-string v3, "### CameraDevice().autoFocus(null) - for unRegisterCallback caf"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 532
    .end local v1           #focusMode:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 533
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "Continuous focus not supported!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public unregisterObjectCallback()V
    .locals 5

    .prologue
    .line 994
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportObjectTracking()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 999
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    .line 1001
    .local v0, cameraDevice:Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    .line 1002
    const-string v3, "CameraApp"

    const-string v4, "Unregister object callback"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 1004
    .local v2, parameters:Landroid/hardware/Camera$Parameters;
    const-string v3, "off"

    invoke-static {v2, v3}, Lcom/lge/camera/platform/PlatformDevice;->setObjectTracking(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1005
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1007
    invoke-static {v0}, Lcom/lge/camera/platform/PlatformDevice;->runObjectTracking(Landroid/hardware/Camera;)V

    .line 1008
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1009
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/lge/camera/platform/PlatformDevice;->setISPDataCallbackMode(Landroid/hardware/Camera;Landroid/hardware/Camera$CameraDataCallback;)V

    .line 1014
    :goto_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lge/camera/controller/FocusController;->mIsRegisterObjectCallback:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1016
    .end local v0           #cameraDevice:Landroid/hardware/Camera;
    .end local v2           #parameters:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v1

    .line 1017
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "CameraApp"

    const-string v4, "unregisterObjectCallback-setParameters fail:RuntimeException : "

    invoke-static {v3, v4, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1011
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v0       #cameraDevice:Landroid/hardware/Camera;
    .restart local v2       #parameters:Landroid/hardware/Camera$Parameters;
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v0, v3}, Lcom/lge/camera/platform/PlatformDevice;->setOBTDataCallbackMode(Landroid/hardware/Camera;Landroid/hardware/Camera$CameraDataCallback;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public updateFocusStateIndicator()V
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->getFocusState()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/FocusController;->updateFocusStateIndicator(ILjava/util/List;)V

    .line 318
    return-void
.end method

.method public updateFocusStateIndicator(ILjava/util/List;)V
    .locals 7
    .parameter "focusState"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, areaList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 321
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFocusIndicator() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->getFocusState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iput p1, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    .line 324
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    invoke-static {v4, v1}, Lcom/lge/camera/properties/FunctionProperties;->isCafAnimationSupported(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_dual_camera"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    const-string v1, "CameraApp"

    const-string v2, "updateFocusStateIndicator - dual camera mode, return"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    if-eqz v1, :cond_0

    .line 340
    packed-switch p1, :pswitch_data_0

    .line 445
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong focus state!: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->getFocusState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :pswitch_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->setMoveNormalFocusRectCenter()V

    .line 343
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    goto :goto_0

    .line 348
    :pswitch_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkMultiWindowAFCondition()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 349
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v1}, Lcom/lge/camera/components/CameraMultiWindowAFView;->clearAnimation()V

    .line 350
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v1, v5}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setCenterWindowVisibility(I)V

    goto :goto_0

    .line 353
    :cond_3
    iget v1, p0, Lcom/lge/camera/controller/FocusController;->mFocusPosition:I

    if-ne v1, v4, :cond_4

    .line 354
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    goto :goto_0

    .line 356
    :cond_4
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    goto :goto_0

    .line 362
    :pswitch_3
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    goto :goto_0

    .line 367
    :pswitch_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkMultiWindowAFCondition()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 368
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setCenterWindowStatus(I)V

    goto :goto_0

    .line 371
    :cond_5
    iget v1, p0, Lcom/lge/camera/controller/FocusController;->mFocusPosition:I

    if-ne v1, v4, :cond_6

    .line 372
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    goto/16 :goto_0

    .line 374
    :cond_6
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    goto/16 :goto_0

    .line 380
    :pswitch_5
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->beSupportMoveCallbackFromSensor()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 381
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->setClearFocusAnimation()V

    .line 383
    :cond_7
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    goto/16 :goto_0

    .line 388
    :pswitch_6
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkMultiWindowAFCondition()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 389
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setCenterWindowStatus(I)V

    goto/16 :goto_0

    .line 392
    :cond_8
    iget v1, p0, Lcom/lge/camera/controller/FocusController;->mFocusPosition:I

    if-ne v1, v4, :cond_9

    .line 393
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    goto/16 :goto_0

    .line 395
    :cond_9
    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    goto/16 :goto_0

    .line 406
    :pswitch_7
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    goto/16 :goto_0

    .line 410
    :pswitch_8
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    goto/16 :goto_0

    .line 415
    :pswitch_9
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkMultiWindowAFCondition()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 416
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v1}, Lcom/lge/camera/components/CameraMultiWindowAFView;->clearAnimation()V

    .line 417
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v1, p2}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setList(Ljava/util/List;)V

    .line 418
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v1}, Lcom/lge/camera/components/CameraMultiWindowAFView;->update()V

    .line 420
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget v1, v1, Landroid/hardware/Camera$Area;->weight:I

    if-ne v1, v6, :cond_0

    .line 421
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    const-wide/16 v3, 0x5dc

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 427
    :pswitch_a
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkMultiWindowAFCondition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 429
    .local v0, zoomRatio:I
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_a

    .line 430
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v1}, Lcom/lge/camera/components/CameraMultiWindowAFView;->clearAnimation()V

    .line 431
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v1, v5}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setCenterWindowVisibility(I)V

    goto/16 :goto_0

    .line 433
    :cond_a
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v1}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setBackgroundDefault()V

    goto/16 :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_a
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method public updateFocusStateIndicator(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, areaList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->getFocusState()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/lge/camera/controller/FocusController;->updateFocusStateIndicator(ILjava/util/List;)V

    .line 313
    return-void
.end method
