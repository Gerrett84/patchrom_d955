.class Lcom/lge/camera/util/WorkingOnThread$1;
.super Ljava/lang/Object;
.source "WorkingOnThread.java"

# interfaces
.implements Lcom/lge/camera/util/ThreadWorker$OnWorkingListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/util/WorkingOnThread;->startWorker(Lcom/lge/camera/util/ThreadWorker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/util/WorkingOnThread;


# direct methods
.method constructor <init>(Lcom/lge/camera/util/WorkingOnThread;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lge/camera/util/WorkingOnThread$1;->this$0:Lcom/lge/camera/util/WorkingOnThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkingListRemove(Lcom/lge/camera/util/ThreadWorker;)V
    .locals 1
    .parameter "worker"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/camera/util/WorkingOnThread$1;->this$0:Lcom/lge/camera/util/WorkingOnThread;

    invoke-virtual {v0, p1}, Lcom/lge/camera/util/WorkingOnThread;->removeWorker(Lcom/lge/camera/util/ThreadWorker;)V

    .line 29
    return-void
.end method
