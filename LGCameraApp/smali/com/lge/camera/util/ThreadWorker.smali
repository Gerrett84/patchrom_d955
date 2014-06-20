.class public Lcom/lge/camera/util/ThreadWorker;
.super Ljava/lang/Thread;
.source "ThreadWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/util/ThreadWorker$OnWorkingListListener;,
        Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;
    }
.end annotation


# instance fields
.field private mJob:Ljava/lang/Runnable;

.field private mNeedWaitByJoin:Z

.field private mWorkerListener:Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;

.field private mWorkingListListener:Lcom/lge/camera/util/ThreadWorker$OnWorkingListListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V
    .locals 1
    .parameter "name"
    .parameter "mainJob"
    .parameter "needWaitEnd"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkerListener:Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;

    .line 22
    iput-object v0, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkingListListener:Lcom/lge/camera/util/ThreadWorker$OnWorkingListListener;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/util/ThreadWorker;->mNeedWaitByJoin:Z

    .line 30
    invoke-virtual {p0, p1}, Lcom/lge/camera/util/ThreadWorker;->setName(Ljava/lang/String;)V

    .line 31
    iput-object p2, p0, Lcom/lge/camera/util/ThreadWorker;->mJob:Ljava/lang/Runnable;

    .line 32
    iput-boolean p3, p0, Lcom/lge/camera/util/ThreadWorker;->mNeedWaitByJoin:Z

    .line 33
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    .line 64
    :try_start_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThreadWorker finish-join : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/util/ThreadWorker;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/lge/camera/util/ThreadWorker;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isWaitUntilJoin()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/lge/camera/util/ThreadWorker;->mNeedWaitByJoin:Z

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkerListener:Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkerListener:Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;

    invoke-interface {v0}, Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;->onStartWork()V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/util/ThreadWorker;->mJob:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/lge/camera/util/ThreadWorker;->mJob:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 44
    iput-object v1, p0, Lcom/lge/camera/util/ThreadWorker;->mJob:Ljava/lang/Runnable;

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkerListener:Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkerListener:Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;

    invoke-interface {v0}, Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;->onEndWork()V

    .line 49
    iput-object v1, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkerListener:Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkingListListener:Lcom/lge/camera/util/ThreadWorker$OnWorkingListListener;

    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkingListListener:Lcom/lge/camera/util/ThreadWorker$OnWorkingListListener;

    invoke-interface {v0, p0}, Lcom/lge/camera/util/ThreadWorker$OnWorkingListListener;->onWorkingListRemove(Lcom/lge/camera/util/ThreadWorker;)V

    .line 54
    iput-object v1, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkingListListener:Lcom/lge/camera/util/ThreadWorker$OnWorkingListListener;

    .line 56
    :cond_3
    return-void
.end method

.method public setWorkerListener(Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkerListener:Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;

    .line 16
    return-void
.end method

.method public setWorkingListListener(Lcom/lge/camera/util/ThreadWorker$OnWorkingListListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkingListListener:Lcom/lge/camera/util/ThreadWorker$OnWorkingListListener;

    .line 25
    return-void
.end method
