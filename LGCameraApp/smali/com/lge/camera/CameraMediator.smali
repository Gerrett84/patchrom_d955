.class public Lcom/lge/camera/CameraMediator;
.super Lcom/lge/camera/Mediator;
.source "CameraMediator.java"

# interfaces
.implements Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;


# instance fields
.field private isCaptureIntent:Z

.field private mBurstShotStop:Z

.field private mCaptureData:[B

.field private mContinuousShotAlived:Z

.field private mCropValue:Ljava/lang/String;

.field private mCurrentIAMode:I

.field protected mFacePreviewController:Lcom/lge/camera/controller/camera/FacePreviewController;

.field private final mFaceValues:[[I

.field private mFocalLength:F

.field protected mFreePanoramaController:Lcom/lge/camera/controller/camera/FreePanoramaController;

.field private mImageListRotation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mImageListUri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mImageSaver:Lcom/lge/camera/util/ImageSavers;

.field private mIntentFrom:Ljava/lang/String;

.field protected mPanoramaController:Lcom/lge/camera/controller/camera/PanoramaController;

.field private mPreSmartModePicSize:Ljava/lang/String;

.field private mPreviousCameraAutoReviewValue:Ljava/lang/String;

.field private mPreviousShotMode:Ljava/lang/String;

.field private mRequestSingleImage:Z

.field private mSaveUri:Landroid/net/Uri;

.field private mTimemachineHasPictures:Z

.field protected mTimerController:Lcom/lge/camera/controller/camera/TimerController;


# direct methods
.method public constructor <init>(Lcom/lge/camera/CameraApp;)V
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 84
    invoke-direct {p0, p1}, Lcom/lge/camera/Mediator;-><init>(Lcom/lge/camera/Mediator$ActivityBridge;)V

    .line 68
    const-string v0, "shotmode_normal"

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mPreviousShotMode:Ljava/lang/String;

    .line 71
    iput-boolean v4, p0, Lcom/lge/camera/CameraMediator;->mBurstShotStop:Z

    .line 72
    iput-object v1, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListRotation:Ljava/util/ArrayList;

    .line 76
    iput-object v1, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    .line 77
    iput-boolean v4, p0, Lcom/lge/camera/CameraMediator;->mTimemachineHasPictures:Z

    .line 79
    iput-object v1, p0, Lcom/lge/camera/CameraMediator;->mPreSmartModePicSize:Ljava/lang/String;

    .line 80
    iput v4, p0, Lcom/lge/camera/CameraMediator;->mCurrentIAMode:I

    .line 81
    iput-object v1, p0, Lcom/lge/camera/CameraMediator;->mPreviousCameraAutoReviewValue:Ljava/lang/String;

    .line 716
    iput-object v1, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    .line 719
    iput-boolean v4, p0, Lcom/lge/camera/CameraMediator;->mRequestSingleImage:Z

    .line 1121
    iput-boolean v4, p0, Lcom/lge/camera/CameraMediator;->isCaptureIntent:Z

    .line 1189
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mFaceValues:[[I

    .line 85
    invoke-virtual {p0, v4}, Lcom/lge/camera/CameraMediator;->setApplicationMode(I)V

    .line 86
    return-void

    .line 1189
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private addImageToImageHandler([B[BLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/graphics/Bitmap;I)Z
    .locals 14
    .parameter "exifData"
    .parameter "data"
    .parameter "fileName"
    .parameter "fileExt"
    .parameter "dateTaken"
    .parameter "path"
    .parameter "bitmap"
    .parameter "imageRotationDegree"

    .prologue
    .line 570
    const/4 v13, 0x0

    .line 572
    .local v13, returnValue:Z
    :try_start_0
    const-string v1, "CameraApp"

    const-string v3, "imageHandler.addImage-start "

    invoke-static {v1, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    if-nez p3, :cond_0

    .line 574
    const-string v1, "CameraApp"

    const-string v3, "error get file name!"

    invoke-static {v1, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const/4 v1, 0x0

    .line 607
    :goto_0
    return v1

    .line 578
    :cond_0
    const/4 v2, 0x0

    .line 579
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->hasSaveURI()Z

    move-result v1

    if-nez v1, :cond_1

    .line 580
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 583
    :cond_1
    if-eqz p1, :cond_4

    move-object v10, p1

    .line 584
    .local v10, imageData:[B
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v3, p3

    move-wide/from16 v4, p5

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    move/from16 v11, p9

    invoke-virtual/range {v1 .. v11}, Lcom/lge/camera/util/ImageHandler;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BI)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    .line 590
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->hasSaveURI()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 591
    const-string v1, "content"

    iget-object v3, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 592
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    .line 598
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    .line 599
    const/4 v13, 0x1

    .line 605
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v10           #imageData:[B
    :cond_3
    :goto_3
    const-string v1, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageHandler.addImage-end "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v13

    .line 607
    goto/16 :goto_0

    .restart local v2       #cr:Landroid/content/ContentResolver;
    :cond_4
    move-object/from16 v10, p2

    .line 583
    goto/16 :goto_1

    .line 594
    .restart local v10       #imageData:[B
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 601
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v10           #imageData:[B
    :catch_0
    move-exception v12

    .line 602
    .local v12, ex:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v3, "Exception while compressing image."

    invoke-static {v1, v3, v12}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 603
    const/4 v13, 0x0

    goto :goto_3
.end method

.method private checkFreespace()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 1320
    const-string v5, "CameraApp"

    const-string v6, "CheckFreespace"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    const-string v3, ".jpg"

    .line 1323
    .local v3, defaultFileExtension:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1324
    .local v0, OriImage:Ljava/io/File;
    const/4 v2, 0x0

    .line 1325
    .local v2, checkFilePath:Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1326
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v6}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getSavedFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1327
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cameraCaptureFilePath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    new-instance v0, Ljava/io/File;

    .end local v0           #OriImage:Ljava/io/File;
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1333
    .restart local v0       #OriImage:Ljava/io/File;
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    .line 1334
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1335
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FilePathFromRequestApp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getRequestedAttachFileStorage()I

    move-result v1

    .line 1339
    .local v1, RequestAppStorageID:I
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 1340
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mStorageController.getFreeSpace(RequestAppStorageID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v7, v1}, Lcom/lge/camera/controller/StorageController;->getFreeSpace(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OriImage.length(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v5, v1}, Lcom/lge/camera/controller/StorageController;->getFreeSpace(I)J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 1344
    const/4 v4, 0x1

    .line 1349
    .end local v1           #RequestAppStorageID:I
    :cond_0
    return v4
.end method

.method private getFileNameAndExt()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 416
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 417
    .local v0, fileNameAndExt:[Ljava/lang/String;
    const-string v2, ".tmp"

    aput-object v2, v0, v5

    .line 418
    const-string v2, ".jpg"

    aput-object v2, v0, v6

    .line 420
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->hasSaveURI()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    const-string v2, "content"

    iget-object v3, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 422
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    .local v1, fp:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 424
    aget-object v2, v0, v5

    if-eqz v2, :cond_0

    .line 425
    aget-object v2, v0, v5

    const-string v3, "^[^.]+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 426
    aget-object v2, v0, v5

    const-string v3, "\\.[a-zA-Z]+$"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 430
    .end local v1           #fp:Ljava/io/File;
    :cond_0
    return-object v0
.end method

.method private getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "fileName"

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->hasSaveURI()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 550
    const-string v1, "content"

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, returnPath:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 553
    .end local v0           #returnPath:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 554
    .restart local v0       #returnPath:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\.[a-zA-Z]+$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 557
    :cond_2
    if-nez v0, :cond_0

    .line 558
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 562
    .end local v0           #returnPath:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #returnPath:Ljava/lang/String;
    goto :goto_0
.end method

.method private setExifData([B)[B
    .locals 4
    .parameter "data"

    .prologue
    .line 531
    const/4 v0, 0x0

    .line 533
    .local v0, exifData:[B
    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/CameraMediator;->mFocalLength:F

    invoke-static {p1, v1, v2, v3}, Lcom/lge/camera/util/ExifUtil;->setNewExifInformation([BILandroid/location/Location;F)[B

    move-result-object v0

    .line 537
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isAttachMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    if-eqz v0, :cond_2

    .line 539
    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    .line 544
    :cond_1
    :goto_0
    return-object v0

    .line 541
    :cond_2
    iput-object p1, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    goto :goto_0
.end method

.method private stopContinuousShotOnPause()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 305
    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_continuous"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/module/Module;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 308
    const-string v2, "CameraApp"

    const-string v3, "Continuous shot is running, stop it."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->stopByUserAction()Z

    .line 311
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/SoundController;->stopSoundContinuous()V

    .line 312
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/module/ContinuousShot;

    invoke-virtual {v2}, Lcom/lge/camera/module/ContinuousShot;->waitForSaveDone()V

    .line 314
    const-string v2, "on"

    const-string v3, "key_camera_auto_review"

    invoke-virtual {p0, v3}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "on_delay_2sec"

    const-string v3, "key_camera_auto_review"

    invoke-virtual {p0, v3}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "on_delay_5sec"

    const-string v3, "key_camera_auto_review"

    invoke-virtual {p0, v3}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 317
    .local v0, autoReview:Z
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 318
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraStorageController;->isStorageAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 319
    const-string v2, "com.lge.camera.command.DisplayCameraPostview"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;)V

    .line 332
    .end local v0           #autoReview:Z
    :cond_2
    :goto_0
    return-void

    .line 321
    .restart local v0       #autoReview:Z
    :cond_3
    const-string v2, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 326
    .end local v0           #autoReview:Z
    :catch_0
    move-exception v1

    .line 327
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v2, "CameraApp"

    const-string v3, "ClassCastException : "

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 324
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v0       #autoReview:Z
    :cond_4
    :try_start_1
    const-string v2, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 328
    .end local v0           #autoReview:Z
    :catch_1
    move-exception v1

    .line 329
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v2, "CameraApp"

    const-string v3, "NullPointerException : "

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private stopShotModeOnPause()V
    .locals 2

    .prologue
    .line 335
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFullFrameContinuousShotSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_full_continuous"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    const-string v0, "CameraApp"

    const-string v1, "stopContinuousShotFullFrame"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/module/FullFrameContinuousShot;

    invoke-virtual {v0}, Lcom/lge/camera/module/FullFrameContinuousShot;->stopByOnPause()V

    .line 342
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isClearShotSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_clear_shot"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/module/Module;->stopByUserAction()V

    .line 346
    :cond_2
    return-void
.end method


# virtual methods
.method public beDirectlyGoingToCropGallery()Z
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mCropValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mIntentFrom:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkShotModeForZoomInOut()Z
    .locals 2

    .prologue
    .line 1653
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isTimerShotCountdown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isContinuousShotAlived()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isPanoramaStarted()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_free_panorama"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_panorama"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_dual_camera"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1659
    :cond_0
    const/4 v0, 0x0

    .line 1661
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkSupportVideoSize(Landroid/net/Uri;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 1903
    const/4 v0, 0x0

    return v0
.end method

.method public checkUpdateThumbnail()Z
    .locals 2

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v0}, Lcom/lge/camera/Mediator$ActivityBridge;->getPostviewRequestCode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1838
    const-string v0, "CameraApp"

    const-string v1, "UpdateThumbnailButton() return"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    const/4 v0, 0x0

    .line 1841
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected createControllers()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/lge/camera/controller/camera/CameraPreviewController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v0, Lcom/lge/camera/controller/camera/CameraQuickFunctionController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/CameraQuickFunctionController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    .line 148
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v0, Lcom/lge/camera/controller/camera/CameraIndicatorController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    .line 151
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v0, Lcom/lge/camera/controller/camera/CameraFocusController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/CameraFocusController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    .line 154
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v0, Lcom/lge/camera/controller/camera/CameraStorageController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/CameraStorageController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    .line 157
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v0, Lcom/lge/camera/controller/camera/PanoramaController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/PanoramaController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mPanoramaController:Lcom/lge/camera/controller/camera/PanoramaController;

    .line 160
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mPanoramaController:Lcom/lge/camera/controller/camera/PanoramaController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Lcom/lge/camera/controller/camera/FreePanoramaController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mFreePanoramaController:Lcom/lge/camera/controller/camera/FreePanoramaController;

    .line 163
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mFreePanoramaController:Lcom/lge/camera/controller/camera/FreePanoramaController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v0, Lcom/lge/camera/controller/camera/TimerController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/TimerController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mTimerController:Lcom/lge/camera/controller/camera/TimerController;

    .line 166
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mTimerController:Lcom/lge/camera/controller/camera/TimerController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v0, Lcom/lge/camera/controller/camera/FacePreviewController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/FacePreviewController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mFacePreviewController:Lcom/lge/camera/controller/camera/FacePreviewController;

    .line 169
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mFacePreviewController:Lcom/lge/camera/controller/camera/FacePreviewController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    .line 175
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-super {p0}, Lcom/lge/camera/Mediator;->createControllers()V

    .line 178
    return-void
.end method

.method protected createPreviewController()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/lge/camera/controller/camera/CameraPreviewController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    .line 135
    return-void
.end method

.method public deleteClearShotImages()Z
    .locals 9

    .prologue
    .line 1042
    const-string v6, "CameraApp"

    const-string v7, "deleteClearShotImages-start"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/camera/CameraStorageController;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v5

    .line 1044
    .local v5, path:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1045
    .local v0, clearShotFilename:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1047
    .local v3, fullFilePath:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    const/4 v6, 0x6

    if-ge v4, v6, :cond_2

    .line 1048
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClearShotImage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1049
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1051
    invoke-static {v3}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1052
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1053
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1054
    const-string v6, "CameraApp"

    const-string v7, "clear shot temp file delete fail."

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    .end local v2           #file:Ljava/io/File;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1057
    :cond_1
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file is not exist : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1060
    :catch_0
    move-exception v1

    .line 1061
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "deleteClearShotImages fail!:"

    invoke-static {v6, v7, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1063
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const-string v6, "CameraApp"

    const-string v7, "deleteClearShotImages-end"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    const/4 v6, 0x1

    return v6
.end method

.method public deleteImage(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 7
    .parameter "filename"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 1068
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/camera/CameraStorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v3

    .line 1070
    .local v3, path:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1071
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1072
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1073
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/lge/camera/util/ImageManager;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1075
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/lge/camera/CameraMediator;->mImageListRotation:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_1

    const/4 v0, 0x1

    .line 1076
    .local v0, equal:Z
    :goto_0
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1077
    .local v2, index:I
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1078
    if-eqz v0, :cond_0

    .line 1079
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mImageListRotation:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1081
    :cond_0
    const-string v5, "CameraApp"

    const-string v6, "deleted uri"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V

    .line 1086
    iget-object v4, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1090
    .end local v0           #equal:Z
    .end local v1           #file:Ljava/io/File;
    .end local v2           #index:I
    :goto_2
    return v4

    .restart local v1       #file:Ljava/io/File;
    :cond_1
    move v0, v4

    .line 1075
    goto :goto_0

    .line 1083
    .restart local v0       #equal:Z
    .restart local v2       #index:I
    :cond_2
    const-string v5, "CameraApp"

    const-string v6, "failure to delete uri!"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1089
    .end local v0           #equal:Z
    .end local v1           #file:Ljava/io/File;
    .end local v2           #index:I
    :cond_3
    const-string v4, "CameraApp"

    const-string v5, "failure delete image file (return -1)"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    const/4 v4, -0x1

    goto :goto_2
.end method

.method public deleteTimeMachineImages()Z
    .locals 9

    .prologue
    .line 1015
    const-string v6, "CameraApp"

    const-string v7, "deleteTimeMachineImages-start"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/camera/CameraStorageController;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v4

    .line 1017
    .local v4, path:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1018
    .local v5, timeMachineFilename:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1021
    .local v2, fullFilePath:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v6, 0x5

    if-ge v3, v6, :cond_2

    .line 1022
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TimeMachineImage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1023
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1025
    invoke-static {v2}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1026
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1028
    const-string v6, "CameraApp"

    const-string v7, "TMS temp file delete fail."

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    .end local v1           #file:Ljava/io/File;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1031
    :cond_1
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file is not exist : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "deleteTimeMachineImages fail!:"

    invoke-static {v6, v7, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1037
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v6, "CameraApp"

    const-string v7, "deleteTimeMachineImages-end"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    const/4 v6, 0x1

    return v6
.end method

.method public doAfterSaveImageSavers()V
    .locals 1

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getQueueCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 709
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isExitIgnoreDuringSaving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->setExitIgnoreDuringSaving(Z)V

    .line 711
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->deleteSavingProgressDialog()V

    .line 714
    :cond_0
    return-void
.end method

.method public doAttach()V
    .locals 3

    .prologue
    .line 976
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doAttach(),mSaveUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCropValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mCropValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mIntentFrom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mIntentFrom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mSavedImageUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mPausing:Z

    if-eqz v0, :cond_0

    .line 993
    :goto_0
    return-void

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mCropValue:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 983
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->doAttachNoCrop()V

    goto :goto_0

    .line 985
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->checkGalleryEnabledOnGuestMode(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 988
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->doAttachNoCrop()V

    goto :goto_0

    .line 990
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->doAttachCrop()V

    goto :goto_0
.end method

.method public doAttachCrop()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 904
    const/4 v6, 0x0

    .line 905
    .local v6, tempUri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 906
    .local v5, tempStream:Ljava/io/FileOutputStream;
    const-string v7, "CameraApp"

    const-string v8, "doAttachCrop()"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v7

    const-string v8, "crop-temp"

    invoke-virtual {v7, v8}, Lcom/lge/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 909
    .local v4, path:Ljava/io/File;
    if-nez v4, :cond_0

    .line 910
    const-string v7, "CameraApp"

    const-string v8, "doAttach\tcrop-temp file path is null"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 944
    invoke-static {v5}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    .line 973
    .end local v4           #path:Ljava/io/File;
    :goto_0
    return-void

    .line 914
    .restart local v4       #path:Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 915
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v7

    const-string v8, "crop-temp"

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Lcom/lge/camera/CameraActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 918
    if-eqz v5, :cond_1

    .line 920
    :try_start_2
    iget-object v7, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    if-eqz v7, :cond_4

    .line 921
    iget-object v7, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    invoke-virtual {v5, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 928
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 932
    :cond_1
    const/4 v5, 0x0

    .line 933
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 934
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tempUri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 944
    invoke-static {v5}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    .line 947
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 948
    .local v3, newExtras:Landroid/os/Bundle;
    iget-object v7, p0, Lcom/lge/camera/CameraMediator;->mCropValue:Ljava/lang/String;

    const-string v8, "circle"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 949
    const-string v7, "circleCrop"

    const-string v8, "true"

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    :cond_2
    iget-object v7, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    if-eqz v7, :cond_5

    .line 952
    const-string v7, "CameraApp"

    const-string v8, "mSaveUri"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const-string v7, "output"

    iget-object v8, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 967
    :cond_3
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.android.camera.action.CROP"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 969
    .local v1, cropIntent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    const-string v8, "image/*"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 970
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 971
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7, v1, v10}, Lcom/lge/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 972
    const/4 v3, 0x0

    .line 973
    goto :goto_0

    .line 923
    .end local v1           #cropIntent:Landroid/content/Intent;
    .end local v3           #newExtras:Landroid/os/Bundle;
    :cond_4
    :try_start_4
    const-string v7, "CameraApp"

    const-string v8, "doAttach tempStream is null!!!"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 928
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 944
    invoke-static {v5}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 928
    :catchall_0
    move-exception v7

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 935
    .end local v4           #path:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 936
    .local v2, ex:Ljava/io/FileNotFoundException;
    :try_start_7
    const-string v7, "CameraApp"

    const-string v8, "FileNotFoundException"

    invoke-static {v7, v8, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 937
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 944
    invoke-static {v5}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 939
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 940
    .local v2, ex:Ljava/io/IOException;
    :try_start_8
    const-string v7, "CameraApp"

    const-string v8, "IOException"

    invoke-static {v7, v8, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 941
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 944
    invoke-static {v5}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v7

    invoke-static {v5}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    throw v7

    .line 955
    .restart local v3       #newExtras:Landroid/os/Bundle;
    .restart local v4       #path:Ljava/io/File;
    :cond_5
    const-string v7, "CameraApp"

    const-string v8, "return-data"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const-string v7, "return-data"

    invoke-virtual {v3, v7, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 957
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 958
    .local v0, InExtra:Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 959
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "input extra = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const-string v7, "aspectX"

    const-string v8, "aspectX"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 961
    const-string v7, "aspectY"

    const-string v8, "aspectY"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 962
    const-string v7, "outputX"

    const-string v8, "outputX"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 963
    const-string v7, "outputY"

    const-string v8, "outputY"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1
.end method

.method public doAttachNoCrop()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 865
    const-string v3, "CameraApp"

    const-string v4, "doAttachNoCrop()"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iget-object v3, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 867
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->doAttachSaveUri()V

    .line 899
    :goto_0
    return-void

    .line 869
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 870
    iget-object v3, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    invoke-static {v3, v6}, Lcom/lge/camera/util/Util;->createCaptureBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 871
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "inline-data"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "data"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 872
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 873
    const-string v3, "CameraApp"

    const-string v4, "doAttach OK"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    invoke-virtual {p0, v7, v2}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(ILandroid/content/Intent;)V

    .line 875
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 878
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    const-string v3, "CameraApp"

    const-string v4, "doAttach mCaptureData is Null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    const/4 v0, 0x0

    .line 880
    .local v0, Orgbmp:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    if-nez v3, :cond_2

    .line 881
    const-string v3, "CameraApp"

    const-string v4, "doAttach mSavedImageUri null!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    invoke-virtual {p0, v6}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V

    goto :goto_0

    .line 885
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v3, v4, v6, v5}, Lcom/lge/camera/util/ImageManager;->loadBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 886
    if-nez v0, :cond_3

    .line 887
    const-string v3, "CameraApp"

    const-string v4, "LoadBitmap fail!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    invoke-virtual {p0, v6}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V

    goto :goto_0

    .line 891
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v4, "inline-data"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 892
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 893
    const-string v3, "CameraApp"

    const-string v4, "doAttach OK"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    invoke-virtual {p0, v7, v2}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(ILandroid/content/Intent;)V

    .line 895
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method public doAttachSaveUri()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 785
    const/4 v6, 0x0

    .line 786
    .local v6, outputStream:Ljava/io/OutputStream;
    const-string v9, "CameraApp"

    const-string v10, "doAttachSaveUri()"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->preProcessSaveUri()V

    .line 788
    invoke-direct {p0}, Lcom/lge/camera/CameraMediator;->checkFreespace()Z

    move-result v9

    if-nez v9, :cond_1

    .line 789
    const-string v9, "CameraApp"

    const-string v10, "===>Not Enough sotrage space!!!"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getRequestedAttachFileStorage()I

    move-result v7

    .line 791
    .local v7, requestedStorage:I
    const/4 v8, 0x0

    .line 793
    .local v8, storageFullNotifyingMessage:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 794
    const v9, 0x7f0b0068

    invoke-virtual {p0, v9}, Lcom/lge/camera/CameraMediator;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 799
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 800
    invoke-virtual {p0, v11}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V

    .line 857
    .end local v7           #requestedStorage:I
    .end local v8           #storageFullNotifyingMessage:Ljava/lang/String;
    :goto_1
    return-void

    .line 796
    .restart local v7       #requestedStorage:I
    .restart local v8       #storageFullNotifyingMessage:Ljava/lang/String;
    :cond_0
    const v9, 0x7f0b0066

    invoke-virtual {p0, v9}, Lcom/lge/camera/CameraMediator;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 805
    .end local v7           #requestedStorage:I
    .end local v8           #storageFullNotifyingMessage:Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 806
    .local v4, imguri:Landroid/net/Uri;
    iget-object v9, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v9, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 807
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "===>URL Is Not correct we will return URI :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->sendResultIntent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    invoke-static {v6}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 811
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 812
    if-nez v6, :cond_3

    .line 813
    const-string v9, "CameraApp"

    const-string v10, "===>outputStream null! cancel"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v9, "CameraApp"

    const-string v10, "doAttach CANCELED"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 853
    invoke-static {v6}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 818
    :cond_3
    :try_start_2
    iget-object v9, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    if-eqz v9, :cond_5

    .line 819
    iget-object v9, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    .line 845
    :goto_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isRemoveOrgFile()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 846
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->removeOrgFile()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 853
    :cond_4
    invoke-static {v6}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    .line 855
    const-string v9, "CameraApp"

    const-string v10, "doAttach OK"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-virtual {p0, v12}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V

    goto :goto_1

    .line 821
    :cond_5
    :try_start_3
    const-string v9, "CameraApp"

    const-string v10, "doAttach mCaptureData is null! so we recopy jpeg data to mSaveUri"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const/4 v5, 0x0

    .line 824
    .local v5, mFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 826
    .local v2, fis:Ljava/io/FileInputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v10}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getSavedFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 827
    .local v3, fullfilename:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    .end local v5           #mFile:Ljava/io/File;
    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 828
    .restart local v5       #mFile:Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2           #fis:Ljava/io/FileInputStream;
    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 830
    .restart local v2       #fis:Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-int v9, v9

    new-array v0, v9, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 832
    .local v0, data:[B
    :try_start_4
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    if-eq v9, v12, :cond_6

    .line 833
    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 834
    const-string v9, "CameraApp"

    const-string v10, "fis.read&write"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 842
    :cond_6
    :try_start_5
    invoke-static {v2}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 848
    .end local v0           #data:[B
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #fullfilename:Ljava/lang/String;
    .end local v4           #imguri:Landroid/net/Uri;
    .end local v5           #mFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 849
    .local v1, e:Ljava/lang/Exception;
    :try_start_6
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "outputStream error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 853
    invoke-static {v6}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 836
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #data:[B
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v3       #fullfilename:Ljava/lang/String;
    .restart local v4       #imguri:Landroid/net/Uri;
    .restart local v5       #mFile:Ljava/io/File;
    :catch_1
    move-exception v1

    .line 837
    .local v1, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 838
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V

    .line 839
    const-string v9, "CameraApp"

    const-string v10, "doAttach CANCELED"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 842
    :try_start_8
    invoke-static {v2}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 853
    invoke-static {v6}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 842
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :try_start_9
    invoke-static {v2}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    throw v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 853
    .end local v0           #data:[B
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #fullfilename:Ljava/lang/String;
    .end local v4           #imguri:Landroid/net/Uri;
    .end local v5           #mFile:Ljava/io/File;
    :catchall_1
    move-exception v9

    invoke-static {v6}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    throw v9
.end method

.method public doSmartCameraModeCallback([I)V
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x2

    .line 1872
    aget v3, p1, v5

    const/high16 v4, 0xff

    and-int/2addr v3, v4

    ushr-int/lit8 v2, v3, 0x10

    .line 1873
    .local v2, ASDStatus:I
    aget v3, p1, v5

    const/high16 v4, -0x100

    and-int/2addr v3, v4

    ushr-int/lit8 v1, v3, 0x18

    .line 1874
    .local v1, ASDScene:I
    const/4 v3, 0x3

    aget v3, p1, v3

    and-int/lit16 v0, v3, 0xff

    .line 1875
    .local v0, ASDMove:I
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartCameraModeCallback, object callback data is  ASDStatus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ASDScene : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ASDMove : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraMediator;->setCurrentIAMode(I)V

    .line 1887
    return-void
.end method

.method public doTouchbyAF(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1481
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v0

    if-nez v0, :cond_5

    .line 1483
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFreePanoramaController:Lcom/lge/camera/controller/camera/FreePanoramaController;

    if-eqz v0, :cond_1

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_free_panorama"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1508
    :cond_0
    :goto_0
    return-void

    .line 1486
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mPanoramaController:Lcom/lge/camera/controller/camera/PanoramaController;

    if-eqz v0, :cond_2

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_panorama"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1489
    :cond_2
    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_continuous"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/module/Module;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1492
    :cond_3
    const-string v0, "0"

    const-string v1, "key_camera_timer"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isTimerShotCountdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1494
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->snapshotOnContinuousFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1498
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getInCaptureProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/FocusController;->startFocusByTouchPress(II)V

    goto :goto_0

    .line 1501
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1503
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFrontTouchAESupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getInCaptureProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1505
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/FocusController;->startAEByTouchPress(II)V

    goto :goto_0
.end method

.method public doVoiceShutterIndicatorUpdateHandler()V
    .locals 1

    .prologue
    .line 1790
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1792
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->updateVoiceShutterIndicator(Z)V

    .line 1794
    :cond_0
    return-void
.end method

.method public facePreviewInitController()V
    .locals 1

    .prologue
    .line 1807
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->initController()V

    .line 1808
    return-void
.end method

.method public finishImageSaver()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    invoke-virtual {v0}, Lcom/lge/camera/util/ImageSavers;->finish()V

    .line 613
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    .line 615
    :cond_0
    return-void
.end method

.method public getAvailablePictureCount()J
    .locals 2

    .prologue
    .line 1104
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getAvailablePictureCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAvailablePictureCount(I)J
    .locals 2
    .parameter "storageType"

    .prologue
    .line 1108
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camera/CameraStorageController;->getAvailablePictureCount(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCaptureData()[B
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    return-object v0
.end method

.method public getCurrentIAMode()I
    .locals 1

    .prologue
    .line 1894
    iget v0, p0, Lcom/lge/camera/CameraMediator;->mCurrentIAMode:I

    return v0
.end method

.method public getCurrentSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;
    .locals 1

    .prologue
    .line 1095
    invoke-super {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/CameraSettingMenu;

    return-object v0
.end method

.method public bridge synthetic getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v0

    return-object v0
.end method

.method public getDualCameraPictureSize()[I
    .locals 4

    .prologue
    .line 1908
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1909
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v0

    .line 1910
    .local v0, sizeOnDevice:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1911
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=========== size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    invoke-static {v0}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v1

    .line 1915
    .end local v0           #sizeOnDevice:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFacePreviewController:Lcom/lge/camera/controller/camera/FacePreviewController;

    return-object v0
.end method

.method public getFaceValues(I)[I
    .locals 3
    .parameter "mValue"

    .prologue
    .line 1211
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FaceBeauty : mFaceValues.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mFaceValues:[[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFaceValues:[[I

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-gez p1, :cond_1

    .line 1213
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "Error : mValue must be a smaller than mFaceValues.length"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    const/4 p1, 0x4

    .line 1216
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFaceValues:[[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getFocusController()Lcom/lge/camera/controller/FocusController;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v0

    return-object v0
.end method

.method public getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    check-cast v0, Lcom/lge/camera/controller/camera/CameraFocusController;

    return-object v0
.end method

.method public getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFreePanoramaController:Lcom/lge/camera/controller/camera/FreePanoramaController;

    return-object v0
.end method

.method public getFreePanoramaEngineStatus()I
    .locals 1

    .prologue
    .line 1769
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->getPanoramaEngineState()I

    move-result v0

    return v0
.end method

.method public getFreePanoramaResultSize()[I
    .locals 1

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->getResultSize()[I

    move-result-object v0

    return-object v0
.end method

.method public getFreePanoramaStatus()I
    .locals 1

    .prologue
    .line 1765
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->getPanoramaState()I

    move-result v0

    return v0
.end method

.method public getImageListRotation()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListRotation:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImageListUri()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 397
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImageListUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic getIndicatorController()Lcom/lge/camera/controller/IndicatorController;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    return-object v0
.end method

.method public getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    check-cast v0, Lcom/lge/camera/controller/camera/CameraIndicatorController;

    return-object v0
.end method

.method public getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1128
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    if-nez v0, :cond_0

    .line 1152
    :goto_0
    return-object v5

    .line 1132
    :cond_0
    const-wide/16 v2, -0x1

    .line 1133
    .local v2, id:J
    if-eqz p1, :cond_1

    .line 1134
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/Util;->getIdFromUri(Landroid/app/Activity;Landroid/net/Uri;)J

    move-result-wide v2

    .line 1135
    const-string v0, "CameraApp"

    const-string v1, "GET PICTURE THUMB start id is %d, and uri is %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    .line 1138
    const-string v0, "CameraApp"

    const-string v1, "GET PICTURE THUMB end: uri not valid"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1142
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/ExifUtil;->getExifOrientationDegree(Ljava/lang/String;)I

    move-result v7

    .line 1143
    .local v7, degree:I
    invoke-static {}, Lcom/lge/camera/util/BitmapManager;->instance()Lcom/lge/camera/util/BitmapManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/util/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1144
    .local v8, thumbnail:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    if-eqz v0, :cond_3

    .line 1145
    iget-object v0, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual {v0, v8, v7, v6}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1150
    :goto_1
    const-string v0, "CameraApp"

    const-string v1, "GET PICTURE THUMB end"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v8

    .line 1152
    goto :goto_0

    .line 1147
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mPanoramaController:Lcom/lge/camera/controller/camera/PanoramaController;

    return-object v0
.end method

.method public bridge synthetic getPreviewController()Lcom/lge/camera/controller/PreviewController;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    check-cast v0, Lcom/lge/camera/controller/camera/CameraPreviewController;

    return-object v0
.end method

.method public getPreviousShotModeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mPreviousShotMode:Ljava/lang/String;

    return-object v0
.end method

.method public getQueueCount()I
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    invoke-virtual {v0}, Lcom/lge/camera/util/ImageSavers;->getCount()I

    move-result v0

    .line 643
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getQuickFunctionController()Lcom/lge/camera/controller/camera/CameraQuickFunctionController;

    move-result-object v0

    return-object v0
.end method

.method public getQuickFunctionController()Lcom/lge/camera/controller/camera/CameraQuickFunctionController;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    check-cast v0, Lcom/lge/camera/controller/camera/CameraQuickFunctionController;

    return-object v0
.end method

.method public getRequestedAttachFileStorage()I
    .locals 3

    .prologue
    .line 1353
    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1354
    .local v0, requestedFilePath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1355
    .local v1, requestedStorage:I
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v2

    iget-object v2, v2, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1356
    const/4 v1, 0x0

    .line 1362
    :goto_0
    return v1

    .line 1357
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v2

    iget-object v2, v2, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1358
    const/4 v1, 0x1

    goto :goto_0

    .line 1360
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getSaveURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    .line 734
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedChildIndex()I
    .locals 1

    .prologue
    .line 1100
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/CameraSettingMenu;->getSelectedChildIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getShotModeMenuController()Lcom/lge/camera/controller/ShotModeMenuController;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getShotModeMenuController()Lcom/lge/camera/controller/camera/CameraShotModeMenuController;

    move-result-object v0

    return-object v0
.end method

.method public getShotModeMenuController()Lcom/lge/camera/controller/camera/CameraShotModeMenuController;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    check-cast v0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;

    return-object v0
.end method

.method public getSmartModeForPictureSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mPreSmartModePicSize:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getStorageController()Lcom/lge/camera/controller/StorageController;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v0

    return-object v0
.end method

.method public getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    check-cast v0, Lcom/lge/camera/controller/camera/CameraStorageController;

    return-object v0
.end method

.method public getTimeMachinePictures()Z
    .locals 1

    .prologue
    .line 1269
    iget-boolean v0, p0, Lcom/lge/camera/CameraMediator;->mTimemachineHasPictures:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isTimeMachineModeOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1270
    :cond_0
    const/4 v0, 0x0

    .line 1281
    :goto_0
    return v0

    .line 1273
    :cond_1
    new-instance v0, Lcom/lge/camera/CameraMediator$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/CameraMediator$2;-><init>(Lcom/lge/camera/CameraMediator;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 1281
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getTimerCaptureDelay()I
    .locals 1

    .prologue
    .line 1853
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/TimerController;->getTimerCaptureDelay()I

    move-result v0

    return v0
.end method

.method public getTimerController()Lcom/lge/camera/controller/camera/TimerController;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mTimerController:Lcom/lge/camera/controller/camera/TimerController;

    return-object v0
.end method

.method public hasSaveURI()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 722
    iget-boolean v1, p0, Lcom/lge/camera/CameraMediator;->mRequestSingleImage:Z

    if-eqz v1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 726
    :cond_0
    return v0
.end method

.method public hideAudiozoomready()V
    .locals 0

    .prologue
    .line 1899
    return-void
.end method

.method public hideFreePanoramaTakingGuide()V
    .locals 2

    .prologue
    .line 1757
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setVisibleTakingGuide(Z)V

    .line 1758
    return-void
.end method

.method public hideOsd()V
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->hide()V

    .line 1011
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->hideFocus()Z

    .line 1012
    return-void
.end method

.method public initControllers()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Lcom/lge/camera/Mediator;->initControllers()V

    .line 182
    return-void
.end method

.method public initFaceDetectInfo()V
    .locals 1

    .prologue
    .line 1811
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->initFaceDetectInfo()V

    .line 1812
    return-void
.end method

.method public isAttachIntent()Z
    .locals 1

    .prologue
    .line 1123
    iget-boolean v0, p0, Lcom/lge/camera/CameraMediator;->isCaptureIntent:Z

    return v0
.end method

.method public isAttachMode()Z
    .locals 1

    .prologue
    .line 1112
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isAttachIntent()Z

    move-result v0

    return v0
.end method

.method public isBurstShotStop()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/lge/camera/CameraMediator;->mBurstShotStop:Z

    return v0
.end method

.method public isContinuousShotAlived()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/lge/camera/CameraMediator;->mContinuousShotAlived:Z

    return v0
.end method

.method public isMMSIntent()Z
    .locals 6

    .prologue
    .line 1157
    const/4 v3, 0x0

    .line 1158
    .local v3, isMMScalling:Z
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1159
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 1161
    .local v0, callingPackage:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1162
    const-string v4, "MMSAttach"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1163
    const/4 v3, 0x1

    .line 1166
    :cond_0
    const-string v4, "intentFrom"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1167
    .local v2, intentFrom:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1168
    const-string v4, "MMSAttach"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1169
    const/4 v3, 0x1

    .line 1177
    .end local v2           #intentFrom:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    const-string v4, "com.android.mms"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1178
    const/4 v3, 0x1

    .line 1181
    :cond_2
    return v3
.end method

.method public isPanoramaStarted()Z
    .locals 1

    .prologue
    .line 1678
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaStarted()Z

    move-result v0

    return v0
.end method

.method public isPanoramaUIShown()Z
    .locals 1

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaUIShown()Z

    move-result v0

    return v0
.end method

.method public isPanoramaUpdatebutton()Z
    .locals 1

    .prologue
    .line 1698
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaUpdatebutton()Z

    move-result v0

    return v0
.end method

.method public isPlayRingMode()Z
    .locals 1

    .prologue
    .line 1186
    const/4 v0, 0x0

    return v0
.end method

.method public isSynthesisInProgress()Z
    .locals 1

    .prologue
    .line 1682
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->isSynthesisInProgress()Z

    move-result v0

    return v0
.end method

.method public isTimemachineHasPictures()Z
    .locals 1

    .prologue
    .line 1299
    iget-boolean v0, p0, Lcom/lge/camera/CameraMediator;->mTimemachineHasPictures:Z

    return v0
.end method

.method public isTimerShotCountdown()Z
    .locals 1

    .prologue
    .line 1861
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/TimerController;->isTimerShotCountdown()Z

    move-result v0

    return v0
.end method

.method public isfacePreviewInitialized()Z
    .locals 1

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 186
    const-string v0, "CameraApp"

    const-string v1, "onCreate()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    const-string v1, "DefaultNormalShot"

    invoke-virtual {v0, v1}, Lcom/lge/camera/module/ModuleFactory;->getModule(Ljava/lang/String;)Lcom/lge/camera/module/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mModule:Lcom/lge/camera/module/Module;

    .line 188
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->createControllers()V

    .line 189
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onCreate()V

    .line 191
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->setupCaptureIntent()V

    .line 192
    const-string v0, "CameraApp"

    const-string v1, "onCreate()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 350
    const-string v0, "CameraApp"

    const-string v1, "onDestroy()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 353
    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListRotation:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListRotation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 358
    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mImageListRotation:Ljava/util/ArrayList;

    .line 361
    :cond_1
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    .line 362
    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    .line 364
    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mPanoramaController:Lcom/lge/camera/controller/camera/PanoramaController;

    .line 365
    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mFreePanoramaController:Lcom/lge/camera/controller/camera/FreePanoramaController;

    .line 367
    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mTimerController:Lcom/lge/camera/controller/camera/TimerController;

    .line 368
    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mFacePreviewController:Lcom/lge/camera/controller/camera/FacePreviewController;

    .line 370
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onDestroy()V

    .line 371
    const-string v0, "CameraApp"

    const-string v1, "onDestroy()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public onFaceDetectionFromHal([Landroid/hardware/Camera$Face;)V
    .locals 1
    .parameter "faces"

    .prologue
    .line 1826
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camera/FacePreviewController;->onFaceDetectionFromHal([Landroid/hardware/Camera$Face;)V

    .line 1827
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 274
    const-string v0, "CameraApp"

    const-string v1, "onPause()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v0}, Lcom/lge/camera/Mediator$ActivityBridge;->setPostviewRequestInitCode()V

    .line 277
    invoke-direct {p0}, Lcom/lge/camera/CameraMediator;->stopShotModeOnPause()V

    .line 278
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->finishImageSaver()V

    .line 280
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isTimeMachineModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 284
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->deleteTimeMachineImages()Z

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "on"

    const-string v1, "key_smart_mode"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/QuickButtonController;->setSmartCameraMode(Landroid/hardware/Camera$Parameters;Z)V

    .line 290
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/CameraMediator;->stopContinuousShotOnPause()V

    .line 291
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->stopReceivingLocationUpdates()V

    .line 293
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->onPause()V

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mPanoramaController:Lcom/lge/camera/controller/camera/PanoramaController;

    if-eqz v0, :cond_3

    .line 297
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->stopPanorama()V

    .line 300
    :cond_3
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onPause()V

    .line 301
    const-string v0, "CameraApp"

    const-string v1, "onPause()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 197
    const-string v2, "CameraApp"

    const-string v3, "onResume()-start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v2, Lcom/lge/camera/util/ImageSavers;

    const/16 v3, 0x28

    invoke-direct {v2, p0, v3}, Lcom/lge/camera/util/ImageSavers;-><init>(Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;I)V

    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    .line 200
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isTimeMachineModeOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 201
    const-string v2, "shotmode_timemachine"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->deleteTimeMachineImages()Z

    .line 203
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 213
    :goto_0
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onResume()V

    .line 215
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.lge.pa.action.CAMVOICE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    const-string v2, "CameraApp"

    const-string v3, "Camera is called by QVOICE, So voice shutter on!! "

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v2, "key_voiceshutter"

    const-string v3, "on"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 219
    const-string v2, "com.lge.camera.command.SetVoiceShutterMode"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->doCommandUi(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "on"

    const-string v3, "key_smart_mode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    invoke-virtual {p0, v4}, Lcom/lge/camera/CameraMediator;->setQuickButtonMode(Z)V

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v2}, Lcom/lge/camera/Mediator$ActivityBridge;->getPostviewRequestCode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 229
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->doAttach()V

    .line 230
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v2}, Lcom/lge/camera/Mediator$ActivityBridge;->setPostviewRequestInitCode()V

    .line 270
    :goto_1
    return-void

    .line 205
    .end local v0           #action:Ljava/lang/String;
    :cond_2
    const-string v2, "key_camera_shot_mode"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, shotMode:Ljava/lang/String;
    const-string v2, "not found"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 207
    const-string v2, "shotmode_normal"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    .end local v1           #shotMode:Ljava/lang/String;
    .restart local v0       #action:Ljava/lang/String;
    :cond_4
    new-instance v2, Lcom/lge/camera/CameraMediator$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/CameraMediator$1;-><init>(Lcom/lge/camera/CameraMediator;)V

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 252
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 253
    const-string v2, "shotmode_normal"

    const-string v3, "key_camera_shot_mode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 255
    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_normal"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 257
    :cond_5
    const-string v2, "auto"

    const-string v3, "key_scene_mode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 259
    const-string v2, "key_scene_mode"

    const-string v3, "auto"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 261
    :cond_6
    const-string v2, "off"

    const-string v3, "key_smart_mode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 262
    const-string v2, "key_smart_mode"

    const-string v3, "off"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 264
    :cond_7
    const-string v2, "shotmode_main_beauty"

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviousShotModeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 265
    invoke-virtual {p0, v5, v4}, Lcom/lge/camera/CameraMediator;->setPreviewEffectForBeautyShotMode(Landroid/hardware/Camera$Parameters;Z)V

    .line 269
    :cond_8
    const-string v2, "CameraApp"

    const-string v3, "onResume()-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public postviewRequestInit()Z
    .locals 2

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v0}, Lcom/lge/camera/Mediator$ActivityBridge;->getPostviewRequestCode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v0}, Lcom/lge/camera/Mediator$ActivityBridge;->setPostviewRequestInitCode()V

    .line 1631
    const/4 v0, 0x1

    .line 1633
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public preProcessSaveUri()V
    .locals 7

    .prologue
    .line 766
    const-string v4, "content"

    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 767
    iget-object v4, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 768
    .local v1, requestedPath:Ljava/lang/String;
    const/4 v4, 0x0

    const/16 v5, 0x2f

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 769
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested directory:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 771
    .local v0, requestedDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 772
    const-string v4, "CameraApp"

    const-string v5, "Requested directory not exist, make it."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 782
    .end local v0           #requestedDir:Ljava/io/File;
    .end local v1           #requestedPath:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 777
    .local v3, tempFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 778
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    .line 779
    .local v2, ret:Z
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "temp file("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") deleted : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeAllImageList()V
    .locals 2

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListRotation()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 411
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListRotation()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListRotation()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 413
    :cond_1
    return-void
.end method

.method public removeFreePanoramaBlackBg()V
    .locals 1

    .prologue
    .line 1719
    new-instance v0, Lcom/lge/camera/CameraMediator$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/CameraMediator$5;-><init>(Lcom/lge/camera/CameraMediator;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1726
    return-void
.end method

.method public removeFreePanoramaView()V
    .locals 1

    .prologue
    .line 1733
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->removePanoramaView()V

    .line 1734
    return-void
.end method

.method public removeOrgFile()V
    .locals 6

    .prologue
    .line 1458
    const-string v3, "CameraApp"

    const-string v4, "===>removeOrgFile!!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 1461
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/lge/camera/util/Common;->getFileFullPathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1462
    .local v0, FullPath:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1463
    const-string v3, "CameraApp"

    const-string v4, "FullPath == null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    .end local v0           #FullPath:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1467
    .restart local v0       #FullPath:Ljava/lang/String;
    :cond_1
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===>removeOrgFile!! FullPath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1470
    .local v1, OrgFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1471
    const-string v3, "CameraApp"

    const-string v4, "===>removeOrgFile!! delete sucess "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/lge/camera/util/ImageManager;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1474
    .end local v1           #OrgFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 1475
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removePanoramaView()V
    .locals 1

    .prologue
    .line 1674
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->removePanoramaView()V

    .line 1675
    return-void
.end method

.method public restartFreePanorama()V
    .locals 1

    .prologue
    .line 1753
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->restartToStartupPreview()V

    .line 1754
    return-void
.end method

.method public restoreAutoReviewValue()V
    .locals 3

    .prologue
    .line 1937
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportedAutoReview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1938
    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->checkGalleryEnabledOnGuestMode(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1941
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore previous AutoReviewValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mPreviousCameraAutoReviewValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mPreviousCameraAutoReviewValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1944
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    const-string v1, "key_camera_auto_review"

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mPreviousCameraAutoReviewValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/SettingController;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1950
    :cond_0
    return-void
.end method

.method public saveAndAddImageForImageSavers(Lcom/lge/camera/util/SaveRequest;)V
    .locals 12
    .parameter "sr"

    .prologue
    .line 659
    const/4 v3, 0x0

    .line 660
    .local v3, fileName:Ljava/lang/String;
    const-string v10, ".jpg"

    .line 661
    .local v10, fileExt:Ljava/lang/String;
    const/4 v7, 0x0

    .line 662
    .local v7, path:Ljava/lang/String;
    const/4 v11, 0x0

    .line 664
    .local v11, ret:Z
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->hasSaveURI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    invoke-direct {p0}, Lcom/lge/camera/CameraMediator;->getFileNameAndExt()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v3, v0, v1

    .line 666
    invoke-direct {p0}, Lcom/lge/camera/CameraMediator;->getFileNameAndExt()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v4, v0, v1

    .line 672
    .end local v10           #fileExt:Ljava/lang/String;
    .local v4, fileExt:Ljava/lang/String;
    :goto_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savePicture >  sr.fileName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    if-nez v3, :cond_1

    .line 704
    :goto_1
    return-void

    .line 668
    .end local v4           #fileExt:Ljava/lang/String;
    .restart local v10       #fileExt:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentStorage()I

    move-result v3

    .end local v3           #fileName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/util/FileNamer;->getFileName(Landroid/content/Context;IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #fileName:Ljava/lang/String;
    move-object v4, v10

    .end local v10           #fileExt:Ljava/lang/String;
    .restart local v4       #fileExt:Ljava/lang/String;
    goto :goto_0

    .line 678
    :cond_1
    invoke-direct {p0, v3}, Lcom/lge/camera/CameraMediator;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 679
    iget-object v1, p1, Lcom/lge/camera/util/SaveRequest;->exifData:[B

    iget-object v2, p1, Lcom/lge/camera/util/SaveRequest;->data:[B

    iget-wide v5, p1, Lcom/lge/camera/util/SaveRequest;->dateTaken:J

    iget-object v8, p1, Lcom/lge/camera/util/SaveRequest;->bitmap:Landroid/graphics/Bitmap;

    iget v9, p1, Lcom/lge/camera/util/SaveRequest;->degree:I

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/lge/camera/CameraMediator;->addImageToImageHandler([B[BLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/graphics/Bitmap;I)Z

    move-result v11

    .line 681
    if-eqz v11, :cond_4

    .line 682
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mSavedFileName:Ljava/lang/String;

    .line 683
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 684
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    const-string v5, "key_uplus_box"

    invoke-virtual {p0, v5}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/Util;->requestUpBoxBackupPhoto(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 688
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->checkAutoReviewOff(Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isTimeMachineModeOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 689
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_2
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->checkGalleryEnabledOnGuestMode(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 696
    :cond_3
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/SecureImageUtil;->addSecureLockImageUri(Landroid/net/Uri;)V

    .line 699
    :cond_4
    iget-boolean v0, p1, Lcom/lge/camera/util/SaveRequest;->isSetLastThumb:Z

    if-eqz v0, :cond_5

    .line 700
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    iget-object v1, p1, Lcom/lge/camera/util/SaveRequest;->data:[B

    iget-object v2, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v2, v5}, Lcom/lge/camera/controller/PreviewPanelController;->setLastPictureThumb([BLandroid/net/Uri;Z)V

    .line 701
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButton()V

    .line 703
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V

    goto/16 :goto_1
.end method

.method public saveClearShotPicture([BI)Z
    .locals 8
    .parameter "data"
    .parameter "clearShotTempFileCount"

    .prologue
    .line 457
    const-string v5, "CameraApp"

    const-string v6, "saveClearShotPicture()-start "

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const/4 v3, 0x0

    .line 460
    .local v3, ret:Z
    const/4 v2, 0x0

    .line 461
    .local v2, path:Ljava/lang/String;
    const-string v1, ".jpg"

    .line 462
    .local v1, fileExt:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClearShotImage"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, clearShotFilename:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getDeviceDegree()I

    move-result v5

    iput v5, p0, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    .line 465
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v5}, Lcom/lge/camera/controller/StorageController;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v2

    .line 466
    invoke-static {p1, v2, v0, v1}, Lcom/lge/camera/util/ImageManager;->saveTempFileForTimeMachineShot([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 467
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 469
    .local v4, saveUri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 470
    iput-object v0, p0, Lcom/lge/camera/Mediator;->mSavedFileName:Ljava/lang/String;

    .line 471
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_0
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveClearShotPicture()-end, return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return v3
.end method

.method public saveImageSavers([BLandroid/graphics/Bitmap;IZ)Z
    .locals 2
    .parameter "finalJpegData"
    .parameter "bitmap"
    .parameter "degree"
    .parameter "isSetLastThumb"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/camera/util/ImageSavers;->addImage([BLandroid/graphics/Bitmap;IZ)Z

    move-result v0

    .line 634
    :goto_0
    return v0

    .line 633
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "ImageSave is null!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public savePicture([BLandroid/graphics/Bitmap;)Z
    .locals 16
    .parameter "data"
    .parameter "bitmap"

    .prologue
    .line 479
    const/4 v15, 0x0

    .line 480
    .local v15, ret:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 481
    .local v11, dateTaken:J
    const-string v1, "CameraApp"

    const-string v2, "savePicture()-start "

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const/4 v8, 0x0

    .line 484
    .local v8, path:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getDeviceDegree()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    .line 486
    invoke-direct/range {p0 .. p1}, Lcom/lge/camera/CameraMediator;->setExifData([B)[B

    move-result-object v13

    .line 488
    .local v13, exifData:[B
    const/4 v4, 0x0

    .line 489
    .local v4, fileName:Ljava/lang/String;
    const-string v14, ".jpg"

    .line 491
    .local v14, fileExt:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->hasSaveURI()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 492
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getFileNameAndExt()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v4, v1, v2

    .line 493
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getFileNameAndExt()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v5, v1, v2

    .line 498
    .end local v14           #fileExt:Ljava/lang/String;
    .local v5, fileExt:Ljava/lang/String;
    :goto_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savePicture >  fileName :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lge/camera/CameraMediator;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 501
    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v3, p1

    move-wide v6, v11

    move-object/from16 v9, p2

    invoke-direct/range {v1 .. v10}, Lcom/lge/camera/CameraMediator;->addImageToImageHandler([B[BLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/graphics/Bitmap;I)Z

    move-result v15

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V

    .line 505
    if-eqz v15, :cond_3

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/lge/camera/controller/PreviewPanelController;->setLastPictureThumb([BLandroid/net/Uri;Z)V

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButton()V

    .line 509
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lge/camera/Mediator;->mSavedFileName:Ljava/lang/String;

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->isAttachMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 513
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/AppControlUtil;->checkGalleryEnabledOnGuestMode(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 518
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/lge/camera/util/SecureImageUtil;->addSecureLockImageUri(Landroid/net/Uri;)V

    .line 521
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    const-string v6, "key_uplus_box"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/lge/camera/util/Util;->requestUpBoxBackupPhoto(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 526
    :cond_3
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savePicture()-end, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return v15

    .line 495
    .end local v5           #fileExt:Ljava/lang/String;
    .restart local v14       #fileExt:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getCurrentStorage()I

    move-result v4

    .end local v4           #fileName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/lge/camera/util/FileNamer;->getFileName(Landroid/content/Context;IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #fileName:Ljava/lang/String;
    move-object v5, v14

    .end local v14           #fileExt:Ljava/lang/String;
    .restart local v5       #fileExt:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public saveTimeMachinePicture([BI)Z
    .locals 8
    .parameter "data"
    .parameter "timeMachineTempFileCount"

    .prologue
    .line 434
    const-string v5, "CameraApp"

    const-string v6, "saveTimeMachinePicture()-start "

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/4 v2, 0x0

    .line 437
    .local v2, ret:Z
    const/4 v1, 0x0

    .line 438
    .local v1, path:Ljava/lang/String;
    const-string v0, ".jpg"

    .line 439
    .local v0, fileExt:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TimeMachineImage"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 440
    .local v4, timeMachineFilename:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getDeviceDegree()I

    move-result v5

    iput v5, p0, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    .line 444
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v5}, Lcom/lge/camera/controller/StorageController;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-static {p1, v1, v4, v0}, Lcom/lge/camera/util/ImageManager;->saveTempFileForTimeMachineShot([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 446
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 448
    .local v3, saveUri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 449
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mSavedFileName:Ljava/lang/String;

    .line 450
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_0
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveTimeMachinePicture()-end, return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    return v2
.end method

.method public sendResultIntent()V
    .locals 5

    .prologue
    .line 1236
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 1237
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1238
    .local v1, newExtras:Landroid/os/Bundle;
    const-string v2, "output"

    iget-object v3, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1239
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSavedImageUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1241
    .local v0, Intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1242
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1244
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(ILandroid/content/Intent;)V

    .line 1248
    .end local v0           #Intent:Landroid/content/Intent;
    .end local v1           #newExtras:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 1246
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V

    goto :goto_0
.end method

.method public setBurstShotStop(Z)V
    .locals 0
    .parameter "stop"

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/lge/camera/CameraMediator;->mBurstShotStop:Z

    .line 383
    return-void
.end method

.method public setCaptureData([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 392
    iput-object p1, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    .line 393
    return-void
.end method

.method public setContinuousShotAlived(Z)V
    .locals 0
    .parameter "alived"

    .prologue
    .line 375
    iput-boolean p1, p0, Lcom/lge/camera/CameraMediator;->mContinuousShotAlived:Z

    .line 376
    return-void
.end method

.method public setCurrentIAMode(I)V
    .locals 0
    .parameter "currentIAMode"

    .prologue
    .line 1890
    iput p1, p0, Lcom/lge/camera/CameraMediator;->mCurrentIAMode:I

    .line 1891
    return-void
.end method

.method public setFaceBeutyShotParameter(I)V
    .locals 7
    .parameter "mValue"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1221
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v2

    const-string v3, "FaceBeauty"

    invoke-virtual {v2, v3}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1222
    const-string v2, "CameraApp"

    const-string v3, "setFaceBeutyShotParameter"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v2

    const-string v3, "FaceBeauty"

    invoke-virtual {v2, v3}, Lcom/lge/olaworks/library/EngineProcessor;->getEngine(Ljava/lang/String;)Lcom/lge/olaworks/library/BaseEngine;

    move-result-object v0

    check-cast v0, Lcom/lge/olaworks/library/FaceBeauty;

    .line 1225
    .local v0, beautyEngine:Lcom/lge/olaworks/library/FaceBeauty;
    invoke-virtual {p0, p1}, Lcom/lge/camera/CameraMediator;->getFaceValues(I)[I

    move-result-object v1

    .line 1227
    .local v1, value:[I
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FaceBeauty White Value ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Strength Value ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    if-eqz v0, :cond_0

    .line 1230
    aget v2, v1, v5

    aget v3, v1, v6

    invoke-virtual {v0, v2, v3}, Lcom/lge/olaworks/library/FaceBeauty;->setParameter(II)V

    .line 1233
    .end local v0           #beautyEngine:Lcom/lge/olaworks/library/FaceBeauty;
    .end local v1           #value:[I
    :cond_0
    return-void
.end method

.method public setFocalLength(F)V
    .locals 0
    .parameter "focalLength"

    .prologue
    .line 1598
    iput p1, p0, Lcom/lge/camera/CameraMediator;->mFocalLength:F

    .line 1599
    return-void
.end method

.method public setFullFrameContinuousShot(Landroid/hardware/Camera$Parameters;I)V
    .locals 3
    .parameter "parameters"
    .parameter "bufferNum"

    .prologue
    .line 1311
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFullFrameContinuousShotSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1317
    :goto_0
    return-void

    .line 1315
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContinuousShot buffer-count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const-string v0, "zsl-burst-count"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setPanoramaEngine()V
    .locals 1

    .prologue
    .line 1666
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->setEngine()V

    .line 1667
    return-void
.end method

.method public setPreviousAutoReviewValue()V
    .locals 3

    .prologue
    .line 1920
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportedAutoReview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1921
    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->checkGalleryEnabledOnGuestMode(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1924
    const-string v0, "key_camera_auto_review"

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mPreviousCameraAutoReviewValue:Ljava/lang/String;

    .line 1926
    const-string v0, "key_camera_auto_review"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1927
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Because of guest mode and gallery not exist, so previous AutoReview value is saved. Saved value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mPreviousCameraAutoReviewValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    :cond_0
    return-void
.end method

.method public setPreviousShotModeString(Ljava/lang/String;)V
    .locals 0
    .parameter "strShotMode"

    .prologue
    .line 1257
    iput-object p1, p0, Lcom/lge/camera/CameraMediator;->mPreviousShotMode:Ljava/lang/String;

    .line 1258
    return-void
.end method

.method public setRemoveFreePanoramaBlackBg(Z)V
    .locals 1
    .parameter "remove"

    .prologue
    .line 1773
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setRemoveFreePanoramaBlackBg(Z)V

    .line 1774
    return-void
.end method

.method public setResultAndFinish(I)V
    .locals 1
    .parameter "resultCode"

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/CameraActivity;->setResult(I)V

    .line 762
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->finish()V

    .line 763
    return-void
.end method

.method public setResultAndFinish(ILandroid/content/Intent;)V
    .locals 1
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 757
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->finish()V

    .line 758
    return-void
.end method

.method public setSaveRequest(Lcom/lge/camera/util/SaveRequest;[BLandroid/graphics/Bitmap;IZ)V
    .locals 2
    .parameter "sr"
    .parameter "data"
    .parameter "bitmap"
    .parameter "degree"
    .parameter "isSetLastThumb"

    .prologue
    .line 648
    invoke-direct {p0, p2}, Lcom/lge/camera/CameraMediator;->setExifData([B)[B

    move-result-object v0

    iput-object v0, p1, Lcom/lge/camera/util/SaveRequest;->exifData:[B

    .line 649
    iput-object p2, p1, Lcom/lge/camera/util/SaveRequest;->data:[B

    .line 650
    iput-object p3, p1, Lcom/lge/camera/util/SaveRequest;->bitmap:Landroid/graphics/Bitmap;

    .line 651
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/lge/camera/util/SaveRequest;->dateTaken:J

    .line 652
    iput p4, p1, Lcom/lge/camera/util/SaveRequest;->degree:I

    .line 653
    iput-boolean p5, p1, Lcom/lge/camera/util/SaveRequest;->isSetLastThumb:Z

    .line 655
    return-void
.end method

.method public setSceneModeForAdvanced(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 3
    .parameter "parameters"
    .parameter "sceneMode"

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x1

    .line 1421
    if-eqz p1, :cond_0

    .line 1422
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 1423
    const-string v0, "night"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1424
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1425
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1426
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getFrontCameraFrameRateNightModeRangeMin()I

    move-result v0

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 1455
    :cond_0
    :goto_0
    return-void

    .line 1430
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNightModeRangeMin()I

    move-result v0

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 1434
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1435
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1436
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getFrontCameraFrameRateNormalRangeMin()I

    move-result v0

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 1440
    :cond_3
    const-string v0, "on"

    const-string v1, "key_smart_mode"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1441
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateIAModeRangeMin()I

    move-result v0

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 1444
    :cond_4
    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_full_continuous"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1445
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateBurstShotModeRangeMin()I

    move-result v0

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 1448
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMin()I

    move-result v0

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0
.end method

.method public setSmartCameraMode(Landroid/hardware/Camera$Parameters;Z)V
    .locals 1
    .parameter "params"
    .parameter "enable"

    .prologue
    .line 1866
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getQuickButtonController()Lcom/lge/camera/controller/QuickButtonController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickButtonController;->setSmartCameraMode(Landroid/hardware/Camera$Parameters;Z)V

    .line 1868
    return-void
.end method

.method public setSmartModeForPictureSize(Ljava/lang/String;)V
    .locals 0
    .parameter "PictureSize"

    .prologue
    .line 1602
    iput-object p1, p0, Lcom/lge/camera/CameraMediator;->mPreSmartModePicSize:Ljava/lang/String;

    .line 1603
    return-void
.end method

.method public setTimeMachineShot(Landroid/hardware/Camera$Parameters;I)V
    .locals 3
    .parameter "parameters"
    .parameter "zsl_buffer"

    .prologue
    .line 1261
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachinShotSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1266
    :goto_0
    return-void

    .line 1264
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimeMachineShot zsl-burst-count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    const-string v0, "zsl-burst-count"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setTimemachineHasPictures(Z)V
    .locals 8
    .parameter "has"

    .prologue
    const-wide/16 v5, 0x0

    .line 1285
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachinShotSupported()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1286
    iput-boolean p1, p0, Lcom/lge/camera/CameraMediator;->mTimemachineHasPictures:Z

    .line 1287
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setTimeMachineReviewIconVisible(Z)V

    .line 1289
    const-string v7, "key_camera_auto_review"

    invoke-virtual {p0, v7}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1290
    .local v0, autoReview:Ljava/lang/String;
    const-string v7, "on_delay_2sec"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-wide/16 v3, 0x7d0

    .line 1291
    .local v3, duration:J
    :goto_0
    const-string v7, "on_delay_5sec"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-wide/16 v1, 0x1388

    .line 1292
    .local v1, autoReviewDuration:J
    :goto_1
    cmp-long v5, v1, v5

    if-nez v5, :cond_0

    .line 1293
    const/4 v5, 0x0

    const-wide/16 v6, 0x1b58

    invoke-virtual {p0, v5, v6, v7, p1}, Lcom/lge/camera/CameraMediator;->showBubblePopupVisibility(IJZ)V

    .line 1296
    .end local v0           #autoReview:Ljava/lang/String;
    .end local v1           #autoReviewDuration:J
    .end local v3           #duration:J
    :cond_0
    return-void

    .restart local v0       #autoReview:Ljava/lang/String;
    :cond_1
    move-wide v3, v5

    .line 1290
    goto :goto_0

    .restart local v3       #duration:J
    :cond_2
    move-wide v1, v3

    .line 1291
    goto :goto_1
.end method

.method public setTimerAndSceneSmartShutterEnable(Landroid/hardware/Camera$Parameters;ZZZ)V
    .locals 4
    .parameter "parameters"
    .parameter "timer"
    .parameter "scene"
    .parameter "enable"

    .prologue
    .line 1367
    const-string v2, "key_camera_timer"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1368
    .local v1, currentTimerValue:Ljava/lang/String;
    const-string v2, "key_scene_mode"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1370
    .local v0, currentSceneMode:Ljava/lang/String;
    if-eqz p2, :cond_1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_full_continuous"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_panorama"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_free_panorama"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1375
    :cond_0
    const-string v2, "key_camera_timer"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1376
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isIndicatorControllerInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1377
    new-instance v2, Lcom/lge/camera/CameraMediator$3;

    invoke-direct {v2, p0}, Lcom/lge/camera/CameraMediator$3;-><init>(Lcom/lge/camera/CameraMediator;)V

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1386
    :cond_1
    if-eqz p3, :cond_3

    .line 1387
    const-string v2, "Smart shutter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1388
    const-string v2, "key_scene_mode"

    const-string v3, "auto"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1389
    const-string v2, "CameraApp"

    const-string v3, "####### scene mode set to off, because of smart shutter"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    const-string v2, "auto"

    invoke-virtual {p0, p1, v2}, Lcom/lge/camera/CameraMediator;->setSceneModeForAdvanced(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1400
    :cond_2
    invoke-virtual {p0, p4}, Lcom/lge/camera/CameraMediator;->smartShutterEnable(Z)V

    .line 1402
    :cond_3
    return-void
.end method

.method public setTimerSetting(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1845
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camera/TimerController;->setTimerSetting(I)V

    .line 1846
    return-void
.end method

.method public setupCaptureIntent()V
    .locals 2

    .prologue
    .line 1116
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1117
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/lge/camera/CameraMediator;->isCaptureIntent:Z

    .line 1119
    return-void

    .line 1117
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setupCaptureParams()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 743
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 744
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 745
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    .line 746
    const-string v1, "sigleimage"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lge/camera/CameraMediator;->mRequestSingleImage:Z

    .line 747
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/CameraMediator;->mCropValue:Ljava/lang/String;

    .line 748
    const-string v1, "intentFrom"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/CameraMediator;->mIntentFrom:Ljava/lang/String;

    .line 749
    const-string v1, "CameraApp"

    const-string v2, "mSaveUri: %s, crop:%s, intentFrom:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mCropValue:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mIntentFrom:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :goto_0
    return-void

    .line 751
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "no extra values"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showBubblePopupVisibility(IJZ)V
    .locals 4
    .parameter "popupType"
    .parameter "duration"
    .parameter "show"

    .prologue
    .line 1303
    if-eqz p4, :cond_0

    .line 1304
    invoke-static {}, Lcom/lge/camera/controller/BubblePopupController;->get()Lcom/lge/camera/controller/BubblePopupController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/lge/camera/controller/BubblePopupController;->showBubblePopup(Lcom/lge/camera/Mediator;IJ)V

    .line 1308
    :goto_0
    return-void

    .line 1306
    :cond_0
    invoke-static {}, Lcom/lge/camera/controller/BubblePopupController;->get()Lcom/lge/camera/controller/BubblePopupController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/controller/BubblePopupController;->removeBubblePopup(Lcom/lge/camera/Mediator;J)V

    goto :goto_0
.end method

.method public showControllerForHideSettingMenu(ZZ)V
    .locals 2
    .parameter "checkShowAll"
    .parameter "showAll"

    .prologue
    .line 1611
    if-eqz p1, :cond_0

    if-eqz p2, :cond_4

    .line 1612
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    if-eqz v0, :cond_1

    .line 1614
    const-string v0, "face_tracking"

    const-string v1, "key_focus"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "manual"

    const-string v1, "key_focus"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1616
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->showFocus()Z

    .line 1619
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isDualRecordingActive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isDualCameraActive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isSmartZoomRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1620
    :cond_2
    const-string v0, "com.lge.camera.command.ShowPIPFrameSubMenu"

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->doCommandUi(Ljava/lang/String;)V

    .line 1623
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->showBeautyShotBarForNewUx(Z)V

    .line 1625
    :cond_4
    return-void
.end method

.method public showFreePanoramaBlackBg()V
    .locals 1

    .prologue
    .line 1702
    new-instance v0, Lcom/lge/camera/CameraMediator$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/CameraMediator$4;-><init>(Lcom/lge/camera/CameraMediator;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1716
    return-void
.end method

.method public showFreePanoramaView()V
    .locals 1

    .prologue
    .line 1729
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->showPanoramaView()V

    .line 1730
    return-void
.end method

.method public showOsd()V
    .locals 2

    .prologue
    .line 996
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "on"

    const-string v1, "key_smart_mode"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->setQuickFunctionControllerVisible(Z)V

    .line 1002
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->showIndicatorController()V

    .line 1007
    return-void

    .line 1000
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->setQuickFunctionControllerVisible(Z)V

    goto :goto_0
.end method

.method public showPanoramaView()V
    .locals 1

    .prologue
    .line 1670
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->showPanoramaView()V

    .line 1671
    return-void
.end method

.method public smartShutterEnable(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 1405
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v4

    const-string v5, "key_scene_mode"

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 1406
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 1407
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1408
    .local v3, sceneEntryValues:[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 1409
    array-length v2, v3

    .line 1410
    .local v2, sceneEntryValueLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1411
    aget-object v4, v3, v0

    const-string v5, "Smart shutter"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1412
    const-string v4, "key_scene_mode"

    const-string v5, "Smart shutter"

    invoke-virtual {p0, v4, v5, p1}, Lcom/lge/camera/CameraMediator;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1418
    .end local v0           #i:I
    .end local v2           #sceneEntryValueLength:I
    .end local v3           #sceneEntryValues:[Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 1410
    .restart local v0       #i:I
    .restart local v2       #sceneEntryValueLength:I
    .restart local v3       #sceneEntryValues:[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public startFaceDetection()V
    .locals 1

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->startFaceDetection()V

    .line 1816
    return-void
.end method

.method public startFaceDetectionFromHal()V
    .locals 1

    .prologue
    .line 1829
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->startFaceDetectionFromHal()V

    .line 1830
    return-void
.end method

.method public startFreePanorama()V
    .locals 1

    .prologue
    .line 1737
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->startPanorama()V

    .line 1738
    return-void
.end method

.method public startFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 1745
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->startEngine(Landroid/hardware/Camera$Parameters;)V

    .line 1746
    return-void
.end method

.method public startFreePanoramaRotation(IZ)V
    .locals 1
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFreePanoramaController:Lcom/lge/camera/controller/camera/FreePanoramaController;

    if-eqz v0, :cond_0

    .line 1778
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFreePanoramaController:Lcom/lge/camera/controller/camera/FreePanoramaController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->startRotation(IZ)V

    .line 1780
    :cond_0
    return-void
.end method

.method public startPanorama()V
    .locals 1

    .prologue
    .line 1690
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->startPanorama()V

    .line 1691
    return-void
.end method

.method public startTimerShot()V
    .locals 1

    .prologue
    .line 1857
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/TimerController;->startTimerShot()V

    .line 1858
    return-void
.end method

.method public stopByUserAction()Z
    .locals 1

    .prologue
    .line 1798
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/module/Module;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1799
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/module/Module;->stopByUserAction()V

    .line 1800
    const/4 v0, 0x1

    .line 1802
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopFaceDetection()V
    .locals 1

    .prologue
    .line 1819
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->stopFaceDetection()V

    .line 1820
    return-void
.end method

.method public stopFaceDetectionFromHal()V
    .locals 1

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->stopFaceDetectionFromHal()V

    .line 1833
    return-void
.end method

.method public stopFreePanorama()V
    .locals 1

    .prologue
    .line 1741
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->stopPanorama()V

    .line 1742
    return-void
.end method

.method public stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 1749
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->stopEngine(Landroid/hardware/Camera$Parameters;)V

    .line 1750
    return-void
.end method

.method public stopPanorama()V
    .locals 1

    .prologue
    .line 1694
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->stopPanorama()V

    .line 1695
    return-void
.end method

.method public stopTimerShot()Z
    .locals 1

    .prologue
    .line 1849
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/TimerController;->stopTimerShot()Z

    move-result v0

    return v0
.end method

.method public switchCameraId(I)V
    .locals 11
    .parameter "cameraId"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1512
    iget-boolean v5, p0, Lcom/lge/camera/Mediator;->mPausing:Z

    if-eqz v5, :cond_0

    .line 1595
    :goto_0
    return-void

    .line 1515
    :cond_0
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchCameraId()-start, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    const-string v5, "key_camera_shot_mode"

    const-string v6, "shotmode_free_panorama"

    invoke-virtual {p0, v5, v6}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1518
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->showFreePanoramaBlackBg()V

    .line 1521
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lge/camera/CameraMediator;->setCameraId(I)V

    .line 1522
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v5

    const-string v6, "Main_CameraAppConfig"

    invoke-virtual {v5, v6, v9}, Lcom/lge/camera/CameraActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1523
    .local v3, pref:Landroid/content/SharedPreferences;
    invoke-static {v3, p1}, Lcom/lge/camera/setting/Setting;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 1525
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->stopPreview()V

    .line 1527
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/camera/FreePanoramaController;->isPanoramaUIShown()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1529
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/camera/CameraMediator;->stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V

    .line 1532
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/camera/CameraPreviewController;->closeCamera()V

    .line 1534
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1535
    iget-object v5, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual {v5}, Lcom/lge/camera/util/ImageHandler;->resetRotation()V

    .line 1538
    :cond_3
    invoke-virtual {p0, v9}, Lcom/lge/camera/CameraMediator;->enableInput(Z)V

    .line 1543
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraMode()I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 1544
    const-string v5, "DefaultNormalShot"

    invoke-virtual {p0, v5}, Lcom/lge/camera/CameraMediator;->setModule(Ljava/lang/String;)V

    .line 1547
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->getFunctionFrontCameraBeautyShot()I

    move-result v5

    if-ne v5, v8, :cond_8

    .line 1549
    :try_start_0
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v5}, Lcom/lge/camera/controller/PreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v4

    .line 1550
    .local v4, sPreview:Lcom/lge/camera/components/CameraPreview;
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/CameraPreview;->releasePreviewCallback(Landroid/hardware/Camera;)V

    .line 1551
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 1553
    const-string v5, "shotmode_front_beauty"

    const-string v6, "key_camera_shot_mode"

    invoke-virtual {p0, v6}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "shotmode_main_beauty"

    const-string v6, "key_camera_shot_mode"

    invoke-virtual {p0, v6}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1559
    :cond_5
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v5}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v1

    .line 1561
    .local v1, gPreview:Lcom/lge/camera/components/OpenGLSurfaceView;
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v5}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreviewExtra()Landroid/view/SurfaceView;

    move-result-object v2

    .line 1563
    .local v2, gPreviewExtra:Landroid/view/SurfaceView;
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/lge/camera/components/OpenGLSurfaceView;->releasePreviewCallback(Landroid/hardware/Camera;)V

    .line 1564
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lcom/lge/camera/components/OpenGLSurfaceView;->setVisibility(I)V

    .line 1565
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/lge/camera/components/OpenGLSurfaceView;->clearData(Z)V

    .line 1566
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/lge/camera/components/OpenGLSurfaceView;->setVisibility(I)V

    .line 1567
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1568
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isPreviewing()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1569
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/lge/camera/controller/PreviewController;->startPreview(Landroid/hardware/Camera$Parameters;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1594
    .end local v1           #gPreview:Lcom/lge/camera/components/OpenGLSurfaceView;
    .end local v2           #gPreviewExtra:Landroid/view/SurfaceView;
    .end local v4           #sPreview:Lcom/lge/camera/components/CameraPreview;
    :cond_6
    :goto_1
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchCameraId()-end, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1572
    .restart local v4       #sPreview:Lcom/lge/camera/components/CameraPreview;
    :cond_7
    :try_start_1
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v5}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreviewExtra()Landroid/view/SurfaceView;

    move-result-object v2

    .line 1574
    .restart local v2       #gPreviewExtra:Landroid/view/SurfaceView;
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v5}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v1

    .line 1576
    .restart local v1       #gPreview:Lcom/lge/camera/components/OpenGLSurfaceView;
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/lge/camera/components/OpenGLSurfaceView;->releasePreviewCallback(Landroid/hardware/Camera;)V

    .line 1577
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Lcom/lge/camera/components/OpenGLSurfaceView;->setVisibility(I)V

    .line 1578
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1579
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/olaworks/library/EngineProcessor;->releaseAllEngine()V

    .line 1580
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/lge/camera/CameraMediator;->swapPreviewEffect(Lcom/lge/olaworks/library/BaseEngine;)V

    .line 1581
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 1583
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/lge/camera/controller/PreviewController;->startPreview(Landroid/hardware/Camera$Parameters;Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1585
    .end local v1           #gPreview:Lcom/lge/camera/components/OpenGLSurfaceView;
    .end local v2           #gPreviewExtra:Landroid/view/SurfaceView;
    .end local v4           #sPreview:Lcom/lge/camera/components/CameraPreview;
    :catch_0
    move-exception v0

    .line 1586
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v5, "CameraApp"

    const-string v6, "NullPointerException:"

    invoke-static {v5, v6, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1587
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v5, :cond_6

    .line 1588
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v5, v10, v8}, Lcom/lge/camera/controller/PreviewController;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    goto :goto_1

    .line 1592
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_8
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v5, v10, v8}, Lcom/lge/camera/controller/PreviewController;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    goto :goto_1
.end method

.method public updateVoiceShutterIndicator(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 1783
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1784
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateVoiceIndicator(Z)V

    .line 1786
    :cond_0
    return-void
.end method

.method public waitAvailableQueueCount(I)V
    .locals 1
    .parameter "availableCount"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    invoke-virtual {v0, p1}, Lcom/lge/camera/util/ImageSavers;->waitAvailableQueueCount(I)V

    .line 626
    :cond_0
    return-void
.end method

.method public waitSaveImageThreadDone()V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    invoke-virtual {v0}, Lcom/lge/camera/util/ImageSavers;->waitDone()V

    .line 621
    :cond_0
    return-void
.end method
