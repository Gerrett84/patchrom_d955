.class public final Lcom/lge/lgdrm/DrmStream;
.super Ljava/io/InputStream;
.source "DrmStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmStream"


# instance fields
.field private b:[B

.field protected filename:Ljava/lang/String;

.field private nativeHandle:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/lgdrm/DrmStream;->b:[B

    .line 38
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "filename"
    .parameter "nativeHandle"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/lgdrm/DrmStream;->b:[B

    .line 44
    if-nez p2, :cond_0

    .line 45
    const-string v0, "DrmStream"

    const-string v1, "DrmStream() : Invalid native handle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/lge/lgdrm/DrmStream;->filename:Ljava/lang/String;

    .line 50
    iput p2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    goto :goto_0
.end method

.method private native nativeAvailable(I)I
.end method

.method private native nativeClose(I)V
.end method

.method private native nativeRead(I[BII)I
.end method

.method private native nativeSkip(IJ)J
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmStream;->nativeAvailable(I)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmStream;->nativeClose(I)V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    .line 71
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lge/lgdrm/DrmStream;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 0
    .parameter "readlimit"

    .prologue
    .line 75
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 87
    iget v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v2, :cond_0

    .line 88
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File was not opened properly"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/lge/lgdrm/DrmStream;->b:[B

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v4, v3}, Lcom/lge/lgdrm/DrmStream;->read([BII)I

    move-result v0

    .line 92
    .local v0, nRead:I
    if-ne v0, v1, :cond_1

    .line 96
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/lge/lgdrm/DrmStream;->b:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/lge/lgdrm/DrmStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, nRead:I
    const/4 v0, 0x0

    .line 115
    .local v0, i:I
    iget v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v2, :cond_0

    .line 116
    new-instance v2, Ljava/io/IOException;

    const-string v3, "File was not opened properly"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_0
    if-nez p1, :cond_1

    .line 120
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "parameter b is NULL"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :cond_1
    or-int v2, p2, p3

    if-ltz v2, :cond_2

    array-length v2, p1

    sub-int/2addr v2, p2

    if-le p3, v2, :cond_3

    .line 123
    :cond_2
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 126
    :cond_3
    iget v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/lge/lgdrm/DrmStream;->nativeRead(I[BII)I

    move-result v1

    .line 127
    if-nez v1, :cond_5

    .line 129
    const/4 v1, -0x1

    .line 136
    .end local v1           #nRead:I
    :cond_4
    return v1

    .line 130
    .restart local v1       #nRead:I
    :cond_5
    if-gez v1, :cond_4

    .line 131
    iget v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v2}, Lcom/lge/lgdrm/DrmStream;->nativeClose(I)V

    .line 132
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    .line 133
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-eqz v0, :cond_0

    .line 143
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmStream;->nativeClose(I)V

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    .line 147
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 153
    iget v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v2, :cond_0

    .line 154
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 165
    :goto_0
    return-wide v0

    :cond_1
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/lge/lgdrm/DrmStream;->nativeSkip(IJ)J

    move-result-wide v0

    goto :goto_0
.end method
