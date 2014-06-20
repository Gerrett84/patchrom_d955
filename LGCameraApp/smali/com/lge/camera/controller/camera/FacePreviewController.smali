.class public Lcom/lge/camera/controller/camera/FacePreviewController;
.super Lcom/lge/camera/controller/camera/CameraController;
.source "FacePreviewController.java"

# interfaces
.implements Lcom/lge/olaworks/library/FaceDetector$Callback;


# static fields
.field private static final FACT_DISTANCE_DEFAULT:I = 0x23

.field private static final MAX_FACE_NUM:I = 0x5

.field private static final NONE_FACE_JUDGE_COUNT:I = 0x5


# instance fields
.field private FACE_DISTANCE_TH:I

.field private FACE_TIME_TH:I

.field private mAverageOfFacePoint:Landroid/graphics/Point;

.field private mCenter_x:F

.field private mCenter_y:F

.field private mCheckNoneFaceCount:I

.field private mDetectedFaces:[Landroid/graphics/Rect;

.field private mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

.field private mFaceDetectedCount:I

.field private mFaceLedEnabled:I

.field private mFaceTimeCnt:I

.field private mIsFaceFocusSuccessed:Z

.field private mLEDManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

.field private mNewFaceDetector:Lcom/lge/olaworks/library/FaceDetector;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mPreviousFaceRect:Landroid/graphics/Rect;

.field private mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

.field private mPreviousFocusState:I

.field private mPreviousLargestFaceIndex:I

.field private mRecord:Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;

.field private mResetFace:Ljava/lang/Runnable;

.field private mSumOfFacePoint:Landroid/graphics/Point;

.field private mTimerLedEnabled:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 7
    .parameter "function"

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 58
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/CameraController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 31
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mNewFaceDetector:Lcom/lge/olaworks/library/FaceDetector;

    .line 32
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRect:Landroid/graphics/Rect;

    .line 39
    iput v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousLargestFaceIndex:I

    .line 42
    const/16 v0, 0x23

    iput v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->FACE_DISTANCE_TH:I

    .line 43
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->FACE_TIME_TH:I

    .line 44
    iput v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    .line 45
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;

    .line 46
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mAverageOfFacePoint:Landroid/graphics/Point;

    .line 51
    iput v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFocusState:I

    .line 52
    iput-boolean v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mIsFaceFocusSuccessed:Z

    .line 54
    iput v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceLedEnabled:I

    .line 55
    iput v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mTimerLedEnabled:I

    .line 140
    iput v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviewWidth:I

    .line 141
    iput v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviewHeight:I

    .line 142
    iput v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCenter_x:F

    .line 143
    iput v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCenter_y:F

    .line 360
    iput v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCheckNoneFaceCount:I

    .line 361
    new-instance v0, Lcom/lge/camera/controller/camera/FacePreviewController$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/FacePreviewController$1;-><init>(Lcom/lge/camera/controller/camera/FacePreviewController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mResetFace:Ljava/lang/Runnable;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camera/FacePreviewController;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camera/FacePreviewController;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camera/FacePreviewController;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/camera/FacePreviewController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/lge/camera/controller/camera/FacePreviewController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/camera/FacePreviewController;)Lcom/lge/camera/components/CameraPreview;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/camera/FacePreviewController;)[Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    return-object v0
.end method

.method private flipHorizontal([Landroid/graphics/Rect;I)V
    .locals 5
    .parameter "rects"
    .parameter "count"

    .prologue
    .line 475
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v3}, Lcom/lge/camera/components/CameraPreview;->getWidth()I

    move-result v1

    .line 476
    .local v1, previewWidth:I
    const/4 v2, 0x0

    .line 477
    .local v2, width:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 478
    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 479
    aget-object v3, p1, v0

    aget-object v4, p1, v0

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, v1, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 480
    aget-object v3, p1, v0

    aget-object v4, p1, v0

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    :cond_0
    return-void
.end method

.method private getIndexLargestFace([Landroid/graphics/Rect;I)I
    .locals 6
    .parameter "detectedFaces"
    .parameter "length"

    .prologue
    .line 380
    if-nez p2, :cond_1

    const/4 v1, 0x0

    .line 381
    .local v1, largestFaceIndex:I
    :goto_0
    const/4 v2, 0x0

    .line 382
    .local v2, largestFaceWidth:I
    const/4 v3, 0x0

    .line 384
    .local v3, newWidth:I
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v4

    if-nez v4, :cond_3

    .line 385
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_2

    .line 386
    aget-object v4, p1, v1

    iget v4, v4, Landroid/graphics/Rect;->right:I

    aget-object v5, p1, v1

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v2, v4, v5

    .line 387
    aget-object v4, p1, v0

    iget v4, v4, Landroid/graphics/Rect;->right:I

    aget-object v5, p1, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v3, v4, v5

    .line 389
    if-ge v2, v3, :cond_0

    .line 390
    move v1, v0

    .line 391
    move v2, v3

    .line 385
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 380
    .end local v0           #i:I
    .end local v1           #largestFaceIndex:I
    .end local v2           #largestFaceWidth:I
    .end local v3           #newWidth:I
    :cond_1
    iget v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousLargestFaceIndex:I

    goto :goto_0

    .line 394
    .restart local v0       #i:I
    .restart local v1       #largestFaceIndex:I
    .restart local v2       #largestFaceWidth:I
    .restart local v3       #newWidth:I
    :cond_2
    iput v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousLargestFaceIndex:I

    .line 396
    .end local v0           #i:I
    :cond_3
    return v1
.end method

.method private initEmotionalLEDForFaceTracking()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 489
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportEmotionalLED()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 490
    const-string v4, "CameraApp"

    const-string v5, "Initialize Emotional LED"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emotional_led_back_camera_face_detecting_noti"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceLedEnabled:I

    .line 495
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emotional_led_back_camera_timer_noti"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mTimerLedEnabled:I

    .line 499
    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceLedEnabled:I

    if-eq v4, v6, :cond_1

    .line 500
    const-string v4, "CameraApp"

    const-string v5, "FaceTracking LED Setting is disabled"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    new-instance v1, Lcom/lge/systemservice/core/LGContextImpl;

    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/lge/systemservice/core/LGContextImpl;-><init>(Landroid/content/Context;)V

    .line 506
    .local v1, mServiceContext:Lcom/lge/systemservice/core/LGContext;
    sget-object v4, Lcom/lge/systemservice/core/LGContext$ServiceList;->EMOTIONALLED_SERVICE:Lcom/lge/systemservice/core/LGContext$ServiceList;

    invoke-virtual {v1, v4}, Lcom/lge/systemservice/core/LGContext;->getLegacyService(Lcom/lge/systemservice/core/LGContext$ServiceList;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iput-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mLEDManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    .line 509
    new-instance v4, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;

    invoke-direct {v4}, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;-><init>()V

    iput-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mRecord:Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;

    .line 510
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mRecord:Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;

    const/4 v5, 0x0

    iput v5, v4, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->priority:I

    .line 511
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mRecord:Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;

    iput v6, v4, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->flags:I

    .line 514
    :try_start_0
    const-string v4, "com.lge.systemservice.core.emotionalledmanager.LGLedRecord"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 518
    .local v2, sClsRecord:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "whichLedPlay"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 519
    .local v3, whitchLedPlay:Ljava/lang/reflect/Field;
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mRecord:Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 520
    .end local v2           #sClsRecord:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #whitchLedPlay:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 521
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v5, "whitchLedplay Setting fail"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onFaceDetecedStartFocus([Landroid/graphics/Rect;III)V
    .locals 7
    .parameter "detectedFaces"
    .parameter "largestFaceIndex"
    .parameter "center_x"
    .parameter "center_y"

    .prologue
    const/4 v3, -0x1

    .line 401
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v2

    if-eqz v2, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    const/4 v1, 0x0

    .line 406
    .local v1, startFocus:Z
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_6

    .line 407
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_3

    .line 408
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    aget-object v3, p1, p2

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 409
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 433
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 434
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startFocus : center_x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", center_y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x1

    invoke-interface {v2, p3, p4, v3}, Lcom/lge/camera/ControllerFunction;->startFocusByTouchPress(IIZ)V

    .line 436
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    aget-object v3, p1, p2

    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->FACE_DISTANCE_TH:I

    iget v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->FACE_DISTANCE_TH:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/lge/camera/controller/camera/FacePreviewController;->outSet(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    .end local v1           #startFocus:Z
    :catch_0
    move-exception v0

    .line 439
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "Exception:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 412
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #startFocus:Z
    :cond_3
    :try_start_1
    iget v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    .line 413
    iget v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    iget v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->FACE_TIME_TH:I

    if-ne v2, v3, :cond_5

    .line 414
    aget-object v2, p1, p2

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/FacePreviewController;->getSumPosition(Landroid/graphics/Rect;)V

    .line 415
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mAverageOfFacePoint:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    div-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 416
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mAverageOfFacePoint:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    div-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 417
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    .line 422
    :cond_4
    :goto_2
    iget v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    if-nez v2, :cond_2

    .line 424
    const/4 v1, 0x1

    .line 426
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    .line 418
    :cond_5
    iget v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    iget v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->FACE_TIME_TH:I

    if-ge v2, v3, :cond_4

    .line 419
    aget-object v2, p1, p2

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/FacePreviewController;->getSumPosition(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 430
    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_1
.end method

.method private setFaceDetecedRectColor([Landroid/graphics/Rect;I)V
    .locals 4
    .parameter "detectedFaces"
    .parameter "largestFaceIndex"

    .prologue
    .line 450
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 451
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 452
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 453
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/high16 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    .line 450
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 455
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const v3, -0xff0100

    invoke-virtual {v2, v1, v3}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    .line 456
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mIsFaceFocusSuccessed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "Exception:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 472
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    return-void

    .line 458
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/16 v3, -0x100

    invoke-virtual {v2, v1, v3}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    goto :goto_1

    .line 461
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v2

    if-nez v2, :cond_4

    if-ne p2, v1, :cond_4

    .line 463
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/16 v3, -0x100

    invoke-virtual {v2, v1, v3}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    goto :goto_1

    .line 465
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private setLEDPatternId(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 550
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportEmotionalLED()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceLedEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 552
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mRecord:Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;

    iput p1, v0, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->patternId:I

    .line 554
    :cond_0
    return-void
.end method

.method private startLEDForFaceTracking()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 528
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportEmotionalLED()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceLedEnabled:I

    if-ne v0, v3, :cond_0

    .line 530
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mLEDManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    if-eqz v0, :cond_0

    .line 531
    const-string v0, "CameraApp"

    const-string v1, "Emotioinal LED is started"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mLEDManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mRecord:Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;

    invoke-virtual {v0, v1, v3, v2}, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;->start(Ljava/lang/String;ILcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;)V

    .line 536
    :cond_0
    return-void
.end method

.method private stopLEDForFaceTracking()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 539
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportEmotionalLED()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceLedEnabled:I

    if-ne v0, v2, :cond_0

    .line 541
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mLEDManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    if-eqz v0, :cond_0

    .line 542
    const-string v0, "CameraApp"

    const-string v1, "Emotioinal LED is stopped"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mLEDManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;->stop(Ljava/lang/String;I)V

    .line 547
    :cond_0
    return-void
.end method


# virtual methods
.method public getDetectedFaces()[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFaceDetectedCount()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    return v0
.end method

.method public getSumPosition(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 178
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 179
    return-void
.end method

.method public hideView()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraPreview;->setDrawMode(I)V

    .line 134
    :cond_0
    return-void
.end method

.method public initController()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 77
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09013e

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/CameraPreview;

    iput-object v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    .line 79
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useFaceDetectionFromHal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    new-instance v1, Lcom/lge/olaworks/library/FaceDetector;

    invoke-direct {v1, p0}, Lcom/lge/olaworks/library/FaceDetector;-><init>(Lcom/lge/olaworks/library/FaceDetector$Callback;)V

    iput-object v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mNewFaceDetector:Lcom/lge/olaworks/library/FaceDetector;

    .line 81
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mNewFaceDetector:Lcom/lge/olaworks/library/FaceDetector;

    invoke-virtual {v1, v2}, Lcom/lge/olaworks/library/EngineProcessor;->setEngine(Lcom/lge/olaworks/library/BaseEngine;)Lcom/lge/olaworks/library/BaseEngine;

    .line 90
    :cond_0
    const/high16 v1, 0x420c

    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->FACE_DISTANCE_TH:I

    .line 93
    iput-boolean v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mInit:Z

    .line 94
    return-void

    .line 83
    :cond_1
    new-array v1, v4, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    .line 84
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 85
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 86
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public initFaceDetectInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x4000

    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 146
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useFaceDetectionFromHal()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    if-nez v3, :cond_0

    .line 148
    new-array v3, v6, [Landroid/graphics/Rect;

    iput-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    .line 149
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_2

    .line 150
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    aput-object v4, v3, v0

    .line 151
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    .end local v0           #i:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v6, :cond_2

    .line 155
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    .end local v0           #i:I
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    .line 161
    :cond_2
    iput v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    .line 162
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    if-eqz v3, :cond_3

    .line 163
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v3}, Lcom/lge/camera/components/CameraPreview;->resetFaceRectangles()V

    .line 166
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, sizeOnScreenString:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v1

    .line 168
    .local v1, previewSizeOnScreen:[I
    aget v3, v1, v5

    iput v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviewWidth:I

    .line 169
    aget v3, v1, v8

    iput v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviewHeight:I

    .line 170
    aget v3, v1, v5

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCenter_x:F

    .line 171
    aget v3, v1, v8

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCenter_y:F

    .line 172
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    .line 71
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mNewFaceDetector:Lcom/lge/olaworks/library/FaceDetector;

    .line 72
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    .line 73
    invoke-super {p0}, Lcom/lge/camera/controller/camera/CameraController;->onDestroy()V

    .line 74
    return-void
.end method

.method public onFaceDetected(I[Landroid/graphics/Rect;)V
    .locals 10
    .parameter "numDetectedFaces"
    .parameter "detectedFaces"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 197
    if-lez p1, :cond_d

    .line 198
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 199
    :cond_0
    const-string v4, "CameraApp"

    const-string v5, " captureing or pausing..don\'t need to detect faces"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_0
    return-void

    .line 203
    :cond_1
    iput p1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    .line 206
    iput-object p2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    .line 208
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v4

    if-ne v4, v9, :cond_2

    .line 209
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    iget v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    invoke-direct {p0, v4, v5}, Lcom/lge/camera/controller/camera/FacePreviewController;->flipHorizontal([Landroid/graphics/Rect;I)V

    .line 212
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    iget-object v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangles([Landroid/graphics/Rect;I)V

    .line 214
    const/4 v0, 0x0

    .local v0, center_x:I
    const/4 v1, 0x0

    .line 215
    .local v1, center_y:I
    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    invoke-direct {p0, p2, v4}, Lcom/lge/camera/controller/camera/FacePreviewController;->getIndexLargestFace([Landroid/graphics/Rect;I)I

    move-result v3

    .line 217
    .local v3, largestFaceIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    if-ge v2, v4, :cond_8

    .line 218
    if-ne v3, v2, :cond_3

    .line 219
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isBlockingFaceTrFocusing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 220
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "face blocking return:yellow:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/16 v5, -0x100

    invoke-virtual {v4, v2, v5}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    .line 217
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 223
    :cond_4
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    invoke-static {v4}, Lcom/lge/camera/properties/FunctionProperties;->isTouchAfSupported(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 225
    :cond_5
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not supported face focus return:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const v5, -0xff0100

    invoke-virtual {v4, v2, v5}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    goto :goto_2

    .line 228
    :cond_6
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v4

    if-nez v4, :cond_7

    .line 229
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    invoke-virtual {v4, v8, v8, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 232
    :cond_7
    aget-object v4, p2, v3

    iget v4, v4, Landroid/graphics/Rect;->right:I

    aget-object v5, p2, v3

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .line 233
    aget-object v4, p2, v3

    iget v4, v4, Landroid/graphics/Rect;->top:I

    aget-object v5, p2, v3

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 235
    invoke-direct {p0, p2, v3}, Lcom/lge/camera/controller/camera/FacePreviewController;->setFaceDetecedRectColor([Landroid/graphics/Rect;I)V

    .line 236
    invoke-direct {p0, p2, v3, v0, v1}, Lcom/lge/camera/controller/camera/FacePreviewController;->onFaceDetecedStartFocus([Landroid/graphics/Rect;III)V

    .line 238
    aget-object v4, p2, v3

    iput-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRect:Landroid/graphics/Rect;

    goto :goto_2

    .line 242
    :cond_8
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v4}, Lcom/lge/camera/components/CameraPreview;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_9

    .line 243
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v4, v7}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 246
    :cond_9
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v4

    iget v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFocusState:I

    if-eq v4, v5, :cond_b

    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isTimerShotCountdown()Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mTimerLedEnabled:I

    if-eq v4, v9, :cond_b

    .line 249
    :cond_a
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_c

    iget-boolean v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mIsFaceFocusSuccessed:Z

    if-eqz v4, :cond_c

    .line 251
    const/16 v4, 0x2e

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/camera/FacePreviewController;->setLEDPatternId(I)V

    .line 255
    :goto_3
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->startLEDForFaceTracking()V

    .line 257
    :cond_b
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFocusState:I

    .line 258
    iput-boolean v7, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mIsFaceFocusSuccessed:Z

    goto/16 :goto_0

    .line 253
    :cond_c
    const/16 v4, 0x2c

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/camera/FacePreviewController;->setLEDPatternId(I)V

    goto :goto_3

    .line 260
    .end local v0           #center_x:I
    .end local v1           #center_y:I
    .end local v2           #i:I
    .end local v3           #largestFaceIndex:I
    :cond_d
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mResetFace:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 261
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->stopLEDForFaceTracking()V

    .line 262
    iput v7, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFocusState:I

    .line 263
    iput-boolean v7, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mIsFaceFocusSuccessed:Z

    goto/16 :goto_0
.end method

.method public onFaceDetectionFromHal([Landroid/hardware/Camera$Face;)V
    .locals 10
    .parameter "faces"

    .prologue
    const/4 v9, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 269
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 270
    :cond_0
    const-string v4, "CameraApp"

    const-string v5, " captureing or pausing..don\'t need to detect faces"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_0
    return-void

    .line 275
    :cond_1
    array-length v4, p1

    iput v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    .line 276
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HAL FACE] mFaceDetectedCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    array-length v4, p1

    if-lez v4, :cond_e

    .line 279
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mResetFace:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 280
    iput v8, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCheckNoneFaceCount:I

    .line 281
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    if-ge v2, v4, :cond_2

    .line 285
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    aget-object v5, p1, v2

    iget-object v5, v5, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviewWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x7d0

    int-to-float v5, v5

    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCenter_x:F

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 286
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    aget-object v5, p1, v2

    iget-object v5, v5, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviewWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x7d0

    int-to-float v5, v5

    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCenter_x:F

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 287
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    aget-object v5, p1, v2

    iget-object v5, v5, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviewHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x7d0

    int-to-float v5, v5

    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCenter_y:F

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 288
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    aget-object v5, p1, v2

    iget-object v5, v5, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviewHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x7d0

    int-to-float v5, v5

    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCenter_y:F

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 291
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v4

    if-ne v4, v9, :cond_3

    .line 292
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    iget v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    invoke-direct {p0, v4, v5}, Lcom/lge/camera/controller/camera/FacePreviewController;->flipHorizontal([Landroid/graphics/Rect;I)V

    .line 295
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    iget-object v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangles([Landroid/graphics/Rect;I)V

    .line 297
    const/4 v0, 0x0

    .local v0, center_x:I
    const/4 v1, 0x0

    .line 298
    .local v1, center_y:I
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    iget v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    invoke-direct {p0, v4, v5}, Lcom/lge/camera/controller/camera/FacePreviewController;->getIndexLargestFace([Landroid/graphics/Rect;I)I

    move-result v3

    .line 300
    .local v3, largestFaceIndex:I
    const/4 v2, 0x0

    :goto_2
    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    if-ge v2, v4, :cond_9

    .line 301
    if-ne v3, v2, :cond_4

    .line 302
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isBlockingFaceTrFocusing()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 303
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "face blocking return:yellow:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/16 v5, -0x100

    invoke-virtual {v4, v2, v5}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    .line 300
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 306
    :cond_5
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    invoke-static {v4}, Lcom/lge/camera/properties/FunctionProperties;->isTouchAfSupported(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 308
    :cond_6
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not supported face focus return:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const v5, -0xff0100

    invoke-virtual {v4, v2, v5}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    goto :goto_3

    .line 311
    :cond_7
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v4

    if-nez v4, :cond_8

    .line 312
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    invoke-virtual {v4, v7, v7, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 315
    :cond_8
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .line 316
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 318
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    invoke-direct {p0, v4, v3}, Lcom/lge/camera/controller/camera/FacePreviewController;->setFaceDetecedRectColor([Landroid/graphics/Rect;I)V

    .line 319
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    invoke-direct {p0, v4, v3, v0, v1}, Lcom/lge/camera/controller/camera/FacePreviewController;->onFaceDetecedStartFocus([Landroid/graphics/Rect;III)V

    .line 321
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v4, v4, v3

    iput-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRect:Landroid/graphics/Rect;

    goto :goto_3

    .line 325
    :cond_9
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v4}, Lcom/lge/camera/components/CameraPreview;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    .line 326
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v4, v8}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 329
    :cond_a
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v4

    iget v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFocusState:I

    if-eq v4, v5, :cond_c

    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isTimerShotCountdown()Z

    move-result v4

    if-eqz v4, :cond_b

    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mTimerLedEnabled:I

    if-eq v4, v9, :cond_c

    .line 332
    :cond_b
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_d

    iget-boolean v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mIsFaceFocusSuccessed:Z

    if-eqz v4, :cond_d

    .line 334
    const/16 v4, 0x2e

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/camera/FacePreviewController;->setLEDPatternId(I)V

    .line 338
    :goto_4
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->startLEDForFaceTracking()V

    .line 340
    :cond_c
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFocusState:I

    .line 341
    iput-boolean v8, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mIsFaceFocusSuccessed:Z

    goto/16 :goto_0

    .line 336
    :cond_d
    const/16 v4, 0x2c

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/camera/FacePreviewController;->setLEDPatternId(I)V

    goto :goto_4

    .line 343
    .end local v0           #center_x:I
    .end local v1           #center_y:I
    .end local v2           #i:I
    .end local v3           #largestFaceIndex:I
    :cond_e
    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCheckNoneFaceCount:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_f

    .line 344
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mResetFace:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 345
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mResetFace:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 347
    :cond_f
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mResetFace:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 348
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mResetFace:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCheckNoneFaceCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCheckNoneFaceCount:I

    .line 351
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->stopLEDForFaceTracking()V

    .line 352
    iput v8, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFocusState:I

    .line 353
    iput-boolean v8, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mIsFaceFocusSuccessed:Z

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/lge/camera/controller/camera/CameraController;->onPause()V

    .line 64
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->hideView()V

    .line 65
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mResetFace:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method

.method public outSet(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 2
    .parameter "dst_r"
    .parameter "src_r"
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v1, 0x0

    .line 183
    iget v0, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 184
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 185
    iget v0, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p4

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 186
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p4

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 188
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-gez v0, :cond_0

    .line 189
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 191
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_1

    .line 192
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 194
    :cond_1
    return-void
.end method

.method public showView()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraPreview;->setDrawMode(I)V

    .line 129
    :cond_0
    return-void
.end method

.method public startFaceDetection()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "CameraApp"

    const-string v1, "Face dectection Start!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->initFaceDetectInfo()V

    .line 99
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->initEmotionalLEDForFaceTracking()V

    .line 101
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useFaceDetectionFromHal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->startFaceDetectionFromHal()V

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->showView()V

    .line 107
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->start()V

    goto :goto_0
.end method

.method public stopFaceDetection()V
    .locals 2

    .prologue
    .line 110
    const-string v0, "CameraApp"

    const-string v1, "Face dectection stop!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useFaceDetectionFromHal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopFaceDetectionFromHal()V

    .line 119
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->stopLEDForFaceTracking()V

    .line 121
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->initFaceDetectInfo()V

    .line 122
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->hideView()V

    .line 123
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->isEmptyEngine()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->stop()V

    goto :goto_0
.end method
