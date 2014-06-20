.class Lcom/android/lgesettings/widget/ChartDataUsageView$2;
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
    .line 341
    iput-object p1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$2;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/lgesettings/widget/ChartSweepView;Z)V
    .locals 1
    .parameter "sweep"
    .parameter "sweepDone"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$2;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #calls: Lcom/android/lgesettings/widget/ChartDataUsageView;->updatePrimaryRange()V
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$300(Lcom/android/lgesettings/widget/ChartDataUsageView;)V

    .line 347
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$2;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mListener:Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$400(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$2;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/lgesettings/widget/ChartDataUsageView;->mListener:Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$400(Lcom/android/lgesettings/widget/ChartDataUsageView;)Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;->onInspectRangeChanged()V

    .line 350
    :cond_0
    return-void
.end method

.method public requestEdit(Lcom/android/lgesettings/widget/ChartSweepView;)V
    .locals 0
    .parameter "sweep"

    .prologue
    .line 355
    return-void
.end method
