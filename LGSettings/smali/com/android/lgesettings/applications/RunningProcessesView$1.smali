.class Lcom/android/lgesettings/applications/RunningProcessesView$1;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/applications/RunningProcessesView;->doCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/applications/RunningProcessesView;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/applications/RunningProcessesView;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/lgesettings/applications/RunningProcessesView$1;->this$0:Lcom/android/lgesettings/applications/RunningProcessesView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningProcessesView$1;->this$0:Lcom/android/lgesettings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningProcessesView;->mAdapter:Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    .line 481
    return-void
.end method
