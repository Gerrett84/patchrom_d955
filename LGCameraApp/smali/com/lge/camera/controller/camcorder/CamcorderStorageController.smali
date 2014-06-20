.class public Lcom/lge/camera/controller/camcorder/CamcorderStorageController;
.super Lcom/lge/camera/controller/StorageController;
.source "CamcorderStorageController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/StorageController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camcorder/CamcorderStorageController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camcorder/CamcorderStorageController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camcorder/CamcorderStorageController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    return v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/camcorder/CamcorderStorageController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/camcorder/CamcorderStorageController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method private getAverageSpace(II)J
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 103
    mul-int v2, p1, p2

    int-to-long v0, v2

    .line 104
    .local v0, resolution:J
    const-wide/32 v2, 0x1fe000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 105
    const-wide/16 v2, 0x3

    mul-long/2addr v2, v0

    .line 111
    :goto_0
    return-wide v2

    .line 106
    :cond_0
    const-wide/32 v2, 0x4b000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 107
    const-wide/16 v2, 0x4

    mul-long/2addr v2, v0

    goto :goto_0

    .line 108
    :cond_1
    const-wide/32 v2, 0x12c00

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 109
    const-wide/16 v2, 0xd

    mul-long/2addr v2, v0

    goto :goto_0

    .line 111
    :cond_2
    const-wide/16 v2, 0x23

    mul-long/2addr v2, v0

    goto :goto_0
.end method

.method private setStorageState(ZJLjava/lang/String;)V
    .locals 8
    .parameter "mIsHaveEnoughFreeSpace"
    .parameter "mExternalFreeSpace"
    .parameter "state"

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 74
    if-eqz p1, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->isMediaScanning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    iput v5, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    .line 100
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_preview_size_on_device"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, sizeString:Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v0

    .line 80
    .local v0, size:[I
    aget v2, v0, v6

    aget v3, v0, v4

    invoke-direct {p0, v2, v3}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->getAverageSpace(II)J

    move-result-wide v2

    sget-wide v4, Lcom/lge/camera/properties/CameraConstants;->VIDEO_LOW_STORAGE_THRESHOLD:J

    add-long/2addr v2, v4

    const-wide/32 v4, 0x80000

    add-long/2addr v2, v4

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    .line 81
    iput v6, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_0

    .line 83
    :cond_1
    iput v7, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_0

    .line 85
    .end local v0           #size:[I
    .end local v1           #sizeString:Ljava/lang/String;
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_6

    .line 86
    invoke-virtual {p0, p4}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->isStorageReadOnly(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    iput v4, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_0

    .line 90
    :cond_3
    const-string v2, "mounted"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "checking"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useMediaScanning()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 92
    iput v5, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_0

    .line 94
    :cond_5
    iput v4, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_0

    .line 98
    :cond_6
    iput v7, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_0
.end method


# virtual methods
.method public checkStorage()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->checkStorage(Z)V

    .line 117
    return-void
.end method

.method public checkStorage(Z)V
    .locals 13
    .parameter "showToast"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 28
    const-string v0, "CameraApp"

    const-string v1, "checkstorage(%b)"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/4 v8, 0x0

    .line 31
    .local v8, mIsHaveEnoughFreeSpace:Z
    const-wide/16 v6, -0x1

    .line 32
    .local v6, mExternalFreeSpace:J
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->getCurrentStorageState()Ljava/lang/String;

    move-result-object v10

    .line 33
    .local v10, state:Ljava/lang/String;
    iget v9, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    .line 34
    .local v9, oldStorageState:I
    const-string v0, "CameraApp"

    const-string v1, "external storage state: %s"

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v10, v2, v12

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, v10}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->isStorageReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->checkFsWritable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->getFreeSpace()J

    move-result-wide v6

    .line 38
    sget-wide v0, Lcom/lge/camera/properties/CameraConstants;->VIDEO_LOW_STORAGE_THRESHOLD:J

    const-wide/32 v2, 0x80000

    add-long/2addr v0, v2

    cmp-long v0, v6, v0

    if-lez v0, :cond_0

    .line 39
    const/4 v8, 0x1

    .line 41
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mExternalFreeSpace="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsHaveEnoughFreeSpace="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_1
    invoke-direct {p0, v8, v6, v7, v10}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->setStorageState(ZJLjava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/util/FileNamer;->setStorageState(Landroid/content/Context;IILjava/lang/String;I)V

    .line 50
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    :cond_2
    :goto_0
    return-void

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camcorder/CamcorderStorageController$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController$1;-><init>(Lcom/lge/camera/controller/camcorder/CamcorderStorageController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 65
    const-string v0, "CameraApp"

    const-string v1, "mStorageState: %d"

    new-array v2, v11, [Ljava/lang/Object;

    iget v3, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "CameraApp"

    const-string v1, "show hint:%b, state %d -> %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    const/4 v3, 0x2

    iget v4, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    if-nez p1, :cond_4

    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    if-ne v0, v11, :cond_2

    .line 69
    :cond_4
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->showStorageHint(I)V

    goto :goto_0
.end method

.method public initController()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 21
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->checkStorage(Z)V

    .line 23
    iput-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 25
    :cond_0
    return-void
.end method

.method public isEnoughWorkingStorage(I)Z
    .locals 12
    .parameter "storageType"

    .prologue
    .line 128
    const-string v7, "CameraApp"

    const-string v8, "isEnoughWorkingStorage(%d)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v3, 0x0

    .line 130
    .local v3, result:Z
    const/4 v2, 0x0

    .line 131
    .local v2, isHaveEnoughFreeSpace:Z
    const-wide/16 v0, -0x1

    .line 133
    .local v0, freeSpace:J
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->getStorageState(I)Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, state:Ljava/lang/String;
    const-string v7, "CameraApp"

    const-string v8, "storage(%d) state: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->isStorageReady(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 137
    const-wide/16 v0, -0x1

    .line 152
    :goto_0
    if-eqz v2, :cond_0

    .line 153
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_preview_size_on_device"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, sizeString:Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v4

    .line 155
    .local v4, size:[I
    const/4 v7, 0x0

    aget v7, v4, v7

    const/4 v8, 0x1

    aget v8, v4, v8

    invoke-direct {p0, v7, v8}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->getAverageSpace(II)J

    move-result-wide v7

    sget-wide v9, Lcom/lge/camera/properties/CameraConstants;->VIDEO_LOW_STORAGE_THRESHOLD:J

    add-long/2addr v7, v9

    const-wide/32 v9, 0x80000

    add-long/2addr v7, v9

    cmp-long v7, v0, v7

    if-lez v7, :cond_4

    .line 156
    const/4 v3, 0x1

    .line 161
    .end local v4           #size:[I
    .end local v5           #sizeString:Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 139
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->checkFsWritable(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 140
    const-wide/16 v0, -0x1

    .line 149
    :cond_2
    :goto_2
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "freeSpace="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isHaveEnoughFreeSpace="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->getFreeSpace(I)J

    move-result-wide v0

    .line 144
    sget-wide v7, Lcom/lge/camera/properties/CameraConstants;->VIDEO_LOW_STORAGE_THRESHOLD:J

    const-wide/32 v9, 0x80000

    add-long/2addr v7, v9

    cmp-long v7, v0, v7

    if-lez v7, :cond_2

    .line 145
    const/4 v2, 0x1

    goto :goto_2

    .line 158
    .restart local v4       #size:[I
    .restart local v5       #sizeString:Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->checkStorage(Z)V

    .line 124
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/StorageController;->onResume()V

    .line 125
    return-void
.end method
