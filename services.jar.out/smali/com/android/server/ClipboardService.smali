.class public Lcom/android/server/ClipboardService;
.super Landroid/content/IClipboard$Stub;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ClipboardService$PerUserClipboard;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "media"

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://media/"

.field private static final EXTERNAL_CONTENT_URI:Landroid/net/Uri; = null

.field private static final MAX_CLIP_COUNT:I = 0x14

.field private static final SECURITY_BRIDGE_NAME:Ljava/lang/String; = "com.android.services.SecurityBridge.core.ClipboardManagerSB"

.field private static final TAG:Ljava/lang/String; = "ClipboardService"


# instance fields
.field private dbHelper:Lcom/lge/cliptray/ClipDBOpenHelper;

.field private final mAm:Landroid/app/IActivityManager;

.field private mClipboards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/ClipboardService$PerUserClipboard;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mSecurityBridge:Lcom/android/services/SecurityBridge/api/ClipboardManagerMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-string v0, "content://media/external/databases"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/ClipboardService;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    .line 117
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    .line 123
    iput-object p1, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    .line 124
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    .line 126
    const/4 v2, 0x0

    .line 128
    .local v2, permOwner:Landroid/os/IBinder;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const-string v5, "clipboard"

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 132
    :goto_0
    iput-object v2, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 135
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v3, userFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v4, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/ClipboardService$1;

    invoke-direct {v5, p0}, Lcom/android/server/ClipboardService$1;-><init>(Lcom/android/server/ClipboardService;)V

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_CLIPTRAY:Z

    if-eqz v4, :cond_0

    .line 148
    new-instance v4, Lcom/lge/cliptray/ClipDBOpenHelper;

    iget-object v5, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/lge/cliptray/ClipDBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/ClipboardService;->dbHelper:Lcom/lge/cliptray/ClipDBOpenHelper;

    .line 149
    invoke-virtual {p0}, Lcom/android/server/ClipboardService;->initClipboardDB()V

    .line 158
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v5, "com.android.services.SecurityBridge.core.ClipboardManagerSB"

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, bridgeObject:Ljava/lang/Object;
    check-cast v0, Lcom/android/services/SecurityBridge/api/ClipboardManagerMonitor;

    .end local v0           #bridgeObject:Ljava/lang/Object;
    iput-object v0, p0, Lcom/android/server/ClipboardService;->mSecurityBridge:Lcom/android/services/SecurityBridge/api/ClipboardManagerMonitor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    :goto_1
    return-void

    .line 129
    .end local v3           #userFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 130
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "clipboard"

    const-string v5, "AM dead"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 161
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v3       #userFilter:Landroid/content/IntentFilter;
    :catch_1
    move-exception v1

    .line 163
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ClipboardService"

    const-string v5, "No security bridge jar found, using default"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v4, Lcom/android/services/SecurityBridge/api/ClipboardManagerMonitor;

    invoke-direct {v4}, Lcom/android/services/SecurityBridge/api/ClipboardManagerMonitor;-><init>()V

    iput-object v4, p0, Lcom/android/server/ClipboardService;->mSecurityBridge:Lcom/android/services/SecurityBridge/api/ClipboardManagerMonitor;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/ClipboardService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/ClipboardService;->removeClipboard(I)V

    return-void
.end method

.method private final addActiveOwnerLocked(ILjava/lang/String;)V
    .locals 12
    .parameter "uid"
    .parameter "pkg"

    .prologue
    .line 503
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 504
    .local v7, pm:Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 505
    .local v8, targetUserHandle:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 507
    .local v4, oldIdentity:J
    const/4 v9, 0x0

    :try_start_0
    invoke-interface {v7, p2, v9, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 508
    .local v6, pi:Landroid/content/pm/PackageInfo;
    if-nez v6, :cond_1

    .line 509
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    .end local v6           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v9

    .line 518
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 520
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    .line 521
    .local v1, clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    sget-boolean v9, Lcom/lge/config/ConfigBuildFlags;->CAPP_CLIPTRAY:Z

    if-eqz v9, :cond_7

    .line 522
    iget-boolean v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->hasNoValidCliptrayClip:Z

    if-eqz v9, :cond_4

    .line 523
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 524
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 525
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 526
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v9, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-direct {p0, v9, p2}, Lcom/android/server/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;)V

    .line 525
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 511
    .end local v0           #N:I
    .end local v1           #clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    .end local v2           #i:I
    .restart local v6       #pi:Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_1
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v9

    if-nez v9, :cond_0

    .line 512
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Calling uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " does not own package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 518
    .end local v6           #pi:Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v9

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 528
    .restart local v0       #N:I
    .restart local v1       #clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    .restart local v2       #i:I
    :cond_2
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 550
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_3
    :goto_1
    return-void

    .line 531
    :cond_4
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 532
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, index:I
    :goto_2
    if-ltz v3, :cond_6

    .line 533
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipData;

    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 534
    .restart local v0       #N:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    if-ge v2, v0, :cond_5

    .line 535
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipData;

    invoke-virtual {v9, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-direct {p0, v9, p2}, Lcom/android/server/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;)V

    .line 534
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 532
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 538
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_6
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 542
    .end local v3           #index:I
    :cond_7
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 543
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 544
    .restart local v0       #N:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v0, :cond_8

    .line 545
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v9, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-direct {p0, v9, p2}, Lcom/android/server/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;)V

    .line 544
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 547
    :cond_8
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private final checkDataOwnerLocked(Landroid/content/ClipData;I)V
    .locals 3
    .parameter "data"
    .parameter "uid"

    .prologue
    .line 475
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 476
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 477
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/ClipboardService;->checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    :cond_0
    return-void
.end method

.method private final checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V
    .locals 2
    .parameter "item"
    .parameter "uid"

    .prologue
    .line 465
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 466
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    .line 468
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 469
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 470
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    .line 472
    :cond_1
    return-void
.end method

.method private final checkUriOwnerLocked(Landroid/net/Uri;I)V
    .locals 5
    .parameter "uri"
    .parameter "uid"

    .prologue
    .line 451
    const-string v2, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 462
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 457
    .local v0, ident:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, p2, v3, p1, v4}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 458
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private final clearActiveOwnersLocked()V
    .locals 5

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    .line 576
    .local v1, clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    iget-object v4, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 577
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_CLIPTRAY:Z

    if-eqz v4, :cond_4

    .line 578
    iget-boolean v4, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->hasNoValidCliptrayClip:Z

    if-eqz v4, :cond_2

    .line 579
    iget-object v4, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v4, :cond_1

    .line 606
    :cond_0
    return-void

    .line 582
    :cond_1
    iget-object v4, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 583
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 584
    iget-object v4, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v4, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    .line 583
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 587
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_2
    iget-object v4, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 590
    iget-object v4, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, index:I
    :goto_1
    if-ltz v3, :cond_0

    .line 591
    iget-object v4, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipData;

    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 592
    .restart local v0       #N:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 593
    iget-object v4, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipData;

    invoke-virtual {v4, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    .line 592
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 590
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 598
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #index:I
    :cond_4
    iget-object v4, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v4, :cond_0

    .line 601
    iget-object v4, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 602
    .restart local v0       #N:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    if-ge v2, v0, :cond_0

    .line 603
    iget-object v4, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v4, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    .line 602
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ClipboardService;->getClipboard(I)Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    return-object v0
.end method

.method private getClipboard(I)Lcom/android/server/ClipboardService$PerUserClipboard;
    .locals 3
    .parameter "userId"

    .prologue
    .line 185
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v2

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ClipboardService$PerUserClipboard;

    .line 187
    .local v0, puc:Lcom/android/server/ClipboardService$PerUserClipboard;
    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/android/server/ClipboardService$PerUserClipboard;

    .end local v0           #puc:Lcom/android/server/ClipboardService$PerUserClipboard;
    invoke-direct {v0, p0, p1}, Lcom/android/server/ClipboardService$PerUserClipboard;-><init>(Lcom/android/server/ClipboardService;I)V

    .line 189
    .restart local v0       #puc:Lcom/android/server/ClipboardService$PerUserClipboard;
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    :cond_0
    monitor-exit v2

    return-object v0

    .line 192
    .end local v0           #puc:Lcom/android/server/ClipboardService$PerUserClipboard;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;)V
    .locals 2
    .parameter "item"
    .parameter "pkg"

    .prologue
    .line 493
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 494
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V

    .line 496
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 497
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 498
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V

    .line 500
    :cond_1
    return-void
.end method

.method private final grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 8
    .parameter "uri"
    .parameter "pkg"

    .prologue
    .line 482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 484
    .local v6, ident:J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v5, 0x1

    move-object v3, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 490
    return-void

    .line 488
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 486
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private removeClipboard(I)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 198
    monitor-exit v1

    .line 199
    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final revokeItemLocked(Landroid/content/ClipData$Item;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 565
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    .line 568
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 569
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 570
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    .line 572
    :cond_1
    return-void
.end method

.method private final revokeUriLocked(Landroid/net/Uri;)V
    .locals 5
    .parameter "uri"

    .prologue
    .line 553
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 555
    .local v0, ident:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v2, v3, p1, v4}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 562
    return-void

    .line 560
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 558
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 417
    monitor-enter p0

    .line 418
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 419
    monitor-exit p0

    .line 420
    return-void

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInitialPrimaryClipAt(Ljava/lang/String;I)Landroid/content/ClipData;
    .locals 1
    .parameter "pkg"
    .parameter "index"

    .prologue
    .line 720
    monitor-enter p0

    .line 721
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    .line 722
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    monitor-exit p0

    return-object v0

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;
    .locals 5
    .parameter "pkg"

    .prologue
    const/4 v4, 0x1

    .line 315
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/lge/cappuccino/IMdm;->checkDisabledClipboard(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    const/4 v2, 0x0

    .line 356
    :goto_0
    return-object v2

    .line 321
    :cond_0
    const-string v2, "3LM_cliptray"

    const-string v3, "getPrimaryClip() 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    monitor-enter p0

    .line 335
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    .line 336
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_CLIPTRAY:Z

    if-eqz v2, :cond_3

    .line 337
    sget-boolean v2, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/ClipboardService;->isUidSecure()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    const-string v2, "3LM_cliptray"

    const-string v3, "getPrimaryClip() 4"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->mdmClip:Landroid/content/ClipData;

    monitor-exit p0

    goto :goto_0

    .line 357
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 341
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    .line 342
    .local v1, clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    const-string v2, "3LM_cliptray"

    const-string v3, "getPrimaryClip() 5"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-boolean v2, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->hasNoValidCliptrayClip:Z

    if-eqz v2, :cond_2

    .line 344
    iget-object v2, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    monitor-exit p0

    goto :goto_0

    .line 346
    :cond_2
    iget-object v2, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData;

    monitor-exit p0

    goto :goto_0

    .line 349
    .end local v1           #clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    iget-object v0, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 350
    .local v0, clip:Landroid/content/ClipData;
    if-eqz v0, :cond_4

    .line 351
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mSecurityBridge:Lcom/android/services/SecurityBridge/api/ClipboardManagerMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/android/services/SecurityBridge/api/ClipboardManagerMonitor;->approvePasteRequest(ILandroid/content/ClipData;)Z

    move-result v2

    if-eq v4, v2, :cond_4

    .line 352
    const/4 v0, 0x0

    .line 355
    :cond_4
    const-string v2, "3LM_cliptray"

    const-string v3, "getPrimaryClip() 6"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    goto :goto_0
.end method

.method public getPrimaryClipAt(Ljava/lang/String;I)Landroid/content/ClipData;
    .locals 2
    .parameter "pkg"
    .parameter "index"

    .prologue
    .line 614
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/cappuccino/IMdm;->checkDisabledClipboard(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    const/4 v0, 0x0

    .line 622
    :goto_0
    return-object v0

    .line 620
    :cond_0
    monitor-enter p0

    .line 621
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    .line 622
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    monitor-exit p0

    goto :goto_0

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPrimaryClipCount()I
    .locals 1

    .prologue
    .line 639
    monitor-enter p0

    .line 640
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit p0

    return v0

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPrimaryClipDescription()Landroid/content/ClipDescription;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 361
    monitor-enter p0

    .line 362
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 363
    .local v0, clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_CLIPTRAY:Z

    if-eqz v2, :cond_3

    .line 364
    iget-boolean v2, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->hasNoValidCliptrayClip:Z

    if-eqz v2, :cond_1

    .line 365
    iget-object v2, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    :cond_0
    monitor-exit p0

    .line 369
    :goto_0
    return-object v1

    .line 367
    :cond_1
    iget-object v2, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 370
    .end local v0           #clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 369
    .restart local v0       #clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    :cond_3
    :try_start_1
    iget-object v2, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v2, :cond_4

    iget-object v1, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPrimaryClipDescriptionAt(I)Landroid/content/ClipDescription;
    .locals 1
    .parameter "index"

    .prologue
    .line 630
    monitor-enter p0

    .line 631
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasClipboardText()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 429
    monitor-enter p0

    .line 430
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 431
    .local v0, clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_CLIPTRAY:Z

    if-eqz v2, :cond_3

    .line 432
    iget-boolean v2, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->hasNoValidCliptrayClip:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v2, :cond_1

    .line 433
    iget-object v2, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 434
    .local v1, text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v4

    :goto_0
    monitor-exit p0

    .line 446
    .end local v1           #text:Ljava/lang/CharSequence;
    :goto_1
    return v2

    .restart local v1       #text:Ljava/lang/CharSequence;
    :cond_0
    move v2, v3

    .line 434
    goto :goto_0

    .line 436
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 437
    iget-object v2, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 438
    .restart local v1       #text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v4

    :goto_2
    monitor-exit p0

    goto :goto_1

    .line 447
    .end local v0           #clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    .end local v1           #text:Ljava/lang/CharSequence;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    .restart local v1       #text:Ljava/lang/CharSequence;
    :cond_2
    move v2, v3

    .line 438
    goto :goto_2

    .line 441
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_3
    :try_start_1
    iget-object v2, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v2, :cond_5

    .line 442
    iget-object v2, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 443
    .restart local v1       #text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_4

    move v2, v4

    :goto_3
    monitor-exit p0

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_3

    .line 446
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    goto :goto_1
.end method

.method public hasPrimaryClip()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 374
    const-string v2, "3LM_cliptray"

    const-string v3, "hasPrimaryClip() 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    monitor-enter p0

    .line 393
    :try_start_0
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_CLIPTRAY:Z

    if-eqz v2, :cond_5

    .line 394
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->hasNoValidCliptrayClip:Z

    if-eqz v2, :cond_1

    .line 395
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit p0

    .line 412
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 395
    goto :goto_0

    .line 398
    :cond_1
    sget-boolean v2, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/ClipboardService;->isUidSecure()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 399
    const-string v2, "3LM_cliptray"

    const-string v3, "hasPrimaryClip() 5"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->mdmClip:Landroid/content/ClipData;

    if-eqz v2, :cond_2

    :goto_2
    monitor-exit p0

    goto :goto_1

    .line 413
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    move v0, v1

    .line 400
    goto :goto_2

    .line 402
    :cond_3
    :try_start_1
    const-string v2, "3LM_cliptray"

    const-string v3, "hasPrimaryClip() 6"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_3
    monitor-exit p0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    .line 407
    :cond_5
    const/4 v0, 0x0

    .line 408
    .local v0, hasClip:Z
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v1, :cond_6

    .line 409
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mSecurityBridge:Lcom/android/services/SecurityBridge/api/ClipboardManagerMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v1, v2, v3}, Lcom/android/services/SecurityBridge/api/ClipboardManagerMonitor;->approvePasteRequest(ILandroid/content/ClipData;)Z

    move-result v0

    .line 411
    :cond_6
    const-string v1, "3LM_cliptray"

    const-string v2, "hasPrimaryClip() 6"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public initClipboardDB()V
    .locals 9

    .prologue
    .line 684
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 685
    .local v1, clipList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ClipData;>;"
    iget-object v7, p0, Lcom/android/server/ClipboardService;->dbHelper:Lcom/lge/cliptray/ClipDBOpenHelper;

    invoke-virtual {v7}, Lcom/lge/cliptray/ClipDBOpenHelper;->getClipdataList()Ljava/util/ArrayList;

    move-result-object v1

    .line 686
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 687
    .local v3, cnt:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 688
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    .line 690
    .local v0, clip:Landroid/content/ClipData;
    monitor-enter p0

    .line 691
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v7

    if-gtz v7, :cond_0

    .line 692
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "No items"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 712
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 694
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    .line 696
    .local v2, clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    const/16 v7, 0x14

    if-ge v5, v7, :cond_2

    .line 697
    iget-object v7, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    iget-object v7, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 700
    .local v6, n:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v6, :cond_1

    .line 702
    :try_start_2
    iget-object v7, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v7}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 700
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 708
    :cond_1
    :try_start_3
    iget-object v7, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 712
    .end local v4           #i:I
    .end local v6           #n:I
    :goto_3
    monitor-exit p0

    .line 687
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 710
    :cond_2
    iget-object v7, p0, Lcom/android/server/ClipboardService;->dbHelper:Lcom/lge/cliptray/ClipDBOpenHelper;

    invoke-virtual {v7, v5}, Lcom/lge/cliptray/ClipDBOpenHelper;->deleteGlobalPosition(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 714
    .end local v0           #clip:Landroid/content/ClipData;
    .end local v2           #clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    :cond_3
    return-void

    .line 703
    .restart local v0       #clip:Landroid/content/ClipData;
    .restart local v2       #clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    .restart local v4       #i:I
    .restart local v6       #n:I
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public isUidSecure()Z
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 203
    const-string v8, "persist.security.3lm.activated"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v7, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v6

    .line 207
    :cond_1
    const-string v8, "3LM_cliptray"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isUidSecure(), uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Lcom/android/server/DeviceManager3LMService;->getInstance()Lcom/android/server/DeviceManager3LMService;

    move-result-object v1

    .line 209
    .local v1, dm:Lcom/android/server/DeviceManager3LMService;
    iget-object v8, p0, Lcom/android/server/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, packages:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 211
    .local v5, pkg:Ljava/lang/String;
    const-string v8, "3LM_cliptray"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isUidSecure(), pkg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {v1, v5}, Lcom/android/server/DeviceManager3LMService;->isPackageSecure(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    .line 213
    goto :goto_0

    .line 210
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "clipboard"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    throw v0
.end method

.method public removeAllPrimaryClips(Ljava/lang/String;)Z
    .locals 2
    .parameter "pkg"

    .prologue
    .line 666
    monitor-enter p0

    .line 667
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    .line 668
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 670
    .local v0, clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    iget-object v1, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 671
    iget-object v1, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 672
    iget-object v1, p0, Lcom/android/server/ClipboardService;->dbHelper:Lcom/lge/cliptray/ClipDBOpenHelper;

    invoke-virtual {v1}, Lcom/lge/cliptray/ClipDBOpenHelper;->deleteAll()Z

    .line 673
    const/4 v1, 0x1

    monitor-exit p0

    .line 675
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 676
    .end local v0           #clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePrimaryClipAt(Ljava/lang/String;I)Z
    .locals 2
    .parameter "pkg"
    .parameter "index"

    .prologue
    .line 648
    monitor-enter p0

    .line 649
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    .line 651
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 653
    .local v0, clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    iget-object v1, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 654
    iget-object v1, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 655
    iget-object v1, p0, Lcom/android/server/ClipboardService;->dbHelper:Lcom/lge/cliptray/ClipDBOpenHelper;

    invoke-virtual {v1, p2}, Lcom/lge/cliptray/ClipDBOpenHelper;->deleteGlobalPosition(I)V

    .line 656
    const/4 v1, 0x1

    monitor-exit p0

    .line 658
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 659
    .end local v0           #clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 423
    monitor-enter p0

    .line 424
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 425
    monitor-exit p0

    .line 426
    return-void

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPrimaryClip(Landroid/content/ClipData;)V
    .locals 12
    .parameter "clip"

    .prologue
    const/4 v4, 0x1

    .line 222
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/lge/cappuccino/IMdm;->checkDisabledClipboard(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 228
    :cond_0
    monitor-enter p0

    .line 229
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "No items"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 233
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/ClipboardService;->checkDataOwnerLocked(Landroid/content/ClipData;I)V

    .line 234
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->clearActiveOwnersLocked()V

    .line 236
    sget-boolean v0, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM:Z

    if-eqz v0, :cond_2

    .line 238
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 239
    .local v11, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 242
    .local v9, token:J
    invoke-static {}, Lcom/android/server/DeviceManager3LMService;->getInstance()Lcom/android/server/DeviceManager3LMService;

    move-result-object v7

    .line 243
    .local v7, dm:Lcom/android/server/DeviceManager3LMService;
    invoke-virtual {v7, v11}, Lcom/android/server/DeviceManager3LMService;->setPrimaryClipOwner(I)V

    .line 245
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 248
    .end local v7           #dm:Lcom/android/server/DeviceManager3LMService;
    .end local v9           #token:J
    .end local v11           #uid:I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v6

    .line 250
    .local v6, clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_CLIPTRAY:Z

    if-eqz v0, :cond_a

    .line 251
    if-nez p1, :cond_3

    .line 252
    const-string v0, "ClipboardService"

    const-string v4, "Cliptray::setPrimaryClip, clip is null - add to clipdata"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iput-object p1, v6, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/android/server/ClipboardService$PerUserClipboard;->hasNoValidCliptrayClip:Z

    .line 255
    monitor-exit p0

    goto :goto_0

    .line 257
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 258
    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_6

    .line 259
    :cond_5
    iput-object p1, v6, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/android/server/ClipboardService$PerUserClipboard;->hasNoValidCliptrayClip:Z

    .line 261
    const-string v0, "ClipboardService"

    const-string v4, "Cliptray::setPrimaryClip, clip is not valid - add to clipdata"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    monitor-exit p0

    goto/16 :goto_0

    .line 257
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 266
    :cond_7
    sget-boolean v0, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM:Z

    if-eqz v0, :cond_9

    .line 267
    invoke-virtual {p0}, Lcom/android/server/ClipboardService;->isUidSecure()Z

    move-result v0

    if-nez v0, :cond_8

    .line 268
    iget-object v0, v6, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_8
    iput-object p1, v6, Lcom/android/server/ClipboardService$PerUserClipboard;->mdmClip:Landroid/content/ClipData;

    .line 275
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/server/ClipboardService$PerUserClipboard;->hasNoValidCliptrayClip:Z

    .line 280
    .end local v2           #i:I
    :goto_3
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mSecurityBridge:Lcom/android/services/SecurityBridge/api/ClipboardManagerMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v0, v4, p1}, Lcom/android/services/SecurityBridge/api/ClipboardManagerMonitor;->notifyCopy(ILandroid/content/ClipData;)V

    .line 283
    sget-boolean v0, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/ClipboardService;->isUidSecure()Z

    move-result v0

    if-eqz v0, :cond_b

    monitor-exit p0

    goto/16 :goto_0

    .line 272
    .restart local v2       #i:I
    :cond_9
    iget-object v0, v6, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 277
    .end local v2           #i:I
    :cond_a
    iput-object p1, v6, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    goto :goto_3

    .line 285
    :cond_b
    iget-object v0, v6, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 286
    .local v8, n:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v8, :cond_c

    .line 288
    :try_start_2
    iget-object v0, v6, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v0}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 286
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 295
    :cond_c
    :try_start_3
    iget-object v0, v6, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 297
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_CLIPTRAY:Z

    if-eqz v0, :cond_f

    .line 298
    invoke-virtual {p0}, Lcom/android/server/ClipboardService;->getPrimaryClipCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 300
    .local v1, clipIndex:I
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    .line 301
    .local v3, cnt:I
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_f

    .line 302
    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 303
    iget-object v0, p0, Lcom/android/server/ClipboardService;->dbHelper:Lcom/lge/cliptray/ClipDBOpenHelper;

    const-string v4, "text"

    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/lge/cliptray/ClipDBOpenHelper;->insert(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 301
    :cond_d
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 304
    :cond_e
    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 305
    iget-object v0, p0, Lcom/android/server/ClipboardService;->dbHelper:Lcom/lge/cliptray/ClipDBOpenHelper;

    const-string v4, "img"

    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/lge/cliptray/ClipDBOpenHelper;->insert(IIILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    .line 310
    .end local v1           #clipIndex:I
    .end local v3           #cnt:I
    :cond_f
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 289
    :catch_0
    move-exception v0

    goto :goto_5
.end method
