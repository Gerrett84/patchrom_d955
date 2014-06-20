.class public Lcom/verizon/net/ConnectivityService;
.super Lcom/verizon/net/Ivzwconnectivity$Stub;
.source "ConnectivityService.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "VZWConnectivityService"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/verizon/net/Ivzwconnectivity$Stub;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/verizon/net/ConnectivityService;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 62
    const-string v0, "VZWConnectivityService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method


# virtual methods
.method public getAPNUsageRxBytes(Ljava/lang/String;I)J
    .locals 10
    .parameter "apnType"
    .parameter "networkType"

    .prologue
    const-wide/16 v6, -0x1

    .line 28
    const-string/jumbo v8, "network_management"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 29
    .local v2, b:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    .line 30
    .local v5, service:Landroid/os/INetworkManagementService;
    const-string/jumbo v8, "ril.current.default_iface"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, default_rmnet_iface:Ljava/lang/String;
    if-nez v5, :cond_0

    move-wide v0, v6

    .line 41
    :goto_0
    return-wide v0

    .line 33
    :cond_0
    if-nez p2, :cond_1

    .line 34
    :try_start_0
    invoke-interface {v5, v3}, Landroid/os/INetworkManagementService;->getInterfaceRxCounter(Ljava/lang/String;)J

    move-result-wide v0

    .line 35
    .local v0, InternetUsageRxBytes:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VZWINTERNET APN:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " getAPNUsageRxBytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/verizon/net/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    .end local v0           #InternetUsageRxBytes:J
    :catch_0
    move-exception v4

    .line 39
    .local v4, e:Ljava/lang/Exception;
    const-string v8, "getAPNUsageRxBytes FAIL"

    invoke-direct {p0, v8}, Lcom/verizon/net/ConnectivityService;->log(Ljava/lang/String;)V

    .end local v4           #e:Ljava/lang/Exception;
    :cond_1
    move-wide v0, v6

    .line 41
    goto :goto_0
.end method

.method public getAPNUsageTxBytes(Ljava/lang/String;I)J
    .locals 10
    .parameter "apnType"
    .parameter "networkType"

    .prologue
    const-wide/16 v6, -0x1

    .line 45
    const-string/jumbo v8, "network_management"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 46
    .local v2, b:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    .line 47
    .local v5, service:Landroid/os/INetworkManagementService;
    const-string/jumbo v8, "ril.current.default_iface"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, default_rmnet_iface:Ljava/lang/String;
    if-nez v5, :cond_0

    move-wide v0, v6

    .line 58
    :goto_0
    return-wide v0

    .line 50
    :cond_0
    if-nez p2, :cond_1

    .line 51
    :try_start_0
    invoke-interface {v5, v3}, Landroid/os/INetworkManagementService;->getInterfaceTxCounter(Ljava/lang/String;)J

    move-result-wide v0

    .line 52
    .local v0, InternetUsageTxBytes:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VZWINTERNET APN:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " getAPNUsageTxBytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/verizon/net/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    .end local v0           #InternetUsageTxBytes:J
    :catch_0
    move-exception v4

    .line 56
    .local v4, e:Ljava/lang/Exception;
    const-string v8, "InternetUsageTxBytes FAIL"

    invoke-direct {p0, v8}, Lcom/verizon/net/ConnectivityService;->log(Ljava/lang/String;)V

    .end local v4           #e:Ljava/lang/Exception;
    :cond_1
    move-wide v0, v6

    .line 58
    goto :goto_0
.end method
