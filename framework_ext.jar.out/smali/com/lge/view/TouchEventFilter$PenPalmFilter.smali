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
        Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;,
        Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    }
.end annotation


# static fields
.field private static final EDGE_AREA:I = 0x1e

.field private static final MIN_PEN_COUNT:I = 0x1

.field private static final MIN_TIME_GAP:I = 0x64


# instance fields
.field private act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

.field private edge:Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

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
    .locals 3
    .parameter
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 918
    iput-object p1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 790
    iput v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->validXLeft:I

    .line 791
    iput v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->validXRight:I

    .line 793
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    .line 795
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->upTime:J

    .line 911
    new-instance v1, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-direct {v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;-><init>()V

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    .line 913
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    .line 914
    new-instance v1, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;-><init>(I)V

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->edge:Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

    .line 915
    new-instance v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    invoke-direct {v1, p0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;-><init>(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)V

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPalmRegion:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    .line 919
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 920
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    new-instance v2, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;

    invoke-direct {v2, p0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;-><init>(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 923
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 924
    iput-object p2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mView:Landroid/view/View;

    .line 925
    invoke-virtual {p0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->init()V

    .line 926
    return-void
.end method

.method private checkShouldReset(IJ)Z
    .locals 5
    .parameter "act"
    .parameter "time"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1071
    if-ne p1, v2, :cond_1

    .line 1072
    iput-wide p2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->upTime:J

    .line 1082
    :cond_0
    :goto_0
    return v1

    .line 1074
    :cond_1
    if-nez p1, :cond_0

    .line 1075
    iget-wide v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->upTime:J

    sub-long/2addr v3, p2

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1076
    .local v0, dt:I
    if-lez v0, :cond_2

    const/16 v3, 0x64

    if-lt v0, v3, :cond_0

    :cond_2
    move v1, v2

    .line 1079
    goto :goto_0
.end method


# virtual methods
.method public filtering(Landroid/view/MotionEvent;I)Z
    .locals 32
    .parameter "event"
    .parameter "tmpMask"

    .prologue
    .line 943
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    .line 944
    .local v12, NI:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    .line 945
    .local v13, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    .line 946
    .local v14, actionIndex:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    .line 948
    .local v24, time:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v13, v1, v2}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->checkShouldReset(IJ)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 949
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->usePen:Z

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPalmRegion:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->init()V

    .line 953
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearAllMask()I

    .line 954
    sget-object v29, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->NONE:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->edge:Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->getLeftEdgeRegion()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->validXLeft:I

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->edge:Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->getRightEdgeRegion()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->validXRight:I

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    const/16 v30, 0x3e8

    invoke-virtual/range {v29 .. v30}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 962
    const/4 v15, 0x0

    .line 964
    .local v15, hasPen:Z
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v12, :cond_c

    .line 965
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 966
    .local v17, id:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v28, v0

    .line 967
    .local v28, x:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 968
    .local v8, y:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v29

    const/high16 v30, 0x437f

    mul-float v9, v29, v30

    .line 969
    .local v9, z:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolMinor(I)F

    move-result v10

    .line 970
    .local v10, w:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v26

    .line 971
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

    .line 972
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

    .line 973
    .local v7, velY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->validXLeft:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->validXRight:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_8

    :cond_1
    const/4 v11, 0x1

    .line 974
    .local v11, isEdge:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;

    .line 975
    .local v5, penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    if-eqz v13, :cond_2

    const/16 v29, 0x5

    move/from16 v0, v29

    if-ne v13, v0, :cond_9

    :cond_2
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

    if-eqz v29, :cond_9

    move/from16 v0, v16

    if-ne v14, v0, :cond_9

    const/16 v20, 0x1

    .line 977
    .local v20, isInPalmRegion:Z
    :goto_2
    if-eqz v13, :cond_3

    const/16 v29, 0x5

    move/from16 v0, v29

    if-ne v13, v0, :cond_a

    :cond_3
    if-eqz v11, :cond_a

    move/from16 v0, v16

    if-ne v14, v0, :cond_a

    const/16 v19, 0x1

    .line 980
    .local v19, isInEdgeRegion:Z
    :goto_3
    if-eqz v20, :cond_4

    .line 981
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->setPalmRegion(Z)V

    .line 982
    :cond_4
    if-eqz v19, :cond_5

    .line 983
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->setEdgeRegion(Z)V

    .line 985
    :cond_5
    invoke-virtual/range {v5 .. v11}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->addInfo(IIFFFZ)V

    .line 987
    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->isPen()Z

    move-result v29

    if-eqz v29, :cond_6

    .line 988
    const/4 v15, 0x1

    .line 989
    :cond_6
    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->isFinger()Z

    move-result v29

    if-eqz v29, :cond_7

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPalmRegion:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;

    move-object/from16 v30, v0

    float-to-int v0, v8

    move/from16 v31, v0

    const/16 v29, 0x5

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    const/16 v29, 0x1

    :goto_4
    move-object/from16 v0, v30

    move/from16 v1, v17

    move/from16 v2, v28

    move/from16 v3, v31

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->assignPalm(IIIZ)V

    .line 964
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 973
    .end local v5           #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    .end local v11           #isEdge:Z
    .end local v19           #isInEdgeRegion:Z
    .end local v20           #isInPalmRegion:Z
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 975
    .restart local v5       #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    .restart local v11       #isEdge:Z
    :cond_9
    const/16 v20, 0x0

    goto :goto_2

    .line 977
    .restart local v20       #isInPalmRegion:Z
    :cond_a
    const/16 v19, 0x0

    goto :goto_3

    .line 990
    .restart local v19       #isInEdgeRegion:Z
    :cond_b
    const/16 v29, 0x0

    goto :goto_4

    .line 993
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
    :cond_c
    const/high16 v22, -0x4080

    .line 994
    .local v22, result:F
    const/16 v27, -0x1

    .line 995
    .local v27, topID:I
    if-eqz v15, :cond_14

    .line 996
    const/16 v16, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v0, v12, :cond_e

    .line 997
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 998
    .restart local v17       #id:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v28, v0

    .line 999
    .restart local v28       #x:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v29

    move/from16 v0, v29

    float-to-int v8, v0

    .line 1000
    .local v8, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;

    .line 1001
    .restart local v5       #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->getResult()F

    move-result v21

    .line 1003
    .local v21, newResult:F
    cmpl-float v29, v21, v22

    if-lez v29, :cond_d

    .line 1004
    move/from16 v22, v21

    .line 1005
    move/from16 v27, v17

    .line 996
    :cond_d
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 1009
    .end local v5           #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    .end local v8           #y:I
    .end local v17           #id:I
    .end local v21           #newResult:F
    .end local v28           #x:I
    :cond_e
    const/16 v29, -0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_f

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setMask(I)I

    .line 1011
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_13

    const/16 v23, 0x0

    .line 1012
    .local v23, savedTopIDIsPen:Z
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    move/from16 v29, v0

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_f

    if-nez v23, :cond_f

    .line 1013
    sget-object v29, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->CANCEL_AND_REPEAT:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    .line 1032
    .end local v23           #savedTopIDIsPen:Z
    :cond_f
    :goto_7
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    .line 1034
    const/16 v29, 0x6

    move/from16 v0, v29

    if-eq v13, v0, :cond_10

    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v13, v0, :cond_12

    .line 1035
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v18

    .line 1036
    .local v18, index:I
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 1037
    .restart local v17       #id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;

    .line 1039
    .restart local v5       #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v13, v0, :cond_11

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->isPen()Z

    move-result v29

    if-eqz v29, :cond_11

    .line 1040
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->usePen:Z

    .line 1042
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearMask(I)I

    .line 1043
    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->init()V

    .line 1046
    .end local v5           #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    .end local v17           #id:I
    .end local v18           #index:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportIdBits:I

    .line 1047
    const/16 v29, 0x1

    return v29

    .line 1011
    :cond_13
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

    goto/16 :goto_6

    .line 1017
    :cond_14
    const/16 v16, 0x0

    :goto_8
    move/from16 v0, v16

    if-ge v0, v12, :cond_16

    .line 1018
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 1019
    .restart local v17       #id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;

    .line 1020
    .restart local v5       #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->getCount()I

    move-result v21

    .line 1022
    .local v21, newResult:I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v29, v0

    cmpl-float v29, v29, v22

    if-lez v29, :cond_15

    .line 1023
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    .line 1024
    move/from16 v27, v17

    .line 1017
    :cond_15
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 1028
    .end local v5           #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    .end local v17           #id:I
    .end local v21           #newResult:I
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->usePen:Z

    move/from16 v29, v0

    if-nez v29, :cond_f

    const/16 v29, -0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_f

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setMask(I)I

    goto/16 :goto_7
.end method

.method public getAct()Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    return-object v0
.end method

.method public getReportMask()I
    .locals 1

    .prologue
    .line 1055
    iget v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportIdBits:I

    return v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 929
    sget-object v2, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->NONE:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    iput-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    .line 930
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportIdBits:I

    .line 931
    const/4 v2, -0x1

    iput v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->savedTopID:I

    .line 933
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v2}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearAllMask()I

    .line 934
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 936
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 937
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;

    .line 938
    .local v1, penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    invoke-virtual {v1}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->init()V

    .line 936
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 940
    .end local v1           #penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1060
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

    .line 1061
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_1

    .line 1062
    iget-object v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mPenIDFinder:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;

    .line 1063
    .local v2, penFinder:Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
    invoke-virtual {v2}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 1064
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

    .line 1061
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1066
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

    .line 1067
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
