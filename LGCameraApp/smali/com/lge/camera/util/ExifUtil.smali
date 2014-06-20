.class public Lcom/lge/camera/util/ExifUtil;
.super Ljava/lang/Object;
.source "ExifUtil.java"


# static fields
.field public static final DEFAULT_IMAGE_EXIF_WIDTH:I = 0x320

.field private static final TAG:Ljava/lang/String; = "CameraApp"

.field private static mLength:I

.field private static mOffSet:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 418
    sput v0, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    .line 419
    sput v0, Lcom/lge/camera/util/ExifUtil;->mLength:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkJpegSpec([B)Z
    .locals 7
    .parameter "jpeg"

    .prologue
    const/16 v6, 0xff

    const/4 v2, 0x1

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 473
    :cond_0
    :goto_0
    sget v3, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    add-int/lit8 v3, v3, 0x3

    array-length v4, p0

    if-ge v3, v4, :cond_1

    sget v3, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v6, :cond_1

    .line 474
    sget v3, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    aget-byte v3, p0, v3

    and-int/lit16 v0, v3, 0xff

    .line 477
    .local v0, marker:I
    if-eq v0, v6, :cond_0

    .line 480
    sget v3, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    .line 483
    const/16 v3, 0xd8

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 487
    const/16 v3, 0xd9

    if-eq v0, v3, :cond_1

    const/16 v3, 0xda

    if-ne v0, v3, :cond_2

    .end local v0           #marker:I
    :cond_1
    :goto_1
    move v1, v2

    .line 510
    :goto_2
    return v1

    .line 492
    .restart local v0       #marker:I
    :cond_2
    sget v3, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    invoke-static {p0, v3, v5, v1}, Lcom/lge/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v3

    sput v3, Lcom/lge/camera/util/ExifUtil;->mLength:I

    .line 493
    sget v3, Lcom/lge/camera/util/ExifUtil;->mLength:I

    if-lt v3, v5, :cond_3

    sget v3, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    sget v4, Lcom/lge/camera/util/ExifUtil;->mLength:I

    add-int/2addr v3, v4

    array-length v4, p0

    if-le v3, v4, :cond_4

    .line 494
    :cond_3
    const-string v2, "CameraApp"

    const-string v3, "Invalid length"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 499
    :cond_4
    const/16 v3, 0xe1

    if-ne v0, v3, :cond_5

    sget v3, Lcom/lge/camera/util/ExifUtil;->mLength:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_5

    sget v3, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    add-int/lit8 v3, v3, 0x2

    const/4 v4, 0x4

    invoke-static {p0, v3, v4, v1}, Lcom/lge/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v3

    const v4, 0x45786966

    if-ne v3, v4, :cond_5

    sget v3, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    add-int/lit8 v3, v3, 0x6

    invoke-static {p0, v3, v5, v1}, Lcom/lge/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v3

    if-nez v3, :cond_5

    .line 500
    sget v1, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    add-int/lit8 v1, v1, 0x8

    sput v1, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    .line 501
    sget v1, Lcom/lge/camera/util/ExifUtil;->mLength:I

    add-int/lit8 v1, v1, -0x8

    sput v1, Lcom/lge/camera/util/ExifUtil;->mLength:I

    goto :goto_1

    .line 506
    :cond_5
    sget v3, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    sget v4, Lcom/lge/camera/util/ExifUtil;->mLength:I

    add-int/2addr v3, v4

    sput v3, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    .line 507
    sput v1, Lcom/lge/camera/util/ExifUtil;->mLength:I

    goto/16 :goto_0
.end method

.method public static convertDegreeToExifOrientation(I)I
    .locals 1
    .parameter "degree"

    .prologue
    const/4 v0, 0x1

    .line 330
    sparse-switch p0, :sswitch_data_0

    .line 340
    :goto_0
    :sswitch_0
    return v0

    .line 334
    :sswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 336
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 338
    :sswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 330
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static convertExifOrientationToDegree(I)I
    .locals 1
    .parameter "exifOrientation"

    .prologue
    const/4 v0, 0x0

    .line 315
    packed-switch p0, :pswitch_data_0

    .line 325
    :goto_0
    :pswitch_0
    return v0

    .line 319
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 321
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 323
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static convertFlashModeToExifValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mode"

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, result:I
    const-string v1, "auto"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    const/16 v0, 0x18

    .line 288
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 277
    :cond_1
    const-string v1, "off"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    const/16 v0, 0x10

    goto :goto_0

    .line 279
    :cond_2
    const-string v1, "on"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 280
    const/16 v0, 0x9

    goto :goto_0

    .line 281
    :cond_3
    const-string v1, "red-eye"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    const-string v1, "torch"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 284
    const/4 v0, 0x1

    goto :goto_0

    .line 286
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static convertLocation(DI)Ljava/lang/String;
    .locals 9
    .parameter "coordinate"
    .parameter "type"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 179
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "START coordinate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {p0, p1, p2}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, strCoordinate:Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, arrCoordinate:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v2, sb:Ljava/lang/StringBuilder;
    packed-switch p2, :pswitch_data_0

    .line 209
    :goto_0
    const/16 v4, 0x2d

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 210
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 217
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, result:Ljava/lang/String;
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "END result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-object v1

    .line 186
    .end local v1           #result:Ljava/lang/String;
    :pswitch_0
    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v4, "/1,0/1,0/1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 190
    :pswitch_1
    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v4, "/1,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    aget-object v4, v0, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v4, "/1,0/1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 196
    :pswitch_2
    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v4, "/1,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    aget-object v4, v0, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v4, "/1,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v4, "/1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static convertWbModeToExifValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "whiteBalace"

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, result:I
    const-string v1, "auto"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    const/4 v0, 0x0

    .line 311
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 309
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static copyExif(Landroid/media/ExifInterface;Landroid/media/ExifInterface;[Ljava/lang/String;)V
    .locals 10
    .parameter "src"
    .parameter "dest"
    .parameter "exceptions"

    .prologue
    .line 568
    const/4 v5, 0x0

    .line 569
    .local v5, key:Ljava/lang/String;
    const/4 v7, 0x0

    .line 570
    .local v7, value:Ljava/lang/String;
    const-class v8, Landroid/media/ExifInterface;

    invoke-virtual {v8}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/reflect/Field;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v3, v1, v4

    .line 571
    .local v3, f:Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TAG_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 570
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 574
    :cond_1
    const/4 v5, 0x0

    .line 576
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    if-eqz v5, :cond_0

    .line 583
    if-eqz p2, :cond_2

    invoke-static {v5, p2}, Lcom/lge/camera/util/ExifUtil;->isExcpetionTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 586
    :cond_2
    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 587
    if-eqz v7, :cond_0

    .line 590
    invoke-virtual {p1, v5, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 577
    :catch_0
    move-exception v2

    .line 578
    .local v2, e:Ljava/lang/Exception;
    goto :goto_1

    .line 592
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #f:Ljava/lang/reflect/Field;
    :cond_3
    return-void
.end method

.method public static getExifHeight(Ljava/lang/String;)I
    .locals 7
    .parameter "filepath"

    .prologue
    const/16 v4, 0x320

    .line 397
    const/4 v1, 0x0

    .line 399
    .local v1, exif:Landroid/media/ExifInterface;
    if-nez p0, :cond_0

    .line 400
    const-string v5, "CameraApp"

    const-string v6, "filepath is null, return degree 0"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 415
    :goto_0
    return v3

    .line 405
    :cond_0
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #exif:Landroid/media/ExifInterface;
    .local v2, exif:Landroid/media/ExifInterface;
    move-object v1, v2

    .line 410
    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    :goto_1
    const/16 v3, 0x320

    .line 411
    .local v3, height:I
    if-eqz v1, :cond_1

    .line 412
    const-string v5, "ImageLength"

    invoke-virtual {v1, v5, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 414
    :cond_1
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Exif height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 406
    .end local v3           #height:I
    :catch_0
    move-exception v0

    .line 407
    .local v0, ex:Ljava/io/IOException;
    const-string v5, "CameraApp"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getExifOrientationDegree(Ljava/lang/String;)I
    .locals 9
    .parameter "filepath"

    .prologue
    const/4 v8, -0x1

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, degree:I
    const/4 v3, 0x0

    .line 348
    .local v3, exif:Landroid/media/ExifInterface;
    if-nez p0, :cond_0

    .line 349
    const-string v6, "CameraApp"

    const-string v7, "filepath is null, return degree 0"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 369
    .end local v0           #degree:I
    .local v1, degree:I
    :goto_0
    return v1

    .line 354
    .end local v1           #degree:I
    .restart local v0       #degree:I
    :cond_0
    :try_start_0
    new-instance v4, Landroid/media/ExifInterface;

    invoke-direct {v4, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #exif:Landroid/media/ExifInterface;
    .local v4, exif:Landroid/media/ExifInterface;
    move-object v3, v4

    .line 359
    .end local v4           #exif:Landroid/media/ExifInterface;
    .restart local v3       #exif:Landroid/media/ExifInterface;
    :goto_1
    if-eqz v3, :cond_1

    .line 360
    const-string v6, "Orientation"

    invoke-virtual {v3, v6, v8}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v5

    .line 361
    .local v5, orientation:I
    if-eq v5, v8, :cond_2

    .line 363
    invoke-static {v5}, Lcom/lge/camera/util/ExifUtil;->convertExifOrientationToDegree(I)I

    move-result v0

    .line 368
    .end local v5           #orientation:I
    :cond_1
    :goto_2
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Degree = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 369
    .end local v0           #degree:I
    .restart local v1       #degree:I
    goto :goto_0

    .line 355
    .end local v1           #degree:I
    .restart local v0       #degree:I
    :catch_0
    move-exception v2

    .line 356
    .local v2, ex:Ljava/io/IOException;
    const-string v6, "CameraApp"

    const-string v7, "cannot read exif"

    invoke-static {v6, v7, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 365
    .end local v2           #ex:Ljava/io/IOException;
    .restart local v5       #orientation:I
    :cond_2
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getExifOrientation : getAttributeInt return = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getExifWidth(Ljava/lang/String;)I
    .locals 7
    .parameter "filepath"

    .prologue
    const/16 v4, 0x320

    .line 375
    const/4 v1, 0x0

    .line 377
    .local v1, exif:Landroid/media/ExifInterface;
    if-nez p0, :cond_0

    .line 378
    const-string v5, "CameraApp"

    const-string v6, "filepath is null, return degree 0"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 393
    :goto_0
    return v3

    .line 383
    :cond_0
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #exif:Landroid/media/ExifInterface;
    .local v2, exif:Landroid/media/ExifInterface;
    move-object v1, v2

    .line 388
    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    :goto_1
    const/16 v3, 0x320

    .line 389
    .local v3, width:I
    if-eqz v1, :cond_1

    .line 390
    const-string v5, "ImageWidth"

    invoke-virtual {v1, v5, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 392
    :cond_1
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Exif width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 384
    .end local v3           #width:I
    :catch_0
    move-exception v0

    .line 385
    .local v0, ex:Ljava/io/IOException;
    const-string v5, "CameraApp"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getOrientation([B)I
    .locals 11
    .parameter "jpeg"

    .prologue
    const v10, 0x49492a00

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v5, 0x0

    .line 421
    if-nez p0, :cond_0

    .line 469
    :goto_0
    return v5

    .line 425
    :cond_0
    sput v5, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    .line 426
    sput v5, Lcom/lge/camera/util/ExifUtil;->mLength:I

    .line 429
    invoke-static {p0}, Lcom/lge/camera/util/ExifUtil;->checkJpegSpec([B)Z

    move-result v6

    if-nez v6, :cond_1

    .line 430
    const-string v6, "CameraApp"

    const-string v7, "Invalid jpeg spec, orientation is 0"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_1
    sget v6, Lcom/lge/camera/util/ExifUtil;->mLength:I

    const/16 v7, 0x8

    if-le v6, v7, :cond_7

    .line 437
    sget v6, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    invoke-static {p0, v6, v9, v5}, Lcom/lge/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v4

    .line 438
    .local v4, tag:I
    if-eq v4, v10, :cond_2

    const v6, 0x4d4d002a

    if-eq v4, v6, :cond_2

    .line 439
    const-string v6, "CameraApp"

    const-string v7, "Invalid byte order"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :cond_2
    if-ne v4, v10, :cond_4

    const/4 v2, 0x1

    .line 445
    .local v2, littleEndian:Z
    :goto_1
    sget v6, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    add-int/lit8 v6, v6, 0x4

    invoke-static {p0, v6, v9, v2}, Lcom/lge/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v6

    add-int/lit8 v0, v6, 0x2

    .line 446
    .local v0, count:I
    const/16 v6, 0xa

    if-lt v0, v6, :cond_3

    sget v6, Lcom/lge/camera/util/ExifUtil;->mLength:I

    if-le v0, v6, :cond_5

    .line 447
    :cond_3
    const-string v6, "CameraApp"

    const-string v7, "Invalid offset"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #count:I
    .end local v2           #littleEndian:Z
    :cond_4
    move v2, v5

    .line 442
    goto :goto_1

    .line 450
    .restart local v0       #count:I
    .restart local v2       #littleEndian:Z
    :cond_5
    sget v6, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    add-int/2addr v6, v0

    sput v6, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    .line 451
    sget v6, Lcom/lge/camera/util/ExifUtil;->mLength:I

    sub-int/2addr v6, v0

    sput v6, Lcom/lge/camera/util/ExifUtil;->mLength:I

    .line 454
    sget v6, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    add-int/lit8 v6, v6, -0x2

    invoke-static {p0, v6, v8, v2}, Lcom/lge/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v0

    move v1, v0

    .line 455
    .end local v0           #count:I
    .local v1, count:I
    :goto_2
    add-int/lit8 v0, v1, -0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    if-lez v1, :cond_7

    sget v6, Lcom/lge/camera/util/ExifUtil;->mLength:I

    const/16 v7, 0xc

    if-lt v6, v7, :cond_7

    .line 457
    sget v6, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    invoke-static {p0, v6, v8, v2}, Lcom/lge/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v4

    .line 458
    const/16 v6, 0x112

    if-ne v4, v6, :cond_6

    .line 460
    sget v5, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    add-int/lit8 v5, v5, 0x8

    invoke-static {p0, v5, v8, v2}, Lcom/lge/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v3

    .local v3, orientation:I
    move v5, v3

    .line 461
    goto :goto_0

    .line 463
    .end local v3           #orientation:I
    :cond_6
    sget v6, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    add-int/lit8 v6, v6, 0xc

    sput v6, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    .line 464
    sget v6, Lcom/lge/camera/util/ExifUtil;->mLength:I

    add-int/lit8 v6, v6, -0xc

    sput v6, Lcom/lge/camera/util/ExifUtil;->mLength:I

    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_2

    .line 468
    .end local v1           #count:I
    .end local v2           #littleEndian:Z
    .end local v4           #tag:I
    :cond_7
    const-string v6, "CameraApp"

    const-string v7, "Orientation not found"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static isExcpetionTag(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "tag"
    .parameter "exceptions"

    .prologue
    .line 595
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 596
    .local v1, exceptionTag:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 597
    const/4 v4, 0x1

    .line 600
    .end local v1           #exceptionTag:Ljava/lang/String;
    :goto_1
    return v4

    .line 595
    .restart local v1       #exceptionTag:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 600
    .end local v1           #exceptionTag:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static latitudeValueToNorS(D)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 224
    const-wide/16 v1, 0x0

    cmpl-double v1, p0, v1

    if-lez v1, :cond_0

    .line 225
    const-string v0, "N"

    .line 229
    .local v0, result:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 227
    .end local v0           #result:Ljava/lang/String;
    :cond_0
    const-string v0, "S"

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method public static latlocConvert(D)Ljava/lang/String;
    .locals 7
    .parameter "coordinate"

    .prologue
    const-wide/high16 v5, 0x404e

    .line 116
    const-wide v3, -0x3f99800000000000L

    cmpg-double v3, p0, v3

    if-ltz v3, :cond_0

    const-wide v3, 0x4066800000000000L

    cmpl-double v3, p0, v3

    if-gtz v3, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "coordinate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 120
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v2, sb:Ljava/lang/StringBuilder;
    const-wide/16 v3, 0x0

    cmpg-double v3, p0, v3

    if-gez v3, :cond_2

    .line 124
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    neg-double p0, p0

    .line 128
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 129
    .local v0, degrees:I
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    const-string v3, "/1,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    int-to-double v3, v0

    sub-double/2addr p0, v3

    .line 132
    mul-double/2addr p0, v5

    .line 133
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 134
    .local v1, minutes:I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    const-string v3, "/1,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    int-to-double v3, v1

    sub-double/2addr p0, v3

    .line 137
    mul-double/2addr p0, v5

    .line 138
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 139
    const-string v3, "/1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static locationConvert(D)[D
    .locals 9
    .parameter "coordinate"

    .prologue
    const-wide/high16 v7, 0x404e

    .line 144
    const-wide v4, -0x3f99800000000000L

    cmpg-double v4, p0, v4

    if-ltz v4, :cond_0

    const-wide v4, 0x4066800000000000L

    cmpl-double v4, p0, v4

    if-gtz v4, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "coordinate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 149
    :cond_1
    const-wide/16 v4, 0x0

    cmpg-double v4, p0, v4

    if-gez v4, :cond_2

    .line 150
    neg-double p0, p0

    .line 153
    :cond_2
    const/4 v4, 0x3

    new-array v3, v4, [D

    .line 155
    .local v3, result:[D
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 157
    .local v1, degrees:I
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "locationConvert : degrees["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v4, 0x0

    int-to-double v5, v1

    aput-wide v5, v3, v4

    .line 160
    int-to-double v4, v1

    sub-double/2addr p0, v4

    .line 161
    mul-double/2addr p0, v7

    .line 162
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 164
    .local v2, minutes:I
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "locationConvert : minutes["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v4, 0x1

    int-to-double v5, v2

    aput-wide v5, v3, v4

    .line 167
    int-to-double v4, v2

    sub-double/2addr p0, v4

    .line 168
    mul-double/2addr p0, v7

    .line 170
    const-wide v4, 0x408f400000000000L

    mul-double/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 171
    .local v0, coordi:I
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "locationConvert : coordi["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v4, 0x2

    int-to-double v5, v0

    aput-wide v5, v3, v4

    .line 175
    return-object v3
.end method

.method private static longitudeValueToEorW(D)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 234
    const-wide/16 v1, 0x0

    cmpl-double v1, p0, v1

    if-lez v1, :cond_0

    .line 235
    const-string v0, "E"

    .line 239
    .local v0, result:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 237
    .end local v0           #result:Ljava/lang/String;
    :cond_0
    const-string v0, "W"

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method private static pack([BIIZ)I
    .locals 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "littleEndian"

    .prologue
    .line 514
    const/4 v1, 0x1

    .line 515
    .local v1, step:I
    if-eqz p3, :cond_0

    .line 516
    add-int/lit8 v3, p2, -0x1

    add-int/2addr p1, v3

    .line 517
    const/4 v1, -0x1

    .line 520
    :cond_0
    const/4 v2, 0x0

    .local v2, value:I
    move v0, p2

    .line 521
    .end local p2
    .local v0, length:I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0           #length:I
    .restart local p2
    if-lez v0, :cond_1

    .line 522
    shl-int/lit8 v3, v2, 0x8

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 523
    add-int/2addr p1, v1

    move v0, p2

    .end local p2
    .restart local v0       #length:I
    goto :goto_0

    .line 525
    .end local v0           #length:I
    .restart local p2
    :cond_1
    return v2
.end method

.method public static setExif(Ljava/lang/String;Ljava/lang/String;FLandroid/location/Location;IILjava/lang/String;ILjava/lang/String;)V
    .locals 21
    .parameter "targetFilePath"
    .parameter "flashMode"
    .parameter "focalLength"
    .parameter "loc"
    .parameter "imageWidth"
    .parameter "imageLength"
    .parameter "iso"
    .parameter "degree"
    .parameter "whiteBalace"

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 41
    .local v3, dateTaken:J
    const-string v18, "yyyy:MM:dd kk:mm:ss"

    move-object/from16 v0, v18

    invoke-static {v0, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 44
    .local v15, nowTime:Ljava/lang/String;
    :try_start_0
    new-instance v6, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 46
    .local v6, exif:Landroid/media/ExifInterface;
    const-string v18, "DateTime"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v15}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    if-eqz p1, :cond_0

    .line 49
    const-string v18, "Flash"

    invoke-static/range {p1 .. p1}, Lcom/lge/camera/util/ExifUtil;->convertFlashModeToExifValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    const/high16 v18, -0x4080

    cmpl-float v18, p2, v18

    if-lez v18, :cond_1

    .line 53
    const-string v18, "FocalLength"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v20, 0x42c8

    mul-float v20, v20, p2

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/100"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_1
    if-eqz p3, :cond_2

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    .line 59
    .local v9, latitude:D
    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    .line 60
    .local v13, longitude:D
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v18, "yyyy:MM:dd"

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, dateStamp:Ljava/text/SimpleDateFormat;
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v18, "kk/1,mm/1,ss/1"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 62
    .local v16, timeStamp:Ljava/text/SimpleDateFormat;
    const-string v18, "UTC"

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v17

    .line 63
    .local v17, tzUTC:Ljava/util/TimeZone;
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 64
    invoke-virtual/range {v16 .. v17}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 66
    const-string v18, "CameraApp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Lat:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " LON:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-static {v9, v10, v0}, Lcom/lge/camera/util/ExifUtil;->convertLocation(DI)Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, lat_str:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/lge/camera/util/ExifUtil;->latitudeValueToNorS(D)Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, lat_str_ref:Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-static {v13, v14, v0}, Lcom/lge/camera/util/ExifUtil;->convertLocation(DI)Ljava/lang/String;

    move-result-object v11

    .line 74
    .local v11, lon_str:Ljava/lang/String;
    invoke-static {v13, v14}, Lcom/lge/camera/util/ExifUtil;->longitudeValueToEorW(D)Ljava/lang/String;

    move-result-object v12

    .line 79
    .local v12, lon_str_ref:Ljava/lang/String;
    const-string v18, "GPSDateStamp"

    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getTime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v18, "GPSTimeStamp"

    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getTime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v18, "GPSLatitude"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v18, "GPSLatitudeRef"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v18, "GPSLongitude"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v18, "GPSLongitudeRef"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v12}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v2           #dateStamp:Ljava/text/SimpleDateFormat;
    .end local v7           #lat_str:Ljava/lang/String;
    .end local v8           #lat_str_ref:Ljava/lang/String;
    .end local v9           #latitude:D
    .end local v11           #lon_str:Ljava/lang/String;
    .end local v12           #lon_str_ref:Ljava/lang/String;
    .end local v13           #longitude:D
    .end local v16           #timeStamp:Ljava/text/SimpleDateFormat;
    .end local v17           #tzUTC:Ljava/util/TimeZone;
    :cond_2
    const-string v18, "DateTimeOriginal"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v15}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v18, "DateTimeDigitized"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v15}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v18, "ImageWidth"

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v18, "ImageLength"

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    if-eqz p6, :cond_3

    .line 94
    const-string v18, "ISOSpeedRatings"

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_3
    const-string v18, "Make"

    const-string v19, "LG Electronics"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v18, "Model"

    sget-object v19, Lcom/lge/camera/properties/CameraConstants;->EXIF_STR_MODEL:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v18, "Orientation"

    invoke-static/range {p7 .. p7}, Lcom/lge/camera/util/ExifUtil;->convertDegreeToExifOrientation(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    if-eqz p8, :cond_4

    .line 100
    const-string v18, "WhiteBalance"

    invoke-static/range {p8 .. p8}, Lcom/lge/camera/util/ExifUtil;->convertWbModeToExifValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_4
    invoke-virtual {v6}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v6           #exif:Landroid/media/ExifInterface;
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v5

    .line 105
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setNewExifInformation([BIIIIILandroid/location/Location;F)[B
    .locals 8
    .parameter "originalByteArray"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"
    .parameter "loc"
    .parameter "focalLength"

    .prologue
    .line 534
    const/4 v7, 0x0

    .line 536
    .local v7, generatedExifJpg:[B
    :try_start_0
    invoke-static {p0, p4, p5}, Lcom/lge/camera/util/Util;->makeBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 537
    .local v1, thumbBitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 538
    const-string v0, "CameraApp"

    const-string v2, "originalBitmap is null"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const/4 v0, 0x0

    .line 564
    .end local v1           #thumbBitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 542
    .restart local v1       #thumbBitmap:Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p7}, Lcom/lge/olaworks/library/Exif;->setFocalLength(F)V

    .line 544
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 546
    :cond_1
    invoke-static {p0, v1, p6, p3}, Lcom/lge/olaworks/library/Exif;->processNewExif([BLandroid/graphics/Bitmap;Landroid/location/Location;I)[B

    move-result-object v7

    .line 552
    :goto_1
    if-nez v7, :cond_2

    .line 553
    const-string v0, "CameraApp"

    const-string v2, "processNewExif() is failed"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v7

    .line 564
    goto :goto_0

    :cond_3
    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p6

    move v5, p3

    .line 549
    invoke-static/range {v0 .. v5}, Lcom/lge/olaworks/library/Exif;->processNewExif([BLandroid/graphics/Bitmap;IILandroid/location/Location;I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_1

    .line 558
    .end local v1           #thumbBitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    .line 559
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "CameraApp"

    const-string v2, "EXIF data insert fail."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 562
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setNewExifInformation([BILandroid/location/Location;F)[B
    .locals 8
    .parameter "originalByteArray"
    .parameter "orientation"
    .parameter "loc"
    .parameter "focalLength"

    .prologue
    const/4 v1, 0x0

    .line 530
    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v2, v1

    move v3, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/lge/camera/util/ExifUtil;->setNewExifInformation([BIIIIILandroid/location/Location;F)[B

    move-result-object v0

    return-object v0
.end method
