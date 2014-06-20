.class Lcom/android/lgesettings/DataUsageSummary$13;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 1697
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary$13;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1700
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/DataUsageSummary$CycleItem;

    .line 1701
    .local v0, cycle:Lcom/android/lgesettings/DataUsageSummary$CycleItem;
    instance-of v1, v0, Lcom/android/lgesettings/DataUsageSummary$CycleChangeItem;

    if-eqz v1, :cond_0

    .line 1704
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary$13;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/lgesettings/DataUsageSummary$CycleEditorFragment;->show(Lcom/android/lgesettings/DataUsageSummary;)V

    .line 1707
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary$13;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/android/lgesettings/DataUsageSummary;->access$2300(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/Spinner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1725
    :goto_0
    return-void

    .line 1719
    :cond_0
    if-eqz v0, :cond_1

    .line 1720
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary$13;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/lgesettings/DataUsageSummary;->access$2400(Lcom/android/lgesettings/DataUsageSummary;)Lcom/android/lgesettings/widget/ChartDataUsageView;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/lgesettings/DataUsageSummary$CycleItem;->start:J

    iget-wide v4, v0, Lcom/android/lgesettings/DataUsageSummary$CycleItem;->end:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/lgesettings/widget/ChartDataUsageView;->setVisibleRange(JJ)V

    .line 1723
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary$13;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #calls: Lcom/android/lgesettings/DataUsageSummary;->updateDetailData()V
    invoke-static {v1}, Lcom/android/lgesettings/DataUsageSummary;->access$2500(Lcom/android/lgesettings/DataUsageSummary;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1730
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
