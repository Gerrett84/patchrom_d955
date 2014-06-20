.class public Lcom/lge/camera/VideoFile;
.super Ljava/lang/Object;
.source "VideoFile.java"


# static fields
.field public static final VIDEO_EXTENSION_3GP:Ljava/lang/String; = ".3gp"

.field public static final VIDEO_EXTENSION_MP4:Ljava/lang/String; = ".mp4"


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mFile:Ljava/io/File;

.field private mFileDirectory:Ljava/lang/String;

.field private mFileExtension:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mInitialized:Z

.field private mOccured_execption:Z

.field private mRecordingTime_duration:J

.field private mUri:Landroid/net/Uri;

.field private misAudiozoomcontent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "fileName"
    .parameter "purpose"

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v2, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_duration:J

    .line 39
    iput v2, p0, Lcom/lge/camera/VideoFile;->misAudiozoomcontent:I

    .line 40
    iput-boolean v2, p0, Lcom/lge/camera/VideoFile;->mOccured_execption:Z

    .line 63
    if-nez p3, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 65
    const-string v0, ".mp4"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    .line 71
    :goto_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/lge/camera/VideoFile;->initialize(Landroid/content/Context;)Z

    .line 73
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 69
    const-string v0, ".3gp"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 3
    .parameter "context"
    .parameter "fileName"
    .parameter "storage"
    .parameter "purpose"

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v2, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_duration:J

    .line 39
    iput v2, p0, Lcom/lge/camera/VideoFile;->misAudiozoomcontent:I

    .line 40
    iput-boolean v2, p0, Lcom/lge/camera/VideoFile;->mOccured_execption:Z

    .line 105
    if-nez p4, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 107
    const-string v0, ".mp4"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    .line 113
    :goto_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1, p3}, Lcom/lge/camera/VideoFile;->initialize(Landroid/content/Context;I)Z

    .line 115
    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 111
    const-string v0, ".3gp"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "directory"
    .parameter "fileName"
    .parameter "purpose"

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v2, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_duration:J

    .line 39
    iput v2, p0, Lcom/lge/camera/VideoFile;->misAudiozoomcontent:I

    .line 40
    iput-boolean v2, p0, Lcom/lge/camera/VideoFile;->mOccured_execption:Z

    .line 76
    if-nez p4, :cond_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 78
    const-string v0, ".mp4"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    .line 85
    :goto_0
    iput-object p2, p0, Lcom/lge/camera/VideoFile;->mFileDirectory:Ljava/lang/String;

    .line 87
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/lge/camera/VideoFile;->initialize(Landroid/content/Context;)Z

    .line 89
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 82
    const-string v0, ".3gp"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 3
    .parameter "context"
    .parameter "fileName"
    .parameter "testMode"
    .parameter "purpose"

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v2, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_duration:J

    .line 39
    iput v2, p0, Lcom/lge/camera/VideoFile;->misAudiozoomcontent:I

    .line 40
    iput-boolean v2, p0, Lcom/lge/camera/VideoFile;->mOccured_execption:Z

    .line 92
    if-nez p4, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 94
    const-string v0, ".mp4"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    .line 100
    :goto_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/lge/camera/VideoFile;->initialize(Landroid/content/Context;)Z

    .line 102
    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 98
    const-string v0, ".3gp"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public clearEmptyFile()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 170
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearEmptyFile() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 172
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iput-object v5, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    .line 178
    iput-object v5, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 187
    .end local v0           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 180
    .restart local v0       #file:Ljava/io/File;
    :cond_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty file delete failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_2
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File is not empty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteFile()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "CameraApp"

    const-string v1, "delete invalid video file"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAudiozoomExection_state()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/lge/camera/VideoFile;->mOccured_execption:Z

    return v0
.end method

.method public getAudiozoomcontent()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/lge/camera/VideoFile;->misAudiozoomcontent:I

    return v0
.end method

.method public getFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    if-nez v0, :cond_1

    .line 195
    const-string v0, "CameraApp"

    const-string v1, "Error!! mFile can\'t create!!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getFileExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getFileExternalPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    .line 307
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoThumb()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 364
    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 365
    .local v0, videoFrame:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public initialize(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 118
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mContext:Ljava/lang/ref/WeakReference;

    .line 119
    invoke-virtual {p0}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Lcom/lge/camera/VideoFile;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    .line 123
    iget-boolean v0, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    return v0
.end method

.method public initialize(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "storage"

    .prologue
    .line 127
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mContext:Ljava/lang/ref/WeakReference;

    .line 129
    if-nez p2, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    .line 136
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/VideoFile;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    .line 139
    iget-boolean v0, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    return v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/VideoFile;->getFileExternalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    return v0
.end method

.method public registerUri(ILjava/lang/String;Landroid/location/Location;ZI)Landroid/net/Uri;
    .locals 22
    .parameter "mode"
    .parameter "resolution"
    .parameter "location"
    .parameter "toast"
    .parameter "purpose"

    .prologue
    .line 212
    const-string v17, "CameraApp"

    const-string v18, "registerUri()"

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 216
    .local v7, dateTaken:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 217
    .local v13, name:Ljava/lang/String;
    const-string v17, "CameraApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "name: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    if-nez v13, :cond_0

    .line 220
    const/16 v17, 0x0

    .line 301
    :goto_0
    return-object v17

    .line 223
    :cond_0
    const/16 v17, 0x2e

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 224
    .local v10, indexOfDot:I
    const/4 v15, 0x0

    .line 225
    .local v15, title:Ljava/lang/String;
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_6

    .line 226
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 232
    :goto_1
    :try_start_0
    const-string v2, "video/mp4"

    .line 233
    .local v2, VIDEO_MIME_TYPE:Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, p5

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v17

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 235
    :cond_1
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/lge/camera/properties/MultimediaProperties;->getVideoMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    :cond_2
    const-string v17, "CameraApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "video mime type : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 240
    .local v16, values:Landroid/content/ContentValues;
    const-string v17, "title"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v17, "_display_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v17, "mime_type"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v17, "datetaken"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 246
    const-string v17, "date_added"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 247
    const-string v17, "date_modified"

    const-wide/16 v18, 0x3e8

    div-long v18, v7, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 248
    const-string v17, "_data"

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v17, "_size"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 251
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v17

    const/16 v18, 0x12

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 252
    const/4 v3, 0x0

    .line 253
    .local v3, audiozoomContentNo:I
    const/4 v4, 0x1

    .line 254
    .local v4, audiozoomContentYes:I
    const/16 v11, 0xf

    .line 255
    .local v11, matrixX:I
    const/4 v12, 0x3

    .line 256
    .local v12, matrixY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/VideoFile;->mOccured_execption:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 257
    const-string v17, "CameraApp"

    const-string v18, "===> Occured Audio zoom exection"

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v17, "audiozoom_contents"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    :goto_2
    const-string v17, "audiozoom_matrix_x"

    const/16 v18, 0xf

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    const-string v17, "audiozoom_matrix_y"

    const/16 v18, 0x3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 264
    const-string v17, "audiozoom_enable"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/VideoFile;->misAudiozoomcontent:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    .end local v3           #audiozoomContentNo:I
    .end local v4           #audiozoomContentYes:I
    .end local v11           #matrixX:I
    .end local v12           #matrixY:I
    :cond_3
    const-string v17, "duration"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/camera/VideoFile;->mRecordingTime_duration:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 269
    if-eqz p2, :cond_4

    .line 270
    const-string v17, "@"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 271
    .local v14, removeAt:[Ljava/lang/String;
    const-string v17, "resolution"

    const/16 v18, 0x0

    aget-object v18, v14, v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .end local v14           #removeAt:[Ljava/lang/String;
    :cond_4
    if-eqz p3, :cond_5

    .line 274
    const-string v17, "latitude"

    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 275
    const-string v17, "longitude"

    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 278
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/VideoFile;->mContext:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    .line 279
    .local v6, context:Landroid/content/Context;
    if-eqz v6, :cond_9

    .line 280
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 281
    .local v5, contentResolver:Landroid/content/ContentResolver;
    const-string v17, "CameraApp"

    const-string v18, "insert to DB:%s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object v17, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    .line 283
    const-string v17, "CameraApp"

    const-string v18, "insert to DB done."

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.hardware.action.NEW_VIDEO"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v5           #contentResolver:Landroid/content/ContentResolver;
    :goto_3
    const-string v17, "CameraApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Current video URI: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .end local v2           #VIDEO_MIME_TYPE:Ljava/lang/String;
    .end local v16           #values:Landroid/content/ContentValues;
    :goto_4
    const-string v17, "CameraApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Manually registered uri: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    goto/16 :goto_0

    .line 228
    .end local v6           #context:Landroid/content/Context;
    :cond_6
    move-object v15, v13

    goto/16 :goto_1

    .line 260
    .restart local v2       #VIDEO_MIME_TYPE:Ljava/lang/String;
    .restart local v3       #audiozoomContentNo:I
    .restart local v4       #audiozoomContentYes:I
    .restart local v11       #matrixX:I
    .restart local v12       #matrixY:I
    .restart local v16       #values:Landroid/content/ContentValues;
    :cond_7
    :try_start_1
    const-string v17, "audiozoom_contents"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 288
    .end local v2           #VIDEO_MIME_TYPE:Ljava/lang/String;
    .end local v3           #audiozoomContentNo:I
    .end local v4           #audiozoomContentYes:I
    .end local v11           #matrixX:I
    .end local v12           #matrixY:I
    .end local v16           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 289
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    const-string v17, "CameraApp"

    const-string v18, "Failed to register uri: %s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/VideoFile;->mContext:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    .line 291
    .restart local v6       #context:Landroid/content/Context;
    if-eqz v6, :cond_8

    if-eqz p4, :cond_8

    .line 294
    const v17, 0x7f0b0310

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 296
    :cond_8
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    const-string v17, "CameraApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Current video URI: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 286
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v2       #VIDEO_MIME_TYPE:Ljava/lang/String;
    .restart local v16       #values:Landroid/content/ContentValues;
    :cond_9
    :try_start_3
    const-string v17, "CameraApp"

    const-string v18, "Cannot insert URI because context is null"

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 298
    .end local v2           #VIDEO_MIME_TYPE:Ljava/lang/String;
    .end local v6           #context:Landroid/content/Context;
    .end local v16           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v17

    const-string v18, "CameraApp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Current video URI: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v17
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "title"
    .parameter "extension"

    .prologue
    const/4 v6, 0x0

    .line 312
    const-string v3, ".3gp"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ".mp4"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 314
    :cond_0
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "videofile.rename extension error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    .line 318
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    .line 320
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 321
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "title"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v3, "_display_name"

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v3, "_data"

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v3, "_size"

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 326
    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 327
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_2

    .line 328
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 329
    .local v0, c:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 334
    .end local v0           #c:Landroid/content/ContentResolver;
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 331
    :cond_2
    const-string v3, "CameraApp"

    const-string v4, "Cannot update name because context is null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public rename_ExternalSD(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "title"
    .parameter "extension"

    .prologue
    const/4 v6, 0x0

    .line 338
    const-string v3, ".3gp"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ".mp4"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 340
    :cond_0
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "videofile.rename extension error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    .line 344
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    .line 346
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 347
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "title"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v3, "_display_name"

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v3, "_data"

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v3, "_size"

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 352
    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 353
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_2

    .line 354
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 355
    .local v0, c:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 360
    .end local v0           #c:Landroid/content/ContentResolver;
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 357
    :cond_2
    const-string v3, "CameraApp"

    const-string v4, "Cannot update name because context is null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAudiozoomExection_state(Z)V
    .locals 0
    .parameter "isOccured"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/lge/camera/VideoFile;->mOccured_execption:Z

    .line 47
    return-void
.end method

.method public setAudiozoomcontent(I)V
    .locals 0
    .parameter "contenttype"

    .prologue
    .line 49
    iput p1, p0, Lcom/lge/camera/VideoFile;->misAudiozoomcontent:I

    .line 50
    return-void
.end method

.method public setRecordingTime_duration(J)V
    .locals 3
    .parameter "recordingTime_duration"

    .prologue
    const-wide/16 v0, 0x0

    .line 59
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .end local p1
    :cond_0
    iput-wide p1, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_duration:J

    .line 60
    return-void
.end method
