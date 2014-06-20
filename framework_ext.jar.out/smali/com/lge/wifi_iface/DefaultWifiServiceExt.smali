.class public Lcom/lge/wifi_iface/DefaultWifiServiceExt;
.super Ljava/lang/Object;
.source "DefaultWifiServiceExt.java"

# interfaces
.implements Lcom/lge/wifi_iface/WifiServiceExtIface;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWifiServiceExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public IsWEPSecurity()Z
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public SetMaxNumOfStation(Ljava/lang/String;)V
    .locals 0
    .parameter "AuthType"

    .prologue
    .line 243
    return-void
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 72
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "addOrUpdateNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public addWifiConnectionList(II)V
    .locals 0
    .parameter "netId"
    .parameter "success"

    .prologue
    .line 281
    return-void
.end method

.method public beShouldUpdatedWifiApConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "config"

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public broadcastAutoIPIntent(Landroid/net/DhcpInfoInternal;)Landroid/net/DhcpInfoInternal;
    .locals 2
    .parameter "dhcpInfoInternal"

    .prologue
    .line 237
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "broadcastAutoIPIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method public changeSsidString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "value"
    .parameter "bQuoted"

    .prologue
    .line 82
    move-object v0, p1

    .line 84
    .local v0, retString:Ljava/lang/String;
    const-string v1, "DefaultWifiServiceExt"

    const-string v2, "changeSsidString: Nothing to do"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-object v0
.end method

.method public checkAPSecurity(Ljava/util/List;I)V
    .locals 0
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, configList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    return-void
.end method

.method public checkAutoConnectProfile()V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public checkP2pPostfix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "postfix"

    .prologue
    .line 340
    const/4 v0, 0x0

    return-object v0
.end method

.method public checkRemovableNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 77
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "checkRemovableNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public checkRssiAndDisconnect(I)Z
    .locals 1
    .parameter "rssi"

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public checkVTRunning()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public checkWifiEnableCondition()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public checkWifiStartPossible(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 100
    return-void
.end method

.method public controlManualConnection(IZ)Z
    .locals 1
    .parameter "cmd"
    .parameter "enable"

    .prologue
    .line 305
    const/4 v0, 0x1

    return v0
.end method

.method public fetchSSID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "fetchSSID: Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBtWifiState()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "config"

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsP2pConnected()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public getLgeEvent(Ljava/lang/String;)I
    .locals 1
    .parameter "eventName"

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "netId"
    .parameter "ssidVarName"

    .prologue
    .line 201
    move-object v0, p2

    .line 202
    .local v0, retString:Ljava/lang/String;
    const-string v1, "DefaultWifiServiceExt"

    const-string v2, "getNetworkVariableCommand: Nothing to do"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-object v0
.end method

.method public getSecurityType()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getShowKTPayPopup()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public getSoftApMaxScb(I)I
    .locals 1
    .parameter "defaultMaxScb"

    .prologue
    .line 154
    const/4 v0, -0x1

    return v0
.end method

.method public getWiFiPowerSaveModeEnabled()Z
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiActivationWhileCharging()Lcom/lge/wifi_iface/WifiActivationWhileChargingIface;
    .locals 2

    .prologue
    .line 67
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "getWifiActivationWhileCharging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiAdhocDisable()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public getWifiApDisableIfNotUsed(Ljava/lang/String;)Lcom/lge/wifi_iface/WifiApDisableIfNotUsedIface;
    .locals 2
    .parameter "softApIface"

    .prologue
    .line 62
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "getWifiApDisableIfNotUsed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiDualbandAPConnection()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiOffDelayIfNotUsed()Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;
    .locals 2

    .prologue
    .line 48
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "getWifiOffDelayIfNotUsed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiP2pOffDelayIfNotUsed()Lcom/lge/wifi_iface/WifiP2pOffDelayIfNotUsedIface;
    .locals 2

    .prologue
    .line 53
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "getWifiP2pOffDelayIfNotUsed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiState()I
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public handleLgeEvent(ILjava/lang/String;)V
    .locals 0
    .parameter "event"
    .parameter "remainder"

    .prologue
    .line 273
    return-void
.end method

.method public handleN3Event(ILjava/lang/String;)V
    .locals 0
    .parameter "event"
    .parameter "remainder"

    .prologue
    .line 124
    return-void
.end method

.method public initWifiSerivceExt(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiNative;Landroid/net/wifi/WifiConfigStoreProxy;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "wifiStateMachine"
    .parameter "wifiNative"
    .parameter "wifiConfigStoreProxy"
    .parameter "wlanInterface"

    .prologue
    .line 43
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "initWifiSerivceExt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public isHotspotSSIDKSC5601(Ljava/lang/StringBuilder;)Z
    .locals 1
    .parameter "cmd"

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public isProvisioned()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public isTethered()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public isUPulsMsCHAPv2AP(Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public mappingN3Event(Ljava/lang/String;)I
    .locals 1
    .parameter "eventName"

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public processMessageAtDriverStartedState(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public sendP2pStateChangedBroadcast(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 127
    const-string v0, "DefaultWifiServiceExt"

    const-string/jumbo v1, "sendP2pStateChangedBroadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public setDlnaEnabled(Z)Z
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 232
    const-string v0, "DefaultWifiServiceExt"

    const-string/jumbo v1, "setDLNAEnabled: Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public setKeepAlivePacket(Landroid/net/wifi/WifiInfo;)V
    .locals 0
    .parameter "mWifiInfo"

    .prologue
    .line 103
    return-void
.end method

.method public setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "netId"
    .parameter "ssidVarName"
    .parameter "SSID"

    .prologue
    .line 196
    const-string v0, "DefaultWifiServiceExt"

    const-string/jumbo v1, "setNetworkVariableCommand: Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public setProhibitConnectAP()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public setProvisioned(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 253
    return-void
.end method

.method public setScanResultsCommand()Ljava/util/List;
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
    .line 207
    const-string v0, "DefaultWifiServiceExt"

    const-string/jumbo v1, "setScanResultsCommand: Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public setShowKTPayPopup(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 181
    return-void
.end method

.method public setSoftApDefaultKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .parameter "config"

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public setSoftApRename(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "config"

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public setWifiDualbandAPConnection(I)V
    .locals 0
    .parameter "band"

    .prologue
    .line 184
    return-void
.end method

.method public setWifiP2pNotificationIcon(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 58
    const-string v0, "DefaultWifiServiceExt"

    const-string/jumbo v1, "setWifiP2pNotificationIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public startWifiDelay()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public startWifiDelaySendMsg()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public syncGetGWSScanResultsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public unregBrdcastReceiverDelay()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public updateAutoConnectProfile(ILandroid/net/wifi/SupplicantState;)V
    .locals 0
    .parameter "networkId"
    .parameter "state"

    .prologue
    .line 312
    return-void
.end method

.method public updateConnectionInfo(Landroid/net/wifi/WifiInfo;)V
    .locals 0
    .parameter "mWifiInfo"

    .prologue
    .line 89
    return-void
.end method

.method public updatePriorityNetwork(ILjava/util/List;)V
    .locals 0
    .parameter "netId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p2, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    return-void
.end method

.method public updateRssiAndLinkSpeedNative(IIII)V
    .locals 0
    .parameter "newRssi"
    .parameter "newLinkSpeed"
    .parameter "minRssi"
    .parameter "maxRssi"

    .prologue
    .line 92
    move p1, p3

    .line 93
    const/4 p2, -0x1

    .line 94
    return-void
.end method

.method public waitForEvent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    const-string v0, "DefaultWifiServiceExt"

    const-string/jumbo v1, "waitForEvent: Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v0, 0x0

    return-object v0
.end method
