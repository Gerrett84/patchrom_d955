.class public Litectokyo/wiflus/service/common/WifiHotspotManager;
.super Ljava/lang/Object;
.source "WifiHotspotManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Litectokyo/wiflus/service/common/WifiHotspotManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Litectokyo/wiflus/service/common/WifiHotspotManager;->TAG:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Litectokyo/wiflus/service/common/WifiHotspotManager;->mContext:Landroid/content/Context;

    .line 24
    iget-object v0, p0, Litectokyo/wiflus/service/common/WifiHotspotManager;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Litectokyo/wiflus/service/common/WifiHotspotManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 25
    return-void
.end method


# virtual methods
.method public isHotspotEnabled()Z
    .locals 6

    .prologue
    .line 28
    const/16 v2, 0xb

    .line 29
    .local v2, state:I
    const/4 v0, 0x1

    .line 31
    .local v0, bEnabled:Z
    :try_start_0
    iget-object v3, p0, Litectokyo/wiflus/service/common/WifiHotspotManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getWifiApState"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 32
    .local v1, method2:Ljava/lang/reflect/Method;
    iget-object v3, p0, Litectokyo/wiflus/service/common/WifiHotspotManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 33
    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 38
    .end local v1           #method2:Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return v0

    .line 36
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setWifiApState(Z)V
    .locals 6
    .parameter "bEnable"

    .prologue
    .line 44
    :try_start_0
    iget-object v1, p0, Litectokyo/wiflus/service/common/WifiHotspotManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setWifiApEnabled"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 45
    const-class v5, Landroid/net/wifi/WifiConfiguration;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 44
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 46
    .local v0, method1:Ljava/lang/reflect/Method;
    iget-object v1, p0, Litectokyo/wiflus/service/common/WifiHotspotManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0           #method1:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v1

    goto :goto_0
.end method
