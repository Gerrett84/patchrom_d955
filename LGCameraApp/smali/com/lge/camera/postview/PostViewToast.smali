.class public Lcom/lge/camera/postview/PostViewToast;
.super Ljava/lang/Object;
.source "PostViewToast.java"


# static fields
.field public static final TOAST_LENGTH_LONG:J = 0x1388L

.field public static final TOAST_LENGTH_NORMAL:J = 0xbb8L

.field public static final TOAST_LENGTH_SHORT:J = 0x7d0L


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHide:Ljava/lang/Runnable;

.field private mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/lge/camera/postview/PostViewToast$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/postview/PostViewToast$1;-><init>(Lcom/lge/camera/postview/PostViewToast;)V

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mHide:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/postview/PostViewToast;->cancel(Z)V

    .line 44
    return-void
.end method

.method public declared-synchronized cancel(Z)V
    .locals 1
    .parameter "immediately"

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_0

    .line 48
    if-eqz p1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancelImmediately()V

    .line 54
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 51
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "message"
    .parameter "orientation"

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lge/camera/postview/PostViewToast;->show(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 16
    return-void
.end method

.method public show(Landroid/content/Context;Ljava/lang/String;JI)V
    .locals 2
    .parameter "context"
    .parameter "message"
    .parameter "hideDelayMillis"
    .parameter "orientation"

    .prologue
    .line 35
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 36
    const-wide/16 p3, 0x7d0

    .line 38
    :cond_0
    invoke-virtual {p0, p1, p2, p5}, Lcom/lge/camera/postview/PostViewToast;->show(Landroid/content/Context;Ljava/lang/String;I)V

    .line 39
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/postview/PostViewToast;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    return-void
.end method

.method public declared-synchronized show(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 2
    .parameter "context"
    .parameter "message"
    .parameter "immediately"
    .parameter "orientation"

    .prologue
    .line 19
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostViewToast;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/postview/PostViewToast;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostViewToast;->cancel()V

    .line 23
    :cond_0
    invoke-static {p1, p2, p4}, Lcom/lge/camera/util/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/lge/camera/util/OnScreenHint;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    .line 24
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_1

    .line 25
    if-eqz p3, :cond_2

    .line 26
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->showImmediately()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 29
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unbind()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    .line 69
    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mHide:Ljava/lang/Runnable;

    .line 70
    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mHandler:Landroid/os/Handler;

    .line 71
    return-void
.end method
