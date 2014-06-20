.class public final Lcom/lge/camera/properties/StorageProperties;
.super Ljava/lang/Object;
.source "StorageProperties.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmmcName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "internal storage"

    return-object v0
.end method

.method public static getNoOfStorageVolumes()I
    .locals 12

    .prologue
    const/4 v10, 0x1

    .line 46
    const/4 v8, 0x1

    .line 47
    .local v8, volumeCount:I
    const/4 v7, 0x0

    .line 49
    .local v7, service:Landroid/os/IBinder;
    :try_start_0
    const-string v9, "mount"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 50
    if-eqz v7, :cond_3

    .line 51
    invoke-static {v7}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v3

    .line 52
    .local v3, mMntSvc:Landroid/os/storage/IMountService;
    if-eqz v3, :cond_2

    .line 53
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v9

    const/16 v11, 0x8

    if-ne v9, v11, :cond_1

    move v8, v10

    .line 88
    .end local v3           #mMntSvc:Landroid/os/storage/IMountService;
    .end local v8           #volumeCount:I
    :cond_0
    :goto_0
    return v8

    .line 56
    .restart local v3       #mMntSvc:Landroid/os/storage/IMountService;
    .restart local v8       #volumeCount:I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 57
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v11, "getVolumeList"

    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/Class;

    invoke-virtual {v1, v11, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 58
    .local v4, md:Ljava/lang/reflect/Method;
    if-eqz v4, :cond_2

    .line 59
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    .line 60
    .local v5, ob:[Ljava/lang/Object;
    if-eqz v5, :cond_2

    .line 61
    array-length v8, v5
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 85
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #mMntSvc:Landroid/os/storage/IMountService;
    .end local v4           #md:Ljava/lang/reflect/Method;
    .end local v5           #ob:[Ljava/lang/Object;
    :cond_2
    :goto_1
    if-le v8, v10, :cond_0

    const-string v9, "EXTERNAL_ADD_STORAGE"

    invoke-static {v9}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    move v8, v10

    .line 86
    goto :goto_0

    .line 73
    :cond_3
    :try_start_1
    const-string v9, "CameraApp"

    const-string v11, "mount service is null"

    invoke-static {v9, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 75
    :catch_0
    move-exception v2

    .line 76
    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 77
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 78
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 79
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 80
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 81
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v6

    .line 82
    .local v6, rex:Ljava/lang/Exception;
    const-string v9, "CameraApp"

    const-string v11, "Exception : "

    invoke-static {v9, v11, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static isAllMemorySupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 42
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getNoOfStorageVolumes()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEMMCmemory()Z
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 23
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExternalMemoryOnly()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getNoOfStorageVolumes()I

    move-result v0

    .line 37
    .local v0, volumeCount:I
    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isEMMCmemory()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInternalMemoryOnly()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 28
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getNoOfStorageVolumes()I

    move-result v0

    .line 30
    .local v0, volumeCount:I
    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isEMMCmemory()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
