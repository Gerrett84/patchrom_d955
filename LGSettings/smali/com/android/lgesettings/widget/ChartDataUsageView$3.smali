.class Lcom/android/lgesettings/widget/ChartDataUsageView$3;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/widget/ChartDataUsageView;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/lgesettings/widget/ChartSweepView;Z)V
    .locals 11
    .parameter "sweep"
    .parameter "sweepDone"

    .prologue
    const-wide/32 v9, 0x40000000

    const-wide/32 v7, 0x500000

    const-wide/16 v5, 0xa

    .line 372
    if-eqz p2, :cond_6

    .line 373
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #calls: Lcom/android/lgesettings/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/android/lgesettings/widget/ChartSweepView;)V
    invoke-static {v0, p1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$500(Lcom/android/lgesettings/widget/ChartDataUsageView;Lcom/android/lgesettings/widget/ChartSweepView;)V

    .line 374
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #calls: Lcom/android/lgesettings/widget/ChartDataUsageView;->updateEstimateVisible()V
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$100(Lcom/android/lgesettings/widget/ChartDataUsageView;)V

    .line 376
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$600(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mListener:Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$400(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$600(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartSweepView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;
    invoke-static {v2}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$700(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartSweepView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$700(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartSweepView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$600(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartSweepView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    cmp-long v0, v0, v9

    if-ltz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$600(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartSweepView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;
    invoke-static {v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$700(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartSweepView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    const-wide/16 v3, 0x9

    mul-long/2addr v1, v3

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/widget/ChartSweepView;->setValue(J)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mListener:Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$400(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;->onWarningChanged()V

    .line 400
    :cond_1
    :goto_0
    return-void

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$700(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mListener:Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$400(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$700(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartSweepView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;
    invoke-static {v2}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$600(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartSweepView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 385
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$700(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartSweepView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    cmp-long v0, v0, v7

    if-gez v0, :cond_4

    .line 386
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$700(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartSweepView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;
    invoke-static {v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$600(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartSweepView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/widget/ChartSweepView;->setValue(J)V

    .line 394
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mListener:Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$400(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;->onLimitChanged()V

    goto :goto_0

    .line 387
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$700(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartSweepView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    cmp-long v0, v0, v9

    if-gez v0, :cond_5

    .line 388
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$700(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartSweepView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;
    invoke-static {v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$600(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartSweepView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    add-long/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/widget/ChartSweepView;->setValue(J)V

    goto :goto_1

    .line 390
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$700(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartSweepView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;
    invoke-static {v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$600(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartSweepView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    const-wide/16 v3, 0xb

    mul-long/2addr v1, v3

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/widget/ChartSweepView;->setValue(J)V

    goto :goto_1

    .line 398
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    #calls: Lcom/android/lgesettings/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/lgesettings/widget/ChartSweepView;Z)V
    invoke-static {v0, p1, v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$200(Lcom/android/lgesettings/widget/ChartDataUsageView;Lcom/android/lgesettings/widget/ChartSweepView;Z)V

    goto/16 :goto_0
.end method

.method public requestEdit(Lcom/android/lgesettings/widget/ChartSweepView;)V
    .locals 1
    .parameter "sweep"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/lgesettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$600(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mListener:Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$400(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mListener:Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$400(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;->requestWarningEdit()V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/lgesettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$700(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mListener:Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$400(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mListener:Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$400(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;->requestLimitEdit()V

    goto :goto_0
.end method
