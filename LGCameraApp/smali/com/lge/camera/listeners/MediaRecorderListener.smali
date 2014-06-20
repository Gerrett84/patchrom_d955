.class public final Lcom/lge/camera/listeners/MediaRecorderListener;
.super Ljava/lang/Object;
.source "MediaRecorderListener.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;


# instance fields
.field private mGet:Lcom/lge/camera/ControllerFunction;

.field private mOldTime:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 22
    iput-object p1, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/listeners/MediaRecorderListener;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 7
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 94
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    if-nez v0, :cond_1

    .line 95
    const-string v0, "CameraApp"

    const-string v1, "mGet interface is null."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "MediaRecorder onError-what:%d, extra:%d, bPopup:%b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getShowCameraErrorPopup()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-eq p2, v5, :cond_2

    if-eq p2, v6, :cond_2

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 105
    :cond_2
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    .line 106
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 107
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 108
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->resetScreenTimeout()V

    .line 110
    const/16 v0, -0x3ef

    if-ne p3, v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCurrentRecordingTime()J

    move-result-wide v0

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMinRecordingTime()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 113
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Short recording time error!! time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentRecordingTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getShowCameraErrorPopup()Z

    move-result v0

    if-nez v0, :cond_4

    .line 119
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/listeners/MediaRecorderListener$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/listeners/MediaRecorderListener$1;-><init>(Lcom/lge/camera/listeners/MediaRecorderListener;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 128
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->setShowCameraErrorPopup(Z)V

    goto/16 :goto_0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 12
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 27
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MediaRecorder onInfo what = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / extra = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 29
    const/16 v8, 0x3eb

    if-ne p2, v8, :cond_0

    .line 30
    iget-object v8, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->resumeUpdateReordingTime()V

    .line 34
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getFunctionUITimer()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 35
    const/16 v8, 0x324

    if-ne p2, v8, :cond_2

    .line 36
    div-int/lit16 v7, p3, 0x3e8

    .line 37
    .local v7, time:I
    iget v8, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mOldTime:I

    if-ge v8, v7, :cond_1

    .line 38
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 39
    .local v1, iTime:Ljava/lang/Integer;
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MediaRecorder onInfo time = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v8, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "com.lge.camera.command.UpdateRecordingTime"

    invoke-interface {v8, v9, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    iget-object v8, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    int-to-long v9, p3

    invoke-interface {v8, v9, v10}, Lcom/lge/camera/ControllerFunction;->setEndTime(J)V

    .line 44
    .end local v1           #iTime:Ljava/lang/Integer;
    :cond_1
    iput v7, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mOldTime:I

    .line 48
    .end local v7           #time:I
    :cond_2
    iget-object v8, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getIsFileSizeLimitReached()Z

    move-result v8

    if-nez v8, :cond_5

    const/16 v8, 0x320

    if-eq p2, v8, :cond_3

    const/16 v8, 0x321

    if-ne p2, v8, :cond_5

    .line 51
    :cond_3
    iget-object v8, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->setIsFileSizeLimitReached(Z)V

    .line 53
    const/16 v8, 0x321

    if-ne p2, v8, :cond_4

    iget-object v8, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v8

    if-nez v8, :cond_4

    .line 55
    iget-object v8, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->isStorageFull()Z

    move-result v8

    if-nez v8, :cond_7

    .line 56
    const-string v8, "CameraApp"

    const-string v9, "MediaRecorder max filesize reached"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File Size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lge/camera/VideoFile;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v8, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/camera/VideoFile;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-double v2, v8

    .line 60
    .local v2, mFileSize:D
    const-wide/high16 v8, 0x41d0

    div-double v4, v2, v8

    .line 64
    .local v4, mStringSize:D
    const/4 v0, 0x0

    .line 65
    .local v0, FILE_MAX_SIZE:Ljava/lang/String;
    const/4 v6, 0x0

    .line 68
    .local v6, round:Ljava/math/BigDecimal;
    const-wide/high16 v8, 0x3ff0

    cmpl-double v8, v4, v8

    if-ltz v8, :cond_6

    .line 69
    new-instance v8, Ljava/math/BigDecimal;

    invoke-direct {v8, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v9, 0x2

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v6

    .line 70
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " GB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_0
    iget-object v8, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v9, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0b0238

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->toastLong(Ljava/lang/String;)V

    .line 87
    .end local v0           #FILE_MAX_SIZE:Ljava/lang/String;
    .end local v2           #mFileSize:D
    .end local v4           #mStringSize:D
    .end local v6           #round:Ljava/math/BigDecimal;
    :cond_4
    :goto_1
    iget-object v8, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "com.lge.camera.command.UpdateRecordingTime"

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 89
    iget-object v8, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "com.lge.camera.command.StopRecording"

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 91
    :cond_5
    return-void

    .line 73
    .restart local v0       #FILE_MAX_SIZE:Ljava/lang/String;
    .restart local v2       #mFileSize:D
    .restart local v4       #mStringSize:D
    .restart local v6       #round:Ljava/math/BigDecimal;
    :cond_6
    const-wide/high16 v8, 0x4090

    mul-double/2addr v4, v8

    .line 74
    new-instance v8, Ljava/math/BigDecimal;

    invoke-direct {v8, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v9, 0x2

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v6

    .line 75
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " MB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    .end local v0           #FILE_MAX_SIZE:Ljava/lang/String;
    .end local v2           #mFileSize:D
    .end local v4           #mStringSize:D
    .end local v6           #round:Ljava/math/BigDecimal;
    :cond_7
    iget-object v8, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v9, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0b007f

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->toastLong(Ljava/lang/String;)V

    goto :goto_1
.end method
