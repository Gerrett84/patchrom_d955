.class public Landroid/net/wifi/WifiManagerProxy;
.super Ljava/lang/Object;
.source "WifiManagerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiManagerProxy"

.field private static checkAndStartWifiExtMethod:Ljava/lang/reflect/Method;

.field private static getWifiNeedOnMethod:Ljava/lang/reflect/Method;

.field private static isPowerSaveModeEnabledMethod:Ljava/lang/reflect/Method;

.field private static isVZWMobileHotspotEnabledMethod:Ljava/lang/reflect/Method;

.field private static setVZWMobileHotspotMethod:Ljava/lang/reflect/Method;

.field private static setWifiNeedOnMethod:Ljava/lang/reflect/Method;

.field private static setWifiVZWApConfigurationMethod:Ljava/lang/reflect/Method;

.field private static setWifiVZWApEnabledMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 33
    new-array v0, v10, [Ljava/lang/Class;

    .line 34
    .local v0, checkAndStartWifiExtParamType:[Ljava/lang/Class;
    const/16 v8, 0x13

    new-array v7, v8, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v10

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v11

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v12

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v13

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v14

    const/4 v8, 0x5

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/16 v8, 0x8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/16 v8, 0x9

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/16 v8, 0xa

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/16 v8, 0xb

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/16 v8, 0xc

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/16 v8, 0xd

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/16 v8, 0xe

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/16 v8, 0xf

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/16 v8, 0x10

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/16 v8, 0x11

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/16 v8, 0x12

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    .line 42
    .local v7, setWifiVZWApEnabledParamType:[Ljava/lang/Class;
    const/16 v8, 0x12

    new-array v6, v8, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v10

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v11

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v12

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v13

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v14

    const/4 v8, 0x5

    const-class v9, Ljava/lang/String;

    aput-object v9, v6, v8

    const/4 v8, 0x6

    const-class v9, Ljava/lang/String;

    aput-object v9, v6, v8

    const/4 v8, 0x7

    const-class v9, Ljava/lang/String;

    aput-object v9, v6, v8

    const/16 v8, 0x8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v6, v8

    const/16 v8, 0x9

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v6, v8

    const/16 v8, 0xa

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v6, v8

    const/16 v8, 0xb

    const-class v9, Ljava/lang/String;

    aput-object v9, v6, v8

    const/16 v8, 0xc

    const-class v9, Ljava/lang/String;

    aput-object v9, v6, v8

    const/16 v8, 0xd

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v6, v8

    const/16 v8, 0xe

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v6, v8

    const/16 v8, 0xf

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v6, v8

    const/16 v8, 0x10

    const-class v9, Ljava/lang/String;

    aput-object v9, v6, v8

    const/16 v8, 0x11

    const-class v9, Ljava/lang/String;

    aput-object v9, v6, v8

    .line 49
    .local v6, setWifiVZWApConfigurationParamType:[Ljava/lang/Class;
    new-array v5, v11, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v10

    .line 52
    .local v5, setWifiNeedOnParamType:[Ljava/lang/Class;
    new-array v1, v10, [Ljava/lang/Class;

    .line 53
    .local v1, getWifiNeedOnParamType:[Ljava/lang/Class;
    new-array v3, v10, [Ljava/lang/Class;

    .line 54
    .local v3, isVZWMobileHotspotEnabledParamType:[Ljava/lang/Class;
    new-array v4, v11, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v4, v10

    .line 57
    .local v4, setVZWMobileHotspotParamType:[Ljava/lang/Class;
    new-array v2, v10, [Ljava/lang/Class;

    .line 61
    .local v2, isPowerSaveModeEnabledParamType:[Ljava/lang/Class;
    :try_start_0
    const-class v8, Landroid/net/wifi/WifiManager;

    const-string v9, "checkAndStartWifiExt"

    invoke-virtual {v8, v9, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/net/wifi/WifiManagerProxy;->checkAndStartWifiExtMethod:Ljava/lang/reflect/Method;

    .line 63
    const-class v8, Landroid/net/wifi/WifiManager;

    const-string/jumbo v9, "setWifiVZWApEnabled"

    invoke-virtual {v8, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/net/wifi/WifiManagerProxy;->setWifiVZWApEnabledMethod:Ljava/lang/reflect/Method;

    .line 68
    const-class v8, Landroid/net/wifi/WifiManager;

    const-string/jumbo v9, "setWifiVZWApConfiguration"

    invoke-virtual {v8, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/net/wifi/WifiManagerProxy;->setWifiVZWApConfigurationMethod:Ljava/lang/reflect/Method;

    .line 71
    const-class v8, Landroid/net/wifi/WifiManager;

    const-string v9, "getWifiNeedOn"

    invoke-virtual {v8, v9, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/net/wifi/WifiManagerProxy;->getWifiNeedOnMethod:Ljava/lang/reflect/Method;

    .line 73
    const-class v8, Landroid/net/wifi/WifiManager;

    const-string/jumbo v9, "isVZWMobileHotspotEnabled"

    invoke-virtual {v8, v9, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/net/wifi/WifiManagerProxy;->isVZWMobileHotspotEnabledMethod:Ljava/lang/reflect/Method;

    .line 76
    const-class v8, Landroid/net/wifi/WifiManager;

    const-string/jumbo v9, "setVZWMobileHotspot"

    invoke-virtual {v8, v9, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/net/wifi/WifiManagerProxy;->setVZWMobileHotspotMethod:Ljava/lang/reflect/Method;

    .line 78
    const-class v8, Landroid/net/wifi/WifiManager;

    const-string/jumbo v9, "isPowerSaveModeEnabled"

    invoke-virtual {v8, v9, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/net/wifi/WifiManagerProxy;->isPowerSaveModeEnabledMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    if-eqz p1, :cond_0

    .line 93
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 94
    const-string v0, "WifiManagerProxy"

    const-string v1, "WifiManagerProxy is created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string v0, "WifiManagerProxy"

    const-string v1, "WifiManagerProxy is created - fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public checkAndStartWifiExt()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->checkAndStartWifiExtMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_1

    .line 113
    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    .line 115
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->checkAndStartWifiExtMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 132
    .end local v0           #args:[Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 118
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 119
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 120
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 121
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 122
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 123
    .local v1, cause:Ljava/lang/Throwable;
    instance-of v3, v1, Landroid/os/RemoteException;

    if-eqz v3, :cond_0

    .line 124
    check-cast v1, Landroid/os/RemoteException;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 131
    .end local v0           #args:[Ljava/lang/Object;
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    const-string v3, "WifiManagerProxy"

    const-string v4, "checkAndStartWifiExt method isn\'t implemented yet"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiNeedOn()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 299
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->getWifiNeedOnMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_1

    .line 300
    new-array v0, v4, [Ljava/lang/Object;

    .line 302
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->getWifiNeedOnMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 318
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    return v3

    .line 303
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 304
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    move v3, v4

    .line 313
    goto :goto_0

    .line 305
    :catch_1
    move-exception v2

    .line 306
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 307
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 308
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 309
    .local v1, cause:Ljava/lang/Throwable;
    instance-of v3, v1, Landroid/os/RemoteException;

    if-eqz v3, :cond_0

    .line 310
    check-cast v1, Landroid/os/RemoteException;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 317
    .end local v0           #args:[Ljava/lang/Object;
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    const-string v3, "WifiManagerProxy"

    const-string v5, "getWifiNeedOn method isn\'t implemented yet"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 318
    goto :goto_0
.end method

.method public isPowerSaveModeEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 400
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->isPowerSaveModeEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_1

    .line 401
    new-array v0, v4, [Ljava/lang/Object;

    .line 403
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->isPowerSaveModeEnabledMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 419
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    return v3

    .line 404
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 405
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    move v3, v4

    .line 414
    goto :goto_0

    .line 406
    :catch_1
    move-exception v2

    .line 407
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 408
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 409
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 410
    .local v1, cause:Ljava/lang/Throwable;
    instance-of v3, v1, Landroid/os/RemoteException;

    if-eqz v3, :cond_0

    .line 411
    check-cast v1, Landroid/os/RemoteException;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 418
    .end local v0           #args:[Ljava/lang/Object;
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    const-string v3, "WifiManagerProxy"

    const-string/jumbo v5, "isPowerSaveModeEnabled method isn\'t implemented yet"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 419
    goto :goto_0
.end method

.method public isVZWMobileHotspotEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 332
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->isVZWMobileHotspotEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_1

    .line 333
    new-array v0, v4, [Ljava/lang/Object;

    .line 335
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->isVZWMobileHotspotEnabledMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 351
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    return v3

    .line 336
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 337
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    move v3, v4

    .line 346
    goto :goto_0

    .line 338
    :catch_1
    move-exception v2

    .line 339
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 340
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 341
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 342
    .local v1, cause:Ljava/lang/Throwable;
    instance-of v3, v1, Landroid/os/RemoteException;

    if-eqz v3, :cond_0

    .line 343
    check-cast v1, Landroid/os/RemoteException;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 350
    .end local v0           #args:[Ljava/lang/Object;
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    const-string v3, "WifiManagerProxy"

    const-string/jumbo v5, "isVZWMobileHotspotEnabled method isn\'t implemented yet"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 351
    goto :goto_0
.end method

.method public setVZWMobileHotspot(Z)Z
    .locals 6
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 365
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->setVZWMobileHotspotMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_1

    .line 366
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v4

    .line 370
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->setVZWMobileHotspotMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 386
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    return v3

    .line 371
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 372
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    move v3, v4

    .line 381
    goto :goto_0

    .line 373
    :catch_1
    move-exception v2

    .line 374
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 375
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 376
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 377
    .local v1, cause:Ljava/lang/Throwable;
    instance-of v3, v1, Landroid/os/RemoteException;

    if-eqz v3, :cond_0

    .line 378
    check-cast v1, Landroid/os/RemoteException;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 385
    .end local v0           #args:[Ljava/lang/Object;
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    const-string v3, "WifiManagerProxy"

    const-string/jumbo v5, "setVZWMobileHotspot method isn\'t implemented yet"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 386
    goto :goto_0
.end method

.method public setWifiEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 428
    iget-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 431
    :cond_0
    return-void
.end method

.method public setWifiNeedOn(Z)Z
    .locals 6
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 264
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->setWifiNeedOnMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_1

    .line 265
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v4

    .line 269
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->setWifiNeedOnMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 285
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    return v3

    .line 270
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 271
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    move v3, v4

    .line 280
    goto :goto_0

    .line 272
    :catch_1
    move-exception v2

    .line 273
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 274
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 275
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 276
    .local v1, cause:Ljava/lang/Throwable;
    instance-of v3, v1, Landroid/os/RemoteException;

    if-eqz v3, :cond_0

    .line 277
    check-cast v1, Landroid/os/RemoteException;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 284
    .end local v0           #args:[Ljava/lang/Object;
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    const-string v3, "WifiManagerProxy"

    const-string/jumbo v5, "setWifiNeedOn method isn\'t implemented yet"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 285
    goto :goto_0
.end method

.method public setWifiVZWApConfiguration(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "ssid"
    .parameter "security_type"
    .parameter "wepkeyindex"
    .parameter "wepkey1"
    .parameter "wepkey2"
    .parameter "wepkey3"
    .parameter "wepkey4"
    .parameter "presharedkey"
    .parameter "hiddenssid"
    .parameter "channel"
    .parameter "maxScb"
    .parameter "hw_mode"
    .parameter "countrycode"
    .parameter "ap_isolate"
    .parameter "ieee_mode"
    .parameter "macaddr_acl"
    .parameter "accept_mac_file"
    .parameter "deny_mac_file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 226
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->setWifiVZWApConfigurationMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_0

    .line 227
    const/16 v3, 0x12

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x3

    aput-object p4, v0, v3

    const/4 v3, 0x4

    aput-object p5, v0, v3

    const/4 v3, 0x5

    aput-object p6, v0, v3

    const/4 v3, 0x6

    aput-object p7, v0, v3

    const/4 v3, 0x7

    aput-object p8, v0, v3

    const/16 v3, 0x8

    invoke-static {p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x9

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xa

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xb

    aput-object p12, v0, v3

    const/16 v3, 0xc

    aput-object p13, v0, v3

    const/16 v3, 0xd

    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xe

    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xf

    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x10

    aput-object p17, v0, v3

    const/16 v3, 0x11

    aput-object p18, v0, v3

    .line 234
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->setWifiVZWApConfigurationMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 250
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    return-void

    .line 236
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 237
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 249
    .end local v0           #args:[Ljava/lang/Object;
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const-string v3, "WifiManagerProxy"

    const-string/jumbo v4, "setWifiVZWApConfiguration method isn\'t implemented yet"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 239
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 240
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 241
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 242
    .local v1, cause:Ljava/lang/Throwable;
    instance-of v3, v1, Landroid/os/RemoteException;

    if-eqz v3, :cond_0

    .line 243
    check-cast v1, Landroid/os/RemoteException;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1
.end method

.method public setWifiVZWApEnabled(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .parameter "ssid"
    .parameter "security_type"
    .parameter "wepkeyindex"
    .parameter "wepkey1"
    .parameter "wepkey2"
    .parameter "wepkey3"
    .parameter "wepkey4"
    .parameter "presharedkey"
    .parameter "hiddenssid"
    .parameter "channel"
    .parameter "maxScb"
    .parameter "hw_mode"
    .parameter "countrycode"
    .parameter "ap_isolate"
    .parameter "ieee_mode"
    .parameter "macaddr_acl"
    .parameter "accept_mac_file"
    .parameter "deny_mac_file"
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->setWifiVZWApEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_1

    .line 149
    const/16 v3, 0x13

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x3

    aput-object p4, v0, v3

    const/4 v3, 0x4

    aput-object p5, v0, v3

    const/4 v3, 0x5

    aput-object p6, v0, v3

    const/4 v3, 0x6

    aput-object p7, v0, v3

    const/4 v3, 0x7

    aput-object p8, v0, v3

    const/16 v3, 0x8

    invoke-static {p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x9

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xa

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xb

    aput-object p12, v0, v3

    const/16 v3, 0xc

    aput-object p13, v0, v3

    const/16 v3, 0xd

    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xe

    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xf

    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x10

    aput-object p17, v0, v3

    const/16 v3, 0x11

    aput-object p18, v0, v3

    const/16 v3, 0x12

    invoke-static/range {p19 .. p19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    .line 156
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiManagerProxy;->setWifiVZWApEnabledMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/net/wifi/WifiManagerProxy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 172
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    return v3

    .line 157
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 158
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 167
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 159
    :catch_1
    move-exception v2

    .line 160
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 161
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 162
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 163
    .local v1, cause:Ljava/lang/Throwable;
    instance-of v3, v1, Landroid/os/RemoteException;

    if-eqz v3, :cond_0

    .line 164
    check-cast v1, Landroid/os/RemoteException;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 171
    .end local v0           #args:[Ljava/lang/Object;
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    const-string v3, "WifiManagerProxy"

    const-string/jumbo v4, "setWifiVZWApEnabled method isn\'t implemented yet"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v3, 0x0

    goto :goto_0
.end method
