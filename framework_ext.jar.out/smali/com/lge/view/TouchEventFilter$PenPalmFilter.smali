.class Lcom/lge/view/TouchEventFilter$PenPalmFilter;
.super Ljava/lang/Object;
.source "TouchEventFilter.java"

# interfaces
.implements Lcom/lge/view/TouchEventFilter$IEventFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/view/TouchEventFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PenPalmFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;,
        Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;,
        Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;,
        Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    }
.end annotation


# static fields
.field private static final EDGE_AREA:I = 0x1e

.field private static final MIN_PEN_COUNT:I = 0x1

.field private static final MIN_TIME_GAP:I = 0x64


# instance fields
.field private MAX_HEIGHT:I

.field private MAX_WIDTH:I

.field private act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

.field private edge:Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

.field private isVu3:Z

.field private mPalmRegion:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

.field private mPenIDFinder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;",
            ">;"
        }
    .end annotation
.end field

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mView:Landroid/view/View;

.field private palmId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private reportIdBits:I

.field private reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

.field private savedTopID:I

.field final synthetic this$0:Lcom/lge/view/TouchEventFilter;

.field private upTime:J

.field private usePen:Z

.field private validXLeft:I

.field private validXRight:I


# direct methods
.method public constructor <init>(Lcom/lge/view/TouchEventFilter;Landroid/view/View;)V
    .locals 6
    .parameter
    .parameter "view"

    .prologue
    const/16 v5, 0x1e

    const/4 v4, 0x0

    .line 997
    iput-object p1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 817
    const-string/jumbo v2, "ro.build.product"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "vu3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->isVu3:Z

    .line 834
    iput v4, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->validXLeft:I

    .line 835
    iput v4, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->validXRight:I

    .line 837
    const/4 v2, -0x1

    iput v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    .line 839
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->upTime:J

    .line 985
    new-instance v2, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-direct {v2}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;-><init>()V

    iput-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    .line 987
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    .line 988
    new-instance v2, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

    invoke-direct {v2, v5}, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;-><init>(I)V

    iput-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->edge:Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

    .line 989
    new-instance v2, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    invoke-direct {v2, p0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;-><init>(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)V

    iput-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPalmRegion:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    .line 1621
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->palmId:Ljava/util/ArrayList;

    .line 998
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 1000
    iget-boolean v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->isVu3:Z

    if-eqz v2, :cond_0

    .line 1001
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    new-instance v3, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;

    invoke-direct {v3, p0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;-><init>(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1003
    :cond_0
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    new-instance v3, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;

    invoke-direct {v3, p0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;-><init>(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1007
    :cond_1
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1008
    iput-object p2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mView:Landroid/view/View;

    .line 1011
    iget-boolean v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->isVu3:Z

    if-eqz v2, :cond_3

    .line 1012
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->isVu3:Z

    .line 1014
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1015
    .local v1, mDisplayMetrics:Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_WIDTH:I

    .line 1016
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_HEIGHT:I

    .line 1017
    #getter for: Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I
    invoke-static {p1}, Lcom/lge/view/TouchEventFilter;->access$100(Lcom/lge/view/TouchEventFilter;)I

    move-result v2

    if-lez v2, :cond_2

    .line 1018
    const-string v2, "TouchEventFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " max_width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " max_height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_HEIGHT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_2
    new-instance v2, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

    iget v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_WIDTH:I

    iget v4, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_HEIGHT:I

    invoke-direct {v2, v3, v4, v5}, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;-><init>(III)V

    iput-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->edge:Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

    .line 1021
    new-instance v2, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;

    iget v3, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v4, v1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-direct {v2, p0, v3, v4}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;-><init>(Lcom/lge/view/TouchEventFilter$PenPalmFilter;FF)V

    iput-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPalmRegion:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    .line 1025
    .end local v1           #mDisplayMetrics:Landroid/util/DisplayMetrics;
    :cond_3
    invoke-virtual {p0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->init()V

    .line 1026
    return-void
.end method

.method static synthetic access$200(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 815
    iget-boolean v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->isVu3:Z

    return v0
.end method

.method static synthetic access$300(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 815
    iget v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_HEIGHT:I

    return v0
.end method

.method static synthetic access$400(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 815
    iget v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_WIDTH:I

    return v0
.end method

.method static synthetic access$500(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 815
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mView:Landroid/view/View;

    return-object v0
.end method

.method private checkShouldReset(IJ)Z
    .locals 5
    .parameter "act"
    .parameter "time"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1898
    if-ne p1, v2, :cond_1

    .line 1899
    iput-wide p2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->upTime:J

    .line 1909
    :cond_0
    :goto_0
    return v1

    .line 1901
    :cond_1
    if-nez p1, :cond_0

    .line 1902
    iget-wide v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->upTime:J

    sub-long/2addr v3, p2

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1903
    .local v0, dt:I
    if-lez v0, :cond_2

    const/16 v3, 0x64

    if-lt v0, v3, :cond_0

    :cond_2
    move v1, v2

    .line 1906
    goto :goto_0
.end method

.method private filteringForSmartPalm(Landroid/view/MotionEvent;I)Z
    .locals 46
    .parameter "event"
    .parameter "tmpMask"

    .prologue
    .line 1626
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    .line 1627
    .local v12, NI:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    .line 1628
    .local v13, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    .line 1629
    .local v14, actionIndex:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v32

    .line 1631
    .local v32, time:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v13, v1, v2}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->checkShouldReset(IJ)Z

    move-result v43

    if-eqz v43, :cond_0

    .line 1632
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->usePen:Z

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPalmRegion:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->setPenUp(II)V

    .line 1639
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearAllMask()I

    .line 1640
    sget-object v43, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->NONE:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->edge:Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->getLeftEdgeRegion()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->validXLeft:I

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->edge:Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->getRightEdgeRegion()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->validXRight:I

    .line 1646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->edge:Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->getTopRegion()I

    move-result v41

    .line 1647
    .local v41, validYTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->edge:Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->getBottomRegion()I

    move-result v40

    .line 1648
    .local v40, validYBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    move-object/from16 v43, v0

    #getter for: Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I
    invoke-static/range {v43 .. v43}, Lcom/lge/view/TouchEventFilter;->access$100(Lcom/lge/view/TouchEventFilter;)I

    move-result v43

    if-lez v43, :cond_1

    .line 1649
    const-string v43, "TouchEventFilter"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "edge top: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " edge buttom: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v43, v0

    const/16 v44, 0x3e8

    invoke-virtual/range {v43 .. v44}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1655
    const/16 v18, 0x0

    .line 1658
    .local v18, hasPen:Z
    const/16 v22, 0x0

    .line 1662
    .local v22, isChangedPalm:Z
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1665
    .local v15, debugMsg:Ljava/lang/StringBuilder;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    if-ge v0, v12, :cond_e

    .line 1666
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    .line 1667
    .local v20, id:I
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v43

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v42, v0

    .line 1668
    .local v42, x:I
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 1669
    .local v8, y:F
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v43

    const/high16 v44, 0x437f

    mul-float v9, v43, v44

    .line 1670
    .local v9, z:F
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolMinor(I)F

    move-result v10

    .line 1671
    .local v10, w:F
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v34

    .line 1672
    .local v34, toolType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v43

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1673
    .local v6, velX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v43

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 1676
    .local v7, velY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->validXLeft:I

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-lt v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->validXRight:I

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-gt v0, v1, :cond_2

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v43, v0

    cmpg-float v43, v8, v43

    if-ltz v43, :cond_2

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v43, v0

    cmpl-float v43, v8, v43

    if-lez v43, :cond_b

    :cond_2
    const/4 v11, 0x1

    .line 1681
    .local v11, isEdge:Z
    :goto_1
    const/16 v24, 0x0

    .line 1682
    .local v24, isInPalmRegion:Z
    if-eqz v13, :cond_3

    const/16 v43, 0x5

    move/from16 v0, v43

    if-ne v13, v0, :cond_4

    :cond_3
    move/from16 v0, v19

    if-ne v14, v0, :cond_4

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPalmRegion:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    move-object/from16 v43, v0

    check-cast v43, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;

    float-to-int v0, v8

    move/from16 v44, v0

    move-object/from16 v0, v43

    move/from16 v1, v42

    move/from16 v2, v44

    move-wide/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->checkPalmRegion(IIJ)Z

    move-result v24

    .line 1686
    :cond_4
    if-eqz v13, :cond_5

    const/16 v43, 0x5

    move/from16 v0, v43

    if-ne v13, v0, :cond_c

    :cond_5
    if-eqz v11, :cond_c

    move/from16 v0, v19

    if-ne v14, v0, :cond_c

    const/16 v23, 0x1

    .line 1689
    .local v23, isInEdgeRegion:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;

    .line 1692
    .local v5, penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;
    if-eqz v24, :cond_6

    .line 1693
    const/16 v43, 0x1

    move/from16 v0, v43

    invoke-virtual {v5, v0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->setPalmRegion(Z)V

    .line 1694
    :cond_6
    if-eqz v23, :cond_7

    .line 1695
    const/16 v43, 0x1

    move/from16 v0, v43

    invoke-virtual {v5, v0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->setEdgeRegion(Z)V

    .line 1698
    :cond_7
    const/16 v43, 0x5

    move/from16 v0, v34

    move/from16 v1, v43

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->palmId:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_8

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->palmId:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1701
    const/16 v22, 0x1

    .line 1704
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "["

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "] palm add\n"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    :cond_8
    invoke-virtual/range {v5 .. v11}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->addInfo(IIFFFZ)V

    .line 1710
    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->isPen()Z

    move-result v43

    if-eqz v43, :cond_9

    .line 1711
    const/16 v18, 0x1

    .line 1712
    :cond_9
    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->isFinger()Z

    move-result v43

    if-eqz v43, :cond_a

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPalmRegion:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    move-object/from16 v44, v0

    float-to-int v0, v8

    move/from16 v45, v0

    const/16 v43, 0x5

    move/from16 v0, v34

    move/from16 v1, v43

    if-ne v0, v1, :cond_d

    const/16 v43, 0x1

    :goto_3
    move-object/from16 v0, v44

    move/from16 v1, v20

    move/from16 v2, v42

    move/from16 v3, v45

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->assignPalm(IIIZ)V

    .line 1665
    :cond_a
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 1676
    .end local v5           #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;
    .end local v11           #isEdge:Z
    .end local v23           #isInEdgeRegion:Z
    .end local v24           #isInPalmRegion:Z
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1686
    .restart local v11       #isEdge:Z
    .restart local v24       #isInPalmRegion:Z
    :cond_c
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 1713
    .restart local v5       #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;
    .restart local v23       #isInEdgeRegion:Z
    :cond_d
    const/16 v43, 0x0

    goto :goto_3

    .line 1717
    .end local v5           #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;
    .end local v6           #velX:I
    .end local v7           #velY:I
    .end local v8           #y:F
    .end local v9           #z:F
    .end local v10           #w:F
    .end local v11           #isEdge:Z
    .end local v20           #id:I
    .end local v23           #isInEdgeRegion:Z
    .end local v24           #isInPalmRegion:Z
    .end local v34           #toolType:I
    .end local v42           #x:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    move-object/from16 v43, v0

    #getter for: Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I
    invoke-static/range {v43 .. v43}, Lcom/lge/view/TouchEventFilter;->access$100(Lcom/lge/view/TouchEventFilter;)I

    move-result v43

    if-lez v43, :cond_10

    .line 1718
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    .line 1719
    .local v31, str:Ljava/lang/StringBuilder;
    const/16 v19, 0x0

    :goto_4
    move/from16 v0, v19

    if-ge v0, v12, :cond_f

    .line 1720
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    .line 1721
    .restart local v20       #id:I
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ": "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;

    invoke-virtual/range {v43 .. v43}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "/ "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v31

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 1723
    .end local v20           #id:I
    :cond_f
    const-string v43, "TouchEventFilter"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    const-string v44, "TouchEventFilter"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "palm: "

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPalmRegion:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    move-object/from16 v43, v0

    check-cast v43, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;

    invoke-virtual/range {v43 .. v43}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v45

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    .end local v31           #str:Ljava/lang/StringBuilder;
    :cond_10
    const/high16 v26, -0x4080

    .line 1728
    .local v26, result:F
    const/16 v35, -0x1

    .line 1730
    .local v35, topID:I
    if-eqz v18, :cond_1f

    .line 1733
    const/high16 v37, -0x4080

    .line 1734
    .local v37, topReulst:F
    move/from16 v36, v14

    .line 1735
    .local v36, topIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v43

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v38, v0

    .line 1736
    .local v38, topX:I
    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v43

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v39, v0

    .line 1737
    .local v39, topY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPalmRegion:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    move-object/from16 v43, v0

    check-cast v43, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;

    move-object/from16 v0, v43

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->distToPalm(II)F

    move-result v17

    .line 1739
    .local v17, distPalmToTop:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;

    invoke-virtual/range {v43 .. v43}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->getResult()F

    move-result v43

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->calcResult(FF)F

    move-result v37

    .line 1741
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v43, v0

    if-ltz v43, :cond_11

    .line 1742
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v43, v0

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v27

    .line 1743
    .local v27, savedIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v43

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v29, v0

    .line 1744
    .local v29, savedX:I
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v43

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v30, v0

    .line 1746
    .local v30, savedY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPalmRegion:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    move-object/from16 v43, v0

    check-cast v43, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;

    move-object/from16 v0, v43

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->distToPalm(II)F

    move-result v16

    .line 1747
    .local v16, distPalmToSaved:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;

    invoke-virtual/range {v43 .. v43}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->getResult()F

    move-result v43

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->calcResult(FF)F

    move-result v26

    .line 1748
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "dist saved result: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\n"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1752
    .end local v16           #distPalmToSaved:F
    .end local v27           #savedIndex:I
    .end local v29           #savedX:I
    .end local v30           #savedY:I
    :cond_11
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "dist topid result: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " dist savedid result: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " topId: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " savedId: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\n"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    cmpg-float v43, v26, v37

    if-gtz v43, :cond_1d

    if-eqz v13, :cond_12

    const/16 v43, 0x5

    move/from16 v0, v43

    if-ne v13, v0, :cond_1d

    :cond_12
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v35

    .line 1757
    :goto_5
    const/16 v43, -0x1

    move/from16 v0, v35

    move/from16 v1, v43

    if-eq v0, v1, :cond_15

    .line 1758
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v43, v0

    const/16 v44, -0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_1e

    const/16 v28, 0x0

    .line 1759
    .local v28, savedTopIDIsPen:Z
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v43, v0

    const/16 v44, -0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    move-object/from16 v43, v0

    #getter for: Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I
    invoke-static/range {v43 .. v43}, Lcom/lge/view/TouchEventFilter;->access$100(Lcom/lge/view/TouchEventFilter;)I

    move-result v43

    if-lez v43, :cond_13

    .line 1760
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "topid result: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;

    invoke-virtual/range {v43 .. v43}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->getResult()F

    move-result v43

    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " savedid result: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v45, v0

    move-object/from16 v0, v43

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;

    invoke-virtual/range {v43 .. v43}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->getResult()F

    move-result v43

    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\n"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v43, v0

    move/from16 v0, v35

    move/from16 v1, v43

    if-eq v0, v1, :cond_14

    .line 1763
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v43, v0

    const/16 v44, -0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_14

    .line 1764
    sget-object v43, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->CANCEL_AND_REPEAT:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    .line 1767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;

    check-cast v43, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->setFinger(Z)V

    .line 1777
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setMask(I)I

    .line 1821
    .end local v17           #distPalmToTop:F
    .end local v28           #savedTopIDIsPen:Z
    .end local v36           #topIndex:I
    .end local v37           #topReulst:F
    .end local v38           #topX:I
    .end local v39           #topY:I
    :cond_15
    :goto_7
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    .line 1823
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "TopId: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\n"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1825
    const/16 v43, 0x6

    move/from16 v0, v43

    if-eq v13, v0, :cond_16

    const/16 v43, 0x1

    move/from16 v0, v43

    if-ne v13, v0, :cond_1b

    .line 1826
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v21

    .line 1827
    .local v21, index:I
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    .line 1828
    .restart local v20       #id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;

    .line 1831
    .restart local v5       #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v43

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v42, v0

    .line 1832
    .restart local v42       #x:I
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v43

    move/from16 v0, v43

    float-to-int v8, v0

    .line 1834
    .local v8, y:I
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "up id: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " savedTopId: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\n"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v43, v0

    move/from16 v0, v20

    move/from16 v1, v43

    if-ne v0, v1, :cond_27

    .line 1836
    const/16 v43, -0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    .line 1837
    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->isPen()Z

    move-result v43

    if-eqz v43, :cond_18

    .line 1838
    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->usePen:Z

    .line 1839
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "hasLongDist: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->hasLongDist()Z

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " savedTopId: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\n"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1840
    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->hasLongDist()Z

    move-result v43

    if-nez v43, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->validXLeft:I

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-le v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->validXRight:I

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-ge v0, v1, :cond_18

    move/from16 v0, v41

    if-le v8, v0, :cond_18

    move/from16 v0, v40

    if-ge v8, v0, :cond_18

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPalmRegion:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->getMaxWidth()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-ge v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPalmRegion:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->getMaxHeight()I

    move-result v43

    move/from16 v0, v43

    if-ge v8, v0, :cond_17

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPalmRegion:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v42

    invoke-virtual {v0, v1, v8}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->setPenUp(II)V

    .line 1843
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPalmRegion:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->setPenUpTime(J)V

    .line 1856
    :cond_18
    :goto_8
    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->isFinger()Z

    move-result v43

    if-eqz v43, :cond_19

    .line 1857
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "finger count "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " count: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->getCount()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " accumDist: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->getAccumDist()F

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " DAvr: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->getDAvr()F

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1859
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->palmId:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_1a

    .line 1860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->palmId:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1863
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearMask(I)I

    .line 1864
    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->init()V

    .line 1868
    .end local v5           #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;
    .end local v8           #y:I
    .end local v20           #id:I
    .end local v21           #index:I
    .end local v42           #x:I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    move-object/from16 v43, v0

    #getter for: Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I
    invoke-static/range {v43 .. v43}, Lcom/lge/view/TouchEventFilter;->access$100(Lcom/lge/view/TouchEventFilter;)I

    move-result v43

    if-lez v43, :cond_1c

    .line 1869
    const-string v43, "TouchEventFilter"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportIdBits:I

    .line 1873
    const/16 v43, 0x1

    return v43

    .line 1754
    .restart local v17       #distPalmToTop:F
    .restart local v36       #topIndex:I
    .restart local v37       #topReulst:F
    .restart local v38       #topX:I
    .restart local v39       #topY:I
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v35, v0

    goto/16 :goto_5

    .line 1758
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;

    invoke-virtual/range {v43 .. v43}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->isPen()Z

    move-result v28

    goto/16 :goto_6

    .line 1782
    .end local v17           #distPalmToTop:F
    .end local v36           #topIndex:I
    .end local v37           #topReulst:F
    .end local v38           #topX:I
    .end local v39           #topY:I
    :cond_1f
    const/16 v19, 0x0

    :goto_9
    move/from16 v0, v19

    if-ge v0, v12, :cond_22

    .line 1783
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    .line 1784
    .restart local v20       #id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;

    .line 1785
    .local v5, penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->getCount()I

    move-result v25

    .line 1787
    .local v25, newResult:I
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v43, v0

    cmpl-float v43, v43, v26

    if-lez v43, :cond_20

    .line 1788
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v26, v0

    .line 1789
    move/from16 v35, v20

    .line 1792
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->usePen:Z

    move/from16 v43, v0

    if-nez v43, :cond_21

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setMask(I)I

    .line 1782
    :cond_21
    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    .line 1797
    .end local v5           #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    .end local v20           #id:I
    .end local v25           #newResult:I
    :cond_22
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "savedTop: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " topId: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " usePen: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->usePen:Z

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\n"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1798
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->usePen:Z

    move/from16 v43, v0

    if-nez v43, :cond_26

    const/16 v43, -0x1

    move/from16 v0, v35

    move/from16 v1, v43

    if-eq v0, v1, :cond_26

    .line 1800
    if-eqz v22, :cond_23

    .line 1801
    sget-object v43, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->CANCEL:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    .line 1803
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->palmId:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_24

    .line 1805
    const/16 v35, -0x1

    goto/16 :goto_7

    .line 1809
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v43, v0

    if-ltz v43, :cond_25

    .line 1810
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v35, v0

    .line 1811
    :cond_25
    const-string v43, "if (!usePen && topID != -1) set\n"

    move-object/from16 v0, v43

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setMask(I)I

    goto/16 :goto_7

    .line 1815
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->usePen:Z

    move/from16 v43, v0

    if-eqz v43, :cond_15

    .line 1816
    const-string v43, "else if (usePen)\n"

    move-object/from16 v0, v43

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1817
    const/16 v35, -0x1

    goto/16 :goto_7

    .line 1848
    .local v5, penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;
    .restart local v8       #y:I
    .restart local v20       #id:I
    .restart local v21       #index:I
    .restart local v42       #x:I
    :cond_27
    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->hasLongDist()Z

    move-result v43

    if-nez v43, :cond_28

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPalmRegion:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v20

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->setUpTime(IJ)V

    goto/16 :goto_8

    .line 1851
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPalmRegion:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->delete(I)V

    .line 1852
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "palm delete up id: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\n"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8
.end method


# virtual methods
.method calcResult(FF)F
    .locals 5
    .parameter "penResult"
    .parameter "distToPalm"

    .prologue
    const v4, 0x3e4ccccd

    const/4 v0, 0x0

    .line 1608
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    #getter for: Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I
    invoke-static {v1}, Lcom/lge/view/TouchEventFilter;->access$100(Lcom/lge/view/TouchEventFilter;)I

    move-result v1

    if-lez v1, :cond_0

    .line 1609
    const-string v1, "TouchEventFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calcResult pen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :cond_0
    cmpg-float v1, p1, v0

    if-gtz v1, :cond_1

    .line 1616
    :goto_0
    return v0

    .line 1613
    :cond_1
    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    .line 1614
    mul-float v0, p1, v4

    goto :goto_0

    .line 1616
    :cond_2
    mul-float v0, p1, v4

    const/high16 v1, 0x3f80

    div-float/2addr v1, p2

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public filtering(Landroid/view/MotionEvent;I)Z
    .locals 32
    .parameter "event"
    .parameter "tmpMask"

    .prologue
    .line 1042
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->isVu3:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    move-object/from16 v29, v0

    #getter for: Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I
    invoke-static/range {v29 .. v29}, Lcom/lge/view/TouchEventFilter;->access$100(Lcom/lge/view/TouchEventFilter;)I

    move-result v29

    if-lez v29, :cond_0

    .line 1044
    const-string v29, "TouchEventFilter"

    const-string v30, "filtering SystemProperties.get(\"ro.build.product\").contains(\"vu3\")"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->filteringForSmartPalm(Landroid/view/MotionEvent;I)Z

    move-result v29

    .line 1152
    :goto_0
    return v29

    .line 1049
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    .line 1050
    .local v12, NI:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    .line 1051
    .local v13, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    .line 1052
    .local v14, actionIndex:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    .line 1054
    .local v24, time:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v13, v1, v2}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->checkShouldReset(IJ)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 1055
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->usePen:Z

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPalmRegion:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->init()V

    .line 1059
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearAllMask()I

    .line 1060
    sget-object v29, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->NONE:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->edge:Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->getLeftEdgeRegion()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->validXLeft:I

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->edge:Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->getRightEdgeRegion()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->validXRight:I

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    const/16 v30, 0x3e8

    invoke-virtual/range {v29 .. v30}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1068
    const/4 v15, 0x0

    .line 1070
    .local v15, hasPen:Z
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v12, :cond_e

    .line 1071
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 1072
    .local v17, id:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v28, v0

    .line 1073
    .local v28, x:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 1074
    .local v8, y:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v29

    const/high16 v30, 0x437f

    mul-float v9, v29, v30

    .line 1075
    .local v9, z:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolMinor(I)F

    move-result v10

    .line 1076
    .local v10, w:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v26

    .line 1077
    .local v26, toolType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1078
    .local v6, velX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 1079
    .local v7, velY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->validXLeft:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->validXRight:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_a

    :cond_3
    const/4 v11, 0x1

    .line 1080
    .local v11, isEdge:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;

    .line 1081
    .local v5, penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    if-eqz v13, :cond_4

    const/16 v29, 0x5

    move/from16 v0, v29

    if-ne v13, v0, :cond_b

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPalmRegion:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    move-object/from16 v29, v0

    float-to-int v0, v8

    move/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v28

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->checkPalmRegion(II)Z

    move-result v29

    if-eqz v29, :cond_b

    move/from16 v0, v16

    if-ne v14, v0, :cond_b

    const/16 v20, 0x1

    .line 1083
    .local v20, isInPalmRegion:Z
    :goto_3
    if-eqz v13, :cond_5

    const/16 v29, 0x5

    move/from16 v0, v29

    if-ne v13, v0, :cond_c

    :cond_5
    if-eqz v11, :cond_c

    move/from16 v0, v16

    if-ne v14, v0, :cond_c

    const/16 v19, 0x1

    .line 1086
    .local v19, isInEdgeRegion:Z
    :goto_4
    if-eqz v20, :cond_6

    .line 1087
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->setPalmRegion(Z)V

    .line 1088
    :cond_6
    if-eqz v19, :cond_7

    .line 1089
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->setEdgeRegion(Z)V

    .line 1091
    :cond_7
    invoke-virtual/range {v5 .. v11}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->addInfo(IIFFFZ)V

    .line 1093
    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->isPen()Z

    move-result v29

    if-eqz v29, :cond_8

    .line 1094
    const/4 v15, 0x1

    .line 1095
    :cond_8
    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->isFinger()Z

    move-result v29

    if-eqz v29, :cond_9

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPalmRegion:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    move-object/from16 v30, v0

    float-to-int v0, v8

    move/from16 v31, v0

    const/16 v29, 0x5

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    const/16 v29, 0x1

    :goto_5
    move-object/from16 v0, v30

    move/from16 v1, v17

    move/from16 v2, v28

    move/from16 v3, v31

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->assignPalm(IIIZ)V

    .line 1070
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 1079
    .end local v5           #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    .end local v11           #isEdge:Z
    .end local v19           #isInEdgeRegion:Z
    .end local v20           #isInPalmRegion:Z
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1081
    .restart local v5       #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    .restart local v11       #isEdge:Z
    :cond_b
    const/16 v20, 0x0

    goto :goto_3

    .line 1083
    .restart local v20       #isInPalmRegion:Z
    :cond_c
    const/16 v19, 0x0

    goto :goto_4

    .line 1096
    .restart local v19       #isInEdgeRegion:Z
    :cond_d
    const/16 v29, 0x0

    goto :goto_5

    .line 1099
    .end local v5           #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    .end local v6           #velX:I
    .end local v7           #velY:I
    .end local v8           #y:F
    .end local v9           #z:F
    .end local v10           #w:F
    .end local v11           #isEdge:Z
    .end local v17           #id:I
    .end local v19           #isInEdgeRegion:Z
    .end local v20           #isInPalmRegion:Z
    .end local v26           #toolType:I
    .end local v28           #x:I
    :cond_e
    const/high16 v22, -0x4080

    .line 1100
    .local v22, result:F
    const/16 v27, -0x1

    .line 1101
    .local v27, topID:I
    if-eqz v15, :cond_16

    .line 1102
    const/16 v16, 0x0

    :goto_6
    move/from16 v0, v16

    if-ge v0, v12, :cond_10

    .line 1103
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 1104
    .restart local v17       #id:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v28, v0

    .line 1105
    .restart local v28       #x:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v29

    move/from16 v0, v29

    float-to-int v8, v0

    .line 1106
    .local v8, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;

    .line 1107
    .restart local v5       #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->getResult()F

    move-result v21

    .line 1109
    .local v21, newResult:F
    cmpl-float v29, v21, v22

    if-lez v29, :cond_f

    .line 1110
    move/from16 v22, v21

    .line 1111
    move/from16 v27, v17

    .line 1102
    :cond_f
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 1115
    .end local v5           #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    .end local v8           #y:I
    .end local v17           #id:I
    .end local v21           #newResult:F
    .end local v28           #x:I
    :cond_10
    const/16 v29, -0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_11

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setMask(I)I

    .line 1117
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_15

    const/16 v23, 0x0

    .line 1118
    .local v23, savedTopIDIsPen:Z
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v29, v0

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_11

    if-nez v23, :cond_11

    .line 1119
    sget-object v29, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->CANCEL_AND_REPEAT:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    .line 1137
    .end local v23           #savedTopIDIsPen:Z
    :cond_11
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    .line 1139
    const/16 v29, 0x6

    move/from16 v0, v29

    if-eq v13, v0, :cond_12

    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v13, v0, :cond_14

    .line 1140
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v18

    .line 1141
    .local v18, index:I
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 1142
    .restart local v17       #id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;

    .line 1144
    .restart local v5       #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v13, v0, :cond_13

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->isPen()Z

    move-result v29

    if-eqz v29, :cond_13

    .line 1145
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->usePen:Z

    .line 1147
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearMask(I)I

    .line 1148
    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->init()V

    .line 1151
    .end local v5           #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    .end local v17           #id:I
    .end local v18           #index:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportIdBits:I

    .line 1152
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1117
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;

    invoke-virtual/range {v29 .. v29}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->isPen()Z

    move-result v23

    goto/16 :goto_7

    .line 1123
    :cond_16
    const/16 v16, 0x0

    :goto_8
    move/from16 v0, v16

    if-ge v0, v12, :cond_11

    .line 1124
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 1125
    .restart local v17       #id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;

    .line 1126
    .restart local v5       #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->getCount()I

    move-result v21

    .line 1128
    .local v21, newResult:I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v29, v0

    cmpl-float v29, v29, v22

    if-lez v29, :cond_17

    .line 1129
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    .line 1130
    move/from16 v27, v17

    .line 1133
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->usePen:Z

    move/from16 v29, v0

    if-nez v29, :cond_18

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setMask(I)I

    .line 1123
    :cond_18
    add-int/lit8 v16, v16, 0x1

    goto :goto_8
.end method

.method public getAct()Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;
    .locals 1

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    return-object v0
.end method

.method public getReportMask()I
    .locals 1

    .prologue
    .line 1882
    iget v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportIdBits:I

    return v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 1029
    sget-object v2, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->NONE:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    iput-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    .line 1030
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportIdBits:I

    .line 1031
    const/4 v2, -0x1

    iput v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    .line 1032
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v2}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearAllMask()I

    .line 1033
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 1034
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 1035
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;

    .line 1036
    .local v1, penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    invoke-virtual {v1}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->init()V

    .line 1034
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1038
    .end local v1           #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1887
    .local v1, msg:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PenPalmFilter usePen["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->usePen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->edge:Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_1

    .line 1889
    iget-object v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;

    .line 1890
    .local v2, penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    invoke-virtual {v2}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 1891
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1893
    .end local v2           #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Rect - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPalmRegion:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
