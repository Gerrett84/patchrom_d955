.class public Lcom/lge/camera/util/ImageSavers;
.super Ljava/lang/Thread;
.source "ImageSavers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;
    }
.end annotation


# instance fields
.field private mCb:Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;

.field private mCount:I

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/util/SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueLimit:I

.field private mStop:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;I)V
    .locals 1
    .parameter "callback"
    .parameter "queueCount"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    const/16 v0, 0x28

    iput v0, p0, Lcom/lge/camera/util/ImageSavers;->mQueueLimit:I

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/util/ImageSavers;->mCount:I

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/util/ImageSavers;->mCb:Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;

    .line 20
    iput p2, p0, Lcom/lge/camera/util/ImageSavers;->mQueueLimit:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    .line 22
    iput-object p1, p0, Lcom/lge/camera/util/ImageSavers;->mCb:Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;

    .line 23
    invoke-virtual {p0}, Lcom/lge/camera/util/ImageSavers;->start()V

    .line 24
    return-void
.end method


# virtual methods
.method public addImage([BLandroid/graphics/Bitmap;IZ)Z
    .locals 7
    .parameter "data"
    .parameter "bitmap"
    .parameter "imageRotationDegree"
    .parameter "isSetLastThumb"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/camera/util/ImageSavers;->mCb:Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/util/ImageSavers;->mCb:Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;

    invoke-interface {v0}, Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;->isStorageFull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    .line 39
    :cond_1
    iget v0, p0, Lcom/lge/camera/util/ImageSavers;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/camera/util/ImageSavers;->mCount:I

    .line 41
    new-instance v1, Lcom/lge/camera/util/SaveRequest;

    invoke-direct {v1}, Lcom/lge/camera/util/SaveRequest;-><init>()V

    .line 42
    .local v1, sr:Lcom/lge/camera/util/SaveRequest;
    iget-object v0, p0, Lcom/lge/camera/util/ImageSavers;->mCb:Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;->setSaveRequest(Lcom/lge/camera/util/SaveRequest;[BLandroid/graphics/Bitmap;IZ)V

    .line 44
    monitor-enter p0

    .line 45
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/lge/camera/util/ImageSavers;->mQueueLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v2, :cond_2

    .line 47
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 48
    :catch_0
    move-exception v6

    .line 49
    .local v6, ex:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v0, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 54
    .end local v6           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 52
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 54
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public finish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 132
    invoke-virtual {p0}, Lcom/lge/camera/util/ImageSavers;->waitDone()V

    .line 133
    monitor-enter p0

    .line 134
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/lge/camera/util/ImageSavers;->mStop:Z

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 136
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/camera/util/ImageSavers;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    :goto_0
    iput-object v4, p0, Lcom/lge/camera/util/ImageSavers;->mCb:Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;

    .line 143
    iput-object v4, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    .line 144
    return-void

    .line 136
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
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

.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/lge/camera/util/ImageSavers;->mCount:I

    return v0
.end method

.method public getQueueCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 64
    :goto_0
    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 70
    iget-boolean v2, p0, Lcom/lge/camera/util/ImageSavers;->mStop:Z

    if-eqz v2, :cond_0

    .line 71
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    return-void

    .line 75
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InterruptedException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 81
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/util/SaveRequest;

    .line 82
    .local v1, sr:Lcom/lge/camera/util/SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    iget-object v2, p0, Lcom/lge/camera/util/ImageSavers;->mCb:Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;

    if-eqz v2, :cond_2

    .line 85
    iget-object v2, p0, Lcom/lge/camera/util/ImageSavers;->mCb:Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;

    invoke-interface {v2, v1}, Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;->saveAndAddImageForImageSavers(Lcom/lge/camera/util/SaveRequest;)V

    .line 88
    :cond_2
    monitor-enter p0

    .line 89
    :try_start_4
    iget v2, p0, Lcom/lge/camera/util/ImageSavers;->mCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lge/camera/util/ImageSavers;->mCount:I

    .line 90
    iget-object v2, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 92
    iget-object v2, p0, Lcom/lge/camera/util/ImageSavers;->mCb:Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;

    if-eqz v2, :cond_3

    .line 93
    iget-object v2, p0, Lcom/lge/camera/util/ImageSavers;->mCb:Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;

    invoke-interface {v2}, Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;->doAfterSaveImageSavers()V

    .line 95
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public waitAvailableQueueCount(I)V
    .locals 5
    .parameter "availableCount"

    .prologue
    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget v1, p0, Lcom/lge/camera/util/ImageSavers;->mQueueLimit:I

    if-le p1, v1, :cond_0

    .line 116
    const-string v1, "CameraApp"

    const-string v2, "Error! availableCount must be less than Limit!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    monitor-exit p0

    .line 129
    :goto_0
    return-void

    .line 119
    :cond_0
    :goto_1
    iget v1, p0, Lcom/lge/camera/util/ImageSavers;->mQueueLimit:I

    iget-object v2, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v1, p1, :cond_1

    .line 120
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Imagesaver available Que Count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/util/ImageSavers;->mQueueLimit:I

    iget-object v4, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Wait..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
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

    goto :goto_1

    .line 128
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public waitDone()V
    .locals 4

    .prologue
    .line 101
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitDone start : Qsize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    monitor-enter p0

    .line 103
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 105
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
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

    .line 110
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    return-void
.end method
