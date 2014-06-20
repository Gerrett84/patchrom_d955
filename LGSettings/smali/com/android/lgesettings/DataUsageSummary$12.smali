.class Lcom/android/lgesettings/DataUsageSummary$12;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 1683
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary$12;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 1686
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1687
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/DataUsageSummary$AppItem;

    .line 1690
    .local v0, app:Lcom/android/lgesettings/DataUsageSummary$AppItem;
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary$12;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/lgesettings/net/UidDetailProvider;
    invoke-static {v3}, Lcom/android/lgesettings/DataUsageSummary;->access$2200(Lcom/android/lgesettings/DataUsageSummary;)Lcom/android/lgesettings/net/UidDetailProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 1694
    :cond_0
    :goto_0
    return-void

    .line 1692
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary$12;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/lgesettings/net/UidDetailProvider;
    invoke-static {v3}, Lcom/android/lgesettings/DataUsageSummary;->access$2200(Lcom/android/lgesettings/DataUsageSummary;)Lcom/android/lgesettings/net/UidDetailProvider;

    move-result-object v3

    iget v4, v0, Lcom/android/lgesettings/DataUsageSummary$AppItem;->key:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/lgesettings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/lgesettings/net/UidDetail;

    move-result-object v2

    .line 1693
    .local v2, detail:Lcom/android/lgesettings/net/UidDetail;
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary$12;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    iget-object v4, v2, Lcom/android/lgesettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v3, v0, v4}, Lcom/android/lgesettings/DataUsageSummary$AppDetailsFragment;->show(Lcom/android/lgesettings/DataUsageSummary;Lcom/android/lgesettings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
