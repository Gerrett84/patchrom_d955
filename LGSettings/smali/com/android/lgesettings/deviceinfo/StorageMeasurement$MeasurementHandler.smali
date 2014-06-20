.class Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;
.super Landroid/os/Handler;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeasurementHandler"
.end annotation


# instance fields
.field private volatile mBound:Z

.field private mCached:Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefContainerConn:Landroid/content/ServiceConnection;

.field private mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

.field private mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    .line 319
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 291
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    .line 301
    new-instance v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler$1;-><init>(Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    .line 320
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    .line 321
    return-void
.end method

.method static synthetic access$102(Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    return p1
.end method

.method private measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 14
    .parameter "imcs"

    .prologue
    .line 382
    iget-object v11, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v11}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v11}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 393
    .local v7, path:Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v8, Landroid/os/StatFs;

    iget-object v11, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v11}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v11}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    :goto_1
    invoke-direct {v8, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 395
    .local v8, stat:Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v2, v11

    .line 396
    .local v2, blockSize:J
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockCount()I

    move-result v11

    int-to-long v9, v11

    .line 397
    .local v9, totalBlocks:J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v0, v11

    .line 398
    .local v0, availableBlocks:J
    invoke-virtual {v8}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v11

    int-to-long v5, v11

    .line 400
    .local v5, freeBlocks:J
    iget-object v11, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    mul-long v12, v9, v2

    #setter for: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v11, v12, v13}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$502(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;J)J

    .line 401
    iget-object v11, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    mul-long v12, v0, v2

    #setter for: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v11, v12, v13}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$602(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;J)J

    .line 402
    iget-object v11, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    sub-long v12, v5, v0

    mul-long/2addr v12, v2

    #setter for: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->mReservedSize:J
    invoke-static {v11, v12, v13}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$702(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;J)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    iget-object v11, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    #calls: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V
    invoke-static {v11}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$800(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;)V

    .line 410
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #freeBlocks:J
    .end local v8           #stat:Landroid/os/StatFs;
    .end local v9           #totalBlocks:J
    :goto_2
    return-void

    .line 382
    .end local v7           #path:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 393
    .restart local v7       #path:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    goto :goto_1

    .line 403
    :catch_0
    move-exception v4

    .line 404
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-string v11, "StorageMeasurement"

    const-string v12, "Fail to access external storage"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 27
    .parameter "imcs"

    .prologue
    .line 413
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    move-object v11, v4

    .line 414
    .local v11, context:Landroid/content/Context;
    :goto_0
    if-nez v11, :cond_2

    .line 478
    :cond_0
    :goto_1
    return-void

    .line 413
    .end local v11           #context:Landroid/content/Context;
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 418
    .restart local v11       #context:Landroid/content/Context;
    :cond_2
    new-instance v5, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-direct {v5}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;-><init>()V

    .line 419
    .local v5, details:Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 421
    .local v7, finished:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v4}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$500(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    iput-wide v0, v5, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v4}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$600(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    iput-wide v0, v5, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    .line 423
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->mReservedSize:J
    invoke-static {v4}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$700(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    iput-wide v0, v5, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->reservedSize:J

    .line 424
    const-string v4, "user"

    invoke-virtual {v11, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/UserManager;

    .line 426
    .local v23, userManager:Landroid/os/UserManager;
    invoke-virtual/range {v23 .. v23}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v24

    .line 428
    .local v24, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 429
    .local v6, currentUser:I
    new-instance v12, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v12, v6}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 433
    .local v12, currentEnv:Landroid/os/Environment$UserEnvironment;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v4}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$900(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v4}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$1000(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const/4 v15, 0x1

    .line 435
    .local v15, measureMedia:Z
    :goto_2
    if-eqz v15, :cond_6

    .line 436
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$1100()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 437
    .local v20, type:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/os/Environment$UserEnvironment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 438
    .local v16, path:Ljava/io/File;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    #calls: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$1200(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v18

    .line 439
    .local v18, size:J
    iget-object v4, v5, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 433
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #measureMedia:Z
    .end local v16           #path:Ljava/io/File;
    .end local v18           #size:J
    .end local v20           #type:Ljava/lang/String;
    :cond_5
    const/4 v15, 0x0

    goto :goto_2

    .line 444
    .restart local v15       #measureMedia:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v4}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$900(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v4}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$1000(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 445
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v4}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$900(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v12}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    .line 447
    .restart local v16       #path:Ljava/io/File;
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    #calls: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v4, v0, v1}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$1300(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    iput-wide v0, v5, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    .line 452
    .end local v16           #path:Ljava/io/File;
    :cond_8
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/UserInfo;

    .line 453
    .local v21, user:Landroid/content/pm/UserInfo;
    new-instance v22, Landroid/os/Environment$UserEnvironment;

    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 454
    .local v22, userEnv:Landroid/os/Environment$UserEnvironment;
    invoke-virtual/range {v22 .. v22}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, p1

    #calls: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v0, v4}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$1200(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v18

    .line 455
    .restart local v18       #size:J
    iget-object v4, v5, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-wide/from16 v1, v18

    #calls: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V
    invoke-static {v4, v0, v1, v2}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$000(Landroid/util/SparseLongArray;IJ)V

    goto :goto_5

    .line 445
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v18           #size:J
    .end local v21           #user:Landroid/content/pm/UserInfo;
    .end local v22           #userEnv:Landroid/os/Environment$UserEnvironment;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v4}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v16

    goto :goto_4

    .line 459
    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_a
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 460
    .local v17, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v4}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$900(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v4}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$1000(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 461
    :cond_b
    const/16 v4, 0x2200

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v10

    .line 465
    .local v10, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v25

    mul-int v8, v4, v25

    .line 466
    .local v8, count:I
    new-instance v3, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$StatsObserver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v4}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$900(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;)Z

    move-result v4

    invoke-direct/range {v3 .. v8}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$StatsObserver;-><init>(ZLcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;ILandroid/os/Message;I)V

    .line 469
    .local v3, observer:Lcom/android/lgesettings/deviceinfo/StorageMeasurement$StatsObserver;
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v13           #i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/UserInfo;

    .line 470
    .restart local v21       #user:Landroid/content/pm/UserInfo;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 471
    .local v9, app:Landroid/content/pm/ApplicationInfo;
    iget-object v4, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    goto :goto_6

    .line 476
    .end local v3           #observer:Lcom/android/lgesettings/deviceinfo/StorageMeasurement$StatsObserver;
    .end local v8           #count:I
    .end local v9           #app:Landroid/content/pm/ApplicationInfo;
    .end local v10           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v21           #user:Landroid/content/pm/UserInfo;
    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_d
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 325
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 327
    :pswitch_0
    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    if-eqz v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    iget-object v4, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    #calls: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->sendExactUpdate(Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    invoke-static {v3, v4}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$300(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_0

    .line 332
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    .line 333
    .local v0, context:Landroid/content/Context;
    :cond_2
    if-eqz v0, :cond_0

    .line 337
    iget-object v4, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 338
    :try_start_0
    iget-boolean v3, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_3

    .line 339
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 340
    const/4 v3, 0x2

    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    invoke-virtual {p0, v3, v5}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 346
    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 342
    :cond_3
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v5, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 343
    .local v2, service:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 350
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #service:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/IMediaContainerService;

    .line 351
    .local v1, imcs:Lcom/android/internal/app/IMediaContainerService;
    invoke-direct {p0, v1}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;)V

    .line 352
    invoke-direct {p0, v1}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V

    goto :goto_0

    .line 356
    .end local v1           #imcs:Lcom/android/internal/app/IMediaContainerService;
    :pswitch_2
    iget-object v4, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 357
    :try_start_2
    iget-boolean v3, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_6

    .line 358
    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    .line 359
    .restart local v0       #context:Landroid/content/Context;
    :cond_4
    if-nez v0, :cond_5

    .line 360
    monitor-exit v4

    goto :goto_0

    .line 366
    .end local v0           #context:Landroid/content/Context;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 363
    .restart local v0       #context:Landroid/content/Context;
    :cond_5
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    .line 364
    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 366
    .end local v0           #context:Landroid/content/Context;
    :cond_6
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 370
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iput-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 371
    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    iget-object v4, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    #calls: Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->sendExactUpdate(Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    invoke-static {v3, v4}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->access$300(Lcom/android/lgesettings/deviceinfo/StorageMeasurement;Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto/16 :goto_0

    .line 375
    :pswitch_4
    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    goto/16 :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
