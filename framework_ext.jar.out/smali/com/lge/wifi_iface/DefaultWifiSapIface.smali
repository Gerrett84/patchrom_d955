.class public Lcom/lge/wifi_iface/DefaultWifiSapIface;
.super Ljava/lang/Object;
.source "DefaultWifiSapIface.java"

# interfaces
.implements Lcom/lge/wifi_iface/WifiSapIfaceIface;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWifiSapIface"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public addMacFilterAllowList(Ljava/lang/String;I)Z
    .locals 2
    .parameter "mac"
    .parameter "addORdel"

    .prologue
    .line 67
    const-string v0, "DefaultWifiSapIface"

    const-string v1, "addMacFilterAllowList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public getAllAssocMacListATT()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    const-string v0, "DefaultWifiSapIface"

    const-string v1, "getAllAssocMacListATT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeAlltheList()I
    .locals 2

    .prologue
    .line 77
    const-string v0, "DefaultWifiSapIface"

    const-string/jumbo v1, "removeAlltheList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public setMacaddracl(I)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 72
    const-string v0, "DefaultWifiSapIface"

    const-string/jumbo v1, "setMacaddracl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public setNstartMonitoring(ZLandroid/net/wifi/WifiConfiguration;II)Z
    .locals 2
    .parameter "bEnable"
    .parameter "wifiConfig"
    .parameter "channel"
    .parameter "maxScb"

    .prologue
    .line 36
    const-string v0, "DefaultWifiSapIface"

    const-string/jumbo v1, "setNstartMonitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public setSoftApWifiCfg(Landroid/net/wifi/WifiConfiguration;II)Z
    .locals 2
    .parameter "wifiConfig"
    .parameter "channel"
    .parameter "maxScb"

    .prologue
    .line 41
    const-string v0, "DefaultWifiSapIface"

    const-string/jumbo v1, "setSoftApWifiCfg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public setVZWNstartMonitoring(ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "bEnable"
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

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public setVZWSoftApWifiCfg(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
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
    .parameter "bWoNmService"

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method
