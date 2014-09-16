.class public Lcom/lge/lgdrm/DrmFileLockClient;
.super Ljava/lang/Object;
.source "DrmFileLockClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;
    }
.end annotation


# static fields
.field public static final FILE_IO_UNIT_128KB:I = 0x20000

.field public static final FILE_IO_UNIT_16KB:I = 0x4000

.field public static final FILE_IO_UNIT_1KB:I = 0x400

.field public static final FILE_IO_UNIT_256KB:I = 0x40000

.field public static final FILE_IO_UNIT_2KB:I = 0x800

.field public static final FILE_IO_UNIT_32KB:I = 0x8000

.field public static final FILE_IO_UNIT_4KB:I = 0x1000

.field public static final FILE_IO_UNIT_64KB:I = 0x10000

.field public static final FILE_IO_UNIT_8KB:I = 0x2000

.field public static final LOCK_FILE_COMPLETE:I = 0xa

.field public static final LOCK_FILE_ERROR:I = -0xa

.field private static final TAG:Ljava/lang/String; = "DrmFileLockClient"

.field public static final UNLOCK_FILE_COMPLETE:I = 0x14

.field public static final UNLOCK_FILE_ERROR:I = -0x14


# instance fields
.field private mDstFilePath:Ljava/lang/String;

.field private mLockSessionID:I

.field private mOnEventListener:Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;

.field private mSrcFilePath:Ljava/lang/String;

.field private mStartTime:J

.field private mUnlockSessionID:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    .line 96
    iput v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:I

    .line 97
    iput-object v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mDstFilePath:Ljava/lang/String;

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mStartTime:J

    .line 104
    return-void
.end method

.method private cleanSessions()V
    .locals 1

    .prologue
    .line 676
    iget v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    if-eqz v0, :cond_0

    .line 677
    iget v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmFileLockClient;->abortFileLockSession(I)I

    .line 678
    iget v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmFileLockClient;->closeFileLockSession(I)I

    .line 681
    :cond_0
    iget v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:I

    if-eqz v0, :cond_1

    .line 682
    iget v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:I

    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmFileLockClient;->abortFileUnlockSession(I)I

    .line 683
    iget v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:I

    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmFileLockClient;->closeFileUnlockSession(I)I

    .line 685
    :cond_1
    return-void
.end method

.method public static getUserInfo()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 630
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 631
    const/4 v0, 0x0

    .line 638
    :goto_0
    return-object v0

    .line 634
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 635
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_1
    invoke-static {}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeGetUserInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isFileLockAllowed(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .parameter "srcFile"
    .parameter "srcMimeType"
    .parameter "srcMediaType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 196
    sget-boolean v2, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v2, :cond_0

    .line 214
    :goto_0
    return v1

    .line 200
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    .line 205
    :cond_2
    const-string v0, "DrmFileLockClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFileLockAllowed() : parameter is invalid. ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_3
    if-eq p2, v0, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_4

    const/4 v2, 0x3

    if-eq p2, v2, :cond_4

    .line 210
    const-string v0, "DrmFileLockClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFileLockAllowed() : srcMediaType is invalid. ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeIsFileLockAllowed(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public static isFileUnlockAllowed(Ljava/lang/String;)Z
    .locals 3
    .parameter "srcFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 424
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_1

    .line 437
    :cond_0
    :goto_0
    return v0

    .line 428
    :cond_1
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_2

    .line 429
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_2
    if-nez p0, :cond_3

    .line 433
    const-string v1, "DrmFileLockClient"

    const-string/jumbo v2, "isFileUnlockAllowed() : srcFile is invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    :cond_3
    invoke-static {p0}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeIsFileUnlockAllowed(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static native nativeAbortFileLockSession(I)I
.end method

.method private static native nativeAbortFileUnlockSession(I)I
.end method

.method private static native nativeCloseFileLockSession(I)I
.end method

.method private static native nativeCloseFileUnlockSession(I)I
.end method

.method private static native nativeFileLock(I)I
.end method

.method private static native nativeFileUnlock(I)I
.end method

.method private static native nativeGetUserInfo()Ljava/lang/String;
.end method

.method private static native nativeIsFileLockAllowed(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private static native nativeIsFileUnlockAllowed(Ljava/lang/String;)I
.end method

.method private static native nativeOpenFileLockSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method private static native nativeOpenFileUnlockSession(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method private static native nativeSetUserInfo(Ljava/lang/String;)I
.end method

.method public static setUserInfo(Ljava/lang/String;)I
    .locals 3
    .parameter "userInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 652
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_0

    .line 667
    :goto_0
    return v0

    .line 656
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_1

    .line 657
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 660
    :cond_1
    if-nez p0, :cond_2

    .line 661
    const-string v1, "DrmFileLockClient"

    const-string/jumbo v2, "setUserInfo() : userInfo is invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 665
    :cond_2
    invoke-static {p0}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeSetUserInfo(Ljava/lang/String;)I

    move-result v0

    .line 667
    .local v0, nResult:I
    goto :goto_0
.end method


# virtual methods
.method public abortFileLockSession(I)I
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 362
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_0

    .line 377
    :goto_0
    return v0

    .line 366
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_1

    .line 367
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    :cond_1
    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    if-eq p1, v1, :cond_3

    .line 371
    :cond_2
    const-string v1, "DrmFileLockClient"

    const-string v2, "abortFileLockSession() : sessionID is invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 375
    :cond_3
    invoke-static {p1}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAbortFileLockSession(I)I

    move-result v0

    .line 377
    .local v0, nResult:I
    goto :goto_0
.end method

.method public abortFileUnlockSession(I)I
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 569
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_0

    .line 584
    :goto_0
    return v0

    .line 573
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_1

    .line 574
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 577
    :cond_1
    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:I

    if-eq p1, v1, :cond_3

    .line 578
    :cond_2
    const-string v1, "DrmFileLockClient"

    const-string v2, "abortFileUnlockSession() : sessionID is invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 582
    :cond_3
    invoke-static {p1}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeAbortFileUnlockSession(I)I

    move-result v0

    .line 584
    .local v0, nResult:I
    goto :goto_0
.end method

.method public closeFileLockSession(I)I
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 395
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_0

    .line 412
    :goto_0
    return v0

    .line 399
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_1

    .line 400
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 403
    :cond_1
    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    if-eq p1, v1, :cond_3

    .line 404
    :cond_2
    const-string v1, "DrmFileLockClient"

    const-string v2, "closeFileLockSession() : sessionID is invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 408
    :cond_3
    invoke-static {p1}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeCloseFileLockSession(I)I

    move-result v0

    .line 409
    .local v0, nResult:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    .line 410
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mStartTime:J

    goto :goto_0
.end method

.method public closeFileUnlockSession(I)I
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 602
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_0

    .line 619
    :goto_0
    return v0

    .line 606
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_1

    .line 607
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 610
    :cond_1
    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:I

    if-eq p1, v1, :cond_3

    .line 611
    :cond_2
    const-string v1, "DrmFileLockClient"

    const-string v2, "closeFileUnlockSession() : sessionID is invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 615
    :cond_3
    invoke-static {p1}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeCloseFileUnlockSession(I)I

    move-result v0

    .line 616
    .local v0, nResult:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:I

    .line 617
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mStartTime:J

    goto :goto_0
.end method

.method public fileLock(I)I
    .locals 4
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 324
    sget-boolean v2, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 348
    :cond_0
    :goto_0
    return v0

    .line 328
    :cond_1
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v2

    if-nez v2, :cond_2

    .line 329
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    :cond_2
    if-eq p1, v1, :cond_3

    if-eqz p1, :cond_3

    iget v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    if-eq p1, v2, :cond_4

    .line 333
    :cond_3
    const-string v2, "DrmFileLockClient"

    const-string v3, "fileLock() : sessionID is invalid."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 334
    goto :goto_0

    .line 337
    :cond_4
    invoke-static {p1}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeFileLock(I)I

    move-result v0

    .line 339
    .local v0, nResult:I
    iget-object v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mOnEventListener:Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;

    if-eqz v2, :cond_0

    .line 340
    if-ne v1, v0, :cond_5

    .line 341
    iget-object v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mOnEventListener:Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;

    const/16 v2, -0xa

    invoke-interface {v1, p0, v2}, Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;->onEvent(Lcom/lge/lgdrm/DrmFileLockClient;I)V

    goto :goto_0

    .line 344
    :cond_5
    iget-object v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mOnEventListener:Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;

    const/16 v2, 0xa

    invoke-interface {v1, p0, v2}, Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;->onEvent(Lcom/lge/lgdrm/DrmFileLockClient;I)V

    goto :goto_0
.end method

.method public fileUnlock(I)I
    .locals 4
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 531
    sget-boolean v2, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 555
    :cond_0
    :goto_0
    return v0

    .line 535
    :cond_1
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v2

    if-nez v2, :cond_2

    .line 536
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 539
    :cond_2
    if-eq p1, v1, :cond_3

    if-eqz p1, :cond_3

    iget v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:I

    if-eq p1, v2, :cond_4

    .line 540
    :cond_3
    const-string v2, "DrmFileLockClient"

    const-string v3, "fileUnlock() : sessionID is invalid."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 541
    goto :goto_0

    .line 544
    :cond_4
    invoke-static {p1}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeFileUnlock(I)I

    move-result v0

    .line 546
    .local v0, nResult:I
    iget-object v2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mOnEventListener:Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;

    if-eqz v2, :cond_0

    .line 547
    if-ne v1, v0, :cond_5

    .line 548
    iget-object v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mOnEventListener:Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;

    const/16 v2, -0x14

    invoke-interface {v1, p0, v2}, Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;->onEvent(Lcom/lge/lgdrm/DrmFileLockClient;I)V

    goto :goto_0

    .line 551
    :cond_5
    iget-object v1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mOnEventListener:Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;

    const/16 v2, 0x14

    invoke-interface {v1, p0, v2}, Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;->onEvent(Lcom/lge/lgdrm/DrmFileLockClient;I)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 672
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmFileLockClient;->cleanSessions()V

    .line 673
    return-void
.end method

.method public getDstFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mDstFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainingTime(I)J
    .locals 14
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    const-wide/16 v6, -0x1

    .line 153
    sget-boolean v10, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v10, :cond_0

    .line 179
    :goto_0
    return-wide v6

    .line 157
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v10

    if-nez v10, :cond_1

    .line 158
    new-instance v10, Ljava/lang/SecurityException;

    const-string v11, "Need proper permission to access drm"

    invoke-direct {v10, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 161
    :cond_1
    const/4 v10, -0x1

    if-eq p1, v10, :cond_2

    if-eqz p1, :cond_2

    iget v10, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    if-eq p1, v10, :cond_3

    iget v10, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:I

    if-eq p1, v10, :cond_3

    .line 162
    :cond_2
    const-string v10, "DrmFileLockClient"

    const-string v11, "getRemainingTime() : sessionID is invalid."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :cond_3
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 167
    .local v8, totalSize:J
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mDstFilePath:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 168
    .local v0, currentSize:J
    cmp-long v10, v8, v12

    if-eqz v10, :cond_4

    cmp-long v10, v0, v12

    if-nez v10, :cond_5

    .line 169
    :cond_4
    const-string v10, "DrmFileLockClient"

    const-string v11, "getRemainingTime() : file size is wrong"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_5
    const-wide/16 v10, 0x800

    add-long/2addr v8, v10

    .line 175
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 176
    .local v4, now:J
    iget-wide v10, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mStartTime:J

    sub-long v2, v4, v10

    .line 177
    .local v2, elapsedTime:J
    long-to-double v10, v8

    long-to-double v12, v0

    div-double/2addr v10, v12

    long-to-double v12, v2

    mul-double/2addr v10, v12

    double-to-long v10, v10

    sub-long v6, v10, v2

    .line 179
    .local v6, result:J
    goto :goto_0
.end method

.method public getSrcFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public openFileLockSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .parameter "srcFile"
    .parameter "dstFile"
    .parameter "srcMimeType"
    .parameter "srcMediaType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 233
    const/4 v8, 0x0

    .line 236
    .local v8, nResult:I
    const/high16 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/lge/lgdrm/DrmFileLockClient;->openFileLockSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 241
    return v8

    .line 237
    :catch_0
    move-exception v7

    .line 238
    .local v7, e:Ljava/lang/SecurityException;
    throw v7
.end method

.method public openFileLockSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 4
    .parameter "srcFile"
    .parameter "dstFile"
    .parameter "srcMimeType"
    .parameter "srcMediaType"
    .parameter "ioUnitSize"
    .parameter "sleepUSec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 271
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v0

    .line 275
    :cond_1
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_2

    .line 276
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_4

    .line 280
    :cond_3
    const-string v1, "DrmFileLockClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openFileLockSession() : parameter is invalid. ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    :cond_4
    const/4 v1, 0x1

    if-eq p4, v1, :cond_5

    const/4 v1, 0x2

    if-eq p4, v1, :cond_5

    const/4 v1, 0x3

    if-eq p4, v1, :cond_5

    .line 285
    const-string v1, "DrmFileLockClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openFileLockSession() : srcMediaType is invalid. ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    :cond_5
    const/16 v1, 0x400

    if-eq p5, v1, :cond_6

    const/16 v1, 0x800

    if-eq p5, v1, :cond_6

    const/16 v1, 0x1000

    if-eq p5, v1, :cond_6

    const/16 v1, 0x2000

    if-eq p5, v1, :cond_6

    const/16 v1, 0x4000

    if-eq p5, v1, :cond_6

    const v1, 0x8000

    if-eq p5, v1, :cond_6

    const/high16 v1, 0x1

    if-eq p5, v1, :cond_6

    const/high16 v1, 0x2

    if-eq p5, v1, :cond_6

    const/high16 v1, 0x4

    if-eq p5, v1, :cond_6

    .line 295
    const-string v1, "DrmFileLockClient"

    const-string/jumbo v2, "openFileLockSession() : file unit size is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 299
    :cond_6
    if-ltz p6, :cond_0

    .line 303
    invoke-static/range {p1 .. p6}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeOpenFileLockSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    .line 305
    iput-object p1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    .line 306
    iput-object p2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mDstFilePath:Ljava/lang/String;

    .line 308
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mStartTime:J

    .line 310
    iget v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mLockSessionID:I

    goto/16 :goto_0
.end method

.method public openFileUnlockSession(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "srcFile"
    .parameter "dstFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 451
    const/4 v1, 0x0

    .line 454
    .local v1, nResult:I
    const/high16 v2, 0x4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/lge/lgdrm/DrmFileLockClient;->openFileUnlockSession(Ljava/lang/String;Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 459
    return v1

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, e:Ljava/lang/SecurityException;
    throw v0
.end method

.method public openFileUnlockSession(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 4
    .parameter "srcFile"
    .parameter "dstFile"
    .parameter "ioUnitSize"
    .parameter "sleepUSec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 484
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_1

    .line 517
    :cond_0
    :goto_0
    return v0

    .line 488
    :cond_1
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_2

    .line 489
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_4

    .line 493
    :cond_3
    const-string v1, "DrmFileLockClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openFileUnlockSession() : parameter is invalid. ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 497
    :cond_4
    const/16 v1, 0x400

    if-eq p3, v1, :cond_5

    const/16 v1, 0x800

    if-eq p3, v1, :cond_5

    const/16 v1, 0x1000

    if-eq p3, v1, :cond_5

    const/16 v1, 0x2000

    if-eq p3, v1, :cond_5

    const/16 v1, 0x4000

    if-eq p3, v1, :cond_5

    const v1, 0x8000

    if-eq p3, v1, :cond_5

    const/high16 v1, 0x1

    if-eq p3, v1, :cond_5

    const/high16 v1, 0x2

    if-eq p3, v1, :cond_5

    const/high16 v1, 0x4

    if-eq p3, v1, :cond_5

    .line 502
    const-string v1, "DrmFileLockClient"

    const-string/jumbo v2, "openFileUnlockSession() : file unit size is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 506
    :cond_5
    if-ltz p4, :cond_0

    .line 510
    invoke-static {p1, p2, p3, p4}, Lcom/lge/lgdrm/DrmFileLockClient;->nativeOpenFileUnlockSession(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:I

    .line 512
    iput-object p1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mSrcFilePath:Ljava/lang/String;

    .line 513
    iput-object p2, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mDstFilePath:Ljava/lang/String;

    .line 515
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mStartTime:J

    .line 517
    iget v0, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mUnlockSessionID:I

    goto/16 :goto_0
.end method

.method public declared-synchronized setOnEventListener(Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;)V
    .locals 1
    .parameter "eventListener"

    .prologue
    .line 121
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 122
    :try_start_0
    iput-object p1, p0, Lcom/lge/lgdrm/DrmFileLockClient;->mOnEventListener:Lcom/lge/lgdrm/DrmFileLockClient$OnEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_0
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
