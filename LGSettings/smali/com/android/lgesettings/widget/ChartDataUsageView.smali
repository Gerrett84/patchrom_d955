.class public Lcom/android/lgesettings/widget/ChartDataUsageView;
.super Lcom/android/lgesettings/widget/ChartView;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/widget/ChartDataUsageView$DataAxis;,
        Lcom/android/lgesettings/widget/ChartDataUsageView$TimeAxis;,
        Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mDetailSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

.field private mGrid:Lcom/android/lgesettings/widget/ChartGridView;

.field private mHandler:Landroid/os/Handler;

.field private mHistory:Landroid/net/NetworkStatsHistory;

.field private mHorizListener:Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;

.field private mListener:Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

.field private mSweepLeft:Lcom/android/lgesettings/widget/ChartSweepView;

.field private mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

.field private mSweepRight:Lcom/android/lgesettings/widget/ChartSweepView;

.field private mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

.field private mVertListener:Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;

.field private mVertMax:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 90
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/android/lgesettings/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 341
    new-instance v0, Lcom/android/lgesettings/widget/ChartDataUsageView$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/widget/ChartDataUsageView$2;-><init>(Lcom/android/lgesettings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mHorizListener:Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;

    .line 369
    new-instance v0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/widget/ChartDataUsageView$3;-><init>(Lcom/android/lgesettings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mVertListener:Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;

    .line 99
    sput-object p1, Lcom/android/lgesettings/widget/ChartDataUsageView;->mContext:Landroid/content/Context;

    .line 100
    new-instance v0, Lcom/android/lgesettings/widget/ChartDataUsageView$TimeAxis;

    invoke-direct {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView$TimeAxis;-><init>()V

    new-instance v1, Lcom/android/lgesettings/widget/InvertedChartAxis;

    new-instance v2, Lcom/android/lgesettings/widget/ChartDataUsageView$DataAxis;

    invoke-direct {v2}, Lcom/android/lgesettings/widget/ChartDataUsageView$DataAxis;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/lgesettings/widget/InvertedChartAxis;-><init>(Lcom/android/lgesettings/widget/ChartAxis;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->init(Lcom/android/lgesettings/widget/ChartAxis;Lcom/android/lgesettings/widget/ChartAxis;)V

    .line 102
    new-instance v0, Lcom/android/lgesettings/widget/ChartDataUsageView$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/widget/ChartDataUsageView$1;-><init>(Lcom/android/lgesettings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/widget/ChartDataUsageView;Lcom/android/lgesettings/widget/ChartSweepView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/lgesettings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/widget/ChartDataUsageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->updateEstimateVisible()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/widget/ChartDataUsageView;Lcom/android/lgesettings/widget/ChartSweepView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/lgesettings/widget/ChartSweepView;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/widget/ChartDataUsageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->updatePrimaryRange()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mListener:Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/widget/ChartDataUsageView;Lcom/android/lgesettings/widget/ChartSweepView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/android/lgesettings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartSweepView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartSweepView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$800(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/android/lgesettings/widget/ChartDataUsageView;->setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(J)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->roundUpToPowerOfTwo(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private clearUpdateAxisDelayed(Lcom/android/lgesettings/widget/ChartSweepView;)V
    .locals 2
    .parameter "sweep"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 367
    return-void
.end method

.method private getHistoryEnd()J
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000

    goto :goto_0
.end method

.method private getHistoryStart()J
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private static roundUpToPowerOfTwo(J)J
    .locals 4
    .parameter "i"

    .prologue
    const-wide/16 v2, 0x1

    .line 762
    sub-long/2addr p0, v2

    .line 765
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 766
    const/4 v0, 0x2

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 767
    const/4 v0, 0x4

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 768
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 769
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 770
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 772
    add-long/2addr p0, v2

    .line 774
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .end local p0
    :goto_0
    return-wide p0

    .restart local p0
    :cond_0
    const-wide p0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private sendUpdateAxisDelayed(Lcom/android/lgesettings/widget/ChartSweepView;Z)V
    .locals 4
    .parameter "sweep"
    .parameter "force"

    .prologue
    const/16 v2, 0x64

    .line 359
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 363
    :cond_1
    return-void
.end method

.method private static setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .parameter "builder"
    .parameter "key"
    .parameter "text"
    .parameter "bootstrap"

    .prologue
    .line 749
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 750
    .local v1, start:I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 751
    .local v0, end:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 752
    invoke-static {p0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 753
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int v0, v1, v2

    .line 754
    const/16 v2, 0x12

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 756
    :cond_0
    invoke-virtual {p0, v1, v0, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 757
    return-void
.end method

.method private updateEstimateVisible()V
    .locals 11

    .prologue
    const-wide/32 v9, 0x100000

    .line 306
    iget-object v7, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v7}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->getMaxEstimate()J

    move-result-wide v3

    .line 309
    .local v3, maxEstimate:J
    const-wide v1, 0xfa00000000L

    .line 311
    .local v1, interestLine:J
    iget-object v7, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v7}, Lcom/android/lgesettings/widget/ChartSweepView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 312
    iget-object v7, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v7}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    .line 314
    const-string v7, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 315
    iget-object v7, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v7}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v5

    .line 316
    .local v5, value:J
    cmp-long v7, v9, v5

    if-lez v7, :cond_0

    .line 317
    iget-object v7, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v7, v9, v10}, Lcom/android/lgesettings/widget/ChartSweepView;->setValue(J)V

    .line 324
    .end local v5           #value:J
    :cond_0
    :goto_0
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-gez v7, :cond_1

    .line 325
    const-wide v1, 0xfa00000000L

    .line 328
    :cond_1
    const-wide v7, 0xfa00000000L

    cmp-long v7, v1, v7

    if-ltz v7, :cond_4

    .line 329
    const-wide v1, 0xfa00000000L

    .line 337
    :cond_2
    :goto_1
    const-wide/16 v7, 0x7

    mul-long/2addr v7, v1

    const-wide/16 v9, 0xa

    div-long/2addr v7, v9

    cmp-long v7, v3, v7

    if-ltz v7, :cond_5

    const/4 v0, 0x1

    .line 338
    .local v0, estimateVisible:Z
    :goto_2
    iget-object v7, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v7, v0}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->setEstimateVisible(Z)V

    .line 339
    return-void

    .line 320
    .end local v0           #estimateVisible:Z
    :cond_3
    iget-object v7, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v7}, Lcom/android/lgesettings/widget/ChartSweepView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 321
    iget-object v7, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v7}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    goto :goto_0

    .line 331
    :cond_4
    cmp-long v7, v1, v9

    if-gtz v7, :cond_2

    .line 332
    const-string v7, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 333
    const-wide/32 v1, 0x100000

    goto :goto_1

    .line 337
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private updatePrimaryRange()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 501
    iget-object v4, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    .line 502
    .local v0, left:J
    iget-object v4, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    .line 509
    .local v2, right:J
    iget-object v4, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 510
    iget-object v4, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 511
    iget-object v4, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v5, v6, v5, v6}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v4, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    goto :goto_0
.end method

.method private updateVertAxisBounds(Lcom/android/lgesettings/widget/ChartSweepView;)V
    .locals 23
    .parameter "activeSweep"

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mVertMax:J

    .line 245
    .local v7, max:J
    const-wide/16 v17, 0x0

    .line 246
    .local v17, newMax:J
    if-eqz p1, :cond_0

    .line 247
    invoke-virtual/range {p1 .. p1}, Lcom/android/lgesettings/widget/ChartSweepView;->shouldAdjustAxis()I

    move-result v5

    .line 248
    .local v5, adjustAxis:I
    if-lez v5, :cond_5

    .line 250
    const-wide/16 v19, 0xb

    mul-long v19, v19, v7

    const-wide/16 v21, 0xa

    div-long v17, v19, v21

    .line 260
    .end local v5           #adjustAxis:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 261
    .local v13, maxSweep:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 262
    .local v11, maxSeries:J
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    const-wide/16 v21, 0xc

    mul-long v19, v19, v21

    const-wide/16 v21, 0xa

    div-long v15, v19, v21

    .line 263
    .local v15, maxVisible:J
    const-wide/32 v19, 0x3200000

    move-wide v0, v15

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 264
    .local v9, maxDefault:J
    move-wide/from16 v0, v17

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    .line 267
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mVertMax:J

    move-wide/from16 v19, v0

    cmp-long v19, v17, v19

    if-eqz v19, :cond_4

    .line 268
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/lgesettings/widget/ChartDataUsageView;->mVertMax:J

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartView;->mVert:Lcom/android/lgesettings/widget/ChartAxis;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move-wide/from16 v3, v17

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/lgesettings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v6

    .line 271
    .local v6, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move-wide/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/lgesettings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 272
    const/16 v19, 0x1

    const-string v20, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move-wide/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/lgesettings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 277
    :goto_1
    if-eqz v6, :cond_1

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 282
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mGrid:Lcom/android/lgesettings/widget/ChartGridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/lgesettings/widget/ChartGridView;->invalidate()V

    .line 285
    if-eqz p1, :cond_2

    .line 286
    invoke-virtual/range {p1 .. p1}, Lcom/android/lgesettings/widget/ChartSweepView;->updateValueFromPosition()V

    .line 292
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_3

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->layoutSweep(Lcom/android/lgesettings/widget/ChartSweepView;)V

    .line 295
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_4

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->layoutSweep(Lcom/android/lgesettings/widget/ChartSweepView;)V

    .line 299
    .end local v6           #changed:Z
    :cond_4
    return-void

    .line 251
    .end local v9           #maxDefault:J
    .end local v11           #maxSeries:J
    .end local v13           #maxSweep:J
    .end local v15           #maxVisible:J
    .restart local v5       #adjustAxis:I
    :cond_5
    if-gez v5, :cond_6

    .line 253
    const-wide/16 v19, 0x9

    mul-long v19, v19, v7

    const-wide/16 v21, 0xa

    div-long v17, v19, v21

    goto/16 :goto_0

    .line 255
    :cond_6
    move-wide/from16 v17, v7

    goto/16 :goto_0

    .line 275
    .end local v5           #adjustAxis:I
    .restart local v6       #changed:Z
    .restart local v9       #maxDefault:J
    .restart local v11       #maxSeries:J
    .restart local v13       #maxSweep:J
    .restart local v15       #maxVisible:J
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    move-object/from16 v19, v0

    const-wide/32 v20, 0x100000

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move-wide/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/lgesettings/widget/ChartSweepView;->setValidRange(JJ)V

    goto :goto_1
.end method


# virtual methods
.method public bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 3
    .parameter "stats"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 182
    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->setEndTime(J)V

    .line 186
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/lgesettings/widget/ChartSweepView;)V

    .line 187
    invoke-direct {p0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 188
    invoke-direct {p0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 189
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->requestLayout()V

    .line 190
    return-void

    .line 182
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bindNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 11
    .parameter "policy"

    .prologue
    const-wide/32 v9, 0x100000

    const/4 v4, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x0

    const-wide/16 v5, -0x1

    .line 193
    if-nez p1, :cond_0

    .line 194
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v2, v8}, Lcom/android/lgesettings/widget/ChartSweepView;->setVisibility(I)V

    .line 195
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v2, v5, v6}, Lcom/android/lgesettings/widget/ChartSweepView;->setValue(J)V

    .line 196
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v2, v8}, Lcom/android/lgesettings/widget/ChartSweepView;->setVisibility(I)V

    .line 197
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v2, v5, v6}, Lcom/android/lgesettings/widget/ChartSweepView;->setValue(J)V

    .line 236
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-wide v2, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_3

    .line 202
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v2, v7}, Lcom/android/lgesettings/widget/ChartSweepView;->setVisibility(I)V

    .line 203
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v2, v4}, Lcom/android/lgesettings/widget/ChartSweepView;->setEnabled(Z)V

    .line 205
    const-string v2, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 206
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 207
    .local v0, value:J
    cmp-long v2, v9, v0

    if-lez v2, :cond_2

    .line 208
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v2, v9, v10}, Lcom/android/lgesettings/widget/ChartSweepView;->setValue(J)V

    .line 214
    .end local v0           #value:J
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    iget-wide v3, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v2, v3, v4}, Lcom/android/lgesettings/widget/ChartSweepView;->setValue(J)V

    .line 225
    :goto_2
    iget-wide v2, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_5

    .line 226
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v2, v7}, Lcom/android/lgesettings/widget/ChartSweepView;->setVisibility(I)V

    .line 227
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

    iget-wide v3, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v2, v3, v4}, Lcom/android/lgesettings/widget/ChartSweepView;->setValue(J)V

    .line 233
    :goto_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/lgesettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/lgesettings/widget/ChartSweepView;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->requestLayout()V

    .line 235
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->invalidate()V

    goto :goto_0

    .line 210
    .restart local v0       #value:J
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v2, v0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->setValue(J)V

    goto :goto_1

    .line 216
    .end local v0           #value:J
    :cond_3
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v4, v2, :cond_4

    .line 217
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v2, v8}, Lcom/android/lgesettings/widget/ChartSweepView;->setVisibility(I)V

    .line 221
    :goto_4
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v2, v7}, Lcom/android/lgesettings/widget/ChartSweepView;->setEnabled(Z)V

    .line 222
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v2, v5, v6}, Lcom/android/lgesettings/widget/ChartSweepView;->setValue(J)V

    goto :goto_2

    .line 219
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v2, v7}, Lcom/android/lgesettings/widget/ChartSweepView;->setVisibility(I)V

    goto :goto_4

    .line 229
    :cond_5
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v2, v8}, Lcom/android/lgesettings/widget/ChartSweepView;->setVisibility(I)V

    .line 230
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v2, v5, v6}, Lcom/android/lgesettings/widget/ChartSweepView;->setValue(J)V

    goto :goto_3
.end method

.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 1
    .parameter "stats"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 173
    iput-object p1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/lgesettings/widget/ChartSweepView;)V

    .line 175
    invoke-direct {p0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 176
    invoke-direct {p0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 177
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->requestLayout()V

    .line 178
    return-void
.end method

.method public getInspectEnd()J
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLimitBytes()J
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/lgesettings/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningBytes()J
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/lgesettings/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    invoke-super {p0}, Lcom/android/lgesettings/widget/ChartView;->onFinishInflate()V

    .line 119
    const v0, 0x7f0a00a6

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/widget/ChartGridView;

    iput-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mGrid:Lcom/android/lgesettings/widget/ChartGridView;

    .line 120
    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    .line 121
    const v0, 0x7f0a00a8

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    .line 122
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 124
    const v0, 0x7f0a00a9

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/lgesettings/widget/ChartSweepView;

    .line 125
    const v0, 0x7f0a00aa

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/lgesettings/widget/ChartSweepView;

    .line 126
    const v0, 0x7f0a00ac

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    .line 127
    const v0, 0x7f0a00ab

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

    .line 130
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/lgesettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/lgesettings/widget/ChartSweepView;Lcom/android/lgesettings/widget/ChartSweepView;)V

    .line 131
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/lgesettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/lgesettings/widget/ChartSweepView;Lcom/android/lgesettings/widget/ChartSweepView;)V

    .line 132
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/lgesettings/widget/ChartSweepView;Lcom/android/lgesettings/widget/ChartSweepView;)V

    .line 133
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/lgesettings/widget/ChartSweepView;Lcom/android/lgesettings/widget/ChartSweepView;)V

    .line 136
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/lgesettings/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/lgesettings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/lgesettings/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->setNeighbors([Lcom/android/lgesettings/widget/ChartSweepView;)V

    .line 137
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/lgesettings/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/lgesettings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/lgesettings/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->setNeighbors([Lcom/android/lgesettings/widget/ChartSweepView;)V

    .line 138
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    new-array v1, v6, [Lcom/android/lgesettings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/lgesettings/widget/ChartSweepView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/lgesettings/widget/ChartSweepView;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->setNeighbors([Lcom/android/lgesettings/widget/ChartSweepView;)V

    .line 139
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

    new-array v1, v6, [Lcom/android/lgesettings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/lgesettings/widget/ChartSweepView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/lgesettings/widget/ChartSweepView;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->setNeighbors([Lcom/android/lgesettings/widget/ChartSweepView;)V

    .line 141
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/lgesettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mHorizListener:Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/lgesettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mHorizListener:Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mVertListener:Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;)V

    .line 144
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mVertListener:Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;)V

    .line 146
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

    const-wide/32 v1, 0x500000

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/widget/ChartSweepView;->setDragInterval(J)V

    .line 147
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    const-wide/32 v1, 0x500000

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/widget/ChartSweepView;->setDragInterval(J)V

    .line 150
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/widget/ChartSweepView;->setClickable(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/widget/ChartSweepView;->setFocusable(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/widget/ChartSweepView;->setClickable(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/widget/ChartSweepView;->setFocusable(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mGrid:Lcom/android/lgesettings/widget/ChartGridView;

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartView;->mHoriz:Lcom/android/lgesettings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartView;->mVert:Lcom/android/lgesettings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/widget/ChartGridView;->init(Lcom/android/lgesettings/widget/ChartAxis;Lcom/android/lgesettings/widget/ChartAxis;)V

    .line 157
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartView;->mHoriz:Lcom/android/lgesettings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartView;->mVert:Lcom/android/lgesettings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->init(Lcom/android/lgesettings/widget/ChartAxis;Lcom/android/lgesettings/widget/ChartAxis;)V

    .line 158
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartView;->mHoriz:Lcom/android/lgesettings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartView;->mVert:Lcom/android/lgesettings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->init(Lcom/android/lgesettings/widget/ChartAxis;Lcom/android/lgesettings/widget/ChartAxis;)V

    .line 159
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/lgesettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartView;->mHoriz:Lcom/android/lgesettings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->init(Lcom/android/lgesettings/widget/ChartAxis;)V

    .line 160
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/lgesettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartView;->mHoriz:Lcom/android/lgesettings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->init(Lcom/android/lgesettings/widget/ChartAxis;)V

    .line 161
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartView;->mVert:Lcom/android/lgesettings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->init(Lcom/android/lgesettings/widget/ChartAxis;)V

    .line 162
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartView;->mVert:Lcom/android/lgesettings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->init(Lcom/android/lgesettings/widget/ChartAxis;)V

    .line 164
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/widget/ChartDataUsageView;->setActivated(Z)V

    .line 165
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 414
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    :goto_0
    return v0

    .line 415
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 417
    goto :goto_0

    .line 420
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->setActivated(Z)V

    move v0, v1

    .line 421
    goto :goto_0

    .line 415
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mListener:Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 169
    return-void
.end method

.method public setVisibleRange(JJ)V
    .locals 24
    .parameter "visibleStart"
    .parameter "visibleEnd"

    .prologue
    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartView;->mHoriz:Lcom/android/lgesettings/widget/ChartAxis;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/lgesettings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v5

    .line 460
    .local v5, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mGrid:Lcom/android/lgesettings/widget/ChartGridView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/lgesettings/widget/ChartGridView;->setBounds(JJ)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 464
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->getHistoryStart()J

    move-result-wide v10

    .line 465
    .local v10, historyStart:J
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->getHistoryEnd()J

    move-result-wide v8

    .line 467
    .local v8, historyEnd:J
    const-wide v20, 0x7fffffffffffffffL

    cmp-long v20, v10, v20

    if-nez v20, :cond_1

    move-wide/from16 v18, p1

    .line 469
    .local v18, validStart:J
    :goto_0
    const-wide/high16 v20, -0x8000

    cmp-long v20, v8, v20

    if-nez v20, :cond_2

    move-wide/from16 v16, p3

    .line 477
    .local v16, validEnd:J
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/lgesettings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/lgesettings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/lgesettings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/lgesettings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 482
    add-long v20, p3, p1

    const-wide/16 v22, 0x2

    div-long v6, v20, v22

    .line 483
    .local v6, halfRange:J
    move-wide/from16 v12, v16

    .line 484
    .local v12, sweepMax:J
    const-wide/32 v20, 0x240c8400

    sub-long v20, v12, v20

    move-wide/from16 v0, p1

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 486
    .local v14, sweepMin:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/lgesettings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Lcom/android/lgesettings/widget/ChartSweepView;->setValue(J)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/lgesettings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Lcom/android/lgesettings/widget/ChartSweepView;->setValue(J)V

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->requestLayout()V

    .line 490
    if-eqz v5, :cond_0

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 495
    :cond_0
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/lgesettings/widget/ChartSweepView;)V

    .line 496
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 497
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 498
    return-void

    .line 467
    .end local v6           #halfRange:J
    .end local v12           #sweepMax:J
    .end local v14           #sweepMin:J
    .end local v16           #validEnd:J
    .end local v18           #validStart:J
    :cond_1
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    goto :goto_0

    .line 469
    .restart local v18       #validStart:J
    :cond_2
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    goto :goto_1
.end method

.method public updateValueAdjustRange(JJ)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    const-wide/16 v1, 0x0

    .line 518
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v0, p1, p2}, Lcom/android/lgesettings/widget/ChartSweepView;->setValue(J)V

    .line 519
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v0, p3, p4}, Lcom/android/lgesettings/widget/ChartSweepView;->setValue(J)V

    .line 525
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 527
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, v1, v2, v1, v2}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 531
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView;->mSeries:Lcom/android/lgesettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/lgesettings/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    goto :goto_0
.end method
