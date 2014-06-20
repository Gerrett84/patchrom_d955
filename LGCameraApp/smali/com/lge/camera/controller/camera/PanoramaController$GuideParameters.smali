.class Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;
.super Ljava/lang/Object;
.source "PanoramaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/camera/PanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuideParameters"
.end annotation


# instance fields
.field public mDegree:I

.field public mIndicatorHeight:I

.field public mLcdHeight:I

.field public mLcdWidth:I

.field public mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

.field public mLpTextLayout:Landroid/widget/RelativeLayout$LayoutParams;

.field public mPanoramaThumbHeight:I

.field public mPanoramaThumbMarginBottom:I

.field public mPanoramaThumbMarginLeft:I

.field public mPanoramaThumbWidth:I

.field public mPreviewPanelMarginBottom:I

.field public mPreviewPanelWidth:I

.field public mTextLayout:Landroid/widget/RelativeLayout;

.field public mTextMarginBottom:I

.field public mTextMarginLeft:I

.field final synthetic this$0:Lcom/lge/camera/controller/camera/PanoramaController;


# direct methods
.method public constructor <init>(Lcom/lge/camera/controller/camera/PanoramaController;IIIIIIIIIIIILandroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1
    .parameter
    .parameter "textMarginLeft"
    .parameter "textMarginBottom"
    .parameter "panoramaThumbWidth"
    .parameter "panoramaThumbHeight"
    .parameter "panoramaThumbMarginLeft"
    .parameter "panoramaThumbMarginBottom"
    .parameter "indicatorHeight"
    .parameter "previewPanelWidth"
    .parameter "previewPanelMarginBottom"
    .parameter "lcdWidth"
    .parameter "lcdHeight"
    .parameter "degree"
    .parameter "textLayout"
    .parameter "lpGuideLayout"
    .parameter "lpTextLayout"

    .prologue
    .line 520
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput p2, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginLeft:I

    .line 522
    iput p3, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginBottom:I

    .line 523
    iput p4, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbWidth:I

    .line 524
    iput p5, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbHeight:I

    .line 525
    iput p6, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginLeft:I

    .line 526
    iput p7, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginBottom:I

    .line 527
    iput p8, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mIndicatorHeight:I

    .line 528
    iput p9, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPreviewPanelWidth:I

    .line 529
    iput p10, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPreviewPanelMarginBottom:I

    .line 530
    iput p11, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLcdWidth:I

    .line 531
    iput p12, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLcdHeight:I

    .line 532
    iput p13, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mDegree:I

    .line 533
    iput-object p14, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextLayout:Landroid/widget/RelativeLayout;

    .line 534
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    .line 535
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpTextLayout:Landroid/widget/RelativeLayout$LayoutParams;

    .line 536
    return-void
.end method
