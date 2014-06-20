.class public Lcom/lge/camera/controller/camera/FreePanoramaController;
.super Lcom/lge/camera/controller/camera/CameraController;
.source "FreePanoramaController.java"

# interfaces
.implements Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;
.implements Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;


# instance fields
.field private mAnimationTakingGuideHide:Landroid/view/animation/Animation;

.field private mAnimationTakingGuideShow:Landroid/view/animation/Animation;

.field private mCameraBuff:[[B

.field private mCameraBuffID:I

.field private mDateTaken:[J

.field private mFinishFlg:Z

.field private mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

.field private mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

.field private mFreePanoramaView:Landroid/view/View;

.field private mGLPanoramaView:Landroid/opengl/GLSurfaceView;

.field private mHandler:Landroid/os/Handler;

.field private mImageConverter:Lcom/lge/morpho/util/ImageConverter/ImageConverterJNI;

.field private mIsRemoveFreePanoramaBlackBg:Z

.field private mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

.field private mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

.field private mPanoramaEngineState:I

.field private mPanoramaState:I

.field private mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

.field private mPreviewSize:[I

.field private mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

.field private mSensorFusionMode:I

.field private mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

.field private mStartDegree:I

.field private mTempLocation:Landroid/location/Location;

.field private mTempParams:Landroid/hardware/Camera$Parameters;

.field mThreadComplete:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 4
    .parameter "function"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/CameraController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 74
    iput v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    .line 82
    iput v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    .line 90
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    .line 107
    iput-boolean v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFinishFlg:Z

    .line 112
    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mImageConverter:Lcom/lge/morpho/util/ImageConverter/ImageConverterJNI;

    .line 113
    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    .line 118
    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    .line 123
    iput v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mStartDegree:I

    .line 125
    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mTempParams:Landroid/hardware/Camera$Parameters;

    .line 126
    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mTempLocation:Landroid/location/Location;

    .line 127
    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mThreadComplete:Ljava/lang/Thread;

    .line 129
    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mIsRemoveFreePanoramaBlackBg:Z

    .line 139
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getFreePanoramaSensorMode()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorFusionMode:I

    .line 148
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mDateTaken:[J

    .line 935
    new-instance v0, Lcom/lge/camera/controller/camera/FreePanoramaController$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/FreePanoramaController$5;-><init>(Lcom/lge/camera/controller/camera/FreePanoramaController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mHandler:Landroid/os/Handler;

    .line 146
    return-void

    .line 90
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/camera/controller/camera/FreePanoramaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->restartPanorama()V

    return-void
.end method

.method static synthetic access$1500(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lge/camera/controller/camera/FreePanoramaController;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camera/FreePanoramaController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->showGuideText(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/lge/camera/controller/camera/FreePanoramaController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->startRotateGuideText(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lge/camera/controller/camera/FreePanoramaController;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->moveToNextStateByAttachStatus(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/camera/FreePanoramaController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/camera/FreePanoramaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    return v0
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/camera/FreePanoramaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->saveResultImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/camera/FreePanoramaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->doComplete()V

    return-void
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method private addImage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Rect;)V
    .locals 10
    .parameter "fileName"
    .parameter "dateTaken"
    .parameter "directory"
    .parameter "output_img_path"
    .parameter "degree"
    .parameter "imageRect"

    .prologue
    .line 1050
    if-eqz p5, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mTempParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mTempParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mTempLocation:Landroid/location/Location;

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mTempParams:Landroid/hardware/Camera$Parameters;

    const-string v6, "iso"

    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mTempParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v8

    move-object v0, p5

    move/from16 v7, p6

    invoke-static/range {v0 .. v8}, Lcom/lge/camera/util/ExifUtil;->setExif(Ljava/lang/String;Ljava/lang/String;FLandroid/location/Location;IILjava/lang/String;ILjava/lang/String;)V

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getImageHandler(Z)Lcom/lge/camera/util/ImageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v5, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mTempLocation:Landroid/location/Location;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    move-wide v3, p2

    move-object v6, p4

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/lge/camera/util/ImageHandler;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v9

    .line 1068
    .local v9, imageUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->setSavedFileName(Ljava/lang/String;)V

    .line 1069
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v9}, Lcom/lge/camera/ControllerFunction;->setSavedImageUri(Landroid/net/Uri;)V

    .line 1070
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1072
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->checkGalleryEnabledOnGuestMode(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1076
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/lge/camera/util/SecureImageUtil;->addSecureLockImageUri(Landroid/net/Uri;)V

    .line 1079
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_uplus_box"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, p5, v1}, Lcom/lge/camera/util/Util;->requestUpBoxBackupPhoto(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1080
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    return-void
.end method

.method private static createAppSegDateString(J)Ljava/lang/String;
    .locals 3
    .parameter "dateTaken"

    .prologue
    .line 929
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 930
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 931
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 932
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createModules()V
    .locals 3

    .prologue
    .line 151
    const-string v0, "CameraApp"

    const-string v1, "createModules start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mImageConverter:Lcom/lge/morpho/util/ImageConverter/ImageConverterJNI;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/lge/morpho/util/ImageConverter/ImageConverterJNI;

    invoke-direct {v0}, Lcom/lge/morpho/util/ImageConverter/ImageConverterJNI;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mImageConverter:Lcom/lge/morpho/util/ImageConverter/ImageConverterJNI;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    invoke-direct {v0, p0}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;-><init>(Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    .line 162
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPanoramaEngineState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    if-nez v0, :cond_2

    .line 164
    new-instance v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;-><init>(Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    if-nez v0, :cond_3

    .line 169
    new-instance v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-direct {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    if-nez v0, :cond_4

    .line 174
    new-instance v0, Lcom/lge/morpho/core/MorphoSensorFusion;

    invoke-direct {v0}, Lcom/lge/morpho/core/MorphoSensorFusion;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    .line 176
    :cond_4
    const-string v0, "CameraApp"

    const-string v1, "createModules end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private doComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 620
    iput v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    .line 621
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.OnDelayOff"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 624
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->restartPanorama()V

    .line 642
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setVoiceShutterSetting()V

    .line 643
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->deleteProgressDialog()V

    .line 644
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setLockChangeConfiguration(Z)V

    .line 645
    return-void

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camera/FreePanoramaController$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camera/FreePanoramaController$3;-><init>(Lcom/lge/camera/controller/camera/FreePanoramaController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private initEngine()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 187
    const-string v1, "CameraApp"

    const-string v2, "initEngine"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->createModules()V

    .line 190
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->initSensorManager(Landroid/app/Activity;)V

    .line 192
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    invoke-virtual {v1}, Lcom/lge/morpho/core/MorphoSensorFusion;->initialize()I

    .line 193
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    invoke-virtual {v1, v5}, Lcom/lge/morpho/core/MorphoSensorFusion;->setOffsetMode(I)I

    .line 194
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    iget v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorFusionMode:I

    invoke-virtual {v1, v2}, Lcom/lge/morpho/core/MorphoSensorFusion;->setMode(I)I

    .line 195
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    invoke-virtual {v1, v6}, Lcom/lge/morpho/core/MorphoSensorFusion;->setAppState(I)I

    .line 198
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v1, v1, v5

    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v2, v2, v6

    mul-int/2addr v1, v2

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 200
    .local v0, buff_size:I
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    if-nez v1, :cond_4

    .line 201
    new-instance v1, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;I)V

    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    .line 203
    iget v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorFusionMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 204
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    invoke-virtual {v1, v5}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setInputGyroscopeType(I)V

    .line 209
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    new-instance v2, Lcom/lge/camera/controller/camera/FreePanoramaController$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/camera/FreePanoramaController$1;-><init>(Lcom/lge/camera/controller/camera/FreePanoramaController;)V

    invoke-virtual {v1, v2}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setOnRenderPreviewListener(Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$onRenderPreviewListener;)V

    .line 232
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    invoke-virtual {v1, v7}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setDispType(I)V

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0900c4

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaView:Landroid/view/View;

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Landroid/opengl/GLSurfaceView;

    if-nez v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09008d

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/opengl/GLSurfaceView;

    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Landroid/opengl/GLSurfaceView;

    .line 244
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_2

    .line 245
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Landroid/opengl/GLSurfaceView;

    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 246
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v5}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 247
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v6}, Landroid/opengl/GLSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 252
    :cond_2
    return-void

    .line 206
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    invoke-virtual {v1, v7}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setInputGyroscopeType(I)V

    goto :goto_0

    .line 228
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v1, v2}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setStitcher(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;)V

    goto :goto_1
.end method

.method private moveToNextStateByAttachStatus(I)Z
    .locals 1
    .parameter "attach_status"

    .prologue
    .line 980
    const/4 v0, 0x0

    .line 981
    .local v0, is_finish:Z
    packed-switch p1, :pswitch_data_0

    .line 994
    :goto_0
    :pswitch_0
    return v0

    .line 988
    :pswitch_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->stopPanorama()V

    .line 989
    const/4 v0, 0x1

    .line 990
    goto :goto_0

    .line 981
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private restartPanorama()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 843
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 844
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    invoke-virtual {v0, v1}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setRenderEnable(Z)V

    .line 846
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->releaseRegisteredImage()I

    move-result v0

    const-string v1, "mMorphoImageStitcher.releaseAllInputImage error int panorama_restart_button onclicked ret:"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    .line 847
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->end()I

    move-result v0

    const-string v1, "mMorphoImageStitcher.end error int panorama_restart_button onclicked ret:"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    .line 848
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v0, v2}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->start(I)I

    move-result v0

    const-string v1, "mMorphoImageStitcher.start(1) error int panorama_restart_button onclicked ret:"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    .line 850
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    invoke-virtual {v0, v2}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setRenderEnable(Z)V

    .line 852
    iput v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    .line 853
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->runEngine()V

    .line 854
    return-void
.end method

.method private runEngine()V
    .locals 3

    .prologue
    .line 255
    const-string v0, "CameraApp"

    const-string v1, "runEngine"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFinishFlg:Z

    .line 258
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    invoke-virtual {v0}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->registSensorManager()V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mCameraBuff:[[B

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mCameraBuff:[[B

    iget v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mCameraBuffID:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->isActivated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 275
    :cond_3
    return-void
.end method

.method private saveOutputImage(Ljava/lang/String;Ljava/lang/String;[JLandroid/graphics/Rect;I)I
    .locals 9
    .parameter "directory"
    .parameter "filename"
    .parameter "dateTaken"
    .parameter "rect"
    .parameter "orientation"

    .prologue
    const/4 v7, 0x1

    .line 909
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    new-array v4, v7, [I

    .line 911
    .local v4, output_size:[I
    const/4 v0, 0x0

    aget-wide v0, p3, v0

    invoke-static {v0, v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->createAppSegDateString(J)Ljava/lang/String;

    move-result-object v5

    .line 912
    .local v5, first_date:Ljava/lang/String;
    aget-wide v0, p3, v7

    invoke-static {v0, v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->createAppSegDateString(J)Ljava/lang/String;

    move-result-object v6

    .line 914
    .local v6, last_date:Ljava/lang/String;
    const v8, -0x7ffffffe

    .line 915
    .local v8, ret:I
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p4

    move v3, p5

    invoke-virtual/range {v0 .. v7}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;I[ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v8

    .line 919
    :cond_0
    if-eqz v8, :cond_1

    .line 920
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMorphoImageStitcher.saveOutputJpeg error ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    :goto_0
    return v8

    .line 924
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveOutputImage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveResultImage()Z
    .locals 19

    .prologue
    .line 998
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 999
    .local v14, bounding_rect:Landroid/graphics/Rect;
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 1003
    .local v15, clipping_rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v1, v15}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->getClippingRect(Landroid/graphics/Rect;)I

    move-result v1

    const-string v4, "mMorphoImageStitcher.getClippingRect error ret:"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4, v6}, Lcom/lge/camera/controller/camera/FreePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1005
    iget v1, v15, Landroid/graphics/Rect;->right:I

    iget v4, v15, Landroid/graphics/Rect;->left:I

    sub-int v18, v1, v4

    .line 1006
    .local v18, width:I
    iget v1, v15, Landroid/graphics/Rect;->bottom:I

    iget v4, v15, Landroid/graphics/Rect;->top:I

    sub-int v16, v1, v4

    .line 1007
    .local v16, height:I
    const-string v1, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OutImageSize[clipping]: w="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " h="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1017
    .local v8, dateTaken:J
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/lge/camera/util/FileNamer;->getFileName(Landroid/content/Context;IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 1019
    .local v7, fileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v2

    .line 1020
    .local v2, directory:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".jpg"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1021
    .local v3, bounding_file_name_with_extension:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1024
    .local v11, output_img_path:Ljava/lang/String;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1027
    .local v5, saving_rect:Landroid/graphics/Rect;
    move-object v5, v15

    .line 1032
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mDateTaken:[J

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    aput-wide v12, v1, v4

    .line 1034
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mDateTaken:[J

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/lge/camera/controller/camera/FreePanoramaController;->saveOutputImage(Ljava/lang/String;Ljava/lang/String;[JLandroid/graphics/Rect;I)I

    move-result v17

    .line 1035
    .local v17, ret:I
    if-nez v17, :cond_1

    .line 1036
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mStartDegree:I

    move-object/from16 v6, p0

    move-object v10, v2

    move-object v13, v5

    invoke-direct/range {v6 .. v13}, Lcom/lge/camera/controller/camera/FreePanoramaController;->addImage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Rect;)V

    .line 1037
    const-string v1, "CameraApp"

    const-string v4, "The original free panorama image is saved."

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v1, v4, v6}, Lcom/lge/camera/ControllerFunction;->setLastThumb(Landroid/net/Uri;Z)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->updateThumbnailButton()V

    .line 1041
    const/4 v1, 0x1

    .line 1046
    :goto_1
    return v1

    .line 1009
    .end local v2           #directory:Ljava/lang/String;
    .end local v3           #bounding_file_name_with_extension:Ljava/lang/String;
    .end local v5           #saving_rect:Landroid/graphics/Rect;
    .end local v7           #fileName:Ljava/lang/String;
    .end local v8           #dateTaken:J
    .end local v11           #output_img_path:Ljava/lang/String;
    .end local v16           #height:I
    .end local v17           #ret:I
    .end local v18           #width:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v1, v14}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->getBoundingRect(Landroid/graphics/Rect;)I

    move-result v1

    const-string v4, "mMorphoImageStitcher.getBoundingRect error ret:"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4, v6}, Lcom/lge/camera/controller/camera/FreePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    .line 1011
    iget v1, v14, Landroid/graphics/Rect;->right:I

    iget v4, v14, Landroid/graphics/Rect;->left:I

    sub-int v18, v1, v4

    .line 1012
    .restart local v18       #width:I
    iget v1, v14, Landroid/graphics/Rect;->bottom:I

    iget v4, v14, Landroid/graphics/Rect;->top:I

    sub-int v16, v1, v4

    .line 1013
    .restart local v16       #height:I
    const-string v1, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OutImageSize[bounding]: w="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " h="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1043
    .restart local v2       #directory:Ljava/lang/String;
    .restart local v3       #bounding_file_name_with_extension:Ljava/lang/String;
    .restart local v5       #saving_rect:Landroid/graphics/Rect;
    .restart local v7       #fileName:Ljava/lang/String;
    .restart local v8       #dateTaken:J
    .restart local v11       #output_img_path:Ljava/lang/String;
    .restart local v17       #ret:I
    :cond_1
    const-string v1, "CameraApp"

    const-string v4, "Cannot save original free panorama image."

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setCafSetting()V
    .locals 4

    .prologue
    .line 1107
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/camera/properties/FunctionProperties;->isCafSupported(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_free_panorama"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1109
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1110
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1111
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1112
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1113
    const-string v1, "CameraApp"

    const-string v2, "### setFocusMode-conti"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1116
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 1119
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 1120
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 1124
    .end local v0           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_1
    return-void
.end method

.method private setVoiceShutterSetting()V
    .locals 3

    .prologue
    .line 1127
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1128
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_voiceshutter"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1130
    .local v0, mVoiceShutterValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1131
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.SetVoiceShutterMode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 1134
    .end local v0           #mVoiceShutterValue:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private showGuideText(Z)V
    .locals 2
    .parameter "isVisible"

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camera/FreePanoramaController$4;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/controller/camera/FreePanoramaController$4;-><init>(Lcom/lge/camera/controller/camera/FreePanoramaController;Z)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 719
    :cond_0
    return-void
.end method

.method private startRotateGuideText(I)V
    .locals 12
    .parameter "degree"

    .prologue
    .line 722
    iget-object v10, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    if-nez v10, :cond_0

    .line 777
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a0245

    invoke-static {v10, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 727
    .local v0, audioZoomGuideStringMarginBottom:I
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a001a

    invoke-static {v10, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v6

    .line 728
    .local v6, previewPanelWidth:I
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a001d

    invoke-static {v10, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v5

    .line 729
    .local v5, previewPanelMarginBottom:I
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a0246

    invoke-static {v10, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 730
    .local v1, guideSideMargin:I
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a0197

    invoke-static {v10, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 732
    .local v2, indicatorHeight:I
    const/4 v10, 0x2

    new-array v7, v10, [I

    fill-array-data v7, :array_0

    .line 733
    .local v7, previewSizeOnScreen:[I
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v8

    .line 734
    .local v8, sizeOnScreenString:Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 735
    invoke-static {v8}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v7

    .line 738
    :cond_1
    iget-object v10, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 739
    .local v3, lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v3}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 740
    iget-object v10, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    const-string v11, "NO_R2L"

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 741
    const/4 v10, 0x0

    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 742
    const/4 v10, 0x0

    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 743
    const/4 v10, 0x0

    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 744
    const/4 v10, 0x0

    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 746
    iget-object v10, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    const v11, 0x7f090098

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 747
    .local v9, textInnerLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 748
    .local v4, lpInnerLayout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v4}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 749
    const-string v10, "NO_R2L"

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 750
    const/4 v10, -0x2

    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 751
    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 753
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, p1, v11}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/16 v11, 0xb4

    invoke-static {v10, p1, v11}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 755
    :cond_2
    const/16 v10, 0x9

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 756
    const/16 v10, 0xc

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 757
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 758
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 759
    add-int v10, v1, v6

    add-int/2addr v10, v5

    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 761
    const/4 v10, 0x0

    aget v10, v7, v10

    add-int v11, v1, v6

    add-int/2addr v11, v5

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 773
    :cond_3
    :goto_1
    iget-object v10, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    const v11, 0x7f090097

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/lge/camera/components/RotateLayout;

    invoke-virtual {v10, p1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 775
    invoke-virtual {v9, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 776
    iget-object v10, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 762
    :cond_4
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/16 v11, 0x5a

    invoke-static {v10, p1, v11}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/16 v11, 0x10e

    invoke-static {v10, p1, v11}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 764
    :cond_5
    const/16 v10, 0xc

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 765
    const/16 v10, 0xe

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 766
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 767
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 768
    add-int v10, v0, v6

    add-int/2addr v10, v5

    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 770
    const/4 v10, 0x1

    aget v10, v7, v10

    add-int v11, v1, v2

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 732
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private stopModules()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 324
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    invoke-virtual {v0, v1}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setRenderEnable(Z)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    if-eqz v0, :cond_2

    .line 329
    iget v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    packed-switch v0, :pswitch_data_0

    .line 341
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->finish()I

    .line 344
    :cond_1
    iput-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    .line 345
    iput v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    if-eqz v0, :cond_3

    .line 349
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    invoke-virtual {v0}, Lcom/lge/morpho/core/MorphoSensorFusion;->finish()I

    .line 350
    iput-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    .line 353
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_4

    .line 354
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 357
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    if-eqz v0, :cond_5

    .line 358
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    invoke-virtual {v0}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->unRegistSensorManager()V

    .line 360
    :cond_5
    return-void

    .line 331
    :pswitch_1
    iput v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    goto :goto_0

    .line 334
    :pswitch_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->stopPanorama()V

    .line 335
    iput v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateScreenRotation()V
    .locals 6

    .prologue
    .line 463
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 464
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    const/4 v3, 0x0

    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 465
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v3, v4}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->setCameraOrientation(I)V

    .line 467
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-direct {p0, v3}, Lcom/lge/camera/controller/camera/FreePanoramaController;->updateSensorFusionRotation(I)V

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, degrees:I
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 484
    const/4 v0, 0x0

    .line 487
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    invoke-virtual {v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getCameraOrientation()I

    move-result v3

    sub-int v3, v0, v3

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v2, v3, 0x168

    .line 488
    .local v2, preview_rotation:I
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "camera:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    invoke-virtual {v5}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getCameraOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " disp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " preview:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    invoke-virtual {v3, v2}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setPreviewRotation(I)V

    .line 490
    return-void

    .line 472
    .end local v2           #preview_rotation:I
    :pswitch_0
    const/4 v0, 0x0

    .line 473
    goto :goto_0

    .line 475
    :pswitch_1
    const/16 v0, 0x5a

    .line 476
    goto :goto_0

    .line 478
    :pswitch_2
    const/16 v0, 0xb4

    .line 479
    goto :goto_0

    .line 481
    :pswitch_3
    const/16 v0, 0x10e

    .line 482
    goto :goto_0

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateSensorFusionRotation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 439
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    if-eqz v1, :cond_0

    .line 440
    const/4 v0, 0x1

    .line 441
    .local v0, rotation:I
    sparse-switch p1, :sswitch_data_0

    .line 455
    const/4 v0, 0x0

    .line 458
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    invoke-virtual {v1, v0}, Lcom/lge/morpho/core/MorphoSensorFusion;->setRotation(I)I

    .line 460
    .end local v0           #rotation:I
    :cond_0
    return-void

    .line 443
    .restart local v0       #rotation:I
    :sswitch_0
    const/4 v0, 0x0

    .line 444
    goto :goto_0

    .line 446
    :sswitch_1
    const/4 v0, 0x1

    .line 447
    goto :goto_0

    .line 449
    :sswitch_2
    const/4 v0, 0x2

    .line 450
    goto :goto_0

    .line 452
    :sswitch_3
    const/4 v0, 0x3

    .line 453
    goto :goto_0

    .line 441
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public checkOK(ILjava/lang/String;Z)Z
    .locals 4
    .parameter "ret"
    .parameter "errorLog"
    .parameter "isFinish"

    .prologue
    const/4 v0, 0x1

    .line 1137
    if-eqz p1, :cond_1

    .line 1138
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    if-eqz p3, :cond_0

    .line 1141
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0310

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1142
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1144
    :cond_0
    const/4 v0, 0x0

    .line 1147
    :cond_1
    return v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getCameraBuff()[B
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mCameraBuff:[[B

    iget v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mCameraBuffID:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCameraBuffID()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mCameraBuffID:I

    return v0
.end method

.method public getCameraDevice()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getFinishFlg()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFinishFlg:Z

    return v0
.end method

.method public getGLPanoramaView()Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method public getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    return-object v0
.end method

.method public getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    return-object v0
.end method

.method public getPanoramaEngineState()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    return v0
.end method

.method public getPanoramaState()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    return v0
.end method

.method public getPreviewSize()[I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    return-object v0
.end method

.method public getRenderer()Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    return-object v0
.end method

.method public getResultSize()[I
    .locals 6

    .prologue
    const/16 v5, 0x3c0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1084
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 1086
    .local v0, size:[I
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v1, v1, v3

    const/16 v2, 0x500

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v1, v1, v4

    if-ne v1, v5, :cond_1

    .line 1087
    const/16 v1, 0x1d76

    aput v1, v0, v3

    .line 1088
    const/16 v1, 0xc20

    aput v1, v0, v4

    .line 1103
    :cond_0
    :goto_0
    return-object v0

    .line 1089
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v1, v1, v3

    const/16 v2, 0x400

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v1, v1, v4

    const/16 v2, 0x300

    if-ne v1, v2, :cond_2

    .line 1090
    const/16 v1, 0x16c0

    aput v1, v0, v3

    .line 1091
    const/16 v1, 0xb80

    aput v1, v0, v4

    goto :goto_0

    .line 1092
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v1, v1, v3

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v1, v1, v4

    const/16 v2, 0x2d0

    if-ne v1, v2, :cond_3

    .line 1093
    const/16 v1, 0xbe0

    aput v1, v0, v3

    .line 1094
    const/16 v1, 0xb20

    aput v1, v0, v4

    goto :goto_0

    .line 1095
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v1, v1, v3

    const/16 v2, 0x280

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v1, v1, v4

    const/16 v2, 0x1e0

    if-ne v1, v2, :cond_4

    .line 1096
    const/16 v1, 0x7e0

    aput v1, v0, v3

    .line 1097
    const/16 v1, 0x780

    aput v1, v0, v4

    goto :goto_0

    .line 1098
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v1, v1, v3

    const/16 v2, 0x140

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v1, v1, v4

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_0

    .line 1099
    const/16 v1, 0x420

    aput v1, v0, v3

    .line 1100
    const/16 v1, 0x3a0

    aput v1, v0, v4

    goto :goto_0

    .line 1084
    nop

    :array_0
    .array-data 0x4
        0x76t 0x1dt 0x0t 0x0t
        0x20t 0xct 0x0t 0x0t
    .end array-data
.end method

.method public getSensorFusionMode()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorFusionMode:I

    return v0
.end method

.method public getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    return-object v0
.end method

.method public isPanoramaUIShown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 403
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 885
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mImageConverter:Lcom/lge/morpho/util/ImageConverter/ImageConverterJNI;

    .line 887
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaView:Landroid/view/View;

    .line 888
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

    .line 889
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    .line 890
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Landroid/opengl/GLSurfaceView;

    .line 891
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mHandler:Landroid/os/Handler;

    .line 892
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    .line 894
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    .line 896
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    if-eqz v1, :cond_0

    .line 897
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    invoke-virtual {v1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->unbind()V

    .line 898
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    .line 901
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mCameraBuff:[[B

    if-eqz v1, :cond_1

    .line 902
    check-cast v0, [[B

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mCameraBuff:[[B

    .line 905
    :cond_1
    invoke-super {p0}, Lcom/lge/camera/controller/camera/CameraController;->onDestroy()V

    .line 906
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 857
    const-string v1, "CameraApp"

    const-string v2, "Panorama Controller onPause - start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_free_panorama"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 859
    const-string v1, "CameraApp"

    const-string v2, "Pano Panorama Controller onPause - return"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    :goto_0
    return-void

    .line 862
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFinishFlg:Z

    .line 864
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->stopPanorama()V

    .line 866
    const-string v1, "CameraApp"

    const-string v2, "getImageListUri().clear() call"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 869
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->removePanoramaView()V

    .line 871
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setVisibleSensorCorrectionGuide(Z)V

    .line 874
    const/4 v0, 0x0

    .line 875
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 876
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 878
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->stopEngine(Landroid/hardware/Camera$Parameters;)V

    .line 880
    const-string v1, "CameraApp"

    const-string v2, "Panorama Controller onPause -end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reInitialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    const-string v0, "CameraApp"

    const-string v1, "reInitialize"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iput-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaView:Landroid/view/View;

    .line 183
    iput-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Landroid/opengl/GLSurfaceView;

    .line 184
    return-void
.end method

.method public removePanoramaView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 493
    const-string v0, "CameraApp"

    const-string v1, "removePanoramaView"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 500
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mIsRemoveFreePanoramaBlackBg:Z

    if-eqz v0, :cond_3

    .line 501
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->removeFreePanoramaBlackBg()V

    .line 505
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 508
    :cond_2
    return-void

    .line 503
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mIsRemoveFreePanoramaBlackBg:Z

    goto :goto_0
.end method

.method public restartToStartupPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 794
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->getPanoramaState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->getPanoramaState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 797
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    invoke-virtual {v0, v2}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setRenderEnable(Z)V

    .line 799
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setVisibleResetButton(Z)V

    .line 800
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setVisibleTakingGuide(Z)V

    .line 801
    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->showGuideText(Z)V

    .line 802
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 803
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->set3DSwitchVisible(Z)V

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setThumbnailButtonVisibility(I)V

    .line 807
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 809
    iput v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    .line 810
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->releaseRegisteredImage()I

    move-result v0

    const-string v1, "mMorphoImageStitcher.releaseAllInputImage error int panorama_restart_button onclicked ret:"

    invoke-virtual {p0, v0, v1, v3}, Lcom/lge/camera/controller/camera/FreePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    .line 811
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->end()I

    move-result v0

    const-string v1, "mMorphoImageStitcher.end error int panorama_restart_button onclicked ret:"

    invoke-virtual {p0, v0, v1, v3}, Lcom/lge/camera/controller/camera/FreePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    .line 813
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    invoke-virtual {v0, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setUseImage(I)V

    .line 815
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v0, v3}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->start(I)I

    move-result v0

    const-string v1, "mMorphoImageStitcher.start(1) error int panorama_restart_button onclicked ret:"

    invoke-virtual {p0, v0, v1, v3}, Lcom/lge/camera/controller/camera/FreePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    .line 817
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    invoke-virtual {v0, v3}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setRenderEnable(Z)V

    .line 820
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setVisibleSensorCorrectionGuide(Z)V

    .line 823
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 825
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setCafSetting()V

    .line 827
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setVoiceShutterSetting()V

    .line 829
    iput v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    .line 831
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    .line 832
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showQuickFunctionController()V

    .line 833
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 834
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v1, 0x64

    invoke-interface {v0, v1, v2, v2}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 835
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3, v2}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 836
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setLockChangeConfiguration(Z)V

    .line 840
    :goto_0
    return-void

    .line 838
    :cond_2
    const-string v0, "CameraApp"

    const-string v1, "stopPanorama() do nothing; not started"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCameraBuffID(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 100
    iput p1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mCameraBuffID:I

    .line 101
    return-void
.end method

.method public setPanoramaEngineState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 87
    iput p1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    .line 88
    return-void
.end method

.method public setPanoramaState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 79
    iput p1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    .line 80
    return-void
.end method

.method public setRemoveFreePanoramaBlackBg(Z)V
    .locals 0
    .parameter "remove"

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mIsRemoveFreePanoramaBlackBg:Z

    .line 137
    return-void
.end method

.method public setSensorCorrectionGuideCounter(I)V
    .locals 3
    .parameter "num"

    .prologue
    .line 659
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090095

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 661
    .local v0, counter_view:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 674
    packed-switch p1, :pswitch_data_0

    .line 678
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 675
    :pswitch_0
    const v1, 0x7f02041b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 676
    :pswitch_1
    const v1, 0x7f02041a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 677
    :pswitch_2
    const v1, 0x7f020419

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 674
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setShutterButtonImage(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    .line 1158
    return-void
.end method

.method public setVisibleResetButton(Z)V
    .locals 4
    .parameter "isVisible"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 784
    if-eqz p1, :cond_0

    .line 785
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f020453

    invoke-interface {v0, v3, v1}, Lcom/lge/camera/ControllerFunction;->setSubButton(II)V

    .line 786
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f09014f

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 787
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090150

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 791
    :goto_0
    return-void

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lcom/lge/camera/ControllerFunction;->setSubButton(II)V

    goto :goto_0
.end method

.method public setVisibleSensorCorrectionGuide(Z)V
    .locals 3
    .parameter "isVisible"

    .prologue
    .line 648
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090094

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 649
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 650
    if-eqz p1, :cond_1

    .line 651
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisibleTakingGuide(Z)V
    .locals 4
    .parameter "isVisible"

    .prologue
    const/4 v2, 0x0

    .line 684
    if-eqz p1, :cond_2

    .line 685
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    invoke-virtual {v0, v2}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->setWaitTime(I)V

    .line 686
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setSensorCorrectionGuideCounter(I)V

    .line 688
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mAnimationTakingGuideShow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 690
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideFreePanoramaGuide"

    const-wide/16 v2, 0x5dc

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 693
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->showGuideText(Z)V

    .line 700
    :cond_1
    :goto_0
    return-void

    .line 695
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mAnimationTakingGuideHide:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 697
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showPanoramaView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 410
    const-string v1, "CameraApp"

    const-string v2, "showPanoramaView"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_free_panorama"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 412
    const-string v1, "CameraApp"

    const-string v2, "exit showPanoramaView because not free panorama mode"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 417
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 420
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_3

    .line 421
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v4}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 424
    :cond_3
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->runEngine()V

    .line 426
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->updateScreenRotation()V

    .line 428
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v2, 0x1e

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setMainBarAlpha(I)V

    .line 430
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.Rotate"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090147

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ShutterButton;

    .line 433
    .local v0, mShutterButton:Lcom/lge/camera/components/ShutterButton;
    if-eqz v0, :cond_0

    .line 434
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->isEnabled()Z

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    goto :goto_0
.end method

.method public startEngine(Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .parameter "parameters"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 278
    const-string v2, "CameraApp"

    const-string v3, "startEngine"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_free_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    const-string v2, "CameraApp"

    const-string v3, "exit startEngine"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_camera_shot_mode"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 289
    .local v1, shotModePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v0

    .line 294
    .local v0, previewSize:[I
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v3, v0, v5

    aput v3, v2, v5

    .line 295
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v3, v0, v6

    aput v3, v2, v6

    .line 296
    iput v5, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mCameraBuffID:I

    .line 298
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preview size (w,h)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v3, v3, v5

    iget-object v4, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v4, v4, v6

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mCameraBuff:[[B

    .line 301
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->initEngine()V

    .line 303
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    invoke-virtual {v2, v5}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setUseStillImage(Z)V

    .line 304
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    invoke-virtual {v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->resetCount()V

    .line 305
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setAngleOfViewDegree(FF)V

    .line 307
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_2

    .line 308
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09008e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

    .line 310
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_3

    .line 311
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090096

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    .line 314
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mAnimationTakingGuideShow:Landroid/view/animation/Animation;

    if-nez v2, :cond_4

    .line 315
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040002

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mAnimationTakingGuideShow:Landroid/view/animation/Animation;

    .line 318
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mAnimationTakingGuideHide:Landroid/view/animation/Animation;

    if-nez v2, :cond_0

    .line 319
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mAnimationTakingGuideHide:Landroid/view/animation/Animation;

    goto/16 :goto_0
.end method

.method public startPanorama()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x1f4

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 511
    const-string v0, "CameraApp"

    const-string v1, "startPanorama()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    if-eq v0, v3, :cond_0

    .line 513
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail startPanorama() mPanoramaEngineState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setLockChangeConfiguration(Z)V

    .line 519
    iput v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    .line 520
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    invoke-virtual {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->resetCount()V

    .line 522
    iput v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mStartDegree:I

    .line 524
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerVisible(Z)V

    .line 525
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v1, 0x64

    invoke-interface {v0, v1, v4, v2}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 526
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 527
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->set3DSwitchVisible(Z)V

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->setThumbnailButtonVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 533
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideOptionMenu()V

    .line 534
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setKeepScreenOn()V

    .line 535
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    .line 537
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    invoke-virtual {v0, v3, v5, v6}, Lcom/lge/camera/util/MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 538
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5, v6}, Lcom/lge/camera/util/MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 541
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    invoke-virtual {v0, v2}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->setWaitTime(I)V

    .line 542
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setSensorCorrectionGuideCounter(I)V

    .line 543
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setVisibleSensorCorrectionGuide(Z)V

    .line 544
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    .line 545
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    invoke-virtual {v0, v2}, Lcom/lge/morpho/core/MorphoSensorFusion;->setAppState(I)I

    .line 552
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    .line 553
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setVisibleResetButton(Z)V

    goto :goto_0
.end method

.method public startRotation(IZ)V
    .locals 0
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 780
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->startRotateGuideText(I)V

    .line 781
    return-void
.end method

.method public stopEngine(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    const/4 v3, 0x0

    .line 363
    const-string v1, "CameraApp"

    const-string v2, "stopEngine"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 367
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mThreadComplete:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mThreadComplete:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mThreadComplete:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_0
    iput-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mTempParams:Landroid/hardware/Camera$Parameters;

    .line 387
    iput-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mTempLocation:Landroid/location/Location;

    .line 388
    iput-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mThreadComplete:Ljava/lang/Thread;

    .line 391
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->stopModules()V

    .line 393
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    .line 394
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFinishFlg:Z

    .line 396
    iput-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

    .line 397
    iput-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    .line 398
    iput-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mAnimationTakingGuideShow:Landroid/view/animation/Animation;

    .line 399
    iput-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mAnimationTakingGuideHide:Landroid/view/animation/Animation;

    .line 400
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopPanorama()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 557
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopPanorama() getPanoramaState() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->getPanoramaState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v2}, Lcom/lge/camera/ControllerFunction;->setSubButton(II)V

    .line 559
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->getPanoramaState()I

    move-result v3

    if-ne v3, v6, :cond_0

    iget v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    if-eq v3, v6, :cond_2

    .line 560
    :cond_0
    const-string v1, "CameraApp"

    const-string v3, "stopPanorama() do nothing; not started"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_1
    :goto_0
    return-void

    .line 564
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v3

    if-nez v3, :cond_4

    move v0, v1

    .line 566
    .local v0, isNeedSaving:Z
    :goto_1
    iput v7, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    .line 567
    iput v7, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    .line 568
    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFinishFlg:Z

    .line 570
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setVisibleTakingGuide(Z)V

    .line 571
    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->showGuideText(Z)V

    .line 573
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showProgressDialog()V

    .line 575
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->setMainButtonDisable()V

    .line 576
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 577
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 578
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->keepScreenOnAwhile()V

    .line 580
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 582
    if-eqz v0, :cond_3

    .line 583
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    .line 585
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showQuickFunctionController()V

    .line 586
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v3, 0x64

    invoke-interface {v1, v3, v2, v2}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 587
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setCafSetting()V

    .line 589
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/lge/camera/controller/camera/FreePanoramaController$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/camera/FreePanoramaController$2;-><init>(Lcom/lge/camera/controller/camera/FreePanoramaController;)V

    const-string v3, "complete_Free_Panorama"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mThreadComplete:Ljava/lang/Thread;

    .line 612
    if-eqz v0, :cond_1

    .line 613
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mTempParams:Landroid/hardware/Camera$Parameters;

    .line 614
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mTempLocation:Landroid/location/Location;

    .line 615
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mThreadComplete:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .end local v0           #isNeedSaving:Z
    :cond_4
    move v0, v2

    .line 564
    goto :goto_1
.end method
