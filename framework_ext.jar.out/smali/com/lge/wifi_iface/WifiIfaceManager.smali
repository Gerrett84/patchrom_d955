.class public Lcom/lge/wifi_iface/WifiIfaceManager;
.super Ljava/lang/Object;
.source "WifiIfaceManager.java"


# static fields
.field private static sWiFiAggregationIfaceIface:Lcom/lge/wifi_iface/WiFiAggregationIfaceIface;

.field private static sWiFiOffloadingIfaceIface:Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;

.field private static sWifiExtServiceIface:Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;

.field private static sWifiMHPIfaceIface:Lcom/lge/wifi_iface/WifiMHPIfaceIface;

.field private static sWifiSapIfaceIface:Lcom/lge/wifi_iface/WifiSapIfaceIface;

.field private static sWifiServiceExtIface:Lcom/lge/wifi_iface/WifiServiceExtIface;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 10
    new-instance v7, Lcom/lge/wifi_iface/DefaultWifiExtServiceIface;

    invoke-direct {v7}, Lcom/lge/wifi_iface/DefaultWifiExtServiceIface;-><init>()V

    sput-object v7, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiExtServiceIface:Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;

    .line 11
    new-instance v7, Lcom/lge/wifi_iface/DefaultWifiServiceExt;

    invoke-direct {v7}, Lcom/lge/wifi_iface/DefaultWifiServiceExt;-><init>()V

    sput-object v7, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiServiceExtIface:Lcom/lge/wifi_iface/WifiServiceExtIface;

    .line 12
    new-instance v7, Lcom/lge/wifi_iface/DefaultWifiSapIface;

    invoke-direct {v7}, Lcom/lge/wifi_iface/DefaultWifiSapIface;-><init>()V

    sput-object v7, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiSapIfaceIface:Lcom/lge/wifi_iface/WifiSapIfaceIface;

    .line 13
    new-instance v7, Lcom/lge/wifi_iface/DefaultWifiMHPIface;

    invoke-direct {v7}, Lcom/lge/wifi_iface/DefaultWifiMHPIface;-><init>()V

    sput-object v7, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiMHPIfaceIface:Lcom/lge/wifi_iface/WifiMHPIfaceIface;

    .line 15
    new-instance v7, Lcom/lge/wifi_iface/DefaultWiFiAggregationIface;

    invoke-direct {v7}, Lcom/lge/wifi_iface/DefaultWiFiAggregationIface;-><init>()V

    sput-object v7, Lcom/lge/wifi_iface/WifiIfaceManager;->sWiFiAggregationIfaceIface:Lcom/lge/wifi_iface/WiFiAggregationIfaceIface;

    .line 17
    new-instance v7, Lcom/lge/wifi_iface/DefaultWiFiOffloadingIface;

    invoke-direct {v7}, Lcom/lge/wifi_iface/DefaultWiFiOffloadingIface;-><init>()V

    sput-object v7, Lcom/lge/wifi_iface/WifiIfaceManager;->sWiFiOffloadingIfaceIface:Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;

    .line 19
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/com.lge.wifiext.jar"

    const-class v8, Lcom/lge/wifi_iface/WifiIfaceManager;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 22
    .local v0, cloader:Ljava/lang/ClassLoader;
    :try_start_0
    const-string v7, "com.lge.wifiext.WifiExtServiceIface"

    const/4 v8, 0x1

    invoke-static {v7, v8, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 23
    .local v6, wifiExtServiceClass:Ljava/lang/Class;
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;

    sput-object v7, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiExtServiceIface:Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;

    .line 25
    const-string v7, "com.lge.wifiext.WifiServiceExt"

    const/4 v8, 0x1

    invoke-static {v7, v8, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 32
    .local v2, extClass:Ljava/lang/Class;
    const-string v7, "com.lge.wifiext.wifiSap.WifiSapIface"

    const/4 v8, 0x1

    invoke-static {v7, v8, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 39
    .local v5, sapIfaceClass:Ljava/lang/Class;
    const-string v7, "com.lge.wifiext.mobilehotspot.WifiMHPIface"

    const/4 v8, 0x1

    invoke-static {v7, v8, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 46
    .local v3, mhpIfaceClass:Ljava/lang/Class;
    const-string v7, "com.lge.wifiext.offloading.WiFiOffloadingIface"

    const/4 v8, 0x1

    invoke-static {v7, v8, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 54
    .local v4, offloadingIfaceClass:Ljava/lang/Class;
    const-string v7, "com.lge.wifiext.aggregation.WiFiAggregationIface"

    const/4 v8, 0x1

    invoke-static {v7, v8, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v2           #extClass:Ljava/lang/Class;
    .end local v3           #mhpIfaceClass:Ljava/lang/Class;
    .end local v4           #offloadingIfaceClass:Ljava/lang/Class;
    .end local v5           #sapIfaceClass:Ljava/lang/Class;
    .end local v6           #wifiExtServiceClass:Ljava/lang/Class;
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "WifiIfaceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Class not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static getWiFiAggregationIfaceIface()Lcom/lge/wifi_iface/WiFiAggregationIfaceIface;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/lge/wifi_iface/WifiIfaceManager;->sWiFiAggregationIfaceIface:Lcom/lge/wifi_iface/WiFiAggregationIfaceIface;

    return-object v0
.end method

.method public static getWiFiOffloadingIfaceIface()Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/lge/wifi_iface/WifiIfaceManager;->sWiFiOffloadingIfaceIface:Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;

    return-object v0
.end method

.method public static getWifiExtServiceIface()Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiExtServiceIface:Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;

    return-object v0
.end method

.method public static getWifiMHPIfaceIface()Lcom/lge/wifi_iface/WifiMHPIfaceIface;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiMHPIfaceIface:Lcom/lge/wifi_iface/WifiMHPIfaceIface;

    return-object v0
.end method

.method public static getWifiSapIfaceIface()Lcom/lge/wifi_iface/WifiSapIfaceIface;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiSapIfaceIface:Lcom/lge/wifi_iface/WifiSapIfaceIface;

    return-object v0
.end method

.method public static getWifiServiceExtIface()Lcom/lge/wifi_iface/WifiServiceExtIface;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiServiceExtIface:Lcom/lge/wifi_iface/WifiServiceExtIface;

    return-object v0
.end method

.method public static setWiFiAggregationIfaceIface(Lcom/lge/wifi_iface/WiFiAggregationIfaceIface;)V
    .locals 0
    .parameter "iface"

    .prologue
    .line 135
    sput-object p0, Lcom/lge/wifi_iface/WifiIfaceManager;->sWiFiAggregationIfaceIface:Lcom/lge/wifi_iface/WiFiAggregationIfaceIface;

    .line 136
    return-void
.end method

.method public static setWiFiOffloadingIfaceIface(Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;)V
    .locals 0
    .parameter "iface"

    .prologue
    .line 121
    sput-object p0, Lcom/lge/wifi_iface/WifiIfaceManager;->sWiFiOffloadingIfaceIface:Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;

    .line 122
    return-void
.end method

.method public static setWifiMHPIfaceIface(Lcom/lge/wifi_iface/WifiMHPIfaceIface;)V
    .locals 0
    .parameter "iface"

    .prologue
    .line 109
    sput-object p0, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiMHPIfaceIface:Lcom/lge/wifi_iface/WifiMHPIfaceIface;

    .line 110
    return-void
.end method

.method public static setWifiSapIfaceIface(Lcom/lge/wifi_iface/WifiSapIfaceIface;)V
    .locals 0
    .parameter "iface"

    .prologue
    .line 97
    sput-object p0, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiSapIfaceIface:Lcom/lge/wifi_iface/WifiSapIfaceIface;

    .line 98
    return-void
.end method

.method public static setWifiServiceExtIface(Lcom/lge/wifi_iface/WifiServiceExtIface;)V
    .locals 0
    .parameter "iface"

    .prologue
    .line 85
    sput-object p0, Lcom/lge/wifi_iface/WifiIfaceManager;->sWifiServiceExtIface:Lcom/lge/wifi_iface/WifiServiceExtIface;

    .line 86
    return-void
.end method
