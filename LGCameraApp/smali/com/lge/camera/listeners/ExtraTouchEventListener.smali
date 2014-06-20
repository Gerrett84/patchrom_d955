.class public Lcom/lge/camera/listeners/ExtraTouchEventListener;
.super Ljava/lang/Object;
.source "ExtraTouchEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;,
        Lcom/lge/camera/listeners/ExtraTouchEventListener$ScaleListener;
    }
.end annotation


# static fields
.field private static final BASE_SPAN:I = 0x384

.field private static final SCALE_SIZE:F = 0.4f

.field private static final STEP_LIMIT:I = 0x8

.field private static final SWIPE_MAX_OFF_PATH:I = 0xfa

.field private static final SWIPE_MIN_DISTANCE:I = 0x78

.field private static final SWIPE_THRESHOLD_VELOCITY:I = 0xc8

.field private static final ZERO:I


# instance fields
.field private convX:I

.field private convY:I

.field private downTouchX:I

.field private downTouchY:I

.field private initialX:I

.field private initialY:I

.field private mActionDetected:Z

.field private final mDualRec_TouchSensitivity:J

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsDualRecSubWindowMoving:Z

.field private mIsSmartZoomFocusMoving:Z

.field private mLastTouchedAFTime:J

.field private mMoveDirection:I

.field private mPingPong:Z

.field private mResizingHandler:Z

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mTouchDownTime:J

.field private mTouchUpTime:J

.field private prevX:I

.field private prevY:I

.field private previewTopMargin:I

.field startX:I

.field startY:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v3, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 35
    iput-object v3, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 36
    iput-boolean v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    .line 37
    iput-wide v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mLastTouchedAFTime:J

    .line 40
    iput-boolean v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsDualRecSubWindowMoving:Z

    .line 41
    iput-boolean v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mResizingHandler:Z

    .line 42
    iput v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->initialX:I

    .line 43
    iput v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->initialY:I

    .line 44
    iput v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchX:I

    .line 45
    iput v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchY:I

    .line 47
    iput-boolean v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mPingPong:Z

    .line 48
    iput v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->prevX:I

    .line 49
    iput v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->prevY:I

    .line 51
    iput-wide v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mTouchDownTime:J

    .line 52
    iput-wide v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mTouchUpTime:J

    .line 53
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mDualRec_TouchSensitivity:J

    .line 60
    iput v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    .line 62
    iput-boolean v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsSmartZoomFocusMoving:Z

    .line 254
    iput v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->startX:I

    iput v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->startY:I

    .line 716
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/listeners/ExtraTouchEventListener;ILcom/lge/camera/Mediator;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->checkIgnoreTouchEvent(ILcom/lge/camera/Mediator;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/lge/camera/listeners/ExtraTouchEventListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/listeners/ExtraTouchEventListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    return v0
.end method

.method static synthetic access$300(Lcom/lge/camera/listeners/ExtraTouchEventListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I

    return v0
.end method

.method static synthetic access$400(Lcom/lge/camera/listeners/ExtraTouchEventListener;IILcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->setSmartZoomFocusViewPosition(IILcom/lge/camera/Mediator;)V

    return-void
.end method

.method private checkBarMenuOnTouchActionUp(IIZLcom/lge/camera/Mediator;)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "includeManualFocus"
    .parameter "mediator"

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0xf

    .line 615
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a01cc

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    .line 617
    .local v3, zoom_brightness_touch_area_start_y:I
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v4

    if-ne v4, v6, :cond_0

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v4

    const/16 v5, 0x19

    if-ne v4, v5, :cond_2

    :cond_1
    if-ge p2, v3, :cond_3

    .line 623
    :cond_2
    iget-boolean v4, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    if-nez v4, :cond_3

    .line 624
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v4

    if-ne v4, v6, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 625
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 626
    .local v0, current_time:J
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v4

    if-nez v4, :cond_3

    iget-wide v4, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mLastTouchedAFTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x258

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 628
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mLastTouchedAFTime:J

    .line 629
    invoke-virtual {p4, p1, p2}, Lcom/lge/camera/Mediator;->doTouchbyAF(II)V

    .line 658
    .end local v0           #current_time:J
    :cond_3
    :goto_0
    return-void

    .line 633
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isShotModeMenuVisible()Z

    move-result v4

    if-nez v4, :cond_6

    .line 635
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {p4, v4}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 636
    invoke-virtual {p4, p3}, Lcom/lge/camera/Mediator;->clearSubMenu(Z)V

    .line 637
    const-string v4, "key_camera_shot_mode"

    const-string v5, "shotmode_main_beauty"

    invoke-virtual {p4, v4, v5}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 640
    invoke-virtual {p4, v7}, Lcom/lge/camera/Mediator;->showBeautyshotController(Z)V

    .line 644
    :cond_6
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->showIndicatorController()V

    .line 645
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->checkFocusController()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 646
    const-string v4, "key_focus"

    invoke-virtual {p4, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 647
    .local v2, focus:Ljava/lang/String;
    const-string v4, "auto"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "multiwindowaf"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v4

    if-eq v4, v7, :cond_7

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 651
    :cond_7
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->showFocus()Z

    .line 654
    .end local v2           #focus:Ljava/lang/String;
    :cond_8
    const-string v4, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-virtual {p4, v4}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkIgnoreTouchEvent(ILcom/lge/camera/Mediator;)Z
    .locals 5
    .parameter "coordinate"
    .parameter "mediator"

    .prologue
    .line 910
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020368

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 912
    .local v2, taf:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 913
    .local v1, sizeOfTaf:I
    int-to-float v3, v1

    const v4, 0x3ecccccd

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 915
    .local v0, margin:I
    if-lt p1, v0, :cond_0

    sget v3, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    sub-int/2addr v3, v0

    if-le p1, v3, :cond_1

    .line 917
    :cond_0
    const/4 v3, 0x1

    .line 919
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private checkMenuInTouchActionDown(Lcom/lge/camera/Mediator;)V
    .locals 2
    .parameter "mediator"

    .prologue
    const/4 v1, 0x1

    .line 229
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isQuickFunctionDragControllerVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iput-boolean v1, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    .line 231
    const-string v0, "com.lge.camera.command.HideQuickFunctionDragDrop"

    invoke-virtual {p1, v0}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isQuickFunctionSettingControllerShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    iput-boolean v1, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    .line 236
    const-string v0, "com.lge.camera.command.HideQuickFunctionSettingMenu"

    invoke-virtual {p1, v0}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isNullSettingView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 241
    const-string v0, "com.lge.camera.command.RemoveSettingMenu"

    invoke-virtual {p1, v0}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 242
    iput-boolean v1, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    goto :goto_0

    .line 245
    :cond_3
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 246
    const-string v0, "key_video_record_mode"

    invoke-virtual {p1, v0}, Lcom/lge/camera/Mediator;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    if-nez v0, :cond_4

    .line 247
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->restoreLiveEffectSubMenu()V

    .line 249
    :cond_4
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    goto :goto_0
.end method

.method private checkSmartZoomFocusViewInScreen(IILcom/lge/camera/Mediator;)Z
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "mediator"

    .prologue
    .line 924
    invoke-direct {p0, p3}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->getFocusViewHalfWidth(Lcom/lge/camera/Mediator;)I

    move-result v0

    .line 926
    .local v0, halfWidth:I
    if-lt p1, v0, :cond_0

    sget v1, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    if-lt p2, v0, :cond_0

    sget v1, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_WIDTH:I

    sub-int/2addr v1, v0

    if-le p2, v1, :cond_1

    .line 928
    :cond_0
    const/4 v1, 0x0

    .line 930
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkTouchMoveFocus(Lcom/lge/camera/Mediator;)Z
    .locals 6
    .parameter "mediator"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 392
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isControllerInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    invoke-static {v2}, Lcom/lge/camera/properties/FunctionProperties;->isTouchAfSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    if-eqz v2, :cond_2

    .line 442
    :cond_1
    :goto_0
    return v0

    .line 406
    :cond_2
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_4

    .line 407
    const-string v2, "0"

    const-string v3, "key_camera_timer"

    invoke-virtual {p1, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isTimerShotCountdown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 411
    :cond_3
    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_panorama"

    invoke-virtual {p1, v2, v3}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 413
    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_continuous"

    invoke-virtual {p1, v2, v3}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isCurrnetModuleRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 419
    :cond_4
    const v2, 0x7f09009a

    invoke-virtual {p1, v2}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 420
    const-string v1, "CameraApp"

    const-string v2, "block touch during Quickview is visible"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :cond_5
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->snapshotOnContinuousFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 428
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mLastTouchedAFTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x258

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 431
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isCafSupported()Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "face_tracking"

    const-string v3, "key_focus"

    invoke-virtual {p1, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_6
    const-string v2, "manual"

    const-string v3, "key_focus"

    invoke-virtual {p1, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 435
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->checkFocusController()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getFocusState()I

    move-result v2

    if-eq v2, v1, :cond_1

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getFocusState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getFocusState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    move v0, v1

    .line 442
    goto/16 :goto_0
.end method

.method private doTouchAction(Landroid/view/MotionEvent;IIZLcom/lge/camera/Mediator;)V
    .locals 4
    .parameter "event"
    .parameter "x"
    .parameter "y"
    .parameter "bInPreviewScreen"
    .parameter "mediator"

    .prologue
    const/4 v3, 0x0

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 177
    :pswitch_0
    const-string v1, "CameraApp"

    const-string v2, "PinchZoom : ACTION_DOWN"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iput-boolean v3, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    .line 181
    iput-boolean v3, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsDualRecSubWindowMoving:Z

    .line 182
    iput-boolean v3, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mResizingHandler:Z

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mTouchDownTime:J

    .line 186
    iput p2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchX:I

    .line 187
    iput p3, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchY:I

    .line 189
    iput p2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->startX:I

    .line 190
    iput p3, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->startY:I

    .line 192
    invoke-virtual {p5}, Lcom/lge/camera/Mediator;->isControllerInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const-string v1, "CameraApp"

    const-string v2, "checkMenuInTouchActionDown : ACTION_DOWN"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, p5}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->checkMenuInTouchActionDown(Lcom/lge/camera/Mediator;)V

    goto :goto_0

    .line 200
    :pswitch_1
    const-string v1, "CameraApp"

    const-string v2, "PinchZoom : ACTION_MOVE"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p5, p2}, Lcom/lge/camera/Mediator;->checkTouchFocusArea(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual/range {p0 .. p5}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->doExeTouchActionMove(Landroid/view/MotionEvent;IIZLcom/lge/camera/Mediator;)V

    goto :goto_0

    .line 208
    :pswitch_2
    const-string v1, "CameraApp"

    const-string v2, "PinchZoom : ACTION_UP"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mTouchUpTime:J

    .line 210
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->doExeTouchActionUp(Landroid/view/MotionEvent;IILcom/lge/camera/Mediator;)V

    .line 211
    iput v3, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->startX:I

    .line 212
    iput v3, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->startY:I

    goto :goto_0

    .line 218
    :pswitch_3
    const-string v1, "CameraApp"

    const-string v2, "ACTION_CANCEL"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const v1, 0x7f090141

    invoke-virtual {p5, v1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 220
    .local v0, v:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 221
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private getFocusViewHalfWidth(Lcom/lge/camera/Mediator;)I
    .locals 4
    .parameter "mediator"

    .prologue
    .line 953
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020365

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 955
    .local v0, focusView:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 956
    .local v1, halfWidth:I
    return v1
.end method

.method private setSmartZoomFocusViewPosition(IILcom/lge/camera/Mediator;)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "mediator"

    .prologue
    .line 935
    invoke-direct {p0, p3}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->getFocusViewHalfWidth(Lcom/lge/camera/Mediator;)I

    move-result v0

    .line 937
    .local v0, halfWidth:I
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->checkSmartZoomFocusViewInScreen(IILcom/lge/camera/Mediator;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 938
    if-ge p1, v0, :cond_2

    .line 939
    move p1, v0

    .line 943
    :cond_0
    :goto_0
    if-ge p2, v0, :cond_3

    .line 944
    move p2, v0

    .line 949
    :cond_1
    :goto_1
    invoke-virtual {p3, p1, p2}, Lcom/lge/camera/Mediator;->setSmartZoomFocusViewPosition(II)V

    .line 950
    return-void

    .line 940
    :cond_2
    sget v1, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    sub-int/2addr v1, v0

    if-le p1, v1, :cond_0

    .line 941
    sget v1, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    sub-int p1, v1, v0

    goto :goto_0

    .line 945
    :cond_3
    sget v1, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_WIDTH:I

    sub-int/2addr v1, v0

    if-le p2, v1, :cond_1

    .line 946
    sget v1, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_WIDTH:I

    sub-int p2, v1, v0

    goto :goto_1
.end method


# virtual methods
.method public doExeTouchActionMove(Landroid/view/MotionEvent;IIZLcom/lge/camera/Mediator;)V
    .locals 20
    .parameter "event"
    .parameter "x"
    .parameter "y"
    .parameter "bInPreviewScreen"
    .parameter "mediator"

    .prologue
    .line 257
    const/4 v4, 0x0

    .local v4, diffX:I
    const/4 v5, 0x0

    .line 258
    .local v5, diffY:I
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->isDualRecordingActive()Z

    move-result v15

    if-nez v15, :cond_1

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v15

    if-nez v15, :cond_1

    .line 261
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFrontTouchAESupported()Z

    move-result v15

    if-nez v15, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->checkTouchMoveFocus(Lcom/lge/camera/Mediator;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 268
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->isFocusViewVisible()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 269
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->hideFocus()Z

    .line 272
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v15

    if-nez v15, :cond_11

    const-string v15, "key_camera_shot_mode"

    const-string v16, "shotmode_dual_camera"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 275
    :cond_3
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->isDualRecordingActive()Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->isDualCameraActive()Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v15

    if-eqz v15, :cond_0

    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 277
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsDualRecSubWindowMoving:Z

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mResizingHandler:Z

    if-nez v15, :cond_5

    .line 279
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/listeners/ExtraTouchEventListener;->initialX:I

    .line 280
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/listeners/ExtraTouchEventListener;->initialY:I

    .line 281
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->initialX:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->prevX:I

    .line 282
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->initialY:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->prevY:I

    .line 283
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->initialX:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->initialY:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/lge/camera/controller/PIPController;->checkResizeDirection(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mMoveDirection:I

    .line 284
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mMoveDirection:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->initialX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->initialY:I

    move/from16 v18, v0

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getOrientation()I

    move-result v19

    invoke-virtual/range {v15 .. v19}, Lcom/lge/camera/controller/PIPController;->setDirectionForRatio(IIII)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mMoveDirection:I

    .line 285
    const-string v15, "CameraApp"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mMoveDirection = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mMoveDirection:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->prevX:I

    sub-int v4, p2, v15

    .line 288
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->prevY:I

    sub-int v5, p3, v15

    .line 289
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->startX:I

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v15, v1}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->checkIgnoreTouchEvent(ILcom/lge/camera/Mediator;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 290
    const-string v15, "CameraApp"

    const-string v16, "Ignore touch event"

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 293
    :cond_6
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lge/camera/controller/PIPController;->getMode()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mMoveDirection:I

    if-eqz v15, :cond_7

    .line 295
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mResizingHandler:Z

    .line 298
    :cond_7
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    move/from16 v16, v0

    sub-int v16, p2, v16

    move/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v15, v0, v1}, Lcom/lge/camera/controller/PIPController;->isInSubWindow(II)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsSmartZoomFocusMoving:Z

    if-nez v15, :cond_8

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v15, v0, v1}, Lcom/lge/camera/controller/PIPController;->isInSmartZoomFocusViewArea(II)Z

    move-result v15

    if-nez v15, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->isPIPFrameSplitView(Lcom/lge/camera/Mediator;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 302
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsDualRecSubWindowMoving:Z

    .line 304
    :cond_8
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lge/camera/controller/PIPController;->getMode()I

    move-result v15

    if-nez v15, :cond_e

    .line 305
    sget-boolean v15, Lcom/lge/camera/properties/MultimediaProperties;->PIP_MOVE_ALLOWED_ONLY_IN_EDIT_MODE:Z

    if-nez v15, :cond_b

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    move/from16 v16, v0

    sub-int v16, p2, v16

    move/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v15, v0, v1}, Lcom/lge/camera/controller/PIPController;->isInSubWindow(II)Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v15, v0, v1}, Lcom/lge/camera/controller/PIPController;->isInSmartZoomFocusViewArea(II)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsDualRecSubWindowMoving:Z

    if-eqz v15, :cond_b

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsSmartZoomFocusMoving:Z

    if-nez v15, :cond_b

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getCurrentPIPMask()I

    move-result v15

    if-eqz v15, :cond_b

    .line 310
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Lcom/lge/camera/controller/PIPController;->moveSubWindow(II)V

    .line 311
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lge/camera/controller/PIPController;->confirmSubWindow()V

    .line 341
    :cond_a
    :goto_1
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/listeners/ExtraTouchEventListener;->prevX:I

    .line 342
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/listeners/ExtraTouchEventListener;->prevY:I

    goto/16 :goto_0

    .line 312
    :cond_b
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lge/camera/controller/PIPController;->isObjectTrackingEnabledForSmartZoom()Z

    move-result v15

    if-nez v15, :cond_a

    .line 314
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    move/from16 v0, p2

    if-lt v0, v15, :cond_0

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getFocusAreaHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move/from16 v0, p2

    if-gt v0, v15, :cond_0

    .line 317
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchX:I

    sub-int v15, v15, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchX:I

    move/from16 v16, v0

    sub-int v16, v16, p2

    mul-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchY:I

    move/from16 v16, v0

    sub-int v16, v16, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchY:I

    move/from16 v17, v0

    sub-int v17, v17, p3

    mul-int v16, v16, v17

    add-int v15, v15, v16

    const/16 v16, 0x640

    move/from16 v0, v16

    if-ge v15, v0, :cond_c

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsSmartZoomFocusMoving:Z

    if-eqz v15, :cond_d

    .line 321
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->setSmartZoomFocusViewPosition(IILcom/lge/camera/Mediator;)V

    .line 322
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsSmartZoomFocusMoving:Z

    .line 324
    :cond_d
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lge/camera/controller/PIPController;->isSmartZoomFocusViewShown()Z

    move-result v15

    if-nez v15, :cond_a

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getCurrentPIPMask()I

    move-result v15

    if-eqz v15, :cond_a

    .line 326
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->showSmartZoomFocusView()V

    goto/16 :goto_1

    .line 329
    :cond_e
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lge/camera/controller/PIPController;->getMode()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 330
    const-string v15, "com.lge.camera.command.HidePIPResizeHandler"

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mMoveDirection:I

    const/16 v16, 0xf

    move/from16 v0, v16

    if-eq v15, v0, :cond_f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mMoveDirection:I

    if-eqz v15, :cond_f

    .line 332
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mMoveDirection:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v4, v5, v0}, Lcom/lge/camera/controller/PIPController;->resizeSubWindowByDiff(III)V

    .line 333
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mMoveDirection:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/lge/camera/controller/PIPController;->resizeSubWindowResizeHandler(I)V

    goto/16 :goto_1

    .line 334
    :cond_f
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mMoveDirection:I

    const/16 v16, 0xf

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 335
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Lcom/lge/camera/controller/PIPController;->moveSubWindow(II)V

    .line 336
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mMoveDirection:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/lge/camera/controller/PIPController;->resizeSubWindowResizeHandler(I)V

    goto/16 :goto_1

    .line 339
    :cond_10
    const-string v15, "CameraApp"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid mode : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/lge/camera/controller/PIPController;->getMode()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 344
    :cond_11
    if-eqz p4, :cond_0

    .line 345
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->startY:I

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v15, v1}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->checkIgnoreTouchEvent(ILcom/lge/camera/Mediator;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 346
    const-string v15, "CameraApp"

    const-string v16, "Ignore touch event!"

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 349
    :cond_12
    const v15, 0x7f090141

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 350
    .local v13, v:Landroid/widget/ImageView;
    if-eqz v13, :cond_0

    .line 351
    invoke-virtual {v13}, Landroid/widget/ImageView;->getVisibility()I

    move-result v15

    if-eqz v15, :cond_13

    .line 352
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    const v15, 0x3f333333

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 355
    :cond_13
    invoke-virtual {v13}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 356
    .local v6, ftm:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v14

    .line 357
    .local v14, width:I
    invoke-virtual {v13}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    .line 361
    .local v7, height:I
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getFocusAreaWidth()I

    move-result v11

    .line 362
    .local v11, previewWidth:I
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getFocusAreaHeight()I

    move-result v9

    .line 363
    .local v9, previewHeight:I
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getFocusAreaLeftMargin()I

    move-result v10

    .line 365
    .local v10, previewLeftMargin:I
    add-int v15, v10, v11

    div-int/lit8 v16, v14, 0x2

    sub-int v15, v15, v16

    move/from16 v0, p2

    if-le v0, v15, :cond_14

    .line 366
    add-int v15, v10, v11

    div-int/lit8 v16, v14, 0x2

    sub-int p2, v15, v16

    .line 369
    :cond_14
    div-int/lit8 v15, v7, 0x2

    sub-int v15, v9, v15

    move/from16 v0, p3

    if-le v0, v15, :cond_15

    .line 370
    div-int/lit8 v15, v7, 0x2

    sub-int p3, v9, v15

    .line 373
    :cond_15
    sub-int v15, p2, v10

    div-int/lit8 v16, v14, 0x2

    sub-int v8, v15, v16

    .line 374
    .local v8, left:I
    div-int/lit8 v15, v7, 0x2

    sub-int v12, p3, v15

    .line 376
    .local v12, top:I
    if-gez v8, :cond_16

    const/4 v8, 0x0

    .line 377
    :cond_16
    if-gez v12, :cond_17

    const/4 v12, 0x0

    .line 379
    :cond_17
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->isConfigureLandscape()Z

    move-result v15

    if-eqz v15, :cond_18

    .line 380
    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 381
    iput v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 386
    :goto_2
    invoke-virtual {v13, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 383
    :cond_18
    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 384
    iput v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2
.end method

.method public doExeTouchActionUp(Landroid/view/MotionEvent;IILcom/lge/camera/Mediator;)V
    .locals 11
    .parameter "event"
    .parameter "x"
    .parameter "y"
    .parameter "mediator"

    .prologue
    .line 446
    const v7, 0x7f090141

    invoke-virtual {p4, v7}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 447
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 448
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 450
    :cond_0
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isControllerInitialized()Z

    move-result v7

    if-nez v7, :cond_2

    .line 612
    :cond_1
    :goto_0
    return-void

    .line 453
    :cond_2
    const v7, 0x7f09009a

    invoke-virtual {p4, v7}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    .line 454
    const-string v7, "CameraApp"

    const-string v8, "block touch during Quickview is visible"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_3
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isNullSettingView()Z

    move-result v7

    if-nez v7, :cond_5

    .line 458
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isSettingControllerVisible()Z

    move-result v7

    if-nez v7, :cond_1

    .line 461
    const/4 v7, 0x0

    invoke-virtual {p4, v7}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 462
    const-string v7, "com.lge.camera.command.RemoveSettingMenu"

    invoke-virtual {p4, v7}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 611
    :cond_4
    :goto_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    goto :goto_0

    .line 464
    :cond_5
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_6

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v7

    const/16 v8, 0x10

    if-eq v7, v8, :cond_6

    .line 467
    const/4 v7, 0x1

    invoke-direct {p0, p2, p3, v7, p4}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->checkBarMenuOnTouchActionUp(IIZLcom/lge/camera/Mediator;)V

    goto :goto_1

    .line 469
    :cond_6
    iget-boolean v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    if-nez v7, :cond_8

    const-string v7, "manual"

    const-string v8, "key_focus"

    invoke-virtual {p4, v8}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 471
    const/4 v7, 0x0

    invoke-direct {p0, p2, p3, v7, p4}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->checkBarMenuOnTouchActionUp(IIZLcom/lge/camera/Mediator;)V

    .line 472
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isManualFocusBarVisible()Z

    move-result v7

    if-nez v7, :cond_7

    .line 473
    const/4 v7, 0x1

    invoke-virtual {p4, v7}, Lcom/lge/camera/Mediator;->showManualFocusController(Z)V

    .line 474
    const/16 v7, 0x19

    invoke-virtual {p4, v7}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    goto :goto_0

    .line 476
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {p4, v7}, Lcom/lge/camera/Mediator;->showManualFocusController(Z)V

    goto :goto_0

    .line 481
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 482
    .local v0, current_time:J
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PinchZoom : touched time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mLastTouchedAFTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mLastTouchedAFTime:J

    sub-long v9, v0, v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-wide v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mTouchUpTime:J

    iget-wide v9, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mTouchDownTime:J

    sub-long v4, v7, v9

    .line 487
    .local v4, touchTime:J
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isDualRecordingActive()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isDualCameraActive()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v7

    if-eqz v7, :cond_22

    :cond_9
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v7

    if-eqz v7, :cond_22

    .line 489
    iget v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->startX:I

    invoke-direct {p0, v7, p4}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->checkIgnoreTouchEvent(ILcom/lge/camera/Mediator;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 490
    const-string v7, "CameraApp"

    const-string v8, "Ignore touch event!"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 493
    :cond_a
    const v7, 0x7f09011a

    invoke-virtual {p4, v7}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    invoke-virtual {v7}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->isOpened()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/PIPController;->getMode()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_d

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isDualCameraActive()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isDualRecordingActive()Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    iget-boolean v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsDualRecSubWindowMoving:Z

    if-nez v7, :cond_d

    .line 497
    :cond_c
    const v7, 0x7f09011a

    invoke-virtual {p4, v7}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    invoke-virtual {v7}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->animateClose()V

    .line 582
    :goto_2
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsDualRecSubWindowMoving:Z

    .line 583
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mResizingHandler:Z

    .line 584
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsSmartZoomFocusMoving:Z

    goto/16 :goto_1

    .line 498
    :cond_d
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/PIPController;->getMode()I

    move-result v7

    if-nez v7, :cond_1a

    .line 499
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    sub-int v8, p2, v8

    invoke-virtual {v7, v8, p3}, Lcom/lge/camera/controller/PIPController;->isInSubWindow(II)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {p0, p4}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->isPIPFrameSplitView(Lcom/lge/camera/Mediator;)Z

    move-result v7

    if-eqz v7, :cond_16

    :cond_e
    iget-boolean v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    if-nez v7, :cond_16

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getCurrentPIPMask()I

    move-result v7

    if-eqz v7, :cond_16

    .line 503
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v7

    if-nez v7, :cond_f

    .line 504
    const-string v7, "0"

    const-string v8, "key_camera_timer"

    invoke-virtual {p4, v8}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isTimerShotCountdown()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 506
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    goto/16 :goto_0

    .line 510
    :cond_f
    const-wide/16 v7, 0x12c

    cmp-long v7, v4, v7

    if-gez v7, :cond_11

    iget v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchX:I

    sub-int/2addr v7, p2

    iget v8, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchX:I

    sub-int/2addr v8, p2

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchY:I

    sub-int/2addr v8, p3

    iget v9, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchY:I

    sub-int/2addr v9, p3

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    const/16 v8, 0x64

    if-ge v7, v8, :cond_11

    .line 512
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isDualRecordingActive()Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isDualCameraActive()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 514
    :cond_10
    iget-boolean v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mPingPong:Z

    if-eqz v7, :cond_12

    const/4 v7, 0x1

    :goto_3
    invoke-static {v7}, Lcom/lge/camera/platform/PlatformDevice;->DualRec_selectPIP(I)V

    .line 515
    iget-boolean v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mPingPong:Z

    if-nez v7, :cond_13

    const/4 v7, 0x1

    :goto_4
    iput-boolean v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mPingPong:Z

    .line 555
    :cond_11
    :goto_5
    const-string v7, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-virtual {p4, v7}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 514
    :cond_12
    const/4 v7, 0x0

    goto :goto_3

    .line 515
    :cond_13
    const/4 v7, 0x0

    goto :goto_4

    .line 516
    :cond_14
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 517
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/PIPController;->isObjectTrackingEnabledForSmartZoom()Z

    move-result v7

    if-nez v7, :cond_15

    .line 518
    invoke-direct {p0, p2, p3, p4}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->setSmartZoomFocusViewPosition(IILcom/lge/camera/Mediator;)V

    goto :goto_5

    .line 520
    :cond_15
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/PIPController;->disableObjectTrackingForSmartZoom()V

    .line 521
    invoke-direct {p0, p2, p3, p4}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->setSmartZoomFocusViewPosition(IILcom/lge/camera/Mediator;)V

    .line 522
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->unregisterObjectCallback()V

    .line 523
    const v7, 0x7f0b033d

    invoke-virtual {p4, v7}, Lcom/lge/camera/Mediator;->toast(I)V

    goto :goto_5

    .line 527
    :cond_16
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-boolean v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    if-nez v7, :cond_11

    .line 528
    iget v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    if-lt p2, v7, :cond_1

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getFocusAreaHeight()I

    move-result v7

    iget v8, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    add-int/2addr v7, v8

    if-gt p2, v7, :cond_1

    .line 532
    const-wide/16 v7, 0x12c

    cmp-long v7, v4, v7

    if-gez v7, :cond_11

    .line 533
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/PIPController;->isObjectTrackingEnabledForSmartZoom()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 534
    sget v7, Lcom/lge/camera/properties/MultimediaProperties;->SMARTZOOM_FOCUS_MODE:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_18

    .line 535
    const-string v7, "CameraApp"

    const-string v8, "For SmartZoom Recording, object tracking is started"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    move v2, p2

    .line 537
    .local v2, revertX:I
    move v3, p3

    .line 538
    .local v3, revertY:I
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isConfigureLandscape()Z

    move-result v7

    if-nez v7, :cond_17

    .line 539
    move v2, p3

    .line 540
    sget v7, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    sub-int v3, v7, p2

    .line 542
    :cond_17
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doExeTouchActionUp revertX = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", revertY = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {p4, v2, v3}, Lcom/lge/camera/Mediator;->doTouchbyAF(II)V

    goto/16 :goto_5

    .line 545
    .end local v2           #revertX:I
    .end local v3           #revertY:I
    :cond_18
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/PIPController;->disableObjectTrackingForSmartZoom()V

    .line 546
    invoke-direct {p0, p2, p3, p4}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->setSmartZoomFocusViewPosition(IILcom/lge/camera/Mediator;)V

    .line 547
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->unregisterObjectCallback()V

    .line 548
    const v7, 0x7f0b033d

    invoke-virtual {p4, v7}, Lcom/lge/camera/Mediator;->toast(I)V

    goto/16 :goto_5

    .line 551
    :cond_19
    invoke-direct {p0, p2, p3, p4}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->setSmartZoomFocusViewPosition(IILcom/lge/camera/Mediator;)V

    goto/16 :goto_5

    .line 556
    :cond_1a
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/PIPController;->getMode()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_21

    .line 557
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/PIPController;->confirmSubWindow()V

    .line 558
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    sub-int v8, p2, v8

    invoke-virtual {v7, v8, p3}, Lcom/lge/camera/controller/PIPController;->isInSubWindow(II)Z

    move-result v7

    if-nez v7, :cond_1b

    iget-boolean v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsDualRecSubWindowMoving:Z

    if-nez v7, :cond_1b

    iget-boolean v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mResizingHandler:Z

    if-nez v7, :cond_1b

    .line 561
    const-string v7, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-virtual {p4, v7}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 563
    :cond_1b
    sget-boolean v7, Lcom/lge/camera/properties/MultimediaProperties;->PIP_TOGGLE_ALLOWED_IN_EDIT_MODE:Z

    if-eqz v7, :cond_1d

    const-wide/16 v7, 0x12c

    cmp-long v7, v4, v7

    if-gez v7, :cond_1d

    iget v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchX:I

    sub-int/2addr v7, p2

    iget v8, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchX:I

    sub-int/2addr v8, p2

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchY:I

    sub-int/2addr v8, p3

    iget v9, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchY:I

    sub-int/2addr v9, p3

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    const/16 v8, 0x64

    if-ge v7, v8, :cond_1d

    .line 566
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isDualRecordingActive()Z

    move-result v7

    if-nez v7, :cond_1c

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isDualCameraActive()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 568
    :cond_1c
    iget-boolean v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mPingPong:Z

    if-eqz v7, :cond_1f

    const/4 v7, 0x1

    :goto_6
    invoke-static {v7}, Lcom/lge/camera/platform/PlatformDevice;->DualRec_selectPIP(I)V

    .line 569
    iget-boolean v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mPingPong:Z

    if-nez v7, :cond_20

    const/4 v7, 0x1

    :goto_7
    iput-boolean v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mPingPong:Z

    .line 572
    :cond_1d
    sget-boolean v7, Lcom/lge/camera/properties/MultimediaProperties;->PIP_SUPPORT_REALTIME_WINDOW_UPDATE:Z

    if-nez v7, :cond_1e

    .line 573
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/PIPController;->drawSubWindow()V

    .line 575
    :cond_1e
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v7

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Lcom/lge/camera/controller/PIPController;->resizeSubWindowResizeHandler(I)V

    .line 576
    const-string v7, "com.lge.camera.command.HidePIPResizeHandler"

    const-wide/16 v8, 0x1388

    invoke-virtual {p4, v7, v8, v9}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    goto/16 :goto_2

    .line 568
    :cond_1f
    const/4 v7, 0x0

    goto :goto_6

    .line 569
    :cond_20
    const/4 v7, 0x0

    goto :goto_7

    .line 580
    :cond_21
    const-string v7, "CameraApp"

    const-string v8, "KMIN - Invalid SubWindow mode"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 585
    :cond_22
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isLiveEffectActive()Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_23

    .line 586
    const v7, 0x7f0900e7

    invoke-virtual {p4, v7}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    invoke-virtual {v7}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->isOpened()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 587
    const v7, 0x7f0900e7

    invoke-virtual {p4, v7}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    invoke-virtual {v7}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->animateClose()V

    goto/16 :goto_1

    .line 590
    :cond_23
    iget v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->startY:I

    invoke-direct {p0, v7, p4}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->checkIgnoreTouchEvent(ILcom/lge/camera/Mediator;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 591
    const-string v7, "CameraApp"

    const-string v8, "Ignore touch event!"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 594
    :cond_24
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v7

    if-eqz v7, :cond_25

    .line 595
    iget-boolean v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    if-nez v7, :cond_4

    .line 596
    const-string v7, "CameraApp"

    const-string v8, "call toggleClearView"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->toggleClearView()V

    goto/16 :goto_1

    .line 600
    :cond_25
    iget-boolean v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    if-nez v7, :cond_4

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v7

    if-nez v7, :cond_4

    iget-wide v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mLastTouchedAFTime:J

    sub-long v7, v0, v7

    const-wide/16 v9, 0x258

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    .line 603
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mLastTouchedAFTime:J

    .line 604
    invoke-virtual {p4, p2, p3}, Lcom/lge/camera/Mediator;->doTouchbyAF(II)V

    goto/16 :goto_1
.end method

.method public executeTouchEvent(Landroid/view/MotionEvent;Lcom/lge/camera/Mediator;)V
    .locals 11
    .parameter "event"
    .parameter "mediator"

    .prologue
    const/4 v3, 0x1

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I

    .line 67
    const/4 v4, 0x1

    .line 68
    .local v4, bInPreviewScreen:Z
    sget v0, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getFocusAreaHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    .line 70
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->isTouchSmartCoverView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v3, :cond_e

    .line 84
    const v0, 0x7f09013d

    invoke-virtual {p2, v0}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 85
    .local v8, previewLayout:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 89
    .local v9, previewParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a001a

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v7

    .line 90
    .local v7, panelWidth:I
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isXGAmodel()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    iget v1, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v1, v7

    if-le v0, v1, :cond_4

    .line 93
    const/4 v4, 0x0

    .line 95
    :cond_4
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    iget v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-lt v0, v1, :cond_5

    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    iget v1, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_5

    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I

    iget v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-lt v0, v1, :cond_5

    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I

    iget v1, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_9

    .line 100
    :cond_5
    const/4 v4, 0x0

    .line 154
    .end local v7           #panelWidth:I
    .end local v8           #previewLayout:Landroid/view/View;
    .end local v9           #previewParam:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    :goto_1
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isDualRecordingActive()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isDualCameraActive()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 157
    :cond_7
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->convX:I

    .line 158
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->convY:I

    .line 159
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->convX:I

    if-gez v0, :cond_8

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->convX:I

    .line 169
    :cond_8
    :goto_2
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->convX:I

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    .line 170
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->convY:I

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I

    .line 171
    iget v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    iget v3, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->doTouchAction(Landroid/view/MotionEvent;IIZLcom/lge/camera/Mediator;)V

    goto/16 :goto_0

    .line 103
    .restart local v7       #panelWidth:I
    .restart local v8       #previewLayout:Landroid/view/View;
    .restart local v9       #previewParam:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9
    :try_start_0
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isQuickFunctionDragControllerVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    .line 121
    :cond_a
    :goto_3
    iget-boolean v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    if-eqz v0, :cond_6

    .line 122
    const-string v0, "CameraApp"

    const-string v1, "Action Detected."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const v0, 0x7f090141

    invoke-virtual {p2, v0}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 124
    .local v10, v:Landroid/view/View;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 129
    .end local v10           #v:Landroid/view/View;
    :catch_0
    move-exception v6

    .line 130
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "CameraApp"

    const-string v1, "mScaleDetector fail"

    invoke-static {v0, v1, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 110
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    :cond_b
    :try_start_1
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_dual_camera"

    invoke-virtual {p2, v0, v1}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-ne v0, v3, :cond_a

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isEffectsCamcorderActive()Z

    move-result v0

    if-nez v0, :cond_a

    .line 115
    :cond_d
    iget-object v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 135
    .end local v7           #panelWidth:I
    .end local v8           #previewLayout:Landroid/view/View;
    .end local v9           #previewParam:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_e
    :try_start_2
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isQuickFunctionDragControllerVisible()Z

    move-result v0

    if-nez v0, :cond_6

    .line 136
    iget-object v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 137
    const-string v0, "CameraApp"

    const-string v1, "PinchZoom : detect success"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    .line 140
    const v0, 0x7f090141

    invoke-virtual {p2, v0}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 141
    .restart local v10       #v:Landroid/view/View;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 147
    .end local v10           #v:Landroid/view/View;
    :catch_1
    move-exception v6

    .line 148
    .restart local v6       #ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "CameraApp"

    const-string v1, "mScaleDetector fail"

    invoke-static {v0, v1, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 162
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    :cond_f
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 163
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->convX:I

    .line 164
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->convY:I

    goto/16 :goto_2

    .line 166
    :cond_10
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->convX:I

    .line 167
    sget v0, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    iget v1, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->convY:I

    goto/16 :goto_2
.end method

.method public isPIPFrameSplitView(Lcom/lge/camera/Mediator;)Z
    .locals 2
    .parameter "mediator"

    .prologue
    .line 895
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getCurrentPIPMask()I

    move-result v0

    .line 896
    .local v0, currentPIPMask:I
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTouchSmartCoverView()Z
    .locals 5

    .prologue
    .line 901
    sget v1, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeHeight:I

    .line 902
    .local v1, mCover_width:I
    sget v0, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeWidth:I

    .line 903
    .local v0, mCover_height:I
    sget v3, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    sub-int/2addr v3, v1

    div-int/lit8 v2, v3, 0x2

    .line 905
    .local v2, mCover_x:I
    iget v3, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    if-le v3, v2, :cond_0

    iget v3, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    add-int v4, v1, v2

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I

    if-ge v3, v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public releaseGestureDetectorListener()V
    .locals 1

    .prologue
    .line 891
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 892
    return-void
.end method

.method public releaseScaleDetectorListener()V
    .locals 1

    .prologue
    .line 882
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 883
    return-void
.end method

.method public setGestureDetectorListener(Lcom/lge/camera/Mediator;)V
    .locals 3
    .parameter "mediator"

    .prologue
    .line 886
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;

    invoke-direct {v2, p0, p1}, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;-><init>(Lcom/lge/camera/listeners/ExtraTouchEventListener;Lcom/lge/camera/Mediator;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 888
    return-void
.end method

.method public setScaleDetectorListener(Lcom/lge/camera/Mediator;)V
    .locals 3
    .parameter "mediator"

    .prologue
    .line 877
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/lge/camera/listeners/ExtraTouchEventListener$ScaleListener;

    invoke-direct {v2, p0, p1}, Lcom/lge/camera/listeners/ExtraTouchEventListener$ScaleListener;-><init>(Lcom/lge/camera/listeners/ExtraTouchEventListener;Lcom/lge/camera/Mediator;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 879
    return-void
.end method

.method public zoomInOut(IIZLcom/lge/camera/Mediator;)V
    .locals 6
    .parameter "cursorStep"
    .parameter "factor"
    .parameter "scaleEnd"
    .parameter "mediator"

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x6

    const/4 v3, 0x5

    .line 835
    :try_start_0
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isControllerInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isPressedShutterButton()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->checkShotModeForZoomInOut()Z

    move-result v1

    if-nez v1, :cond_3

    .line 843
    :cond_2
    const v1, 0x7f0b0350

    invoke-virtual {p4, v1}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/lge/camera/Mediator;->toast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 871
    :catch_0
    move-exception v0

    .line 872
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "CameraApp"

    const-string v2, "zoomInOut NullPointerException:"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 847
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_3
    :try_start_1
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 849
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportZoomOnRecord()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 850
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 853
    :cond_4
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-eq v1, v4, :cond_5

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-eq v1, v3, :cond_5

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-eq v1, v5, :cond_5

    .line 856
    const-string v1, "com.lge.camera.command.ShowZoom"

    invoke-virtual {p4, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 858
    :cond_5
    invoke-virtual {p4, p1, p2, p3}, Lcom/lge/camera/Mediator;->updateZoomBar(IIZ)V

    goto :goto_0

    .line 861
    :cond_6
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v1

    if-nez v1, :cond_0

    .line 862
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-eq v1, v4, :cond_7

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-eq v1, v3, :cond_7

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-eq v1, v5, :cond_7

    .line 865
    const-string v1, "com.lge.camera.command.ShowZoom"

    invoke-virtual {p4, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 867
    :cond_7
    invoke-virtual {p4, p1, p2, p3}, Lcom/lge/camera/Mediator;->updateZoomBar(IIZ)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
