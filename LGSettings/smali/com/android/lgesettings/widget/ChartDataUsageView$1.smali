.class Lcom/android/lgesettings/widget/ChartDataUsageView$1;
.super Landroid/os/Handler;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 102
    iput-object p1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$1;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 105
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/lgesettings/widget/ChartSweepView;

    .line 106
    .local v0, sweep:Lcom/android/lgesettings/widget/ChartSweepView;
    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$1;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #calls: Lcom/android/lgesettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/lgesettings/widget/ChartSweepView;)V
    invoke-static {v1, v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$000(Lcom/android/lgesettings/widget/ChartDataUsageView;Lcom/android/lgesettings/widget/ChartSweepView;)V

    .line 107
    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$1;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    #calls: Lcom/android/lgesettings/widget/ChartDataUsageView;->updateEstimateVisible()V
    invoke-static {v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$100(Lcom/android/lgesettings/widget/ChartDataUsageView;)V

    .line 110
    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartDataUsageView$1;->this$0:Lcom/android/lgesettings/widget/ChartDataUsageView;

    const/4 v2, 0x1

    #calls: Lcom/android/lgesettings/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/lgesettings/widget/ChartSweepView;Z)V
    invoke-static {v1, v0, v2}, Lcom/android/lgesettings/widget/ChartDataUsageView;->access$200(Lcom/android/lgesettings/widget/ChartDataUsageView;Lcom/android/lgesettings/widget/ChartSweepView;Z)V

    .line 111
    return-void
.end method
