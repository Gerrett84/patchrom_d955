.class Landroid/widget/OverScroller$SplineOverScroller$FrameRate;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller$SplineOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameRate"
.end annotation


# instance fields
.field public extraTime:I

.field public frameCount:I

.field public frameTotalCount:I

.field final synthetic this$0:Landroid/widget/OverScroller$SplineOverScroller;

.field public timePassed:J

.field public timeTotalPassed:J


# direct methods
.method public constructor <init>(Landroid/widget/OverScroller$SplineOverScroller;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 701
    iput-object p1, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->this$0:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 702
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->frameCount:I

    .line 703
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->frameTotalCount:I

    .line 704
    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->timePassed:J

    .line 705
    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->timeTotalPassed:J

    .line 706
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->extraTime:I

    .line 707
    return-void
.end method


# virtual methods
.method public getTimeDiff()F
    .locals 4

    .prologue
    .line 720
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->timeTotalPassed:J

    iget-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->timePassed:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->timeTotalPassed:J

    .line 721
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->frameTotalCount:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->frameCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->frameTotalCount:I

    .line 722
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->timeTotalPassed:J

    long-to-float v0, v0

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->frameTotalCount:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 710
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->frameCount:I

    .line 711
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->timePassed:J

    .line 712
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->extraTime:I

    .line 713
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->frameTotalCount:I

    const/16 v1, 0x190

    if-le v0, v1, :cond_0

    .line 714
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->frameTotalCount:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->frameTotalCount:I

    .line 715
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->timeTotalPassed:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->timeTotalPassed:J

    .line 717
    :cond_0
    return-void
.end method
