.class public Lcom/lge/camera/util/ImageRotationOn;
.super Lcom/lge/camera/util/ImageHandler;
.source "ImageRotationOn.java"


# static fields
.field private static final ROTATE_CCR_90:I = 0x10e

.field private static final ROTATE_CR_180:I = 0xb4

.field private static final ROTATE_CR_90:I = 0x5a

.field private static final ROTATE_ZERO:I


# instance fields
.field private mLastRotation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lge/camera/util/ImageHandler;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/util/ImageRotationOn;->mLastRotation:I

    return-void
.end method

.method public static rotateYUV420([BIII)[B
    .locals 10
    .parameter "data"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 84
    mul-int v5, p1, p2

    .line 85
    .local v5, size:I
    div-int/lit8 v2, p1, 0x2

    .line 86
    .local v2, halfWidth:I
    div-int/lit8 v1, p2, 0x2

    .line 88
    .local v1, halfHeight:I
    mul-int/lit8 v6, v5, 0x3

    div-int/lit8 v6, v6, 0x2

    new-array v0, v6, [B

    .line 90
    .local v0, dest:[B
    sparse-switch p3, :sswitch_data_0

    .line 150
    :cond_0
    return-object v0

    .line 92
    :sswitch_0
    const/4 v4, 0x0

    .local v4, j:I
    :goto_0
    if-ge v4, p1, :cond_0

    .line 93
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, p2, :cond_1

    .line 99
    mul-int v6, p2, v4

    add-int/2addr v6, v3

    add-int/lit8 v7, v3, 0x1

    sub-int v7, p2, v7

    mul-int/2addr v7, p1

    add-int/2addr v7, v4

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 100
    add-int/lit8 v6, v3, 0x1

    mul-int v7, p2, v4

    add-int/2addr v6, v7

    add-int/lit8 v7, v3, 0x2

    sub-int v7, p2, v7

    mul-int/2addr v7, p1

    add-int/2addr v7, v4

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 101
    add-int v6, p2, v3

    mul-int v7, p2, v4

    add-int/2addr v6, v7

    add-int/lit8 v7, v3, 0x1

    sub-int v7, p2, v7

    mul-int/2addr v7, p1

    add-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 102
    add-int v6, p2, v3

    add-int/lit8 v6, v6, 0x1

    mul-int v7, p2, v4

    add-int/2addr v6, v7

    add-int/lit8 v7, v3, 0x2

    sub-int v7, p2, v7

    mul-int/2addr v7, p1

    add-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 104
    add-int v6, v5, v3

    mul-int v7, v1, v4

    add-int/2addr v6, v7

    add-int/lit8 v7, v1, -0x1

    div-int/lit8 v8, v3, 0x2

    sub-int/2addr v7, v8

    mul-int/2addr v7, p1

    add-int/2addr v7, v5

    add-int/2addr v7, v4

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 106
    add-int v6, v5, v3

    mul-int v7, v1, v4

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v1, -0x1

    div-int/lit8 v8, v3, 0x2

    sub-int/2addr v7, v8

    mul-int/2addr v7, p1

    add-int/2addr v7, v5

    add-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 93
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 92
    :cond_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 111
    .end local v3           #i:I
    .end local v4           #j:I
    :sswitch_1
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, p2, :cond_0

    .line 112
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_3
    if-ge v4, p1, :cond_2

    .line 118
    mul-int v6, p1, v3

    add-int/2addr v6, v4

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    add-int/lit8 v8, v3, 0x1

    sub-int v8, p2, v8

    mul-int/2addr v8, p1

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 119
    add-int/lit8 v6, v4, 0x1

    mul-int v7, p1, v3

    add-int/2addr v6, v7

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    add-int/lit8 v8, v3, 0x1

    sub-int v8, p2, v8

    mul-int/2addr v8, p1

    add-int/2addr v7, v8

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 120
    add-int v6, p1, v4

    mul-int v7, p1, v3

    add-int/2addr v6, v7

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    add-int/lit8 v8, v3, 0x2

    sub-int v8, p2, v8

    mul-int/2addr v8, p1

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 121
    add-int v6, p1, v4

    add-int/lit8 v6, v6, 0x1

    mul-int v7, p1, v3

    add-int/2addr v6, v7

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    add-int/lit8 v8, v3, 0x2

    sub-int v8, p2, v8

    mul-int/2addr v8, p1

    add-int/2addr v7, v8

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 123
    add-int v6, v5, v4

    mul-int v7, v2, v3

    add-int/2addr v6, v7

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    add-int/2addr v7, v5

    add-int/lit8 v8, v1, -0x1

    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v8, v9

    mul-int/2addr v8, p1

    add-int/2addr v7, v8

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 125
    add-int v6, v5, v4

    mul-int v7, v2, v3

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    add-int/2addr v7, v5

    add-int/lit8 v8, v1, -0x1

    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v8, v9

    mul-int/2addr v8, p1

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 112
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 111
    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_2

    .line 130
    .end local v3           #i:I
    .end local v4           #j:I
    :sswitch_2
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_4
    if-ge v4, p1, :cond_0

    .line 131
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    if-ge v3, p2, :cond_3

    .line 137
    mul-int v6, p2, v4

    add-int/2addr v6, v3

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    mul-int v8, p1, v3

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 138
    add-int/lit8 v6, v3, 0x1

    mul-int v7, p2, v4

    add-int/2addr v6, v7

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    mul-int v8, p1, v3

    add-int/2addr v7, v8

    add-int/2addr v7, p1

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 139
    add-int v6, p2, v3

    mul-int v7, p2, v4

    add-int/2addr v6, v7

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    mul-int v8, p1, v3

    add-int/2addr v7, v8

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 140
    add-int v6, p2, v3

    add-int/lit8 v6, v6, 0x1

    mul-int v7, p2, v4

    add-int/2addr v6, v7

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    mul-int v8, p1, v3

    add-int/2addr v7, v8

    add-int/2addr v7, p1

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 142
    add-int v6, v5, v3

    mul-int v7, v1, v4

    add-int/2addr v6, v7

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    add-int/2addr v7, v5

    mul-int v8, v2, v3

    add-int/2addr v7, v8

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 144
    add-int v6, v5, v3

    mul-int v7, v1, v4

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    add-int/2addr v7, v5

    mul-int v8, v2, v3

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 131
    add-int/lit8 v3, v3, 0x2

    goto :goto_5

    .line 130
    :cond_3
    add-int/lit8 v4, v4, 0x2

    goto :goto_4

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 8
    .parameter "cr"
    .parameter "title"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "directory"
    .parameter "filename"
    .parameter "degree"

    .prologue
    .line 60
    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-static/range {v0 .. v7}, Lcom/lge/camera/util/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BI)Landroid/net/Uri;
    .locals 10
    .parameter "cr"
    .parameter "title"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "directory"
    .parameter "filename"
    .parameter "source"
    .parameter "jpegData"
    .parameter "degree"

    .prologue
    .line 64
    const/4 v9, 0x0

    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-static/range {v0 .. v9}, Lcom/lge/camera/util/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public addJpegImage(Landroid/content/ContentResolver;Ljava/lang/String;J[BLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 1
    .parameter "cr"
    .parameter "title"
    .parameter "dateTaken"
    .parameter "jpegData"
    .parameter "location"
    .parameter "directory"
    .parameter "filename"
    .parameter "degree"

    .prologue
    .line 80
    invoke-static/range {p1 .. p9}, Lcom/lge/camera/util/ImageManager;->addJpegImage(Landroid/content/ContentResolver;Ljava/lang/String;J[BLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public convertYuvToJpeg([BIIII)[B
    .locals 16
    .parameter "data"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"
    .parameter "quality"

    .prologue
    .line 153
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolution ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] data size ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rotation = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    move-object/from16 v0, p1

    array-length v3, v0

    mul-int v4, p2, p3

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    if-eq v3, v4, :cond_1

    .line 157
    const/4 v12, 0x0

    .line 207
    :cond_0
    :goto_0
    return-object v12

    .line 160
    :cond_1
    if-eqz p4, :cond_3

    .line 161
    invoke-static/range {p1 .. p4}, Lcom/lge/camera/util/ImageRotationOn;->rotateYUV420([BIII)[B

    move-result-object v14

    .line 162
    .local v14, rotateData:[B
    if-eqz v14, :cond_5

    .line 163
    move-object/from16 p1, v14

    .line 164
    const/16 v3, 0x10e

    move/from16 v0, p4

    if-eq v0, v3, :cond_2

    const/16 v3, 0x5a

    move/from16 v0, p4

    if-ne v0, v3, :cond_3

    .line 165
    :cond_2
    move/from16 v15, p2

    .line 166
    .local v15, tmp:I
    move/from16 p2, p3

    .line 167
    move/from16 p3, v15

    .line 174
    .end local v14           #rotateData:[B
    .end local v15           #tmp:I
    :cond_3
    :goto_1
    new-instance v2, Landroid/graphics/YuvImage;

    const/16 v4, 0x11

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 175
    .local v2, yuv:Landroid/graphics/YuvImage;
    const/4 v12, 0x0

    .line 176
    .local v12, result:[B
    if-eqz v2, :cond_0

    .line 177
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 179
    .local v8, bos:Ljava/io/ByteArrayOutputStream;
    const/4 v13, 0x0

    .line 180
    .local v13, ret:Z
    :try_start_0
    new-instance v11, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v11, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 181
    .local v11, rectangle:Landroid/graphics/Rect;
    if-eqz v11, :cond_4

    invoke-virtual {v2}, Landroid/graphics/YuvImage;->getStrides()[I

    move-result-object v3

    if-eqz v3, :cond_4

    .line 182
    move/from16 v0, p5

    invoke-virtual {v2, v11, v0, v8}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v13

    .line 184
    :cond_4
    if-eqz v13, :cond_6

    .line 185
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 196
    :goto_2
    :try_start_1
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 197
    .end local v11           #rectangle:Landroid/graphics/Rect;
    :goto_3
    const/4 v8, 0x0

    .line 203
    :goto_4
    const/4 v2, 0x0

    .line 204
    const/16 p1, 0x0

    goto :goto_0

    .line 171
    .end local v2           #yuv:Landroid/graphics/YuvImage;
    .end local v8           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v12           #result:[B
    .end local v13           #ret:Z
    .restart local v14       #rotateData:[B
    :cond_5
    const-string v3, "CameraApp"

    const-string v4, "Rotated data is null!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 188
    .end local v14           #rotateData:[B
    .restart local v2       #yuv:Landroid/graphics/YuvImage;
    .restart local v8       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #rectangle:Landroid/graphics/Rect;
    .restart local v12       #result:[B
    .restart local v13       #ret:Z
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 190
    .end local v11           #rectangle:Landroid/graphics/Rect;
    :catch_0
    move-exception v9

    .line 191
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CameraApp"

    const-string v4, "Exception while YuvImage.compressToJpeg()"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    const/4 v12, 0x0

    .line 196
    :try_start_3
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 198
    :catch_1
    move-exception v10

    .line 199
    .local v10, ex:Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "Exception in finally block"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .end local v9           #e:Ljava/lang/Exception;
    :goto_5
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 195
    .end local v10           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 196
    :try_start_4
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 197
    const/4 v8, 0x0

    .line 195
    :goto_6
    throw v3

    .line 198
    :catch_2
    move-exception v10

    .line 199
    .restart local v10       #ex:Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v5, "Exception in finally block"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 198
    .end local v10           #ex:Ljava/lang/Exception;
    .restart local v11       #rectangle:Landroid/graphics/Rect;
    :catch_3
    move-exception v10

    .line 199
    .restart local v10       #ex:Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "Exception in finally block"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bmp"
    .parameter "degree"
    .parameter "mirror"

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/camera/util/ImageRotationOn;->getRotated(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public resetRotation()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/util/ImageRotationOn;->mLastRotation:I

    .line 34
    return-void
.end method

.method public saveContiShotImage([BLjava/lang/String;III)I
    .locals 1
    .parameter "data"
    .parameter "filename"
    .parameter "rotation"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 72
    const/4 v0, -0x1

    return v0
.end method

.method public saveTempFileForTimeMachineShot([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "jpegData"
    .parameter "directory"
    .parameter "filename"
    .parameter "ext"

    .prologue
    .line 68
    invoke-static {p1, p2, p3, p4}, Lcom/lge/camera/util/ImageManager;->saveTempFileForTimeMachineShot([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setRotation(Landroid/hardware/Camera$Parameters;I)Z
    .locals 4
    .parameter "param"
    .parameter "rotation"

    .prologue
    const/4 v0, 0x1

    .line 37
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 38
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRotation ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/util/ImageRotationOn;->mLastRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 41
    iput p2, p0, Lcom/lge/camera/util/ImageRotationOn;->mLastRotation:I

    .line 52
    :goto_0
    return v0

    .line 44
    :cond_0
    iget v1, p0, Lcom/lge/camera/util/ImageRotationOn;->mLastRotation:I

    if-eq v1, p2, :cond_1

    .line 45
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 46
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRotation ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/util/ImageRotationOn;->mLastRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput p2, p0, Lcom/lge/camera/util/ImageRotationOn;->mLastRotation:I

    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startOlaPanorama(Landroid/hardware/Camera$Parameters;I)V
    .locals 0
    .parameter "param"
    .parameter "rotation"

    .prologue
    .line 57
    return-void
.end method
