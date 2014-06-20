.class public Lcom/lge/morpho/utils/multimedia/JpegHandler;
.super Ljava/lang/Object;
.source "JpegHandler.java"


# static fields
.field public static final ROTATION_180:I = 0xb4

.field public static final ROTATION_270:I = 0x10e

.field public static final ROTATION_90:I = 0x5a

.field public static final ROTATION_NORMAL:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 6
    .parameter "bitmap"
    .parameter "filePath"
    .parameter "encodeQuality"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 40
    .local v0, byte_os:Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 41
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 42
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 43
    .local v3, jpegByteArray:[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 46
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 48
    .local v2, fileOutput:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    :try_start_0
    array-length v5, v3

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 49
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 54
    :goto_0
    const/4 v2, 0x0

    .line 56
    return-void

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    const-string v4, "CameraApp"

    const-string v5, "compressBitmap error : "

    invoke-static {v4, v5, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 54
    const/4 v2, 0x0

    .line 53
    throw v4
.end method

.method public static getImageSize(Ljava/lang/String;[I[I)V
    .locals 3
    .parameter "filepath"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 66
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 67
    .local v0, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 68
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 69
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v1, p1, v2

    .line 70
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v1, p2, v2

    .line 71
    return-void
.end method

.method public static latitudeValueToNorS(D)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 248
    const-wide/16 v1, 0x0

    cmpl-double v1, p0, v1

    if-lez v1, :cond_0

    .line 249
    const-string v0, "N"

    .line 254
    .local v0, result:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 251
    .end local v0           #result:Ljava/lang/String;
    :cond_0
    const-string v0, "S"

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method public static locationValueToString(D)Ljava/lang/String;
    .locals 9
    .parameter "value"

    .prologue
    const-wide/high16 v7, 0x404e

    .line 210
    const-string v3, ""

    .line 217
    .local v3, result:Ljava/lang/String;
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    .line 218
    .local v0, d:Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v1

    .line 219
    .local v1, degrees:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/1,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 222
    int-to-double v5, v1

    sub-double/2addr p0, v5

    .line 223
    mul-double/2addr p0, v7

    .line 226
    new-instance v0, Ljava/lang/Double;

    .end local v0           #d:Ljava/lang/Double;
    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    .line 227
    .restart local v0       #d:Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v2

    .line 228
    .local v2, minutes:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/1,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    int-to-double v5, v2

    sub-double/2addr p0, v5

    .line 232
    mul-double/2addr p0, v7

    .line 235
    new-instance v0, Ljava/lang/Double;

    .end local v0           #d:Ljava/lang/Double;
    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    .line 236
    .restart local v0       #d:Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v4

    .line 237
    .local v4, seconds:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 239
    return-object v3
.end method

.method public static longitudeValueToEorW(D)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 263
    const-wide/16 v1, 0x0

    cmpl-double v1, p0, v1

    if-lez v1, :cond_0

    .line 264
    const-string v0, "E"

    .line 269
    .local v0, result:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 266
    .end local v0           #result:Ljava/lang/String;
    :cond_0
    const-string v0, "W"

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method public static saveAsFile([BLjava/lang/String;)V
    .locals 4
    .parameter "image"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, fileStream:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 84
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 89
    :goto_0
    const/4 v1, 0x0

    .line 91
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v2, "CameraApp"

    const-string v3, "saveAsFile error : "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 89
    const/4 v1, 0x0

    .line 88
    throw v2
.end method

.method public static setExifData(Ljava/lang/String;Landroid/location/Location;I)V
    .locals 13
    .parameter "filePath"
    .parameter "location"
    .parameter "orientation"

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 106
    :cond_0
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 108
    .local v3, exif:Landroid/media/ExifInterface;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 109
    .local v0, dateTaken:J
    const-string v10, "yyyy:MM:dd kk:mm:ss"

    invoke-static {v10, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, nowTime:Ljava/lang/String;
    const-string v10, "DateTime"

    invoke-virtual {v3, v10, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v10, "DateTimeOriginal"

    invoke-virtual {v3, v10, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v10, "DateTimeDigitized"

    invoke-virtual {v3, v10, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v10, "Make"

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v10, "Model"

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v9, 0x1

    .line 119
    .local v9, orientationRotate:I
    sparse-switch p2, :sswitch_data_0

    .line 130
    const/4 v9, 0x1

    .line 133
    :goto_1
    const-string v10, "Orientation"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    if-eqz p1, :cond_1

    .line 137
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 138
    .local v4, latitude:D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 140
    .local v6, longitude:D
    const-string v10, "GPSLatitude"

    invoke-static {v4, v5}, Lcom/lge/morpho/utils/multimedia/JpegHandler;->locationValueToString(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v10, "GPSLatitudeRef"

    invoke-static {v4, v5}, Lcom/lge/morpho/utils/multimedia/JpegHandler;->latitudeValueToNorS(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v10, "GPSLongitude"

    invoke-static {v6, v7}, Lcom/lge/morpho/utils/multimedia/JpegHandler;->locationValueToString(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v10, "GPSLongitudeRef"

    invoke-static {v6, v7}, Lcom/lge/morpho/utils/multimedia/JpegHandler;->longitudeValueToEorW(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .end local v4           #latitude:D
    .end local v6           #longitude:D
    :cond_1
    invoke-virtual {v3}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v0           #dateTaken:J
    .end local v3           #exif:Landroid/media/ExifInterface;
    .end local v8           #nowTime:Ljava/lang/String;
    .end local v9           #orientationRotate:I
    :catch_0
    move-exception v2

    .line 149
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 121
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #dateTaken:J
    .restart local v3       #exif:Landroid/media/ExifInterface;
    .restart local v8       #nowTime:Ljava/lang/String;
    .restart local v9       #orientationRotate:I
    :sswitch_0
    const/4 v9, 0x6

    .line 122
    goto :goto_1

    .line 124
    :sswitch_1
    const/4 v9, 0x3

    .line 125
    goto :goto_1

    .line 127
    :sswitch_2
    const/16 v9, 0x8

    .line 128
    goto :goto_1

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public static setInExif(Ljava/lang/String;Landroid/location/Location;)V
    .locals 21
    .parameter "filePath"
    .parameter "location"

    .prologue
    .line 161
    if-nez p0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 166
    .local v3, dateTaken:J
    const-string v18, "yyyy:MM:dd kk:mm:ss"

    move-object/from16 v0, v18

    invoke-static {v0, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 169
    .local v15, nowTime:Ljava/lang/String;
    :try_start_0
    new-instance v6, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 170
    .local v6, exif:Landroid/media/ExifInterface;
    const-string v18, "DateTime"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v15}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v18, "DateTimeOriginal"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v15}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v18, "DateTimeDigitized"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v15}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v18, "Make"

    sget-object v19, Landroid/os/Build;->BRAND:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v18, "Model"

    sget-object v19, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    if-eqz p1, :cond_1

    .line 178
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    .line 179
    .local v9, latitude:D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    .line 180
    .local v13, longitude:D
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v18, "yyyy:MM:dd"

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 181
    .local v2, dateStamp:Ljava/text/SimpleDateFormat;
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v18, "kk/1,mm/1,ss/1"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 182
    .local v16, timeStamp:Ljava/text/SimpleDateFormat;
    const-string v18, "UTC"

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v17

    .line 183
    .local v17, tzUTC:Ljava/util/TimeZone;
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 184
    invoke-virtual/range {v16 .. v17}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 186
    invoke-static {v9, v10}, Lcom/lge/morpho/utils/multimedia/JpegHandler;->locationValueToString(D)Ljava/lang/String;

    move-result-object v7

    .line 187
    .local v7, lat_str:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/lge/morpho/utils/multimedia/JpegHandler;->latitudeValueToNorS(D)Ljava/lang/String;

    move-result-object v8

    .line 189
    .local v8, lat_str_ref:Ljava/lang/String;
    invoke-static {v13, v14}, Lcom/lge/morpho/utils/multimedia/JpegHandler;->locationValueToString(D)Ljava/lang/String;

    move-result-object v11

    .line 190
    .local v11, lon_str:Ljava/lang/String;
    invoke-static {v13, v14}, Lcom/lge/morpho/utils/multimedia/JpegHandler;->longitudeValueToEorW(D)Ljava/lang/String;

    move-result-object v12

    .line 192
    .local v12, lon_str_ref:Ljava/lang/String;
    const-string v18, "GPSDateStamp"

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v18, "GPSTimeStamp"

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

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

    .line 194
    const-string v18, "GPSLatitude"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v18, "GPSLatitudeRef"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v18, "GPSLongitude"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v18, "GPSLongitudeRef"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v12}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .end local v2           #dateStamp:Ljava/text/SimpleDateFormat;
    .end local v7           #lat_str:Ljava/lang/String;
    .end local v8           #lat_str_ref:Ljava/lang/String;
    .end local v9           #latitude:D
    .end local v11           #lon_str:Ljava/lang/String;
    .end local v12           #lon_str_ref:Ljava/lang/String;
    .end local v13           #longitude:D
    .end local v16           #timeStamp:Ljava/text/SimpleDateFormat;
    .end local v17           #tzUTC:Ljava/util/TimeZone;
    :cond_1
    invoke-virtual {v6}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 200
    .end local v6           #exif:Landroid/media/ExifInterface;
    :catch_0
    move-exception v5

    .line 201
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method
