.class public Landroid/net/wifi/NetworkManagementServiceProxy;
.super Ljava/lang/Object;
.source "NetworkManagementServiceProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkManagementServiceProxy"

.field private static getAssociatedIpHostnameWithMacMethod:Ljava/lang/reflect/Method;

.field private static getAssociatedIpWithMacMethod:Ljava/lang/reflect/Method;

.field private static getStationListMethod:Ljava/lang/reflect/Method;

.field private static runClearNatRuleMethod:Ljava/lang/reflect/Method;

.field private static runClearPortFilterRuleMethod:Ljava/lang/reflect/Method;

.field private static runClearPortForwardRuleMethod:Ljava/lang/reflect/Method;

.field private static runSetNatForwardRuleMethod:Ljava/lang/reflect/Method;

.field private static runSetPortFilterRuleMethod:Ljava/lang/reflect/Method;

.field private static runSetPortForwardRuleMethod:Ljava/lang/reflect/Method;

.field private static setSoftapMaxClientsMethod:Ljava/lang/reflect/Method;

.field private static startTetheringWithFullOptionMethod:Ljava/lang/reflect/Method;

.field private static startVZWAccessPointMethod:Ljava/lang/reflect/Method;

.field private static stopVZWAccessPointMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final mNwService:Landroid/os/INetworkManagementService;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .prologue
    .line 42
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v4, v0, [Ljava/lang/Class;

    .line 43
    .local v4, getStationListMethodParamType:[Ljava/lang/Class;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v12, v0, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, [Ljava/lang/String;

    aput-object v17, v12, v16

    .line 46
    .local v12, startTetheringWithFullOptionParamType:[Ljava/lang/Class;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v2, v0, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v2, v16

    .line 49
    .local v2, getAssociatedIpHostnameWithMacParamType:[Ljava/lang/Class;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v8, v0, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v8, v16

    .line 52
    .local v8, runSetNatForwardRuleParamType:[Ljava/lang/Class;
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v5, v0, [Ljava/lang/Class;

    .line 53
    .local v5, runClearNatRuleParamType:[Ljava/lang/Class;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v9, v0, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v9, v16

    const/16 v16, 0x1

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v9, v16

    .line 56
    .local v9, runSetPortFilterRuleParamType:[Ljava/lang/Class;
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v6, v0, [Ljava/lang/Class;

    .line 57
    .local v6, runClearPortFilterRuleParamType:[Ljava/lang/Class;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v10, v0, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v10, v16

    const/16 v16, 0x1

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v10, v16

    .line 60
    .local v10, runSetPortForwardRuleParamType:[Ljava/lang/Class;
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v7, v0, [Ljava/lang/Class;

    .line 64
    .local v7, runClearPortForwardRuleParamType:[Ljava/lang/Class;
    const/16 v16, 0x14

    move/from16 v0, v16

    new-array v13, v0, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v13, v16

    const/16 v16, 0x1

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v13, v16

    const/16 v16, 0x2

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v13, v16

    const/16 v16, 0x3

    const-class v17, Ljava/lang/String;

    aput-object v17, v13, v16

    const/16 v16, 0x4

    const-class v17, Ljava/lang/String;

    aput-object v17, v13, v16

    const/16 v16, 0x5

    const-class v17, Ljava/lang/String;

    aput-object v17, v13, v16

    const/16 v16, 0x6

    const-class v17, Ljava/lang/String;

    aput-object v17, v13, v16

    const/16 v16, 0x7

    const-class v17, Ljava/lang/String;

    aput-object v17, v13, v16

    const/16 v16, 0x8

    sget-object v17, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v17, v13, v16

    const/16 v16, 0x9

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v13, v16

    const/16 v16, 0xa

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v13, v16

    const/16 v16, 0xb

    const-class v17, Ljava/lang/String;

    aput-object v17, v13, v16

    const/16 v16, 0xc

    const-class v17, Ljava/lang/String;

    aput-object v17, v13, v16

    const/16 v16, 0xd

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v13, v16

    const/16 v16, 0xe

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v13, v16

    const/16 v16, 0xf

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v13, v16

    const/16 v16, 0x10

    const-class v17, Ljava/lang/String;

    aput-object v17, v13, v16

    const/16 v16, 0x11

    const-class v17, Ljava/lang/String;

    aput-object v17, v13, v16

    const/16 v16, 0x12

    const-class v17, Ljava/lang/String;

    aput-object v17, v13, v16

    const/16 v16, 0x13

    const-class v17, Ljava/lang/String;

    aput-object v17, v13, v16

    .line 70
    .local v13, startVZWAccessPointParamType:[Ljava/lang/Class;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v14, v0, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v14, v16

    .line 73
    .local v14, stopVZWAccessPointParamType:[Ljava/lang/Class;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v3, v0, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v3, v16

    .line 76
    .local v3, getAssociatedIpWithMacParamType:[Ljava/lang/Class;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v11, v0, [Ljava/lang/Class;

    const/16 v16, 0x0

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v11, v16

    .line 82
    .local v11, setSoftapMaxClientsParamType:[Ljava/lang/Class;
    :try_start_0
    const-string v16, "com.android.server.NetworkManagementService"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 90
    .local v1, c:Ljava/lang/Class;
    const-string v16, "getStationList"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    sput-object v16, Landroid/net/wifi/NetworkManagementServiceProxy;->getStationListMethod:Ljava/lang/reflect/Method;

    .line 92
    const-string/jumbo v16, "startTetheringWithFullOption"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    sput-object v16, Landroid/net/wifi/NetworkManagementServiceProxy;->startTetheringWithFullOptionMethod:Ljava/lang/reflect/Method;

    .line 94
    const-string v16, "getAssociatedIpHostnameWithMac"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    sput-object v16, Landroid/net/wifi/NetworkManagementServiceProxy;->getAssociatedIpHostnameWithMacMethod:Ljava/lang/reflect/Method;

    .line 96
    const-string/jumbo v16, "runSetNatForwardRule"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    sput-object v16, Landroid/net/wifi/NetworkManagementServiceProxy;->runSetNatForwardRuleMethod:Ljava/lang/reflect/Method;

    .line 98
    const-string/jumbo v16, "runClearNatRule"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    sput-object v16, Landroid/net/wifi/NetworkManagementServiceProxy;->runClearNatRuleMethod:Ljava/lang/reflect/Method;

    .line 100
    const-string/jumbo v16, "runSetPortFilterRule"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    sput-object v16, Landroid/net/wifi/NetworkManagementServiceProxy;->runSetPortFilterRuleMethod:Ljava/lang/reflect/Method;

    .line 102
    const-string/jumbo v16, "runClearPortFilterRule"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    sput-object v16, Landroid/net/wifi/NetworkManagementServiceProxy;->runClearPortFilterRuleMethod:Ljava/lang/reflect/Method;

    .line 104
    const-string/jumbo v16, "runSetPortForwardRule"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    sput-object v16, Landroid/net/wifi/NetworkManagementServiceProxy;->runSetPortForwardRuleMethod:Ljava/lang/reflect/Method;

    .line 106
    const-string/jumbo v16, "runClearPortForwardRule"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    sput-object v16, Landroid/net/wifi/NetworkManagementServiceProxy;->runClearPortForwardRuleMethod:Ljava/lang/reflect/Method;

    .line 110
    const-string/jumbo v16, "startVZWAccessPoint"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    sput-object v16, Landroid/net/wifi/NetworkManagementServiceProxy;->startVZWAccessPointMethod:Ljava/lang/reflect/Method;

    .line 112
    const-string/jumbo v16, "stopVZWAccessPoint"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    sput-object v16, Landroid/net/wifi/NetworkManagementServiceProxy;->stopVZWAccessPointMethod:Ljava/lang/reflect/Method;

    .line 114
    const-string v16, "getAssociatedIpWithMac"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    sput-object v16, Landroid/net/wifi/NetworkManagementServiceProxy;->getAssociatedIpWithMacMethod:Ljava/lang/reflect/Method;

    .line 116
    const-string/jumbo v16, "setSoftapMaxClients"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    sput-object v16, Landroid/net/wifi/NetworkManagementServiceProxy;->setSoftapMaxClientsMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1           #c:Ljava/lang/Class;
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v15

    .line 122
    .local v15, t:Ljava/lang/Throwable;
    const-string v16, "NetworkManagementServiceProxy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unable to find NetworkManagementService"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    .end local v15           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v16

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 133
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    .line 134
    return-void
.end method

.method private convertQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    const/16 v4, 0x22

    .line 639
    if-nez p1, :cond_0

    .line 643
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\\\"

    const-string v2, "\\\\\\\\"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    const-string v3, "\\\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static getVZWSecurityType(Landroid/net/wifi/WifiVZWConfigurationProxy;)Ljava/lang/String;
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 655
    const-string/jumbo v0, "open"

    return-object v0
.end method

.method private isAllowalldevices()Z
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getAssociatedIpHostnameWithMac(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "mac"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 182
    sget-object v3, Landroid/net/wifi/NetworkManagementServiceProxy;->getAssociatedIpHostnameWithMacMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-eqz v3, :cond_2

    .line 183
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    .line 187
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/NetworkManagementServiceProxy;->getAssociatedIpHostnameWithMacMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 207
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 188
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 189
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    move-object v3, v4

    .line 201
    goto :goto_0

    .line 190
    :catch_1
    move-exception v2

    .line 191
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 192
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 193
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 194
    .local v1, cause:Ljava/lang/Throwable;
    instance-of v3, v1, Landroid/os/RemoteException;

    if-eqz v3, :cond_1

    .line 195
    check-cast v1, Landroid/os/RemoteException;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 197
    .restart local v1       #cause:Ljava/lang/Throwable;
    :cond_1
    instance-of v3, v1, Ljava/lang/IllegalStateException;

    if-eqz v3, :cond_0

    .line 198
    check-cast v1, Ljava/lang/IllegalStateException;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 205
    .end local v0           #args:[Ljava/lang/Object;
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    const-string v3, "NetworkManagementServiceProxy"

    const-string v5, "getAssociatedIpHostnameWithMac method isn\'t implemented yet"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 207
    goto :goto_0
.end method

.method public getAssociatedIpWithMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "mac"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 559
    sget-object v5, Landroid/net/wifi/NetworkManagementServiceProxy;->getAssociatedIpWithMacMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-eqz v5, :cond_2

    .line 560
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v0, v5

    .line 564
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v5, Landroid/net/wifi/NetworkManagementServiceProxy;->getAssociatedIpWithMacMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {v5, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 565
    .local v3, obj:Ljava/lang/Object;
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 584
    .end local v0           #args:[Ljava/lang/Object;
    .end local v3           #obj:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 566
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 567
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    move-object v3, v4

    .line 579
    goto :goto_0

    .line 568
    :catch_1
    move-exception v2

    .line 569
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 570
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 571
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 572
    .local v1, cause:Ljava/lang/Throwable;
    instance-of v5, v1, Landroid/os/RemoteException;

    if-eqz v5, :cond_1

    .line 573
    check-cast v1, Landroid/os/RemoteException;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 575
    .restart local v1       #cause:Ljava/lang/Throwable;
    :cond_1
    instance-of v5, v1, Ljava/lang/IllegalStateException;

    if-eqz v5, :cond_0

    .line 576
    check-cast v1, Ljava/lang/IllegalStateException;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 583
    .end local v0           #args:[Ljava/lang/Object;
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    const-string v5, "NetworkManagementServiceProxy"

    const-string v6, "getAssociatedIpWithMac method isn\'t implemented yet"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 584
    goto :goto_0
.end method

.method public getStationList()[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 396
    sget-object v5, Landroid/net/wifi/NetworkManagementServiceProxy;->getStationListMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-eqz v5, :cond_2

    .line 397
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/Object;

    .line 399
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v5, Landroid/net/wifi/NetworkManagementServiceProxy;->getStationListMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {v5, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 400
    .local v3, obj:Ljava/lang/Object;
    check-cast v3, [Ljava/lang/String;

    .end local v3           #obj:Ljava/lang/Object;
    check-cast v3, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 419
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 401
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 402
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    move-object v3, v4

    .line 414
    goto :goto_0

    .line 403
    :catch_1
    move-exception v2

    .line 404
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 405
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 406
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 407
    .local v1, cause:Ljava/lang/Throwable;
    instance-of v5, v1, Landroid/os/RemoteException;

    if-eqz v5, :cond_1

    .line 408
    check-cast v1, Landroid/os/RemoteException;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 410
    .restart local v1       #cause:Ljava/lang/Throwable;
    :cond_1
    instance-of v5, v1, Ljava/lang/IllegalStateException;

    if-eqz v5, :cond_0

    .line 411
    check-cast v1, Ljava/lang/IllegalStateException;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 418
    .end local v0           #args:[Ljava/lang/Object;
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    const-string v5, "NetworkManagementServiceProxy"

    const-string v6, "getStationList method isn\'t implemented yet"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 419
    goto :goto_0
.end method

.method public runClearNatRule()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 248
    sget-object v3, Landroid/net/wifi/NetworkManagementServiceProxy;->runClearNatRuleMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-eqz v3, :cond_0

    .line 249
    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    .line 251
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/NetworkManagementServiceProxy;->runClearNatRuleMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 265
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    return-void

    .line 253
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 254
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 255
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 256
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 257
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 258
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 264
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    const-string v3, "NetworkManagementServiceProxy"

    const-string/jumbo v4, "runClearNatRule method isn\'t implemented yet"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public runClearPortFilterRule()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 306
    sget-object v3, Landroid/net/wifi/NetworkManagementServiceProxy;->runClearPortFilterRuleMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-eqz v3, :cond_0

    .line 307
    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    .line 309
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/NetworkManagementServiceProxy;->runClearPortFilterRuleMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 323
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    return-void

    .line 311
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 312
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 313
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 314
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 315
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 316
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 322
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    const-string v3, "NetworkManagementServiceProxy"

    const-string/jumbo v4, "runClearPortFilterRule method isn\'t implemented yet"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public runClearPortForwardRule()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 365
    sget-object v3, Landroid/net/wifi/NetworkManagementServiceProxy;->runClearPortForwardRuleMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-eqz v3, :cond_0

    .line 366
    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    .line 368
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/NetworkManagementServiceProxy;->runClearPortForwardRuleMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 382
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    return-void

    .line 370
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 371
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 372
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 373
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 374
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 375
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 381
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    const-string v3, "NetworkManagementServiceProxy"

    const-string/jumbo v4, "runClearPortForwardRule method isn\'t implemented yet"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public runSetNatForwardRule(Ljava/lang/String;)V
    .locals 5
    .parameter "iptablescmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 218
    sget-object v3, Landroid/net/wifi/NetworkManagementServiceProxy;->runSetNatForwardRuleMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-eqz v3, :cond_0

    .line 219
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    .line 223
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/NetworkManagementServiceProxy;->runSetNatForwardRuleMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 237
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    return-void

    .line 225
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 226
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 227
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 228
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 229
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 230
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 236
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    const-string v3, "NetworkManagementServiceProxy"

    const-string/jumbo v4, "runSetNatForwardRule method isn\'t implemented yet"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public runSetPortFilterRule(Ljava/lang/String;I)V
    .locals 5
    .parameter "iptablescmd"
    .parameter "addORdel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 276
    sget-object v3, Landroid/net/wifi/NetworkManagementServiceProxy;->runSetPortFilterRuleMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-eqz v3, :cond_0

    .line 277
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 281
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/NetworkManagementServiceProxy;->runSetPortFilterRuleMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 295
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    return-void

    .line 283
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 284
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 285
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 286
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 287
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 288
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 294
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    const-string v3, "NetworkManagementServiceProxy"

    const-string/jumbo v4, "runSetPortFilterRule method isn\'t implemented yet"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public runSetPortForwardRule(Ljava/lang/String;I)V
    .locals 5
    .parameter "iptablescmd"
    .parameter "addORdel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 335
    sget-object v3, Landroid/net/wifi/NetworkManagementServiceProxy;->runSetPortForwardRuleMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-eqz v3, :cond_0

    .line 336
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 340
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/NetworkManagementServiceProxy;->runSetPortForwardRuleMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 354
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    return-void

    .line 342
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 343
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 344
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 345
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 346
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 347
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 353
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    const-string v3, "NetworkManagementServiceProxy"

    const-string/jumbo v4, "runSetPortForwardRule method isn\'t implemented yet"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSoftapMaxClients(I)Z
    .locals 7
    .parameter "num"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 598
    sget-object v5, Landroid/net/wifi/NetworkManagementServiceProxy;->setSoftapMaxClientsMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-eqz v5, :cond_2

    .line 599
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    .line 603
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v5, Landroid/net/wifi/NetworkManagementServiceProxy;->setSoftapMaxClientsMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {v5, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 604
    .local v3, obj:Ljava/lang/Object;
    check-cast v3, Ljava/lang/Boolean;

    .end local v3           #obj:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    .line 623
    .end local v0           #args:[Ljava/lang/Object;
    :cond_0
    :goto_0
    return v4

    .line 605
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 606
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 607
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 608
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 609
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 610
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 611
    .local v1, cause:Ljava/lang/Throwable;
    instance-of v5, v1, Landroid/os/RemoteException;

    if-eqz v5, :cond_1

    .line 612
    check-cast v1, Landroid/os/RemoteException;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 614
    .restart local v1       #cause:Ljava/lang/Throwable;
    :cond_1
    instance-of v5, v1, Ljava/lang/IllegalStateException;

    if-eqz v5, :cond_0

    .line 615
    check-cast v1, Ljava/lang/IllegalStateException;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 622
    .end local v0           #args:[Ljava/lang/Object;
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    const-string v5, "NetworkManagementServiceProxy"

    const-string/jumbo v6, "setSoftapMaxClients method isn\'t implemented yet"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startTetheringWithFullOption([Ljava/lang/String;)V
    .locals 6
    .parameter "dhcpOption"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 145
    sget-object v4, Landroid/net/wifi/NetworkManagementServiceProxy;->startTetheringWithFullOptionMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-eqz v4, :cond_2

    .line 146
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v0, v4

    .line 150
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v4, Landroid/net/wifi/NetworkManagementServiceProxy;->startTetheringWithFullOptionMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 170
    .end local v0           #args:[Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 152
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 153
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 154
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 155
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 156
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 157
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 158
    .local v1, cause:Ljava/lang/Throwable;
    instance-of v4, v1, Landroid/os/RemoteException;

    if-eqz v4, :cond_1

    .line 159
    check-cast v1, Landroid/os/RemoteException;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 161
    .restart local v1       #cause:Ljava/lang/Throwable;
    :cond_1
    instance-of v4, v1, Ljava/lang/IllegalStateException;

    if-eqz v4, :cond_0

    .line 162
    check-cast v1, Ljava/lang/IllegalStateException;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 169
    .end local v0           #args:[Ljava/lang/Object;
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    const-string v4, "NetworkManagementServiceProxy"

    const-string/jumbo v5, "startTetheringWithFullOption method isn\'t implemented yet"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startVZWAccessPoint(Landroid/net/wifi/WifiVZWConfigurationProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "wifiConfig"
    .parameter "wlanIface"
    .parameter "softapIface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 476
    sget-object v4, Landroid/net/wifi/NetworkManagementServiceProxy;->startVZWAccessPointMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-eqz v4, :cond_2

    .line 477
    const/16 v4, 0x14

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/net/wifi/WifiVZWConfigurationProxy;->getSSIDField()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/net/wifi/WifiVZWConfigurationProxy;->getAuthType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Landroid/net/wifi/WifiVZWConfigurationProxy;->getwepTxKeyIndexField()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/net/wifi/WifiVZWConfigurationProxy;->getwepKeysField1()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x4

    invoke-virtual {p1}, Landroid/net/wifi/WifiVZWConfigurationProxy;->getwepKeysField2()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x5

    invoke-virtual {p1}, Landroid/net/wifi/WifiVZWConfigurationProxy;->getwepKeysField3()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x6

    invoke-virtual {p1}, Landroid/net/wifi/WifiVZWConfigurationProxy;->getwepKeysField4()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x7

    invoke-virtual {p1}, Landroid/net/wifi/WifiVZWConfigurationProxy;->getpreSharedKeyField()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x8

    invoke-virtual {p1}, Landroid/net/wifi/WifiVZWConfigurationProxy;->gethiddenSSIDField()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x9

    invoke-virtual {p1}, Landroid/net/wifi/WifiVZWConfigurationProxy;->getChannelField()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0xa

    invoke-virtual {p1}, Landroid/net/wifi/WifiVZWConfigurationProxy;->getMaxscbField()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0xb

    invoke-virtual {p1}, Landroid/net/wifi/WifiVZWConfigurationProxy;->gethw_modeField()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0xc

    invoke-virtual {p1}, Landroid/net/wifi/WifiVZWConfigurationProxy;->getcountryCodeField()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0xd

    invoke-virtual {p1}, Landroid/net/wifi/WifiVZWConfigurationProxy;->getap_isolateField()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0xe

    invoke-virtual {p1}, Landroid/net/wifi/WifiVZWConfigurationProxy;->getieee_modeField()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0xf

    invoke-virtual {p1}, Landroid/net/wifi/WifiVZWConfigurationProxy;->getmacaddr_aclField()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x10

    invoke-virtual {p1}, Landroid/net/wifi/WifiVZWConfigurationProxy;->getaccept_mac_fileField()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x11

    invoke-virtual {p1}, Landroid/net/wifi/WifiVZWConfigurationProxy;->getdeny_mac_fileField()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x12

    aput-object p2, v0, v4

    const/16 v4, 0x13

    aput-object p3, v0, v4

    .line 486
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v4, Landroid/net/wifi/NetworkManagementServiceProxy;->startVZWAccessPointMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 506
    .end local v0           #args:[Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 488
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 489
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 490
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 491
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 492
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 493
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 494
    .local v1, cause:Ljava/lang/Throwable;
    instance-of v4, v1, Landroid/os/RemoteException;

    if-eqz v4, :cond_1

    .line 495
    check-cast v1, Landroid/os/RemoteException;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 497
    .restart local v1       #cause:Ljava/lang/Throwable;
    :cond_1
    instance-of v4, v1, Ljava/lang/IllegalStateException;

    if-eqz v4, :cond_0

    .line 498
    check-cast v1, Ljava/lang/IllegalStateException;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 505
    .end local v0           #args:[Ljava/lang/Object;
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    const-string v4, "NetworkManagementServiceProxy"

    const-string/jumbo v5, "startVZWAccessPoint method isn\'t implemented yet"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopVZWAccessPoint(Ljava/lang/String;)V
    .locals 6
    .parameter "wlanIface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 520
    sget-object v4, Landroid/net/wifi/NetworkManagementServiceProxy;->stopVZWAccessPointMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    if-eqz v4, :cond_2

    .line 521
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v0, v4

    .line 525
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v4, Landroid/net/wifi/NetworkManagementServiceProxy;->stopVZWAccessPointMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/net/wifi/NetworkManagementServiceProxy;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 545
    .end local v0           #args:[Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 527
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 528
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 529
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 530
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 531
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 532
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 533
    .local v1, cause:Ljava/lang/Throwable;
    instance-of v4, v1, Landroid/os/RemoteException;

    if-eqz v4, :cond_1

    .line 534
    check-cast v1, Landroid/os/RemoteException;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 536
    .restart local v1       #cause:Ljava/lang/Throwable;
    :cond_1
    instance-of v4, v1, Ljava/lang/IllegalStateException;

    if-eqz v4, :cond_0

    .line 537
    check-cast v1, Ljava/lang/IllegalStateException;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 544
    .end local v0           #args:[Ljava/lang/Object;
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    const-string v4, "NetworkManagementServiceProxy"

    const-string/jumbo v5, "stopVZWAccessPointPoint method isn\'t implemented yet"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
