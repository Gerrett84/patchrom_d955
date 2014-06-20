.class public Lcom/android/lgesettings/defaultapp/UpdateThread;
.super Landroid/os/HandlerThread;
.source "UpdateThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public mThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/defaultapp/UpdateThread;->mThreadHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public requestUpdate()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/UpdateThread;->mThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 44
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    .line 33
    iget-object v1, p0, Lcom/android/lgesettings/defaultapp/UpdateThread;->mThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/android/lgesettings/defaultapp/UpdateThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 35
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 36
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/lgesettings/defaultapp/UpdateThread;->mThreadHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .end local v0           #looper:Landroid/os/Looper;
    :cond_0
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public stopUpdate()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/UpdateThread;->mThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 64
    return-void
.end method
