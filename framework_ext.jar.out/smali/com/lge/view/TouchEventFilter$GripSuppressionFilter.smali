.class Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;
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
    name = "GripSuppressionFilter"
.end annotation


# instance fields
.field private final MAX_VELOCITY:I

.field private final REJECT_PIXEL:I

.field private final USE_POSITION:Z

.field private final USE_VELOCITY:Z

.field private final USE_WIDTH_RATIO:Z

.field private final WIDTH_RATIO:F

.field private act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

.field private edge:Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

.field private gripMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private reportIdBits:I

.field private reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

.field final synthetic this$0:Lcom/lge/view/TouchEventFilter;

.field private validXLeft:I

.field private validXRight:I


# direct methods
.method public constructor <init>(Lcom/lge/view/TouchEventFilter;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 638
    iput-object p1, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput v1, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->REJECT_PIXEL:I

    .line 621
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->WIDTH_RATIO:F

    .line 622
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->MAX_VELOCITY:I

    .line 624
    iput-boolean v1, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->USE_WIDTH_RATIO:Z

    .line 625
    iput-boolean v1, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->USE_POSITION:Z

    .line 626
    iput-boolean v1, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->USE_VELOCITY:Z

    .line 628
    iput v2, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->validXLeft:I

    .line 629
    iput v2, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->validXRight:I

    .line 631
    new-instance v0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-direct {v0}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;-><init>()V

    iput-object v0, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->gripMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    .line 632
    new-instance v0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-direct {v0}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;-><init>()V

    iput-object v0, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    .line 634
    new-instance v0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

    invoke-direct {v0, v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;-><init>(I)V

    iput-object v0, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->edge:Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

    .line 639
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 640
    invoke-virtual {p0}, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->init()V

    .line 641
    return-void
.end method


# virtual methods
.method public filtering(Landroid/view/MotionEvent;I)Z
    .locals 13
    .parameter "event"
    .parameter "tmpMask"

    .prologue
    .line 652
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 653
    .local v0, NI:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 655
    .local v1, action:I
    iget-object v10, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->edge:Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

    invoke-virtual {v10}, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->getLeftEdgeRegion()I

    move-result v10

    iput v10, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->validXLeft:I

    .line 656
    iget-object v10, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->edge:Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

    invoke-virtual {v10}, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->getRightEdgeRegion()I

    move-result v10

    iput v10, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->validXRight:I

    .line 658
    iget-object v10, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v10}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearAllMask()I

    .line 660
    iget-object v10, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 661
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 662
    .local v6, vt:Landroid/view/VelocityTracker;
    const/16 v10, 0x3e8

    invoke-virtual {v6, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 664
    const/4 v10, 0x5

    if-eq v1, v10, :cond_0

    if-nez v1, :cond_2

    .line 665
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 666
    .local v4, index:I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 667
    .local v3, id:I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v10

    float-to-int v9, v10

    .line 669
    .local v9, x:I
    iget v10, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->validXLeft:I

    if-lt v9, v10, :cond_1

    iget v10, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->validXRight:I

    if-le v9, v10, :cond_2

    .line 670
    :cond_1
    iget-object v10, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->gripMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v10, v3}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setMask(I)I

    .line 673
    .end local v3           #id:I
    .end local v4           #index:I
    .end local v9           #x:I
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_7

    .line 674
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 675
    .restart local v3       #id:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v10

    float-to-int v9, v10

    .line 676
    .restart local v9       #x:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolMajor(I)F

    move-result v10

    float-to-int v7, v10

    .line 677
    .local v7, widthMajor:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolMinor(I)F

    move-result v10

    float-to-int v8, v10

    .line 678
    .local v8, widthMinor:I
    invoke-virtual {v6, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v10

    float-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 680
    .local v5, velX:I
    iget-object v10, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->gripMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v10, v3}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->checkMask(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 681
    int-to-float v10, v7

    int-to-float v11, v8

    const/high16 v12, 0x4000

    mul-float/2addr v11, v12

    cmpl-float v10, v10, v11

    if-gez v10, :cond_3

    iget v10, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->validXLeft:I

    if-lt v9, v10, :cond_3

    iget v10, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->validXRight:I

    if-le v9, v10, :cond_4

    :cond_3
    const/16 v10, 0x1f4

    if-lt v5, v10, :cond_5

    .line 682
    :cond_4
    iget-object v10, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->gripMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v10, v3}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearMask(I)I

    .line 685
    :cond_5
    iget-object v10, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->gripMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v10, v3}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->checkMask(I)Z

    move-result v10

    if-nez v10, :cond_6

    .line 686
    iget-object v10, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v10, v3}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setMask(I)I

    .line 673
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 689
    .end local v3           #id:I
    .end local v5           #velX:I
    .end local v7           #widthMajor:I
    .end local v8           #widthMinor:I
    .end local v9           #x:I
    :cond_7
    const/4 v10, 0x6

    if-eq v1, v10, :cond_8

    const/4 v10, 0x1

    if-ne v1, v10, :cond_9

    .line 690
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 691
    .restart local v4       #index:I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 692
    .restart local v3       #id:I
    iget-object v10, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->gripMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v10, v3}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearMask(I)I

    .line 693
    iget-object v10, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v10, v3}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearMask(I)I

    .line 696
    .end local v3           #id:I
    .end local v4           #index:I
    :cond_9
    iget-object v10, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v10}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v10

    iput v10, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->reportIdBits:I

    .line 697
    const/4 v10, 0x1

    return v10
.end method

.method public getAct()Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    return-object v0
.end method

.method public getReportMask()I
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->reportIdBits:I

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 644
    sget-object v0, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->NONE:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    iput-object v0, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    .line 645
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->reportIdBits:I

    .line 646
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->gripMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v0}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearAllMask()I

    .line 647
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v0}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearAllMask()I

    .line 648
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 649
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GripSuppressionFilter: valid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->edge:Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " grip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;->gripMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " USE_WIDTH["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] USE_POSITION["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] USE_VELOCITY["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
