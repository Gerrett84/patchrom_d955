.class public Lcom/lge/camera/controller/camera/PanoramaController;
.super Lcom/lge/camera/controller/camera/CameraController;
.source "PanoramaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;,
        Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;,
        Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;
    }
.end annotation


# instance fields
.field private mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

.field private mDirectInit:Z

.field private mDirection:I

.field private mGuideView:Lcom/lge/camera/components/CameraPreview;

.field private mInitMainButton:Z

.field private mIsReachProgressMax:Z

.field private mJpegData:[B

.field private mModeDirection:I

.field private mModeSetFrameImage:I

.field private mModeThumbnail:I

.field private mPanoOrientationDegree:I

.field private mPanoramaStarted:Z

.field private mPanoramaView:Landroid/view/View;

.field private mSynthesizeInProgress:Z

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .parameter "function"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/CameraController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 42
    iput-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    .line 44
    iput-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mJpegData:[B

    .line 46
    iput-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    .line 47
    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z

    .line 48
    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z

    .line 50
    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mIsReachProgressMax:Z

    .line 290
    iput v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mDirection:I

    .line 292
    iput v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoOrientationDegree:I

    .line 539
    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mDirectInit:Z

    .line 540
    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mInitMainButton:Z

    .line 61
    iput v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mModeSetFrameImage:I

    .line 62
    iput v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mModeDirection:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mModeThumbnail:I

    .line 64
    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/olaworks/library/AutoPanorama;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lge/camera/controller/camera/PanoramaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mDirection:I

    return v0
.end method

.method static synthetic access$2302(Lcom/lge/camera/controller/camera/PanoramaController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mDirection:I

    return p1
.end method

.method static synthetic access$2400(Lcom/lge/camera/controller/camera/PanoramaController;Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/PanoramaController;->setGuideAroundThumbTextLayoutRightLeft(Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/lge/camera/controller/camera/PanoramaController;Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/PanoramaController;->setGuideAroundThumbTextLayoutUpDown(Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/lge/camera/controller/camera/PanoramaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mDirectInit:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mDirectInit:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/lge/camera/controller/camera/PanoramaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mInitMainButton:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mInitMainButton:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mIsReachProgressMax:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/lge/camera/controller/camera/PanoramaController;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mJpegData:[B

    return-object p1
.end method

.method static synthetic access$3500(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/lge/camera/controller/camera/PanoramaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->onSynthesizeComplete()V

    return-void
.end method

.method static synthetic access$3900(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/camera/PanoramaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoOrientationDegree:I

    return v0
.end method

.method static synthetic access$5000(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lge/camera/controller/camera/PanoramaController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoOrientationDegree:I

    return p1
.end method

.method static synthetic access$5100(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/lge/camera/controller/camera/PanoramaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->checkMediator()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method private onSynthesizeComplete()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 688
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mJpegData:[B

    if-eqz v2, :cond_5

    .line 693
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mJpegData:[B

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->savePicture([BLandroid/graphics/Bitmap;)Z

    move-result v1

    .line 695
    .local v1, ret:Z
    if-nez v1, :cond_2

    .line 696
    const-string v2, "CameraApp"

    const-string v3, "panorama save fail"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4, v5}, Lcom/lge/camera/ControllerFunction;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 698
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 702
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setLastThumb(Landroid/net/Uri;Z)V

    .line 703
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->updateThumbnailButton()V

    .line 704
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 705
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 706
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.OnDelayOff"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 714
    :cond_3
    :goto_1
    iput-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mJpegData:[B

    .line 720
    .end local v1           #ret:Z
    :goto_2
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 721
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, mVoiceShutterValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 724
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.SetVoiceShutterMode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 708
    .end local v0           #mVoiceShutterValue:Ljava/lang/String;
    .restart local v1       #ret:Z
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewForQuickView()Z

    move-result v2

    if-nez v2, :cond_3

    .line 709
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->stopPreview()V

    .line 710
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.DisplayCameraPostview"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_1

    .line 716
    .end local v1           #ret:Z
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4, v5}, Lcom/lge/camera/ControllerFunction;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 717
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private setGuideAroundThumbTextLayoutRightLeft(Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;)V
    .locals 5
    .parameter "gp"

    .prologue
    const/16 v4, 0xb

    const/16 v3, 0x11

    const/4 v2, 0x1

    .line 444
    iget v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mDegree:I

    if-nez v0, :cond_1

    .line 445
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 446
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 447
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mIndicatorHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 448
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginLeft:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 450
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpTextLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLcdHeight:I

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mIndicatorHeight:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginBottom:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbHeight:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginBottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 451
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mDegree:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    .line 453
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 454
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 455
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginLeft:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 456
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mIndicatorHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 458
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpTextLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLcdHeight:I

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mIndicatorHeight:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginBottom:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbHeight:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginBottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 459
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto :goto_0

    .line 460
    :cond_2
    iget v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mDegree:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_3

    iget v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mDegree:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    .line 461
    :cond_3
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 462
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 463
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginBottom:I

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbHeight:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 465
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpTextLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLcdWidth:I

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginLeft:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginLeft:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPreviewPanelWidth:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPreviewPanelMarginBottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 466
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto :goto_0
.end method

.method private setGuideAroundThumbTextLayoutUpDown(Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;)V
    .locals 6
    .parameter "gp"

    .prologue
    const/16 v5, 0x9

    const/16 v4, 0x11

    const/16 v3, 0xc

    const/4 v2, 0x1

    .line 471
    iget v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mDegree:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mDegree:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    .line 472
    :cond_0
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 473
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 474
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginBottom:I

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbWidth:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 476
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpTextLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLcdHeight:I

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginLeft:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginLeft:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 477
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 495
    :cond_1
    :goto_0
    return-void

    .line 478
    :cond_2
    iget v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mDegree:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3

    .line 479
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 480
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 481
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginLeft:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 482
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginBottom:I

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbWidth:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 484
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpTextLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLcdWidth:I

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginLeft:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginBottom:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbWidth:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginBottom:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPreviewPanelWidth:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPreviewPanelMarginBottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 485
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto :goto_0

    .line 486
    :cond_3
    iget v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mDegree:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 487
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 488
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 489
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginLeft:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 490
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginBottom:I

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbWidth:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 492
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpTextLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLcdWidth:I

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginLeft:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginBottom:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbWidth:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginBottom:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPreviewPanelWidth:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPreviewPanelMarginBottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 493
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto :goto_0
.end method

.method private showGuideAroundThumbText(Z)V
    .locals 2
    .parameter "isShowing"

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camera/PanoramaController$2;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/controller/camera/PanoramaController$2;-><init>(Lcom/lge/camera/controller/camera/PanoramaController;Z)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private showGuideCenterText(ZI)V
    .locals 2
    .parameter "isShowing"
    .parameter "resId"

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camera/PanoramaController$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/camera/controller/camera/PanoramaController$1;-><init>(Lcom/lge/camera/controller/camera/PanoramaController;ZI)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private tryEnable3ALocks(Landroid/hardware/Camera$Parameters;Z)Z
    .locals 1
    .parameter "parameters"
    .parameter "toggle"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkPreviewController()Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    :cond_0
    const/4 v0, 0x0

    .line 287
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Landroid/hardware/Camera$Parameters;Z)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public inflatePanoramaView()V
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0900d9

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    .line 76
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09013e

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/CameraPreview;

    iput-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    .line 77
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/CameraPreview;->initializePanorama(I)V

    .line 78
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->removePanoramaView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initAutoPanoramaPlayUI(IZ)Z
    .locals 13
    .parameter "direction"
    .parameter "warning"

    .prologue
    .line 296
    if-nez p1, :cond_0

    .line 297
    const/4 v0, 0x0

    .line 321
    :goto_0
    return v0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090106

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090107

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090104

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090105

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090108

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    invoke-virtual {v0}, Lcom/lge/olaworks/library/AutoPanorama;->getThumbnailInfo()Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;

    move-result-object v9

    .line 307
    .local v9, info:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v12

    .line 308
    .local v12, sizeOnDeviceString:Ljava/lang/String;
    invoke-static {v12}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v10

    .line 310
    .local v10, previewSizeOnDevice:[I
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090113

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/PanoThumbView;

    iget v1, v9, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->tWidth:I

    iget v2, v9, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->tHeight:I

    iget v3, v9, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->width:I

    iget v4, v9, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->height:I

    iget v5, v9, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->dW:I

    iget v6, v9, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->dH:I

    const/4 v7, 0x0

    aget v7, v10, v7

    const/4 v8, 0x1

    aget v8, v10, v8

    invoke-virtual/range {v0 .. v8}, Lcom/lge/camera/components/PanoThumbView;->init(IIIIIIII)V

    .line 313
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090113

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/PanoThumbView;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/lge/camera/components/PanoThumbView;->setDirection(II)V

    .line 315
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090112

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/lge/camera/components/RotateLayout;

    .line 316
    .local v11, rl:Lcom/lge/camera/components/RotateLayout;
    if-eqz v11, :cond_1

    .line 317
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v11, v0}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 320
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camera/PanoramaController;->showGuideAroundThumbText(Z)V

    .line 321
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 317
    :cond_2
    const/16 v0, 0x10e

    goto :goto_1
.end method

.method public isPanoramaStarted()Z
    .locals 1

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z

    if-eqz v0, :cond_0

    .line 731
    const/4 v0, 0x1

    .line 733
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanoramaUIShown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPanoramaUpdatebutton()Z
    .locals 1

    .prologue
    .line 738
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z

    return v0
.end method

.method public isSynthesisInProgress()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 790
    iput-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    .line 791
    iput-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    .line 792
    iput-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    .line 793
    iput-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mJpegData:[B

    .line 795
    invoke-super {p0}, Lcom/lge/camera/controller/camera/CameraController;->onDestroy()V

    .line 796
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 750
    const-string v2, "CameraApp"

    const-string v3, "Panorama Controller onPause - start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 752
    const-string v2, "CameraApp"

    const-string v3, "Pano Panorama Controller onPause - return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    :goto_0
    return-void

    .line 756
    :cond_0
    iget-boolean v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z

    .line 758
    .local v1, stopByPausing:Z
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->stopPanorama()V

    .line 760
    const-string v2, "CameraApp"

    const-string v3, "Wait for synthesis done in pause()"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v2, "CameraApp"

    const-string v3, "synth done in pause()"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    if-eqz v1, :cond_1

    .line 766
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 767
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 771
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    .line 772
    .local v0, engine:Lcom/lge/olaworks/library/EngineProcessor;
    if-eqz v0, :cond_2

    .line 773
    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->stop()V

    .line 774
    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->releaseAllEngine()V

    .line 777
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    .line 778
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->updateThumbnailButtonVisibility()V

    .line 780
    const-string v2, "CameraApp"

    const-string v3, "getImageListUri().clear() call"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 782
    iput-boolean v5, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z

    .line 783
    iput-boolean v5, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z

    .line 785
    const-string v2, "CameraApp"

    const-string v3, "Panorama Controller onPause -end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 742
    const-string v0, "CameraApp"

    const-string v1, "Panorama Controller onResume !"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->setEngine()V

    goto :goto_0
.end method

.method public reInitialize()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    .line 70
    return-void
.end method

.method public removePanoramaView()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "CameraApp"

    const-string v1, "removePanoramaView"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraPreview;->getDrawMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraPreview;->setDrawMode(I)V

    .line 171
    :cond_0
    return-void
.end method

.method public setEngine()V
    .locals 7

    .prologue
    .line 86
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_panorama"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v1, Lcom/lge/olaworks/library/AutoPanorama;

    iget v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mModeSetFrameImage:I

    iget v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mModeDirection:I

    iget v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mModeThumbnail:I

    new-instance v5, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;-><init>(Lcom/lge/camera/controller/camera/PanoramaController;Lcom/lge/camera/controller/camera/PanoramaController$1;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/lge/olaworks/library/AutoPanorama;-><init>(IIILcom/lge/olaworks/library/AutoPanorama$Callback;)V

    iput-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    .line 91
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    invoke-virtual {v1}, Lcom/lge/olaworks/library/AutoPanorama;->getModeThumbnail()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 92
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0090

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 93
    .local v0, margin:I
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0076

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mThumbnailWidth:I

    .line 94
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0075

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mThumbnailHeight:I

    .line 95
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    iget v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mThumbnailWidth:I

    iget v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mThumbnailHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/lge/olaworks/library/AutoPanorama;->setThumbnailExpectedSize(II)V

    .line 97
    .end local v0           #margin:I
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/olaworks/library/AutoPanorama;->setConfigureLandscape(Z)V

    .line 98
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/lge/olaworks/library/EngineProcessor;->setEngine(Lcom/lge/olaworks/library/BaseEngine;Z)Lcom/lge/olaworks/library/BaseEngine;

    goto :goto_0
.end method

.method public showPanoramaView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 113
    const-string v1, "CameraApp"

    const-string v2, "showPanoramaView"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_panorama"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_0

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    if-nez v1, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->inflatePanoramaView()V

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.Rotate"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 130
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 131
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->set3DSwitchVisible(Z)V

    .line 134
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->setMainButtonVisible(Z)V

    .line 135
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090147

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ShutterButton;

    .line 136
    .local v0, mShutterButton:Lcom/lge/camera/components/ShutterButton;
    if-eqz v0, :cond_5

    .line 137
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->isEnabled()Z

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    .line 140
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v1}, Lcom/lge/camera/components/CameraPreview;->resetAutoPanorama()V

    .line 146
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09010f

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090106

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090107

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090104

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090105

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 155
    const v1, 0x7f0b0349

    invoke-direct {p0, v5, v1}, Lcom/lge/camera/controller/camera/PanoramaController;->showGuideCenterText(ZI)V

    .line 156
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09010b

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/CameraPreview;->setDrawMode(I)V

    goto/16 :goto_0
.end method

.method public startPanorama()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x1f4

    const v6, 0x7f09010f

    const/16 v5, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 174
    const-string v1, "CameraApp"

    const-string v2, "startPanorama()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iput-boolean v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z

    .line 176
    iput-boolean v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z

    .line 178
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->hideQuickFunctionController()V

    .line 179
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 181
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->set3DSwitchVisible(Z)V

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->setThumbnailButtonVisibility(I)V

    .line 186
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    .line 188
    .local v0, engine:Lcom/lge/olaworks/library/EngineProcessor;
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_panorama"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    const-string v1, "CameraApp"

    const-string v2, "### awb/ae lock"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v1, 0x0

    invoke-direct {p0, v1, v4}, Lcom/lge/camera/controller/camera/PanoramaController;->tryEnable3ALocks(Landroid/hardware/Camera$Parameters;Z)Z

    .line 193
    :cond_1
    if-eqz v0, :cond_2

    .line 194
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEngineProcessor().checkEngineTag(AutoPanorama.TAG) ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "AutoPanorama"

    invoke-virtual {v0, v3}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    .line 197
    const-string v1, "AutoPanorama"

    invoke-virtual {v0, v1}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->start()V

    .line 199
    const-string v1, "CameraApp"

    const-string v2, "startPanorama() start AutoPanorama Engine..............."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 203
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 205
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09010b

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 208
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->hideOptionMenu()V

    .line 209
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    invoke-virtual {v1, v4, v7, v8}, Lcom/lge/camera/util/MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 210
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v7, v8}, Lcom/lge/camera/util/MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 211
    return-void
.end method

.method public stopPanorama()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 214
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopPanorama() isPanoramaStarted() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaStarted()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaStarted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 216
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z

    .line 217
    iput-boolean v6, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z

    .line 219
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->setMainButtonDisable()V

    .line 220
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 221
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 222
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f09010f

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f090108

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f09010b

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iput-boolean v6, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mDirectInit:Z

    .line 228
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    .line 230
    .local v0, engine:Lcom/lge/olaworks/library/EngineProcessor;
    if-eqz v0, :cond_0

    const-string v3, "AutoPanorama"

    invoke-virtual {v0, v3}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->stop()V

    .line 232
    const-string v3, "CameraApp"

    const-string v4, "stopPanorama : engineProcessor Stop"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 237
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v3}, Lcom/lge/camera/components/CameraPreview;->resetAutoPanorama()V

    .line 240
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/CameraPreview;->setDrawMode(I)V

    .line 241
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v3}, Lcom/lge/camera/components/CameraPreview;->stopPanoramaDrawing()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mIsReachProgressMax:Z

    if-nez v3, :cond_3

    .line 248
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    invoke-virtual {v3}, Lcom/lge/olaworks/library/AutoPanorama;->stopProcess()I

    .line 254
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 255
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 256
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 258
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    const-string v5, "shotmode_panorama"

    invoke-interface {v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 260
    const-string v3, "CameraApp"

    const-string v4, "### awb/ae unlock"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 262
    .local v2, parameters:Landroid/hardware/Camera$Parameters;
    invoke-direct {p0, v2, v6}, Lcom/lge/camera/controller/camera/PanoramaController;->tryEnable3ALocks(Landroid/hardware/Camera$Parameters;Z)Z

    .line 264
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/lge/camera/properties/FunctionProperties;->isCafSupported(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 266
    const-string v3, "continuous-picture"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 267
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 268
    const-string v3, "CameraApp"

    const-string v4, "### setFocusMode-conti"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 271
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 279
    .end local v0           #engine:Lcom/lge/olaworks/library/EngineProcessor;
    .end local v2           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_2
    :goto_2
    return-void

    .line 242
    .restart local v0       #engine:Lcom/lge/olaworks/library/EngineProcessor;
    :catch_0
    move-exception v1

    .line 243
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception occur during remove the panorama view : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 250
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_3
    iput-boolean v6, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mIsReachProgressMax:Z

    goto/16 :goto_1

    .line 277
    .end local v0           #engine:Lcom/lge/olaworks/library/EngineProcessor;
    :cond_4
    const-string v3, "CameraApp"

    const-string v4, "stopPanorama() do nothing; not started"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
