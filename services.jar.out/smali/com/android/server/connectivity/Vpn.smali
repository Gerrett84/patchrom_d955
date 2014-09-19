.class public Lcom/android/server/connectivity/Vpn;
.super Landroid/net/BaseNetworkStateTracker;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;,
        Lcom/android/server/connectivity/Vpn$Connection;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final MVP_FILE_NAME:Ljava/lang/String; = "/data/misc/vpn/MVPClients"

.field private static final TAG:Ljava/lang/String; = "Vpn"


# instance fields
.field private final mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private mEnableNotif:Z

.field private mInterface:Ljava/lang/String;

.field private mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

.field private mMvpOn:Z

.field private mNamespace:Lcom/android/server/connectivity/VpnNamespace;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mPackage:Ljava/lang/String;

.field private mStatusIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Landroid/os/INetworkManagementService;)V
    .locals 3
    .parameter "context"
    .parameter "callback"
    .parameter "netService"

    .prologue
    .line 123
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Landroid/net/BaseNetworkStateTracker;-><init>(I)V

    .line 108
    const-string v1, "[Legacy VPN]"

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    .line 116
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    .line 759
    new-instance v1, Lcom/android/server/connectivity/Vpn$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 124
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p3, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Vpn"

    const-string v2, "Problem registering observer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->removeMvpClientFromList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Vpn;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->mvpInterfaceRemoved()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->showNotification(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Vpn;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Vpn;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->hideNotification()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p1
.end method

.method private addMvpClientToList(Ljava/lang/String;)V
    .locals 7
    .parameter "clientPackageName"

    .prologue
    .line 228
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/misc/vpn/MVPClients"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v3, mvpFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1, v3}, Lcom/android/server/connectivity/Vpn;->isAnMvpClient(Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 232
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 233
    .local v1, fos:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v5, 0x100

    invoke-direct {v0, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .local v0, bWriter:Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, p1, v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 236
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 237
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 239
    const-string v4, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " set as MVP client"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 249
    .end local v0           #bWriter:Ljava/io/BufferedWriter;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 243
    .restart local v0       #bWriter:Ljava/io/BufferedWriter;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 245
    .end local v0           #bWriter:Ljava/io/BufferedWriter;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 246
    .local v2, ioe:Ljava/io/IOException;
    const-string v4, "Vpn"

    const-string v5, "Not able to create or write into MVP File"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private clearMvpList(Ljava/io/File;)V
    .locals 11
    .parameter "mvpFile"

    .prologue
    .line 303
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 305
    .local v5, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 306
    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 307
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->getMvpClientList(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 309
    .local v1, client:Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 311
    .local v6, token:J
    :try_start_1
    const-string v8, "Vpn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Clearing data for client "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v8, Lcom/android/server/connectivity/Vpn$1;

    invoke-direct {v8, p0}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-interface {v0, v1, v8, v9}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 322
    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 326
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #client:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #token:J
    :catch_0
    move-exception v4

    .line 327
    .local v4, ioe:Ljava/io/IOException;
    const-string v8, "Vpn"

    const-string v9, "Not able to get MVP list to clear it"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v4           #ioe:Ljava/io/IOException;
    :cond_0
    return-void

    .line 319
    .restart local v0       #am:Landroid/app/IActivityManager;
    .restart local v1       #client:Ljava/lang/String;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #token:J
    :catch_1
    move-exception v2

    .line 320
    .local v2, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v8, "Vpn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not able to clear client "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 322
    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method private enforceControlPermission()V
    .locals 4

    .prologue
    .line 827
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1

    .line 836
    :cond_0
    return-void

    .line 833
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 834
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v2, "com.android.vpndialogs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 835
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_0

    .line 842
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Unauthorized Caller"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 838
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static findLegacyVpnGateway(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 4
    .parameter "prop"

    .prologue
    .line 907
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 909
    .local v1, route:Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    .line 910
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 914
    .end local v1           #route:Landroid/net/RouteInfo;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to find suitable gateway"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getMvpClientList(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 5
    .parameter "mvpFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    .local v1, clientList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x100

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 188
    .local v0, bReader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, mvpPackage:Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 194
    .end local v2           #mvpPackage:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v3

    .restart local v2       #mvpPackage:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 196
    return-object v1
.end method

.method private hideNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 887
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    if-nez v1, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 890
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 893
    .local v0, nm:Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 894
    const v1, 0x1080617

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private isAnMvpClient(Ljava/lang/String;Ljava/io/File;)Z
    .locals 4
    .parameter "clientPackageName"
    .parameter "mvpFile"

    .prologue
    .line 211
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->getMvpClientList(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    .line 212
    .local v0, clientList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 216
    .end local v0           #clientList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return v2

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, ioe:Ljava/io/IOException;
    const-string v2, "Vpn"

    const-string v3, "Not able to get MVP list"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isClientAllowedForHost(Ljava/lang/String;)Z
    .locals 4
    .parameter "clientPackageName"

    .prologue
    const/4 v1, 0x1

    .line 358
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/vpn/MVPClients"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, mvpFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v1

    .line 364
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isMvpCleanUpNeeded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 365
    const-string v2, "Vpn"

    const-string v3, "Clearing client list for MVP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->clearMvpList(Ljava/io/File;)V

    .line 370
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->isAnMvpClient(Ljava/lang/String;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMvpCleanUpNeeded()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 339
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 342
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.vmware.mvp.enabled"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v4, v2, :cond_0

    .line 346
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 342
    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Vpn"

    const-string v4, "Cannot find com.vmware.mvp.enabled package, we are probably rooted"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isRevokeNeeded()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isMvpCleanUpNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(I)I
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniProtect(ILjava/lang/String;)V
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private mvpInterfaceRemoved()V
    .locals 5

    .prologue
    .line 810
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    if-eqz v3, :cond_0

    .line 811
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    invoke-virtual {v3}, Lcom/android/server/connectivity/VpnNamespace;->mkIntent()Landroid/content/Intent;

    move-result-object v0

    .line 812
    .local v0, disconnect:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 813
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 815
    .local v1, token:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v4, "com.vmware.mvp.permission.VPN_CONFIG"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 819
    const-string v3, "Vpn"

    const-string v4, "disconnect event has been sent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    .end local v0           #disconnect:Landroid/content/Intent;
    .end local v1           #token:J
    :cond_0
    return-void

    .line 817
    .restart local v0       #disconnect:Landroid/content/Intent;
    .restart local v1       #token:J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private declared-synchronized removeMvpClientFromList(Ljava/lang/String;)V
    .locals 10
    .parameter "clientPackageName"

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/misc/vpn/MVPClients"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .local v6, mvpFile:Ljava/io/File;
    :try_start_1
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Vpn;->getMvpClientList(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v2

    .line 263
    .local v2, clientList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 264
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 266
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 291
    .end local v2           #clientList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    monitor-exit p0

    return-void

    .line 268
    .restart local v2       #clientList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 269
    .local v3, fos:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v8, 0x100

    invoke-direct {v0, v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 272
    .local v0, bWriter:Ljava/io/BufferedWriter;
    :try_start_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 273
    .local v1, client:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v1, v7, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 274
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 279
    .end local v1           #client:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .line 280
    .local v5, ioe:Ljava/io/IOException;
    :try_start_4
    const-string v7, "Vpn"

    const-string v8, "Not able to re-write into MVP File"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 282
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 288
    .end local v0           #bWriter:Ljava/io/BufferedWriter;
    .end local v2           #clientList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v5           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 289
    .restart local v5       #ioe:Ljava/io/IOException;
    :try_start_6
    const-string v7, "Vpn"

    const-string v8, "Not able to re-create or write into MVP File"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 259
    .end local v5           #ioe:Ljava/io/IOException;
    .end local v6           #mvpFile:Ljava/io/File;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 276
    .restart local v0       #bWriter:Ljava/io/BufferedWriter;
    .restart local v2       #clientList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #mvpFile:Ljava/io/File;
    :cond_1
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 278
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 282
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    goto :goto_0

    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v7

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    throw v7

    .line 286
    .end local v0           #bWriter:Ljava/io/BufferedWriter;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_2
    const-string v7, "Vpn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Called to remove client "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " that is no more in the list"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0
.end method

.method private showNotification(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 11
    .parameter "config"
    .parameter "label"
    .parameter "icon"

    .prologue
    const v10, 0x1080617

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 860
    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    if-nez v4, :cond_1

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 861
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 863
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 866
    .local v0, nm:Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 867
    if-nez p2, :cond_2

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x10404b2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 869
    .local v3, title:Ljava/lang/String;
    :goto_1
    iget-object v4, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x10404b4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 871
    .local v2, text:Ljava/lang/String;
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 873
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 882
    .local v1, notification:Landroid/app/Notification;
    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v10, v1, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 867
    .end local v1           #notification:Landroid/app/Notification;
    .end local v2           #text:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x10404b3

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p2, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 869
    .restart local v3       #title:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x10404b5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "config"
    .parameter "racoon"
    .parameter "mtpd"

    .prologue
    .line 1026
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpn()V

    .line 1029
    const/4 v0, 0x0

    const-string v1, "[Legacy VPN]"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1030
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "startLegacyVpn"

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1033
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1034
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    monitor-exit p0

    return-void

    .line 1026
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 3
    .parameter "detailedState"
    .parameter "reason"

    .prologue
    .line 169
    const-string v0, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    new-instance v1, Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v1, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->onStateChanged(Landroid/net/NetworkInfo;)V

    .line 172
    return-void
.end method


# virtual methods
.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 24
    .parameter "config"

    .prologue
    .line 586
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    .line 587
    .local v15, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 589
    .local v3, app:Landroid/content/pm/ApplicationInfo;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 593
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v22, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 594
    const/16 v19, 0x0

    .line 737
    :goto_0
    monitor-exit p0

    return-object v19

    .line 590
    :catch_0
    move-exception v7

    .line 591
    .local v7, e:Ljava/lang/Exception;
    const/16 v19, 0x0

    goto :goto_0

    .line 598
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_3
    new-instance v11, Landroid/content/Intent;

    const-string v21, "android.net.VpnService"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    .local v11, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v11, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 601
    .local v10, info:Landroid/content/pm/ResolveInfo;
    if-nez v10, :cond_1

    .line 602
    new-instance v21, Ljava/lang/SecurityException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cannot find "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 586
    .end local v3           #app:Landroid/content/pm/ApplicationInfo;
    .end local v10           #info:Landroid/content/pm/ResolveInfo;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v15           #pm:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21

    .line 604
    .restart local v3       #app:Landroid/content/pm/ApplicationInfo;
    .restart local v10       #info:Landroid/content/pm/ResolveInfo;
    .restart local v11       #intent:Landroid/content/Intent;
    .restart local v15       #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_4
    const-string v21, "android.permission.BIND_VPN_SERVICE"

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 605
    new-instance v21, Ljava/lang/SecurityException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " does not require "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 609
    :cond_2
    invoke-virtual {v3, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 612
    .local v14, label:Ljava/lang/String;
    invoke-virtual {v3, v15}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 613
    .local v9, icon:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 614
    .local v4, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    if-lez v21, :cond_3

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    if-lez v21, :cond_3

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050005

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 617
    .local v20, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050006

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 619
    .local v8, height:I
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v9, v0, v1, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 620
    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 621
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 622
    .local v5, c:Landroid/graphics/Canvas;
    invoke-virtual {v9, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 623
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 626
    invoke-static {}, Lcom/lge/vmware/VMwareUtils;->get()Lcom/lge/vmware/VMwareUtils;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lge/vmware/VMwareUtils;->checkVMware()Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    move/from16 v21, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v21, :cond_3

    .line 629
    :try_start_5
    const-string v21, "com.vmware.mvp.enabled"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 630
    div-int/lit8 v21, v20, 0x2

    div-int/lit8 v22, v8, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v9, v0, v1, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 631
    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 632
    invoke-virtual {v9, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 633
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    .line 642
    .end local v5           #c:Landroid/graphics/Canvas;
    .end local v8           #height:I
    .end local v20           #width:I
    :cond_3
    :goto_1
    :try_start_6
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniCreate(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v19

    .line 644
    .local v19, tun:Landroid/os/ParcelFileDescriptor;
    :try_start_7
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v22, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 645
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v12

    .line 648
    .local v12, interfaze:Ljava/lang/String;
    invoke-static {}, Lcom/lge/vmware/VMwareUtils;->get()Lcom/lge/vmware/VMwareUtils;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lge/vmware/VMwareUtils;->checkVMware()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 649
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    .line 651
    new-instance v21, Lcom/android/server/connectivity/VpnNamespace;

    invoke-direct/range {v21 .. v21}, Lcom/android/server/connectivity/VpnNamespace;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    .line 654
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-virtual {v0, v12, v1, v2}, Lcom/android/server/connectivity/VpnNamespace;->establish(Ljava/lang/String;Lcom/android/internal/net/VpnConfig;Lcom/android/server/connectivity/Vpn;)Landroid/content/Intent;

    move-result-object v16

    .line 655
    .local v16, rest:Landroid/content/Intent;
    if-eqz v16, :cond_5

    .line 659
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-wide v17

    .line 661
    .local v17, token:J
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "com.vmware.mvp.permission.VPN_CONFIG"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 663
    :try_start_9
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 685
    .end local v16           #rest:Landroid/content/Intent;
    .end local v17           #token:J
    :cond_5
    :goto_2
    new-instance v6, Lcom/android/server/connectivity/Vpn$Connection;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$1;)V

    .line 686
    .local v6, connection:Lcom/android/server/connectivity/Vpn$Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v11, v6, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v21

    if-nez v21, :cond_a

    .line 687
    new-instance v21, Ljava/lang/IllegalStateException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cannot bind "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 697
    .end local v6           #connection:Lcom/android/server/connectivity/Vpn$Connection;
    .end local v12           #interfaze:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 698
    .local v7, e:Ljava/lang/RuntimeException;
    :try_start_a
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v22, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 699
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 700
    throw v7

    .line 634
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v19           #tun:Landroid/os/ParcelFileDescriptor;
    .restart local v5       #c:Landroid/graphics/Canvas;
    .restart local v8       #height:I
    .restart local v20       #width:I
    :catch_2
    move-exception v7

    .line 635
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v21, "Vpn"

    const-string v22, "Not able to find com.vmware.mvp.enabled"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 663
    .end local v5           #c:Landroid/graphics/Canvas;
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8           #height:I
    .end local v20           #width:I
    .restart local v12       #interfaze:Ljava/lang/String;
    .restart local v16       #rest:Landroid/content/Intent;
    .restart local v17       #token:J
    .restart local v19       #tun:Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v21

    :try_start_b
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v21
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 702
    .end local v12           #interfaze:Ljava/lang/String;
    .end local v16           #rest:Landroid/content/Intent;
    .end local v17           #token:J
    :catch_3
    move-exception v13

    .line 703
    .local v13, ioe:Ljava/io/IOException;
    :try_start_c
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v22, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 704
    const-string v21, "Vpn"

    const-string v22, "MVP VPN is unable to start"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 705
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 707
    new-instance v21, Ljava/lang/RuntimeException;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v21
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 667
    .end local v13           #ioe:Ljava/io/IOException;
    .restart local v12       #interfaze:Ljava/lang/String;
    :cond_6
    :try_start_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 668
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "At least one address must be specified"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 670
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 671
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lcom/android/server/connectivity/Vpn;->jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 677
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 678
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "At least one address must be specified"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 680
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 681
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lcom/android/server/connectivity/Vpn;->jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 689
    .restart local v6       #connection:Lcom/android/server/connectivity/Vpn$Connection;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 692
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 695
    :cond_c
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 696
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 711
    :try_start_e
    const-string v21, "Vpn"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Established by "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " on "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 718
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-wide v17

    .line 721
    .restart local v17       #token:J
    :try_start_f
    invoke-static {}, Lcom/lge/vmware/VMwareUtils;->get()Lcom/lge/vmware/VMwareUtils;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lge/vmware/VMwareUtils;->checkVMware()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 723
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    move/from16 v21, v0

    if-nez v21, :cond_d

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/ConnectivityService$VpnCallback;->override(Ljava/util/List;Ljava/util/List;)V

    .line 731
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v4}, Lcom/android/server/connectivity/Vpn;->showNotification(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 733
    :try_start_10
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 736
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    const-string v22, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_0

    .line 729
    :cond_e
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/ConnectivityService$VpnCallback;->override(Ljava/util/List;Ljava/util/List;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_3

    .line 733
    :catchall_2
    move-exception v21

    :try_start_12
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v21
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
.end method

.method public getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #getter for: Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->access$1300(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/internal/net/VpnConfig;

    move-result-object v0

    .line 1070
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 2

    .prologue
    .line 1054
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1055
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1063
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1057
    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 1058
    .local v0, info:Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #getter for: Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->access$1300(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 1059
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 1060
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1054
    .end local v0           #info:Lcom/android/internal/net/LegacyVpnInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const-string v0, "net.tcp.buffersize.unknown"

    return-object v0
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 1
    .parameter "interfaze"

    .prologue
    .line 752
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceRemoved(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :goto_0
    return-void

    .line 753
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 1
    .parameter "iface"
    .parameter "up"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 743
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :goto_0
    monitor-exit p0

    return-void

    .line 743
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 744
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isPhoneIdle()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "oldPackage"
    .parameter "newPackage"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 404
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/lge/vmware/VMwareUtils;->get()Lcom/lge/vmware/VMwareUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/vmware/VMwareUtils;->checkVMware()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 405
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    .line 455
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 410
    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 416
    :cond_2
    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "[Legacy VPN]"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v2, v3

    .line 418
    goto :goto_0

    .line 422
    :cond_4
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 425
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 426
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 427
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 429
    .local v0, token:J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V

    .line 430
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->hideNotification()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 432
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 434
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 438
    .end local v0           #token:J
    :cond_5
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_7

    .line 440
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    #getter for: Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn$Connection;->access$100(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v2

    const v4, 0xffffff

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface {v2, v4, v5, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 445
    :goto_1
    :try_start_5
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 446
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 452
    :cond_6
    :goto_2
    const-string v2, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switched from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 454
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "prepare"

    invoke-direct {p0, v2, v4}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    move v2, v3

    .line 455
    goto/16 :goto_0

    .line 432
    .restart local v0       #token:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 404
    .end local v0           #token:J
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 447
    :cond_7
    :try_start_6
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v2, :cond_6

    .line 448
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 449
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 442
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9
    .parameter "oldPackage"
    .parameter "newPackage"
    .parameter "mvpOn"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 461
    monitor-enter p0

    if-nez p3, :cond_b

    .line 463
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 556
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 468
    :cond_1
    if-nez p2, :cond_2

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRevokeNeeded()Z

    move-result v5

    if-nez v5, :cond_0

    .line 473
    :cond_2
    if-eqz p2, :cond_3

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "[Legacy VPN]"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRevokeNeeded()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    move v3, v4

    .line 475
    goto :goto_0

    .line 479
    :cond_4
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 482
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isClientAllowedForHost(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 500
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 501
    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    if-nez v3, :cond_c

    .line 502
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 516
    :cond_6
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 518
    .local v1, token:J
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    if-nez v3, :cond_7

    .line 519
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V

    .line 521
    :cond_7
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->hideNotification()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 523
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 525
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 529
    .end local v1           #token:J
    :cond_8
    iput-boolean p3, p0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    .line 530
    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    if-eqz v3, :cond_9

    .line 533
    const-string v3, "Vpn"

    const-string v5, "namespace proxy no longer needed"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    invoke-virtual {v3}, Lcom/android/server/connectivity/VpnNamespace;->close()V

    .line 535
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    .line 539
    :cond_9
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_d

    .line 541
    :try_start_4
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    #getter for: Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn$Connection;->access$100(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v3

    const v5, 0xffffff

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-interface {v3, v5, v6, v7, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 546
    :goto_3
    :try_start_5
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 547
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 553
    :cond_a
    :goto_4
    const-string v3, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Switched from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 555
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string v5, "prepare"

    invoke-direct {p0, v3, v5}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    move v3, v4

    .line 556
    goto/16 :goto_0

    .line 486
    :cond_b
    if-eqz p2, :cond_0

    .line 491
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 494
    const-string v3, "[Legacy VPN]"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 495
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->addMvpClientToList(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 461
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 504
    :cond_c
    :try_start_6
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_6

    .line 506
    :try_start_7
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    invoke-virtual {v3}, Lcom/android/server/connectivity/VpnNamespace;->removeInterface()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 512
    :goto_5
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->mvpInterfaceRemoved()V

    goto/16 :goto_2

    .line 507
    :catch_0
    move-exception v0

    .line 510
    .local v0, ioe:Ljava/io/IOException;
    const-string v3, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t remove interface:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 523
    .end local v0           #ioe:Ljava/io/IOException;
    .restart local v1       #token:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 548
    .end local v1           #token:J
    :cond_d
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v3, :cond_a

    .line 549
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 550
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4

    .line 543
    :catch_1
    move-exception v3

    goto/16 :goto_3
.end method

.method public protect(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 4
    .parameter "socket"
    .parameter "interfaze"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 568
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 569
    .local v1, pm:Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 570
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, v3, :cond_0

    .line 571
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Unauthorized Caller"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 573
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/connectivity/Vpn;->jniProtect(ILjava/lang/String;)V

    .line 574
    return-void
.end method

.method public reconnect()Z
    .locals 1

    .prologue
    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setDataConnectionMessanger(Landroid/os/Messenger;)V
    .locals 0
    .parameter "msger"

    .prologue
    .line 1356
    return-void
.end method

.method public setEnableNotifications(Z)V
    .locals 0
    .parameter "enableNotif"

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    .line 141
    return-void
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .locals 12
    .parameter "profile"
    .parameter "keyStore"
    .parameter "egress"

    .prologue
    .line 922
    invoke-virtual {p2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v10

    sget-object v11, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v10, v11, :cond_0

    .line 923
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "KeyStore isn\'t unlocked"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 926
    :cond_0
    invoke-virtual {p3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 927
    .local v3, iface:Ljava/lang/String;
    invoke-static {p3}, Lcom/android/server/connectivity/Vpn;->findLegacyVpnGateway(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    .line 930
    .local v2, gateway:Ljava/lang/String;
    const-string v5, ""

    .line 931
    .local v5, privateKey:Ljava/lang/String;
    const-string v8, ""

    .line 932
    .local v8, userCert:Ljava/lang/String;
    const-string v0, ""

    .line 933
    .local v0, caCert:Ljava/lang/String;
    const-string v7, ""

    .line 934
    .local v7, serverCert:Ljava/lang/String;
    iget-object v10, p1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 935
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USRPKEY_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 936
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USRCERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v9

    .line 937
    .local v9, value:[B
    if-nez v9, :cond_5

    const/4 v8, 0x0

    .line 939
    .end local v9           #value:[B
    :cond_1
    :goto_0
    iget-object v10, p1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 940
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CACERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v9

    .line 941
    .restart local v9       #value:[B
    if-nez v9, :cond_6

    const/4 v0, 0x0

    .line 943
    .end local v9           #value:[B
    :cond_2
    :goto_1
    iget-object v10, p1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 944
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USRCERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v9

    .line 945
    .restart local v9       #value:[B
    if-nez v9, :cond_7

    const/4 v7, 0x0

    .line 947
    .end local v9           #value:[B
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    if-eqz v8, :cond_4

    if-eqz v0, :cond_4

    if-nez v7, :cond_8

    .line 948
    :cond_4
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Cannot load credentials"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 937
    .restart local v9       #value:[B
    :cond_5
    new-instance v8, Ljava/lang/String;

    .end local v8           #userCert:Ljava/lang/String;
    sget-object v10, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 941
    .restart local v8       #userCert:Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/String;

    .end local v0           #caCert:Ljava/lang/String;
    sget-object v10, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v9, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1

    .line 945
    .restart local v0       #caCert:Ljava/lang/String;
    :cond_7
    new-instance v7, Ljava/lang/String;

    .end local v7           #serverCert:Ljava/lang/String;
    sget-object v10, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v9, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2

    .line 952
    .end local v9           #value:[B
    .restart local v7       #serverCert:Ljava/lang/String;
    :cond_8
    const/4 v6, 0x0

    .line 953
    .local v6, racoon:[Ljava/lang/String;
    iget v10, p1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v10, :pswitch_data_0

    .line 987
    :goto_3
    const/4 v4, 0x0

    .line 988
    .local v4, mtpd:[Ljava/lang/String;
    iget v10, p1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v10, :pswitch_data_1

    .line 1009
    :goto_4
    new-instance v1, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v1}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 1010
    .local v1, config:Lcom/android/internal/net/VpnConfig;
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 1011
    iget-object v10, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v10, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 1012
    iput-object v3, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1013
    iget-object v10, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v10, v1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 1014
    iget-object v10, p1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    iput-object v10, v1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    .line 1015
    iget-object v10, p1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1016
    iget-object v10, p1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v11, " +"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 1018
    :cond_9
    iget-object v10, p1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a

    .line 1019
    iget-object v10, p1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v11, " +"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 1022
    :cond_a
    invoke-direct {p0, v1, v6, v4}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1023
    return-void

    .line 955
    .end local v1           #config:Lcom/android/internal/net/VpnConfig;
    .end local v4           #mtpd:[Ljava/lang/String;
    :pswitch_0
    const/4 v10, 0x6

    new-array v6, v10, [Ljava/lang/String;

    .end local v6           #racoon:[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v3, v6, v10

    const/4 v10, 0x1

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x2

    const-string v11, "udppsk"

    aput-object v11, v6, v10

    const/4 v10, 0x3

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x4

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x5

    const-string v11, "1701"

    aput-object v11, v6, v10

    .line 959
    .restart local v6       #racoon:[Ljava/lang/String;
    goto :goto_3

    .line 961
    :pswitch_1
    const/16 v10, 0x8

    new-array v6, v10, [Ljava/lang/String;

    .end local v6           #racoon:[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v3, v6, v10

    const/4 v10, 0x1

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x2

    const-string v11, "udprsa"

    aput-object v11, v6, v10

    const/4 v10, 0x3

    aput-object v5, v6, v10

    const/4 v10, 0x4

    aput-object v8, v6, v10

    const/4 v10, 0x5

    aput-object v0, v6, v10

    const/4 v10, 0x6

    aput-object v7, v6, v10

    const/4 v10, 0x7

    const-string v11, "1701"

    aput-object v11, v6, v10

    .line 965
    .restart local v6       #racoon:[Ljava/lang/String;
    goto/16 :goto_3

    .line 967
    :pswitch_2
    const/16 v10, 0x9

    new-array v6, v10, [Ljava/lang/String;

    .end local v6           #racoon:[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v3, v6, v10

    const/4 v10, 0x1

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x2

    const-string v11, "xauthpsk"

    aput-object v11, v6, v10

    const/4 v10, 0x3

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x4

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x5

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x6

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x7

    const-string v11, ""

    aput-object v11, v6, v10

    const/16 v10, 0x8

    aput-object v2, v6, v10

    .line 971
    .restart local v6       #racoon:[Ljava/lang/String;
    goto/16 :goto_3

    .line 973
    :pswitch_3
    const/16 v10, 0xb

    new-array v6, v10, [Ljava/lang/String;

    .end local v6           #racoon:[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v3, v6, v10

    const/4 v10, 0x1

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x2

    const-string v11, "xauthrsa"

    aput-object v11, v6, v10

    const/4 v10, 0x3

    aput-object v5, v6, v10

    const/4 v10, 0x4

    aput-object v8, v6, v10

    const/4 v10, 0x5

    aput-object v0, v6, v10

    const/4 v10, 0x6

    aput-object v7, v6, v10

    const/4 v10, 0x7

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v11, v6, v10

    const/16 v10, 0x8

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v11, v6, v10

    const/16 v10, 0x9

    const-string v11, ""

    aput-object v11, v6, v10

    const/16 v10, 0xa

    aput-object v2, v6, v10

    .line 977
    .restart local v6       #racoon:[Ljava/lang/String;
    goto/16 :goto_3

    .line 979
    :pswitch_4
    const/16 v10, 0x9

    new-array v6, v10, [Ljava/lang/String;

    .end local v6           #racoon:[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v3, v6, v10

    const/4 v10, 0x1

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x2

    const-string v11, "hybridrsa"

    aput-object v11, v6, v10

    const/4 v10, 0x3

    aput-object v0, v6, v10

    const/4 v10, 0x4

    aput-object v7, v6, v10

    const/4 v10, 0x5

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x6

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x7

    const-string v11, ""

    aput-object v11, v6, v10

    const/16 v10, 0x8

    aput-object v2, v6, v10

    .restart local v6       #racoon:[Ljava/lang/String;
    goto/16 :goto_3

    .line 990
    .restart local v4       #mtpd:[Ljava/lang/String;
    :pswitch_5
    const/16 v10, 0x14

    new-array v4, v10, [Ljava/lang/String;

    .end local v4           #mtpd:[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v3, v4, v10

    const/4 v10, 0x1

    const-string v11, "pptp"

    aput-object v11, v4, v10

    const/4 v10, 0x2

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v11, v4, v10

    const/4 v10, 0x3

    const-string v11, "1723"

    aput-object v11, v4, v10

    const/4 v10, 0x4

    const-string v11, "name"

    aput-object v11, v4, v10

    const/4 v10, 0x5

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v11, v4, v10

    const/4 v10, 0x6

    const-string v11, "password"

    aput-object v11, v4, v10

    const/4 v10, 0x7

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v11, v4, v10

    const/16 v10, 0x8

    const-string v11, "linkname"

    aput-object v11, v4, v10

    const/16 v10, 0x9

    const-string v11, "vpn"

    aput-object v11, v4, v10

    const/16 v10, 0xa

    const-string v11, "refuse-eap"

    aput-object v11, v4, v10

    const/16 v10, 0xb

    const-string v11, "nodefaultroute"

    aput-object v11, v4, v10

    const/16 v10, 0xc

    const-string v11, "usepeerdns"

    aput-object v11, v4, v10

    const/16 v10, 0xd

    const-string v11, "idle"

    aput-object v11, v4, v10

    const/16 v10, 0xe

    const-string v11, "1800"

    aput-object v11, v4, v10

    const/16 v10, 0xf

    const-string v11, "mtu"

    aput-object v11, v4, v10

    const/16 v10, 0x10

    const-string v11, "1400"

    aput-object v11, v4, v10

    const/16 v10, 0x11

    const-string v11, "mru"

    aput-object v11, v4, v10

    const/16 v10, 0x12

    const-string v11, "1400"

    aput-object v11, v4, v10

    const/16 v11, 0x13

    iget-boolean v10, p1, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v10, :cond_b

    const-string v10, "+mppe"

    :goto_5
    aput-object v10, v4, v11

    .line 997
    .restart local v4       #mtpd:[Ljava/lang/String;
    goto/16 :goto_4

    .line 990
    .end local v4           #mtpd:[Ljava/lang/String;
    :cond_b
    const-string v10, "nomppe"

    goto :goto_5

    .line 1000
    .restart local v4       #mtpd:[Ljava/lang/String;
    :pswitch_6
    const/16 v10, 0x14

    new-array v4, v10, [Ljava/lang/String;

    .end local v4           #mtpd:[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v3, v4, v10

    const/4 v10, 0x1

    const-string v11, "l2tp"

    aput-object v11, v4, v10

    const/4 v10, 0x2

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v11, v4, v10

    const/4 v10, 0x3

    const-string v11, "1701"

    aput-object v11, v4, v10

    const/4 v10, 0x4

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    aput-object v11, v4, v10

    const/4 v10, 0x5

    const-string v11, "name"

    aput-object v11, v4, v10

    const/4 v10, 0x6

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v11, v4, v10

    const/4 v10, 0x7

    const-string v11, "password"

    aput-object v11, v4, v10

    const/16 v10, 0x8

    iget-object v11, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v11, v4, v10

    const/16 v10, 0x9

    const-string v11, "linkname"

    aput-object v11, v4, v10

    const/16 v10, 0xa

    const-string v11, "vpn"

    aput-object v11, v4, v10

    const/16 v10, 0xb

    const-string v11, "refuse-eap"

    aput-object v11, v4, v10

    const/16 v10, 0xc

    const-string v11, "nodefaultroute"

    aput-object v11, v4, v10

    const/16 v10, 0xd

    const-string v11, "usepeerdns"

    aput-object v11, v4, v10

    const/16 v10, 0xe

    const-string v11, "idle"

    aput-object v11, v4, v10

    const/16 v10, 0xf

    const-string v11, "1800"

    aput-object v11, v4, v10

    const/16 v10, 0x10

    const-string v11, "mtu"

    aput-object v11, v4, v10

    const/16 v10, 0x11

    const-string v11, "1400"

    aput-object v11, v4, v10

    const/16 v10, 0x12

    const-string v11, "mru"

    aput-object v11, v4, v10

    const/16 v10, 0x13

    const-string v11, "1400"

    aput-object v11, v4, v10

    .restart local v4       #mtpd:[Ljava/lang/String;
    goto/16 :goto_4

    .line 953
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 988
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method protected startMonitoringInternal()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public declared-synchronized stopLegacyVpn()V
    .locals 2

    .prologue
    .line 1038
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1040
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1042
    const-string v1, "LegacyVpnRunner"

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1045
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1047
    :cond_0
    monitor-exit p0

    return-void

    .line 1045
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1038
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public teardown()Z
    .locals 1

    .prologue
    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
