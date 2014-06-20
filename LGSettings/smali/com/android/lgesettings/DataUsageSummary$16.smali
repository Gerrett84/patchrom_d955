.class Lcom/android/lgesettings/DataUsageSummary$16;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1902
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary$16;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspectRangeChanged()V
    .locals 1

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$16;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #calls: Lcom/android/lgesettings/DataUsageSummary;->updateDetailData()V
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->access$2500(Lcom/android/lgesettings/DataUsageSummary;)V

    .line 1907
    return-void
.end method

.method public onLimitChanged()V
    .locals 3

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$16;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary$16;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/lgesettings/DataUsageSummary;->access$2400(Lcom/android/lgesettings/DataUsageSummary;)Lcom/android/lgesettings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v1

    #calls: Lcom/android/lgesettings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/lgesettings/DataUsageSummary;->access$1700(Lcom/android/lgesettings/DataUsageSummary;J)V

    .line 1917
    return-void
.end method

.method public onWarningChanged()V
    .locals 3

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$16;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary$16;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/lgesettings/DataUsageSummary;->access$2400(Lcom/android/lgesettings/DataUsageSummary;)Lcom/android/lgesettings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v1

    #calls: Lcom/android/lgesettings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/lgesettings/DataUsageSummary;->access$1800(Lcom/android/lgesettings/DataUsageSummary;J)V

    .line 1912
    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    .prologue
    .line 1928
    #calls: Lcom/android/lgesettings/DataUsageSummary;->getPopupdisable()Z
    invoke-static {}, Lcom/android/lgesettings/DataUsageSummary;->access$3400()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1929
    const/4 v0, 0x1

    #calls: Lcom/android/lgesettings/DataUsageSummary;->setPopupdisable(Z)V
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->access$3500(Z)V

    .line 1930
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$16;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary$LimitEditorFragment;->show(Lcom/android/lgesettings/DataUsageSummary;)V

    .line 1932
    :cond_0
    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    .prologue
    .line 1921
    #calls: Lcom/android/lgesettings/DataUsageSummary;->getPopupdisable()Z
    invoke-static {}, Lcom/android/lgesettings/DataUsageSummary;->access$3400()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1922
    const/4 v0, 0x1

    #calls: Lcom/android/lgesettings/DataUsageSummary;->setPopupdisable(Z)V
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->access$3500(Z)V

    .line 1923
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$16;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment;->show(Lcom/android/lgesettings/DataUsageSummary;)V

    .line 1925
    :cond_0
    return-void
.end method
