.class Lcom/android/lgesettings/widget/ChartSweepView$1;
.super Ljava/lang/Object;
.source "ChartSweepView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/widget/ChartSweepView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/widget/ChartSweepView;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/widget/ChartSweepView;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/lgesettings/widget/ChartSweepView$1;->this$0:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView$1;->this$0:Lcom/android/lgesettings/widget/ChartSweepView;

    #calls: Lcom/android/lgesettings/widget/ChartSweepView;->dispatchRequestEdit()V
    invoke-static {v0}, Lcom/android/lgesettings/widget/ChartSweepView;->access$000(Lcom/android/lgesettings/widget/ChartSweepView;)V

    .line 162
    return-void
.end method
