.class public Lcom/lge/camera/controller/ToastController;
.super Lcom/lge/camera/controller/Controller;
.source "ToastController.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHide:Ljava/lang/Runnable;

.field private mOrientation:I

.field private mStorageToast:Lcom/lge/camera/util/OnScreenHint;

.field private final mStorageToastHide:Ljava/lang/Runnable;

.field private mToast:Lcom/lge/camera/util/OnScreenHint;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 13
    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    .line 14
    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/ToastController;->mOrientation:I

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    .line 186
    new-instance v0, Lcom/lge/camera/controller/ToastController$6;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ToastController$6;-><init>(Lcom/lge/camera/controller/ToastController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mHide:Ljava/lang/Runnable;

    .line 192
    new-instance v0, Lcom/lge/camera/controller/ToastController$7;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ToastController$7;-><init>(Lcom/lge/camera/controller/ToastController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToastHide:Ljava/lang/Runnable;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/ToastController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mHide:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/ToastController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/ToastController;)Lcom/lge/camera/util/OnScreenHint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lge/camera/controller/ToastController;Lcom/lge/camera/util/OnScreenHint;)Lcom/lge/camera/util/OnScreenHint;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    return-object p1
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/ToastController;->hide(Z)V

    .line 87
    return-void
.end method

.method public declared-synchronized hide(Z)V
    .locals 1
    .parameter "immediately"

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_0

    .line 91
    if-eqz p1, :cond_1

    .line 92
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancelImmediately()V

    .line 97
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 94
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hideForPhotoStory()Z
    .locals 2

    .prologue
    .line 101
    monitor-enter p0

    const/4 v0, 0x0

    .line 103
    .local v0, bRet:Z
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v1}, Lcom/lge/camera/util/OnScreenHint;->cancelImmediately()V

    .line 105
    const/4 v0, 0x1

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v1}, Lcom/lge/camera/util/OnScreenHint;->cancelImmediately()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    const/4 v0, 0x1

    .line 112
    :cond_1
    monitor-exit p0

    return v0

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStorageToastShowing()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 207
    const-string v0, "CameraApp"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancel()V

    .line 211
    iput-object v2, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mStorageToastHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancel()V

    .line 216
    iput-object v2, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    .line 218
    :cond_1
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    .line 219
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 200
    const-string v0, "CameraApp"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onResume()V

    .line 202
    return-void
.end method

.method public rotate()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/ToastController;->rotate(I)V

    .line 162
    return-void
.end method

.method public declared-synchronized rotate(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lge/camera/controller/ToastController;->mOrientation:I

    if-eq v0, p1, :cond_2

    .line 166
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancel()V

    .line 168
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/OnScreenHint;->changeOrientation(Landroid/content/Context;I)Lcom/lge/camera/util/OnScreenHint;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancel()V

    .line 172
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/lge/camera/util/OnScreenHint;->changeOrientation(Landroid/content/Context;II)Lcom/lge/camera/util/OnScreenHint;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    .line 174
    :cond_1
    iput p1, p0, Lcom/lge/camera/controller/ToastController;->mOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_2
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public show(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;Z)V

    .line 24
    return-void
.end method

.method public show(Ljava/lang/String;J)V
    .locals 2
    .parameter "message"
    .parameter "hideDelayMillis"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/controller/ToastController$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/lge/camera/controller/ToastController$3;-><init>(Lcom/lge/camera/controller/ToastController;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public show(Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "immediately"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;ZI)V

    .line 28
    return-void
.end method

.method public declared-synchronized show(Ljava/lang/String;ZI)V
    .locals 2
    .parameter "message"
    .parameter "immediately"
    .parameter "orientation"

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/ToastController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    invoke-virtual {p0}, Lcom/lge/camera/controller/ToastController;->hide()V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lcom/lge/camera/util/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/lge/camera/util/OnScreenHint;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    .line 36
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_1

    .line 37
    if-eqz p2, :cond_2

    .line 38
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->showImmediately()V

    .line 42
    :goto_0
    iput p3, p0, Lcom/lge/camera/controller/ToastController;->mOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    monitor-exit p0

    return-void

    .line 40
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showLongToast(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/controller/ToastController$2;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/controller/ToastController$2;-><init>(Lcom/lge/camera/controller/ToastController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public showShortToast(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/controller/ToastController$1;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/controller/ToastController$1;-><init>(Lcom/lge/camera/controller/ToastController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public declared-synchronized storageToastShow(Ljava/lang/String;ZZ)V
    .locals 5
    .parameter "message"
    .parameter "immediately"
    .parameter "shortToast"

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/ToastController;->isStorageToastShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/camera/controller/ToastController;->mStorageToastHide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/ToastController;->storageToasthide(Z)V

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v0

    .line 121
    .local v0, orientation:I
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v0, v2}, Lcom/lge/camera/util/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;II)Lcom/lge/camera/util/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    .line 122
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v1, :cond_1

    .line 123
    if-eqz p2, :cond_3

    .line 124
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/ToastController$4;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/ToastController$4;-><init>(Lcom/lge/camera/controller/ToastController;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 133
    :goto_0
    iput v0, p0, Lcom/lge/camera/controller/ToastController;->mOrientation:I

    .line 136
    :cond_1
    if-eqz p3, :cond_2

    .line 137
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/camera/controller/ToastController;->mStorageToastHide:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/ToastController;->storageToasthide(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_2
    monitor-exit p0

    return-void

    .line 131
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v1}, Lcom/lge/camera/util/OnScreenHint;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    .end local v0           #orientation:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized storageToasthide(Z)V
    .locals 2
    .parameter "immediately"

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_0

    .line 145
    if-eqz p1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/ToastController$5;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/ToastController$5;-><init>(Lcom/lge/camera/controller/ToastController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 154
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancel()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
