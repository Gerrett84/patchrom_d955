.class Lcom/android/lgesettings/DataUsageSummary$14;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/lgesettings/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1819
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary$14;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/lgesettings/net/ChartData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1822
    new-instance v0, Lcom/android/lgesettings/net/ChartDataLoader;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary$14;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary$14;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/lgesettings/DataUsageSummary;->access$2600(Lcom/android/lgesettings/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/lgesettings/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/lgesettings/net/ChartData;)V
    .locals 2
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/lgesettings/net/ChartData;",
            ">;",
            "Lcom/android/lgesettings/net/ChartData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1827
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/lgesettings/net/ChartData;>;"
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$14;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #setter for: Lcom/android/lgesettings/DataUsageSummary;->mChartData:Lcom/android/lgesettings/net/ChartData;
    invoke-static {v0, p2}, Lcom/android/lgesettings/DataUsageSummary;->access$2702(Lcom/android/lgesettings/DataUsageSummary;Lcom/android/lgesettings/net/ChartData;)Lcom/android/lgesettings/net/ChartData;

    .line 1828
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$14;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->access$2400(Lcom/android/lgesettings/DataUsageSummary;)Lcom/android/lgesettings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary$14;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mChartData:Lcom/android/lgesettings/net/ChartData;
    invoke-static {v1}, Lcom/android/lgesettings/DataUsageSummary;->access$2700(Lcom/android/lgesettings/DataUsageSummary;)Lcom/android/lgesettings/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/lgesettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1829
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$14;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->access$2400(Lcom/android/lgesettings/DataUsageSummary;)Lcom/android/lgesettings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary$14;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mChartData:Lcom/android/lgesettings/net/ChartData;
    invoke-static {v1}, Lcom/android/lgesettings/DataUsageSummary;->access$2700(Lcom/android/lgesettings/DataUsageSummary;)Lcom/android/lgesettings/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/lgesettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1832
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$14;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    const/4 v1, 0x1

    #calls: Lcom/android/lgesettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/DataUsageSummary;->access$100(Lcom/android/lgesettings/DataUsageSummary;Z)V

    .line 1833
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$14;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #calls: Lcom/android/lgesettings/DataUsageSummary;->updateAppDetail()V
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->access$2800(Lcom/android/lgesettings/DataUsageSummary;)V

    .line 1836
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$14;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mChartData:Lcom/android/lgesettings/net/ChartData;
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->access$2700(Lcom/android/lgesettings/DataUsageSummary;)Lcom/android/lgesettings/net/ChartData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/lgesettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 1837
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$14;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->access$2900(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1839
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1819
    check-cast p2, Lcom/android/lgesettings/net/ChartData;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/lgesettings/DataUsageSummary$14;->onLoadFinished(Landroid/content/Loader;Lcom/android/lgesettings/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/lgesettings/net/ChartData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/lgesettings/net/ChartData;>;"
    const/4 v1, 0x0

    .line 1843
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$14;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #setter for: Lcom/android/lgesettings/DataUsageSummary;->mChartData:Lcom/android/lgesettings/net/ChartData;
    invoke-static {v0, v1}, Lcom/android/lgesettings/DataUsageSummary;->access$2702(Lcom/android/lgesettings/DataUsageSummary;Lcom/android/lgesettings/net/ChartData;)Lcom/android/lgesettings/net/ChartData;

    .line 1844
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$14;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->access$2400(Lcom/android/lgesettings/DataUsageSummary;)Lcom/android/lgesettings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1845
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$14;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->access$2400(Lcom/android/lgesettings/DataUsageSummary;)Lcom/android/lgesettings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1846
    return-void
.end method
