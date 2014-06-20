.class public Lcom/lge/camera/controller/camera/CameraStorageController;
.super Lcom/lge/camera/controller/StorageController;
.source "CameraStorageController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/StorageController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camera/CameraStorageController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camera/CameraStorageController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    return v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/camera/CameraStorageController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    return v0
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/camera/CameraStorageController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    return v0
.end method

.method private calculateAvailablePictureCountInTargetStorage(I)J
    .locals 14
    .parameter "storageType"

    .prologue
    .line 133
    const-string v9, "CameraApp"

    const-string v10, "calculate Available PictureCount In TargetStorage(%d)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-wide/16 v0, -0x1

    .line 135
    .local v0, freeSpace:J
    const/4 v2, 0x0

    .line 136
    .local v2, isHaveEnoughFreeSpace:Z
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camera/CameraStorageController;->getStorageState(I)Ljava/lang/String;

    move-result-object v8

    .line 138
    .local v8, state:Ljava/lang/String;
    const-string v9, "CameraApp"

    const-string v10, "storage(%d) state: %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v8, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, v8}, Lcom/lge/camera/controller/camera/CameraStorageController;->isStorageReady(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 141
    const-wide/16 v0, -0x1

    .line 156
    :goto_0
    const-wide/16 v3, -0x1

    .line 157
    .local v3, pictureRemaining:J
    if-eqz v2, :cond_7

    .line 158
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_picturesize"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 162
    .local v7, sizeString:Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_shot_mode"

    const-string v11, "shotmode_continuous"

    invoke-interface {v9, v10, v11}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_shot_mode"

    const-string v11, "shotmode_panorama"

    invoke-interface {v9, v10, v11}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 164
    :cond_0
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_shot_mode"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v5

    .line 165
    .local v5, shotModePref:Lcom/lge/camera/setting/ListPreference;
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v6

    .line 172
    .end local v5           #shotModePref:Lcom/lge/camera/setting/ListPreference;
    .local v6, size:[I
    :goto_1
    const/4 v9, 0x0

    aget v9, v6, v9

    const/4 v10, 0x1

    aget v10, v6, v10

    invoke-virtual {p0, v9, v10, v0, v1}, Lcom/lge/camera/controller/camera/CameraStorageController;->calculateRemainPictureCount(IIJ)J

    move-result-wide v3

    .line 173
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-gez v9, :cond_1

    .line 174
    const-wide/16 v3, 0x0

    .line 182
    .end local v6           #size:[I
    .end local v7           #sizeString:Ljava/lang/String;
    :cond_1
    :goto_2
    return-wide v3

    .line 143
    .end local v3           #pictureRemaining:J
    :cond_2
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkFsWritable(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 144
    const-wide/16 v0, -0x1

    .line 153
    :cond_3
    :goto_3
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "freeSpace="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isHaveEnoughFreeSpace="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_4
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camera/CameraStorageController;->getFreeSpace(I)J

    move-result-wide v0

    .line 148
    const-wide/32 v9, 0x100000

    cmp-long v9, v0, v9

    if-lez v9, :cond_3

    .line 149
    const/4 v2, 0x1

    goto :goto_3

    .line 166
    .restart local v3       #pictureRemaining:J
    .restart local v7       #sizeString:Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_shot_mode"

    const-string v11, "shotmode_free_panorama"

    invoke-interface {v9, v10, v11}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 167
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaResultSize()[I

    move-result-object v6

    .restart local v6       #size:[I
    goto :goto_1

    .line 169
    .end local v6           #size:[I
    :cond_6
    invoke-static {v7}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v6

    .restart local v6       #size:[I
    goto :goto_1

    .line 176
    .end local v6           #size:[I
    .end local v7           #sizeString:Ljava/lang/String;
    :cond_7
    const-wide/16 v9, -0x1

    cmp-long v9, v0, v9

    if-nez v9, :cond_8

    .line 177
    const-wide/16 v3, -0x1

    goto :goto_2

    .line 179
    :cond_8
    const-wide/16 v3, 0x0

    goto :goto_2
.end method

.method private getAverageSpace(II)D
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 187
    mul-int v2, p1, p2

    int-to-double v2, v2

    const-wide v4, 0x3fd3333333333333L

    mul-double v0, v2, v4

    .line 188
    .local v0, averageSpace:D
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v4

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_picturesize"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/lge/camera/util/Util;->getPictureSizeScale(ILjava/lang/String;ILjava/lang/String;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 197
    return-wide v0
.end method

.method private setStorageState(ZJLjava/lang/String;)V
    .locals 8
    .parameter "mIsHaveEnoughFreeSpace"
    .parameter "mExternalFreeSpace"
    .parameter "state"

    .prologue
    .line 77
    const-wide/16 v0, 0x0

    .line 78
    .local v0, pictureRemaining:J
    if-eqz p1, :cond_8

    .line 79
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_picturesize"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, sizeString:Ljava/lang/String;
    const/4 v3, 0x0

    .line 83
    .local v3, size:[I
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    const-string v7, "shotmode_continuous"

    invoke-interface {v5, v6, v7}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    const-string v7, "shotmode_panorama"

    invoke-interface {v5, v6, v7}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 85
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 86
    .local v2, shotModePref:Lcom/lge/camera/setting/ListPreference;
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v3

    .line 97
    .end local v2           #shotModePref:Lcom/lge/camera/setting/ListPreference;
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 98
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    invoke-virtual {p0, v5, v6, p2, p3}, Lcom/lge/camera/controller/camera/CameraStorageController;->calculateRemainPictureCount(IIJ)J

    move-result-wide v0

    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->isMediaScanning()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 102
    const/4 v5, 0x3

    iput v5, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    .line 128
    .end local v3           #size:[I
    .end local v4           #sizeString:Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v0, v1}, Lcom/lge/camera/ControllerFunction;->setPicturesRemaining(J)V

    .line 129
    return-void

    .line 87
    .restart local v3       #size:[I
    .restart local v4       #sizeString:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    const-string v7, "shotmode_free_panorama"

    invoke-interface {v5, v6, v7}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 88
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaResultSize()[I

    move-result-object v3

    goto :goto_0

    .line 89
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    const-string v7, "shotmode_dual_camera"

    invoke-interface {v5, v6, v7}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 90
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getDualCameraPictureSize()[I

    move-result-object v5

    if-eqz v5, :cond_1

    .line 91
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getDualCameraPictureSize()[I

    move-result-object v3

    goto :goto_0

    .line 94
    :cond_5
    invoke-static {v4}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_0

    .line 104
    :cond_6
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_7

    .line 105
    const/4 v5, 0x0

    iput v5, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_1

    .line 107
    :cond_7
    const-wide/16 v0, 0x0

    .line 108
    const/4 v5, 0x2

    iput v5, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_1

    .line 111
    .end local v3           #size:[I
    .end local v4           #sizeString:Ljava/lang/String;
    :cond_8
    const-wide/16 v5, -0x1

    cmp-long v5, p2, v5

    if-nez v5, :cond_c

    .line 112
    const-wide/16 v0, -0x1

    .line 113
    invoke-virtual {p0, p4}, Lcom/lge/camera/controller/camera/CameraStorageController;->isStorageReadOnly(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 114
    const/4 v5, 0x1

    iput v5, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_1

    .line 117
    :cond_9
    const-string v5, "mounted"

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "checking"

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_a
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useMediaScanning()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 119
    const/4 v5, 0x3

    iput v5, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_1

    .line 121
    :cond_b
    const/4 v5, 0x1

    iput v5, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_1

    .line 125
    :cond_c
    const-wide/16 v0, 0x0

    .line 126
    const/4 v5, 0x2

    iput v5, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_1
.end method


# virtual methods
.method public calculateRemainPictureCount(IIJ)J
    .locals 9
    .parameter "width"
    .parameter "height"
    .parameter "freeSpace"

    .prologue
    .line 221
    const-wide/16 v2, 0x0

    .line 222
    .local v2, remain:J
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/camera/CameraStorageController;->getAverageSpace(II)D

    move-result-wide v0

    .line 224
    .local v0, average:D
    const-wide/32 v4, 0x100000

    sub-long v4, p3, v4

    long-to-double v4, v4

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-long v2, v4

    .line 225
    const-string v4, "CameraApp"

    const-string v5, "picture count remained : %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-wide v2
.end method

.method public checkStorage(Z)V
    .locals 10
    .parameter "showToast"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 31
    const-string v0, "CameraApp"

    const-string v1, "checkstorage(%b)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 v8, 0x0

    .line 34
    .local v8, mIsHaveEnoughFreeSpace:Z
    const-wide/16 v6, -0x1

    .line 35
    .local v6, mExternalFreeSpace:J
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getCurrentStorageState()Ljava/lang/String;

    move-result-object v9

    .line 37
    .local v9, state:Ljava/lang/String;
    const-string v0, "CameraApp"

    const-string v1, "external storage state: %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v9, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, v9}, Lcom/lge/camera/controller/camera/CameraStorageController;->isStorageReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkFsWritable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getFreeSpace()J

    move-result-wide v6

    .line 41
    const-wide/32 v0, 0x100000

    cmp-long v0, v6, v0

    if-lez v0, :cond_0

    .line 42
    const/4 v8, 0x1

    .line 44
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

    .line 47
    :cond_1
    invoke-direct {p0, v8, v6, v7, v9}, Lcom/lge/camera/controller/camera/CameraStorageController;->setStorageState(ZJLjava/lang/String;)V

    .line 49
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

    .line 53
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    :cond_2
    :goto_0
    return-void

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camera/CameraStorageController$1;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/controller/camera/CameraStorageController$1;-><init>(Lcom/lge/camera/controller/camera/CameraStorageController;Z)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getAvailablePictureCount()J
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getPicturesRemaining()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAvailablePictureCount(I)J
    .locals 2
    .parameter "storageType"

    .prologue
    .line 205
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getPicturesRemaining()J

    move-result-wide v0

    .line 208
    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/CameraStorageController;->calculateAvailablePictureCountInTargetStorage(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public initController()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 24
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V

    .line 26
    iput-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 28
    :cond_0
    return-void
.end method

.method public isEnoughWorkingStorage(I)Z
    .locals 4
    .parameter "storageType"

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camera/CameraStorageController;->getAvailablePictureCount(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V

    .line 216
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/StorageController;->onResume()V

    .line 217
    return-void
.end method
