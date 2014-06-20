.class public interface abstract Lcom/lge/wifi_iface/WifiSapIfaceIface;
.super Ljava/lang/Object;
.source "WifiSapIfaceIface.java"


# virtual methods
.method public abstract addMacFilterAllowList(Ljava/lang/String;I)Z
.end method

.method public abstract getAllAssocMacListATT()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeAlltheList()I
.end method

.method public abstract setMacaddracl(I)Z
.end method

.method public abstract setNstartMonitoring(ZLandroid/net/wifi/WifiConfiguration;II)Z
.end method

.method public abstract setSoftApWifiCfg(Landroid/net/wifi/WifiConfiguration;II)Z
.end method

.method public abstract setVZWNstartMonitoring(ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setVZWSoftApWifiCfg(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)Z
.end method
