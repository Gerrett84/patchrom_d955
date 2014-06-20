.class public Lcom/lge/camera/util/SecureImageUtil;
.super Ljava/lang/Object;
.source "SecureImageUtil.java"


# static fields
.field public static mSecureImageUtil:Lcom/lge/camera/util/SecureImageUtil;


# instance fields
.field private mLock:Ljava/lang/Object;

.field private mSecureLockImageUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureLockVideoUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/camera/util/SecureImageUtil;->mSecureImageUtil:Lcom/lge/camera/util/SecureImageUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/util/SecureImageUtil;->mLock:Ljava/lang/Object;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/util/SecureImageUtil;->mSecureLockImageUriList:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/util/SecureImageUtil;->mSecureLockVideoUriList:Ljava/util/ArrayList;

    return-void
.end method

.method public static get()Lcom/lge/camera/util/SecureImageUtil;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/lge/camera/util/SecureImageUtil;->mSecureImageUtil:Lcom/lge/camera/util/SecureImageUtil;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/lge/camera/util/SecureImageUtil;

    invoke-direct {v0}, Lcom/lge/camera/util/SecureImageUtil;-><init>()V

    sput-object v0, Lcom/lge/camera/util/SecureImageUtil;->mSecureImageUtil:Lcom/lge/camera/util/SecureImageUtil;

    .line 18
    :cond_0
    sget-object v0, Lcom/lge/camera/util/SecureImageUtil;->mSecureImageUtil:Lcom/lge/camera/util/SecureImageUtil;

    return-object v0
.end method


# virtual methods
.method public addSecureLocVideokUri(Landroid/net/Uri;)V
    .locals 2
    .parameter "addUri"

    .prologue
    .line 80
    iget-object v1, p0, Lcom/lge/camera/util/SecureImageUtil;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/util/SecureImageUtil;->mSecureLockVideoUriList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/lge/camera/util/SecureImageUtil;->mSecureLockVideoUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    monitor-exit v1

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addSecureLockImageUri(Landroid/net/Uri;)V
    .locals 3
    .parameter "addUri"

    .prologue
    .line 71
    iget-object v1, p0, Lcom/lge/camera/util/SecureImageUtil;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/util/SecureImageUtil;->mSecureLockImageUriList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "CameraApp"

    const-string v2, "addSecureLockImageUri end = "

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/lge/camera/util/SecureImageUtil;->mSecureLockImageUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    monitor-exit v1

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkSecureLockUriList(Landroid/app/Activity;I)V
    .locals 11
    .parameter "activity"
    .parameter "cameraMode"

    .prologue
    .line 44
    const-wide/16 v3, -0x1

    .line 45
    .local v3, id:J
    iget-object v8, p0, Lcom/lge/camera/util/SecureImageUtil;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 46
    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/lge/camera/util/SecureImageUtil;->isSecureLockUriListEmpty(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 47
    const-string v7, "CameraApp"

    const-string v9, "checkSecureLockUriList start = "

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v1, deleteUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-nez p2, :cond_1

    iget-object v6, p0, Lcom/lge/camera/util/SecureImageUtil;->mSecureLockImageUriList:Ljava/util/ArrayList;

    .line 51
    .local v6, secureLockUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 52
    .local v5, secureImageUri:Landroid/net/Uri;
    const-string v7, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "secureLockUriList = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {p1, v5}, Lcom/lge/camera/util/Util;->getIdFromUri(Landroid/app/Activity;Landroid/net/Uri;)J

    move-result-wide v3

    .line 54
    const-wide/16 v9, -0x1

    cmp-long v7, v3, v9

    if-nez v7, :cond_0

    .line 55
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    .end local v1           #deleteUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #secureImageUri:Landroid/net/Uri;
    .end local v6           #secureLockUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 49
    .restart local v1       #deleteUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/lge/camera/util/SecureImageUtil;->mSecureLockVideoUriList:Ljava/util/ArrayList;

    goto :goto_0

    .line 59
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v6       #secureLockUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 60
    .local v0, deleteUri:Landroid/net/Uri;
    invoke-virtual {p0, v0, p2}, Lcom/lge/camera/util/SecureImageUtil;->removeSecureLockUri(Landroid/net/Uri;I)V

    .line 61
    const-string v7, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteUri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 63
    .end local v0           #deleteUri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 64
    const/4 v1, 0x0

    .line 65
    const-string v7, "CameraApp"

    const-string v9, "checkSecureLockUriList end = "

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .end local v1           #deleteUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #secureLockUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    return-void
.end method

.method public getSecureLockUriList(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "cameraMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/util/SecureImageUtil;->mSecureLockImageUriList:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/util/SecureImageUtil;->mSecureLockVideoUriList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getSecureLockUriListSize(I)I
    .locals 2
    .parameter "cameraMode"

    .prologue
    .line 33
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/util/SecureImageUtil;->mSecureLockImageUriList:Ljava/util/ArrayList;

    .line 37
    .local v0, secureLockUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :goto_0
    if-nez v0, :cond_1

    .line 38
    const/4 v1, 0x0

    .line 40
    :goto_1
    return v1

    .line 33
    .end local v0           #secureLockUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/util/SecureImageUtil;->mSecureLockVideoUriList:Ljava/util/ArrayList;

    goto :goto_0

    .line 40
    .restart local v0       #secureLockUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_1
.end method

.method public isSecureLockUriListEmpty(I)Z
    .locals 1
    .parameter "cameraMode"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/lge/camera/util/SecureImageUtil;->getSecureLockUriListSize(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    const-string v0, "CameraApp"

    const-string v1, "SecureImageUtil release."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/lge/camera/util/SecureImageUtil;->mSecureLockImageUriList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/lge/camera/util/SecureImageUtil;->mSecureLockImageUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 104
    iput-object v2, p0, Lcom/lge/camera/util/SecureImageUtil;->mSecureLockImageUriList:Ljava/util/ArrayList;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/util/SecureImageUtil;->mSecureLockVideoUriList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/lge/camera/util/SecureImageUtil;->mSecureLockVideoUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    iput-object v2, p0, Lcom/lge/camera/util/SecureImageUtil;->mSecureLockVideoUriList:Ljava/util/ArrayList;

    .line 111
    :cond_1
    sput-object v2, Lcom/lge/camera/util/SecureImageUtil;->mSecureImageUtil:Lcom/lge/camera/util/SecureImageUtil;

    .line 112
    return-void
.end method

.method public removeSecureLockUri(Landroid/net/Uri;I)V
    .locals 5
    .parameter "removeUri"
    .parameter "cameraMode"

    .prologue
    .line 88
    iget-object v3, p0, Lcom/lge/camera/util/SecureImageUtil;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 89
    if-nez p2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/util/SecureImageUtil;->mSecureLockImageUriList:Ljava/util/ArrayList;

    .line 90
    .local v1, secureLockUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 92
    .local v0, index:I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 93
    const-string v2, "CameraApp"

    const-string v4, "removeSecureLockUri end = "

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 97
    .end local v0           #index:I
    :cond_0
    monitor-exit v3

    .line 98
    return-void

    .line 89
    .end local v1           #secureLockUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/util/SecureImageUtil;->mSecureLockVideoUriList:Ljava/util/ArrayList;

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
