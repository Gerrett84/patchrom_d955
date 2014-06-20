.class public Lcom/lge/camera/module/DualCameraShot;
.super Lcom/lge/camera/module/Module;
.source "DualCameraShot.java"


# instance fields
.field private mDateTaken:[J

.field private mSaveFileName:Ljava/lang/String;

.field private threadComplete:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .parameter "function"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1}, Lcom/lge/camera/module/Module;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 61
    iput-object v0, p0, Lcom/lge/camera/module/DualCameraShot;->threadComplete:Ljava/lang/Thread;

    .line 62
    iput-object v0, p0, Lcom/lge/camera/module/DualCameraShot;->mSaveFileName:Ljava/lang/String;

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/lge/camera/module/DualCameraShot;->mDateTaken:[J

    .line 30
    const-string v0, "CameraApp"

    const-string v1, "Dual Camera Module Create !!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/module/DualCameraShot;[B)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/lge/camera/module/DualCameraShot;->saveResultImage([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/lge/camera/module/DualCameraShot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/lge/camera/module/DualCameraShot;->doComplete()V

    return-void
.end method

.method private addImage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .parameter "file_name"
    .parameter "dateTaken"
    .parameter "directory"
    .parameter "output_img_path"
    .parameter "degree"

    .prologue
    .line 216
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_picturesize"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 217
    .local v12, sizeString:Ljava/lang/String;
    invoke-static {v12}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v11

    .line 219
    .local v11, size:[I
    if-eqz p5, :cond_0

    .line 220
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, -0x4080

    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    const/4 v1, 0x0

    aget v5, v11, v1

    const/4 v1, 0x1

    aget v6, v11, v1

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p5

    move/from16 v8, p6

    invoke-static/range {v1 .. v9}, Lcom/lge/camera/util/ExifUtil;->setExif(Ljava/lang/String;Ljava/lang/String;FLandroid/location/Location;IILjava/lang/String;ILjava/lang/String;)V

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getImageHandler(Z)Lcom/lge/camera/util/ImageHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v7, p4

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/lge/camera/util/ImageHandler;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v10

    .line 237
    .local v10, ImageUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p1}, Lcom/lge/camera/ControllerFunction;->setSavedFileName(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v10}, Lcom/lge/camera/ControllerFunction;->setSavedImageUri(Landroid/net/Uri;)V

    .line 239
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v10}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 240
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_uplus_box"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p5

    invoke-static {v1, v0, v2}, Lcom/lge/camera/util/Util;->requestUpBoxBackupPhoto(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 241
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method private doComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 80
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Landroid/hardware/Camera$Parameters;Z)Z

    .line 83
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.OnDelayOff"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 86
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 87
    .local v1, params:Landroid/hardware/Camera$Parameters;
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-interface {v2, v3, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1           #params:Landroid/hardware/Camera$Parameters;
    :cond_0
    :goto_0
    return-void

    .line 90
    .restart local v1       #params:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "DualCameraShot: setParameters Exception"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private rotateJpeg([BI)[B
    .locals 5
    .parameter "jpegData"
    .parameter "degree"

    .prologue
    .line 245
    const/16 v1, 0x64

    .line 246
    .local v1, jpegQuality:I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 247
    .local v2, jpegRotated:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/lge/camera/util/Util;->makeBitmap([BZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 248
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p2}, Lcom/lge/camera/util/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 249
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 250
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 251
    const/4 v0, 0x0

    .line 252
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private saveOutputImage([BLjava/lang/String;Ljava/lang/String;[JI)Z
    .locals 4
    .parameter "jpgeData"
    .parameter "directory"
    .parameter "filename"
    .parameter "dateTaken"
    .parameter "orientation"

    .prologue
    .line 161
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, ret:Z
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    invoke-static {p1, p2, p3}, Lcom/lge/camera/module/DualCameraShot;->saveOutputJpeg([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 168
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 169
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DualCameraShot - saveOutputImage error ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_0
    return v0

    .line 173
    :cond_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveOutputImage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static saveOutputJpeg([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "jpegData"
    .parameter "directory"
    .parameter "filename"

    .prologue
    const/4 v6, 0x0

    .line 178
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveOutputJpeg-start:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/4 v4, 0x0

    .line 182
    .local v4, outputStream:Ljava/io/OutputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 184
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 186
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .local v3, file:Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 188
    .end local v4           #outputStream:Ljava/io/OutputStream;
    .local v5, outputStream:Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v5, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 199
    if-eqz v5, :cond_4

    .line 201
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 205
    :goto_0
    const/4 v4, 0x0

    .line 207
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    :goto_1
    const/4 v3, 0x0

    .line 209
    const-string v6, "CameraApp"

    const-string v7, "saveOutputJpeg-end"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v6, 0x1

    .end local v0           #dir:Ljava/io/File;
    :goto_2
    return v6

    .line 202
    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v0       #dir:Ljava/io/File;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 203
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 190
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/File;
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 191
    .local v2, ex:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    const-string v7, "CameraApp"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    if-eqz v4, :cond_1

    .line 201
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 205
    :goto_4
    const/4 v4, 0x0

    .line 207
    :cond_1
    const/4 v3, 0x0

    .restart local v3       #file:Ljava/io/File;
    goto :goto_2

    .line 202
    .end local v3           #file:Ljava/io/File;
    :catch_2
    move-exception v1

    .line 203
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 194
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 195
    .local v2, ex:Ljava/io/IOException;
    :goto_5
    :try_start_5
    const-string v7, "CameraApp"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 199
    if-eqz v4, :cond_2

    .line 201
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 205
    :goto_6
    const/4 v4, 0x0

    .line 207
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #file:Ljava/io/File;
    goto :goto_2

    .line 202
    .end local v3           #file:Ljava/io/File;
    :catch_4
    move-exception v1

    .line 203
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 199
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_7
    if-eqz v4, :cond_3

    .line 201
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 205
    :goto_8
    const/4 v4, 0x0

    .line 207
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #file:Ljava/io/File;
    throw v6

    .line 202
    .end local v3           #file:Ljava/io/File;
    :catch_5
    move-exception v1

    .line 203
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 199
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v0       #dir:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    goto :goto_7

    .line 194
    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    goto :goto_5

    .line 190
    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    goto :goto_3

    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    :cond_4
    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method private saveResultImage([B)Z
    .locals 19
    .parameter "jpegData"

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mSaveFileName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 106
    const-string v2, "CameraApp"

    const-string v3, "File name is null! return."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v2, 0x0

    .line 157
    :goto_0
    return v2

    .line 110
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 111
    .local v10, dateTaken:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, directory:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/DualCameraShot;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, bounding_file_name_with_extension:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 114
    .local v13, output_img_path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v7

    .line 115
    .local v7, currDegree:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mDateTaken:[J

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    aput-wide v8, v2, v3

    .line 116
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file_name = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/module/DualCameraShot;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", directory = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", bounding_file_name_with_extension = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", output_img_path = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", mStartOrientation = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/16 v17, 0x5a

    .line 124
    .local v17, degree_90:I
    const/16 v15, 0xb4

    .line 125
    .local v15, degree_180:I
    const/16 v16, 0x10e

    .line 126
    .local v16, degree_270:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/16 v2, 0x5a

    if-eq v7, v2, :cond_1

    const/16 v2, 0x10e

    if-ne v7, v2, :cond_2

    .line 130
    :cond_1
    const/16 v2, 0xb4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/lge/camera/module/DualCameraShot;->rotateJpeg([BI)[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/module/DualCameraShot;->mDateTaken:[J

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/lge/camera/module/DualCameraShot;->saveOutputImage([BLjava/lang/String;Ljava/lang/String;[JI)Z

    move-result v18

    .line 145
    .local v18, ret:Z
    :goto_1
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_3

    .line 146
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/module/DualCameraShot;->mSaveFileName:Ljava/lang/String;

    move-object/from16 v8, p0

    move-object v12, v4

    move v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/lge/camera/module/DualCameraShot;->addImage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    .line 147
    const-string v2, "CameraApp"

    const-string v3, "The original dual camera image is saved."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v2, v3, v6}, Lcom/lge/camera/ControllerFunction;->setLastThumb(Landroid/net/Uri;Z)V

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->updateThumbnailButton()V

    .line 151
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mSaveFileName:Ljava/lang/String;

    .line 152
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 137
    .end local v18           #ret:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/module/DualCameraShot;->mDateTaken:[J

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/lge/camera/module/DualCameraShot;->saveOutputImage([BLjava/lang/String;Ljava/lang/String;[JI)Z

    move-result v18

    .restart local v18       #ret:Z
    goto :goto_1

    .line 154
    :cond_3
    const-string v2, "CameraApp"

    const-string v3, "Cannot save original dual camera image."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mSaveFileName:Ljava/lang/String;

    .line 157
    const/4 v2, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public checkCurrentShotMode()Z
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_dual_camera"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public jpegCallbackOnPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 66
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/util/FileNamer;->getFileName(Landroid/content/Context;IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/module/DualCameraShot;->mSaveFileName:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/camera/module/DualCameraShot$2;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/module/DualCameraShot$2;-><init>(Lcom/lge/camera/module/DualCameraShot;[B)V

    const-string v2, "complete_Dual_Camera"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/module/DualCameraShot;->threadComplete:Ljava/lang/Thread;

    .line 76
    iget-object v0, p0, Lcom/lge/camera/module/DualCameraShot;->threadComplete:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    return-void
.end method

.method public stopByUserAction()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public takePicture()Z
    .locals 2

    .prologue
    .line 42
    const-string v0, "CameraApp"

    const-string v1, "Dual Camera Module takePicture...."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/module/DualCameraShot$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/DualCameraShot$1;-><init>(Lcom/lge/camera/module/DualCameraShot;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 58
    const/4 v0, 0x1

    return v0
.end method
