.class public Lcom/lge/camera/controller/camera/CameraFocusController;
.super Lcom/lge/camera/controller/FocusController;
.source "CameraFocusController.java"

# interfaces
.implements Lcom/lge/camera/listeners/CameraAutoFocusCallback$CameraAutoFocusCallbackFunction;
.implements Lcom/lge/camera/listeners/CameraAutoFocusMoveCallback$CameraAutoFocusMoveCallbackFunction;
.implements Lcom/lge/camera/listeners/CameraContinuousFocusCallback$CameraCAFCallbackFunction;
.implements Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback$CameraAutoFocusOnCafCallbackFunction;


# static fields
.field private static mPreviousFocusedState:I


# instance fields
.field protected mBlockingFaceTrFocusing:Z

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mIsContinuousFocusActive:Z

.field private mShutterButtonClicked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x0

    sput v0, Lcom/lge/camera/controller/camera/CameraFocusController;->mPreviousFocusedState:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .parameter "function"

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/FocusController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 35
    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mShutterButtonClicked:Z

    .line 36
    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mBlockingFaceTrFocusing:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    .line 550
    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mIsContinuousFocusActive:Z

    .line 41
    new-instance v0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/listeners/CameraAutoFocusCallback;-><init>(Lcom/lge/camera/listeners/CameraAutoFocusCallback$CameraAutoFocusCallbackFunction;)V

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 42
    new-instance v0, Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback;-><init>(Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback$CameraAutoFocusOnCafCallbackFunction;)V

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->mAutoFocusOnCafCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 43
    new-instance v0, Lcom/lge/camera/listeners/CameraAutoFocusMoveCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/listeners/CameraAutoFocusMoveCallback;-><init>(Lcom/lge/camera/listeners/CameraAutoFocusMoveCallback$CameraAutoFocusMoveCallbackFunction;)V

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 44
    new-instance v0, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;-><init>(Lcom/lge/camera/listeners/CameraContinuousFocusCallback$CameraCAFCallbackFunction;)V

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->mContinuousFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camera/CameraFocusController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkMediator()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/camera/controller/camera/CameraFocusController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkMediator()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/camera/CameraFocusController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkMediator()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method private autoFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 211
    const-string v1, "CameraApp"

    const-string v2, "TIME CHECK : Touch AF [START] - autoFocus()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v1, "CameraApp"

    const-string v2, "autoFocus()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090088

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/CameraFocusView;

    iput-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->canTakePicture()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mFocusRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 219
    const-string v1, "CameraApp"

    const-string v2, "Start autofocus."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "face_tracking"

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    iget-boolean v1, p0, Lcom/lge/camera/controller/FocusController;->mTouchedAFbyFaceTr:Z

    if-nez v1, :cond_2

    .line 224
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camera/CameraFocusController;->setBlockingFaceTrFocusing(Z)V

    .line 225
    iput v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mFocusRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusWindow(Landroid/graphics/Rect;)V

    .line 234
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->updateFocusStateIndicator()V

    .line 236
    const-string v1, "CameraApp"

    const-string v2, "#### TIME_CHECK call CameraDevice().autoFocus()."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_1
    :goto_1
    return-void

    .line 227
    :cond_2
    const/4 v1, 0x5

    iput v1, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    goto :goto_0

    .line 230
    :cond_3
    iput v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraDevice.autoFocus() RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private canTakePicture()Z
    .locals 3

    .prologue
    .line 334
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canTakePicture() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->isFocusStateIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelAutoFocusAfterInitFocusArea()V
    .locals 4

    .prologue
    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 159
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#####  TIME_CHECK call getCameraDevice().cancelAutoFocus() : others, states = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->initFocusAreas()V

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "cancelAutoFocus Exception:"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private checkFlashModeOff()Z
    .locals 4

    .prologue
    .line 705
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_flash"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, currentSetting:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_smart_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 707
    .local v1, smartModeSetting:Ljava/lang/String;
    const-string v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "not found"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkFocusPosition(II)Z
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 489
    iget v0, p0, Lcom/lge/camera/controller/FocusController;->PREVIEW_MARGINE_LEFT:I

    .line 490
    .local v0, baseX:I
    const/4 v1, 0x0

    .line 491
    .local v1, baseY:I
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->FOCUS_GUIDE_WIDTH:I

    add-int v3, v0, v6

    .line 492
    .local v3, width:I
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->FOCUS_GUIDE_HEIGHT:I

    add-int v2, v1, v6

    .line 494
    .local v2, height:I
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "face_tracking"

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_focus"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 496
    if-lt p1, v0, :cond_0

    if-gt p1, v3, :cond_0

    if-lt p2, v1, :cond_0

    if-le p2, v2, :cond_3

    .line 497
    :cond_0
    const-string v6, "CameraApp"

    const-string v7, "startFocusByTouchPress() return: %d, %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :cond_1
    :goto_0
    return v4

    .line 501
    :cond_2
    if-lt p1, v0, :cond_1

    if-gt p1, v3, :cond_1

    if-lt p2, v1, :cond_1

    if-gt p2, v2, :cond_1

    :cond_3
    move v4, v5

    .line 505
    goto :goto_0
.end method

.method private checkStartFocusByTouchPress()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 470
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    invoke-static {v2}, Lcom/lge/camera/properties/FunctionProperties;->isTouchAfSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 485
    :cond_0
    :goto_0
    return v0

    .line 476
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is8974Chipset()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 482
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v2, :cond_0

    move v0, v1

    .line 485
    goto :goto_0
.end method

.method private doCancelFocusingState()V
    .locals 5

    .prologue
    .line 116
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_2

    .line 118
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->setBlockingFaceTrFocusing(Z)V

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, focusMode:Ljava/lang/String;
    const-string v2, "manual"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_focus"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 124
    const-string v2, "fixed"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->setCameraFocusMode(Ljava/lang/String;)V

    .line 139
    .end local v1           #focusMode:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->cancelAutoFocusAfterInitFocusArea()V

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusRectangleInitialize()V

    .line 143
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->isShutterButtonClicked()Z

    move-result v2

    if-nez v2, :cond_3

    .line 144
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showIndicatorController()V

    .line 145
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocus()Z

    .line 148
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isSettingControllerVisible()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionSettingControllerShowing()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionDragControllerVisible()Z

    move-result v2

    if-nez v2, :cond_4

    .line 152
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showQuickFunctionController()V

    .line 154
    :cond_4
    return-void

    .line 125
    .restart local v1       #focusMode:Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "auto"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_focus"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 127
    const-string v2, "auto"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->setCameraFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getDefaultFocusModeParameterForMultiWindowAF(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, defaultFocusValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 134
    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setCameraFocusMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doFocusing(Z)V
    .locals 7
    .parameter "focused"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v6, 0x1

    .line 655
    const-string v3, "face_tracking"

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_focus"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 657
    .local v0, isFaceTracking:Z
    if-eqz p1, :cond_4

    .line 658
    const-string v2, "CameraApp"

    const-string v3, "FOCUS_SUCCESS"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isTimerShotCountdown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 661
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->playAFSound(Z)V

    .line 663
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->isBlockingFaceTrFocusing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 664
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    .line 669
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isShutterFocusLongKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 670
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v6}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Landroid/hardware/Camera$Parameters;Z)Z

    .line 687
    :cond_1
    :goto_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFocusPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/controller/FocusController;->mFocusPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->updateFocusStateIndicator()V

    .line 689
    return-void

    .line 666
    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x6

    :cond_3
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    goto :goto_0

    .line 675
    :cond_4
    const-string v1, "CameraApp"

    const-string v3, "FOCUS_FAIL"

    invoke-static {v1, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isTimerShotCountdown()Z

    move-result v1

    if-nez v1, :cond_5

    .line 678
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->playAFSound(Z)V

    .line 680
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->isBlockingFaceTrFocusing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 681
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    goto :goto_1

    .line 683
    :cond_6
    if-eqz v0, :cond_7

    const/4 v1, 0x7

    :goto_2
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2
.end method

.method private isFocusStateIdle()Z
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCameraFocusMode(Ljava/lang/String;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 171
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 173
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 174
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "### setFocusMode-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Landroid/hardware/Camera$Parameters;Z)Z

    .line 176
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    .line 179
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v1           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_0
    :goto_0
    return-void

    .line 180
    .restart local v1       #parameters:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setParameters failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public callbackAutoFocusOnCaf(ZLandroid/hardware/Camera;)V
    .locals 3
    .parameter "success"
    .parameter "camera"

    .prologue
    .line 861
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### AutoFocusOnCafCallback():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camera/CameraFocusController$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camera/CameraFocusController$3;-><init>(Lcom/lge/camera/controller/camera/CameraFocusController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public callbackOnAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 7
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 601
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "##### AutoFocusCallback():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v4, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TIME CHECK : Touch AF [END] - callbackOnAutoFocus ()? "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_1

    const-string v3, "FOCUS_SUCCESS"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkMediator()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 652
    :cond_0
    :goto_1
    return-void

    .line 602
    :cond_1
    const-string v3, "FOCUS_FAIL"

    goto :goto_0

    .line 611
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v1

    .line 614
    .local v1, focusState:I
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 615
    .local v2, shotMode:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkFlashModeOff()Z

    move-result v3

    if-nez v3, :cond_4

    .line 616
    const-string v3, "shotmode_normal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "not found"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "shotmode_main_beauty"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 620
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getFlashEnableForShotMode()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_flash"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, flash:Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFlashMode(Ljava/lang/String;)V

    .line 627
    .end local v0           #flash:Ljava/lang/String;
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 628
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isShutterFocusLongKey()Z

    move-result v3

    if-nez v3, :cond_5

    .line 629
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.ReleaseTouchFocus"

    const-wide/16 v5, 0xbb8

    invoke-interface {v3, v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 632
    :cond_5
    const/4 v3, 0x2

    if-ne v1, v3, :cond_c

    .line 634
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/CameraFocusController;->doFocusing(Z)V

    .line 636
    const-string v3, "shotmode_normal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "not found"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_timer"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getTimerCaptureDelay()I

    move-result v3

    if-lez v3, :cond_b

    .line 640
    :cond_7
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.DoCapture"

    const-wide/16 v5, 0x64

    invoke-interface {v3, v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 650
    :cond_8
    :goto_4
    const-string v3, "CameraApp"

    const-string v4, "AutoFocusCallback ------------------"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFocusState() ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 620
    :cond_9
    const-string v0, "off"

    goto/16 :goto_2

    .line 623
    :cond_a
    const-string v3, "off"

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFlashMode(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 642
    :cond_b
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.DoCapture"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto :goto_4

    .line 644
    :cond_c
    const/4 v3, 0x1

    if-eq v1, v3, :cond_d

    const/4 v3, 0x5

    if-ne v1, v3, :cond_e

    .line 645
    :cond_d
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/CameraFocusController;->doFocusing(Z)V

    goto :goto_4

    .line 646
    :cond_e
    if-nez v1, :cond_8

    .line 648
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->updateFocusStateIndicator()V

    goto :goto_4
.end method

.method public callbackOnAutoFocusMove(ZLandroid/hardware/Camera;)V
    .locals 6
    .parameter "start"
    .parameter "camera"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 773
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAutoFocusMoving + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " called. Could be returned without any action."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkMediator()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->snapshotOnContinuousFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, focusMode:Ljava/lang/String;
    const-string v1, "face_tracking"

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 787
    if-eqz p1, :cond_0

    .line 788
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->initFocusAreas()V

    goto :goto_0

    .line 793
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getCafOnGoing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 797
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->isTouchMoveFocusVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 801
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 802
    const-string v1, "CameraApp"

    const-string v2, "focus mode is FOCUS_MODE_AUTO"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/camera/CameraFocusController;->setCafOnGoing(Z)V

    .line 804
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/camera/CameraFocusController;->setContinuousFocusActive(Z)V

    goto :goto_0

    .line 807
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 809
    if-eqz p1, :cond_7

    .line 810
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_5

    .line 811
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->initFocusAreas()V

    .line 813
    :cond_5
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camera/CameraFocusController;->setCafOnGoing(Z)V

    .line 815
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkMultiWindowAFCondition()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 816
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    .line 821
    :goto_1
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocus(Z)Z

    .line 822
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camera/CameraFocusController;->setContinuousFocusActive(Z)V

    .line 837
    :goto_2
    const-string v2, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### onAutoFocusMoving(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_9

    const-string v1, "START"

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/platform/PlatformDevice;->getMultiWindowFocusAreas(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->updateFocusStateIndicator(Ljava/util/List;)V

    .line 841
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAFonCAF()Z

    move-result v1

    if-nez v1, :cond_0

    .line 842
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/camera/CameraFocusController$2;

    invoke-direct {v2, p0, p1}, Lcom/lge/camera/controller/camera/CameraFocusController$2;-><init>(Lcom/lge/camera/controller/camera/CameraFocusController;Z)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 819
    :cond_6
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    goto :goto_1

    .line 824
    :cond_7
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/camera/CameraFocusController;->setCafOnGoing(Z)V

    .line 826
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkMultiWindowAFCondition()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 827
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    .line 832
    :goto_4
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    const-wide/16 v3, 0xbb8

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 833
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/camera/CameraFocusController;->setContinuousFocusActive(Z)V

    goto :goto_2

    .line 830
    :cond_8
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    goto :goto_4

    .line 837
    :cond_9
    const-string v1, "END"

    goto :goto_3
.end method

.method public callbackOnCAFocus(ZLandroid/hardware/Camera;)V
    .locals 6
    .parameter "focusedState"
    .parameter "camera"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x9

    const/16 v3, 0x8

    .line 714
    const-string v0, "CameraApp"

    const-string v1, "onContinuousFocus()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->isTouchMoveFocusVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### onContinuousFocus():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isMTKChipset()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 732
    if-eqz p1, :cond_2

    sget v0, Lcom/lge/camera/controller/camera/CameraFocusController;->mPreviousFocusedState:I

    if-eq v0, v4, :cond_3

    :cond_2
    if-nez p1, :cond_4

    sget v0, Lcom/lge/camera/controller/camera/CameraFocusController;->mPreviousFocusedState:I

    if-ne v0, v3, :cond_4

    .line 733
    :cond_3
    sput v5, Lcom/lge/camera/controller/camera/CameraFocusController;->mPreviousFocusedState:I

    .line 734
    const-string v0, "CameraApp"

    const-string v1, "### onContinuousFocus(): skipped"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 739
    :cond_4
    if-eqz p1, :cond_6

    .line 740
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    .line 741
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isMTKChipset()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 742
    sput v4, Lcom/lge/camera/controller/camera/CameraFocusController;->mPreviousFocusedState:I

    .line 750
    :cond_5
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setContinuousFocusActive(Z)V

    .line 751
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocus(Z)Z

    .line 752
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->updateFocusStateIndicator()V

    .line 754
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camera/CameraFocusController$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camera/CameraFocusController$1;-><init>(Lcom/lge/camera/controller/camera/CameraFocusController;)V

    const-wide/16 v2, 0x320

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 745
    :cond_6
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    .line 746
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isMTKChipset()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 747
    sput v3, Lcom/lge/camera/controller/camera/CameraFocusController;->mPreviousFocusedState:I

    goto :goto_1
.end method

.method public cancelAutoFocus()V
    .locals 3

    .prologue
    .line 93
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---- TIME_CHECK cancelAutoFocus(): mFocusState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusRectangleInitialize(Z)V

    .line 113
    :goto_0
    return-void

    .line 97
    :pswitch_0
    const-string v0, "CameraApp"

    const-string v1, "Cancel autofocus : FOCUSING_SNAP_ON_FINISH : break"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :pswitch_1
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->doCancelFocusingState()V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public doFocus(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    .line 66
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFocus pressed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    if-eqz p1, :cond_2

    .line 68
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    .line 77
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->autoFocus()V

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->cancelAutoFocus()V

    goto :goto_0
.end method

.method public doFocusOnCaf()V
    .locals 4

    .prologue
    .line 81
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const-string v1, "CameraApp"

    const-string v2, "## Register AutoFocus on CAF"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mAutoFocusOnCafCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraDevice.autoFocus() RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hideFocus()Z
    .locals 3

    .prologue
    .line 394
    const-string v0, "CameraApp"

    const-string v1, "hideFocus"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->hideFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
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

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/camera/properties/FunctionProperties;->isCafAnimationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->unregisterCallback()V

    .line 403
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public initFocusAreas()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 509
    const-string v2, "CameraApp"

    const-string v3, "InitFocusAreas"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 513
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isJBPlusModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 514
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    if-nez v2, :cond_0

    .line 515
    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 517
    :cond_0
    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 535
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    if-nez v2, :cond_1

    .line 536
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1, v6}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Landroid/hardware/Camera$Parameters;Z)Z

    .line 540
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :goto_1
    return-void

    .line 519
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    if-nez v2, :cond_3

    .line 520
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    .line 521
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    iget-object v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusRect:Landroid/graphics/Rect;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v2, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 524
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v2, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 525
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v2, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 526
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v2, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 527
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iput v6, v2, Landroid/hardware/Camera$Area;->weight:I

    .line 529
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    if-nez v2, :cond_4

    .line 530
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 532
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_0

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "RuntimeException:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public isBlockingFaceTrFocusing()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mBlockingFaceTrFocusing:Z

    return v0
.end method

.method public isContinuousFocusActivating()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mIsContinuousFocusActive:Z

    return v0
.end method

.method public isShutterButtonClicked()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mShutterButtonClicked:Z

    return v0
.end method

.method public isSnapOnFinish()Z
    .locals 2

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchMoveFocusVisible()Z
    .locals 3

    .prologue
    .line 385
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090141

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 386
    .local v0, v:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 387
    const/4 v1, 0x1

    .line 389
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 572
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 574
    iput-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v0, :cond_1

    .line 577
    iput-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    if-eqz v0, :cond_2

    .line 582
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->destroyMultiWindowAFGuide()V

    .line 583
    iput-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    .line 587
    :cond_2
    iput-object v1, p0, Lcom/lge/camera/controller/FocusController;->mFocusRect:Landroid/graphics/Rect;

    .line 588
    iput-object v1, p0, Lcom/lge/camera/controller/FocusController;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 589
    iput-object v1, p0, Lcom/lge/camera/controller/FocusController;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 590
    iput-object v1, p0, Lcom/lge/camera/controller/FocusController;->mContinuousFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 591
    iput-object v1, p0, Lcom/lge/camera/controller/FocusController;->mAutoFocusOnCafCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 592
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->onDestroy()V

    .line 593
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 49
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->onPause()V

    .line 50
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mIsContinuousFocusActive:Z

    .line 51
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->hideFocus()Z

    .line 53
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setClearFocusAnimation()V

    .line 55
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/camera/properties/FunctionProperties;->isCafAnimationSupported(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->unregisterCallback()V

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090141

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 60
    .local v0, v:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 61
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    :cond_1
    return-void
.end method

.method public registerFaceTrackingCallback()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->beSupportMoveCallbackFromSensor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    const-string v0, "CameraApp"

    const-string v1, "### CameraDevice().setAutoFocusMoveCallback(callback) - for registerFaceTrackingCallback caf"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "### CameraDevice().autoFocus(callback) - for registerFaceTrackingCallback caf"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mContinuousFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0
.end method

.method public setBlockingFaceTrFocusing(Z)V
    .locals 4
    .parameter "beBlocked"

    .prologue
    const/4 v3, 0x0

    .line 197
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### mBlockingFaceTrFocusing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mBlockingFaceTrFocusing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "face_tracking"

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mBlockingFaceTrFocusing:Z

    .line 200
    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocus(Z)Z

    .line 208
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->hideFocus()Z

    goto :goto_0

    .line 206
    :cond_1
    iput-boolean v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mBlockingFaceTrFocusing:Z

    goto :goto_0
.end method

.method public setContinuousFocusActive(Z)V
    .locals 0
    .parameter "active"

    .prologue
    .line 555
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mIsContinuousFocusActive:Z

    .line 556
    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 5
    .parameter "value"

    .prologue
    .line 692
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 693
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 694
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    const-string v2, "flash-mode"

    invoke-virtual {v1, v2, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    .end local v1           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_0
    :goto_0
    return-void

    .line 697
    .restart local v1       #parameters:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 698
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setParameters failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFocusWindow(Landroid/graphics/Rect;)V
    .locals 14
    .parameter "rect"

    .prologue
    const/high16 v13, 0x4000

    const/high16 v12, 0x44fa

    const/4 v11, 0x1

    .line 248
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v6

    .line 249
    .local v6, sizeOnScreenString:Ljava/lang/String;
    invoke-static {v6}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v5

    .line 250
    .local v5, previewSizeOnScreen:[I
    if-nez v6, :cond_1

    .line 251
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->onResume()V

    .line 252
    const-string v8, "CameraApp"

    const-string v9, "error! sizeOnScreenString is null"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 256
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v8

    invoke-static {v8}, Lcom/lge/camera/properties/FunctionProperties;->isTouchAfSupported(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 257
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 259
    .local v4, parameters:Landroid/hardware/Camera$Parameters;
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    if-nez v8, :cond_2

    .line 260
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    .line 261
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    new-instance v9, Landroid/hardware/Camera$Area;

    iget-object v10, p0, Lcom/lge/camera/controller/FocusController;->mFocusRect:Landroid/graphics/Rect;

    invoke-direct {v9, v10, v11}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_2
    const/4 v0, 0x0

    .local v0, center_x:F
    const/4 v1, 0x0

    .line 268
    .local v1, center_y:F
    const/4 v8, 0x0

    :try_start_0
    aget v8, v5, v8

    int-to-float v8, v8

    div-float v0, v8, v13

    .line 269
    const/4 v8, 0x1

    aget v8, v5, v8

    int-to-float v8, v8

    div-float v1, v8, v13

    .line 271
    iget v8, p1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    sub-float/2addr v8, v0

    mul-float/2addr v8, v12

    const/4 v9, 0x0

    aget v9, v5, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 272
    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float/2addr v8, v1

    mul-float/2addr v8, v12

    const/4 v9, 0x1

    aget v9, v5, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->top:I

    .line 273
    iget v8, p1, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    sub-float/2addr v8, v0

    mul-float/2addr v8, v12

    const/4 v9, 0x0

    aget v9, v5, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->right:I

    .line 274
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    sub-float/2addr v8, v1

    mul-float/2addr v8, v12

    const/4 v9, 0x1

    aget v9, v5, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    .line 276
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v8

    if-ne v8, v11, :cond_3

    .line 277
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 278
    .local v7, tmprect:Landroid/graphics/Rect;
    iget v8, v7, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v8, v8, -0x1

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 279
    iget v8, v7, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v8, v8, -0x1

    iput v8, p1, Landroid/graphics/Rect;->right:I

    .line 284
    .end local v7           #tmprect:Landroid/graphics/Rect;
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNVIDIAChipset()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 285
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-nez v8, :cond_5

    .line 286
    :cond_4
    iget v8, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    mul-int/lit8 v8, v8, -0x1

    div-int/lit8 v8, v8, 0x2

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 287
    iget v8, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    div-int/lit8 v8, v8, 0x2

    iput v8, p1, Landroid/graphics/Rect;->right:I

    .line 288
    iget v8, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    mul-int/lit8 v8, v8, -0x1

    div-int/lit8 v8, v8, 0x2

    iput v8, p1, Landroid/graphics/Rect;->top:I

    .line 289
    iget v8, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    .line 293
    :cond_5
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Area;

    iget-object v8, v8, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v9, p1, Landroid/graphics/Rect;->left:I

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 294
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Area;

    iget-object v8, v8, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v9, p1, Landroid/graphics/Rect;->right:I

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 295
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Area;

    iget-object v8, v8, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v9, p1, Landroid/graphics/Rect;->top:I

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 296
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Area;

    iget-object v8, v8, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 297
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Area;

    const/4 v9, 0x1

    iput v9, v8, Landroid/hardware/Camera$Area;->weight:I

    .line 299
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v8

    if-nez v8, :cond_7

    .line 300
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Landroid/hardware/Camera$Parameters;Z)Z

    .line 301
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-virtual {v4, v8}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 305
    const-string v3, "auto"

    .line 308
    .local v3, focusMode:Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 309
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "### setFocusMode-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .end local v3           #focusMode:Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-virtual {v4, v8}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 315
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->beSupportMoveCallbackFromSensor()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 316
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/lge/camera/controller/camera/CameraFocusController;->setContinuousFocusActive(Z)V

    .line 318
    :cond_6
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setFocusWindow : left "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " top "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setFocusWindow : right "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bottom "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 323
    :catch_0
    move-exception v2

    .line 324
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "CameraApp"

    const-string v9, "setTouchIndexAf setParameter exception : "

    invoke-static {v8, v9, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 311
    .end local v2           #e:Ljava/lang/Exception;
    :cond_7
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v4, v8}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 328
    .end local v0           #center_x:F
    .end local v1           #center_y:F
    .end local v4           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_8
    const-string v8, "CameraApp"

    const-string v9, "mCameraDevice is null"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setShutterButtonClicked(Z)V
    .locals 0
    .parameter "clicked"

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mShutterButtonClicked:Z

    .line 191
    return-void
.end method

.method public showFocus()Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocus(Z)Z

    move-result v0

    return v0
.end method

.method public showFocus(Z)Z
    .locals 5
    .parameter "justDoIt"

    .prologue
    const/4 v1, 0x1

    .line 349
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showFocus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, focus:Ljava/lang/String;
    const-string v2, "face_tracking"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    if-nez v2, :cond_2

    .line 353
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->isBlockingFaceTrFocusing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 354
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    .line 381
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 356
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->unregisterCallback()V

    goto :goto_0

    .line 358
    :cond_2
    const-string v2, "manual"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 359
    const-string v2, "CameraApp"

    const-string v3, "showFocus : manual focus."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->unregisterCallback()V

    .line 361
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    goto :goto_1

    .line 364
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    .line 366
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 367
    if-nez p1, :cond_5

    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_free_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/camera/properties/FunctionProperties;->isCafAnimationSupported(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    const-string v2, "CameraApp"

    const-string v3, "showFocus & register "

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->registerCallback()V

    goto :goto_1

    .line 376
    :cond_6
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    goto :goto_1
.end method

.method public startAEByTouchPress(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 439
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkStartFocusByTouchPress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkFocusPosition(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v0, :cond_2

    .line 448
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraFocusView;->setVisibility(I)V

    .line 449
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusView(I)V

    .line 455
    invoke-super {p0, v1}, Lcom/lge/camera/controller/FocusController;->setFocusState(I)V

    .line 456
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocus(Z)Z

    .line 458
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusRectangleInitialize()V

    .line 460
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusPosition(I)V

    .line 461
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/camera/CameraFocusController;->setMoveNormalFocusRect(II)V

    .line 462
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusWindow(Landroid/graphics/Rect;)V

    .line 463
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->updateFocusStateIndicator()V

    .line 464
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ReleaseTouchFocus"

    const-wide/16 v2, 0xbb8

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 466
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------startAEByTouchPress : x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_2
    const-string v0, "CameraApp"

    const-string v1, "TAE mCameraFocusView is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startFocusByTouchPress(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 414
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkStartFocusByTouchPress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkFocusPosition(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->cancelAutoFocusAfterInitFocusArea()V

    .line 423
    invoke-super {p0, v1}, Lcom/lge/camera/controller/FocusController;->setFocusState(I)V

    .line 425
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->doFocus(Z)V

    .line 427
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusPosition(I)V

    .line 428
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocus(Z)Z

    .line 430
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/camera/CameraFocusController;->setMoveNormalFocusRect(II)V

    .line 432
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->doFocus(Z)V

    .line 433
    iput-boolean v1, p0, Lcom/lge/camera/controller/FocusController;->mTouchedAFbyFaceTr:Z

    .line 434
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------startFocusByTouchPress : x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startFocusByTouchPress(IIZ)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "bTouchedAFbyFaceTr"

    .prologue
    .line 408
    iput-boolean p3, p0, Lcom/lge/camera/controller/FocusController;->mTouchedAFbyFaceTr:Z

    .line 409
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/camera/CameraFocusController;->startFocusByTouchPress(II)V

    .line 410
    return-void
.end method
