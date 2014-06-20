.class public interface abstract Lcom/lge/wifi_iface/WifiServiceExtIface;
.super Ljava/lang/Object;
.source "WifiServiceExtIface.java"


# virtual methods
.method public abstract IsWEPSecurity()Z
.end method

.method public abstract SetMaxNumOfStation(Ljava/lang/String;)V
.end method

.method public abstract addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z
.end method

.method public abstract addWifiConnectionList(II)V
.end method

.method public abstract beShouldUpdatedWifiApConfig(Landroid/net/wifi/WifiConfiguration;)Z
.end method

.method public abstract broadcastAutoIPIntent(Landroid/net/DhcpInfoInternal;)Landroid/net/DhcpInfoInternal;
.end method

.method public abstract changeSsidString(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract checkAPSecurity(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract checkAutoConnectProfile()V
.end method

.method public abstract checkP2pPostfix(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract checkRemovableNetwork(I)Z
.end method

.method public abstract checkRssiAndDisconnect(I)Z
.end method

.method public abstract checkVTRunning()Z
.end method

.method public abstract checkWifiEnableCondition()Z
.end method

.method public abstract checkWifiStartPossible(Ljava/lang/String;)V
.end method

.method public abstract controlManualConnection(IZ)Z
.end method

.method public abstract fetchSSID()Ljava/lang/String;
.end method

.method public abstract getBtWifiState()Z
.end method

.method public abstract getDefaultWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
.end method

.method public abstract getIsP2pConnected()Z
.end method

.method public abstract getLgeEvent(Ljava/lang/String;)I
.end method

.method public abstract getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSecurityType()I
.end method

.method public abstract getShowKTPayPopup()Z
.end method

.method public abstract getSoftApMaxScb(I)I
.end method

.method public abstract getWiFiPowerSaveModeEnabled()Z
.end method

.method public abstract getWifiActivationWhileCharging()Lcom/lge/wifi_iface/WifiActivationWhileChargingIface;
.end method

.method public abstract getWifiAdhocDisable()Z
.end method

.method public abstract getWifiApDisableIfNotUsed(Ljava/lang/String;)Lcom/lge/wifi_iface/WifiApDisableIfNotUsedIface;
.end method

.method public abstract getWifiDualbandAPConnection()I
.end method

.method public abstract getWifiOffDelayIfNotUsed()Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;
.end method

.method public abstract getWifiP2pOffDelayIfNotUsed()Lcom/lge/wifi_iface/WifiP2pOffDelayIfNotUsedIface;
.end method

.method public abstract getWifiState()I
.end method

.method public abstract handleLgeEvent(ILjava/lang/String;)V
.end method

.method public abstract handleN3Event(ILjava/lang/String;)V
.end method

.method public abstract initWifiSerivceExt(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiNative;Landroid/net/wifi/WifiConfigStoreProxy;Ljava/lang/String;)V
.end method

.method public abstract isHotspotSSIDKSC5601(Ljava/lang/StringBuilder;)Z
.end method

.method public abstract isProvisioned()Z
.end method

.method public abstract isTethered()Z
.end method

.method public abstract isUPulsMsCHAPv2AP(Ljava/lang/String;)Z
.end method

.method public abstract mappingN3Event(Ljava/lang/String;)I
.end method

.method public abstract processMessageAtDriverStartedState(Landroid/os/Message;)Z
.end method

.method public abstract sendP2pStateChangedBroadcast(I)V
.end method

.method public abstract setDlnaEnabled(Z)Z
.end method

.method public abstract setKeepAlivePacket(Landroid/net/wifi/WifiInfo;)V
.end method

.method public abstract setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setProhibitConnectAP()Z
.end method

.method public abstract setProvisioned(Z)V
.end method

.method public abstract setScanResultsCommand()Ljava/util/List;
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

.method public abstract setShowKTPayPopup(Z)V
.end method

.method public abstract setSoftApDefaultKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
.end method

.method public abstract setSoftApRename(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
.end method

.method public abstract setWifiDualbandAPConnection(I)V
.end method

.method public abstract setWifiP2pNotificationIcon(Z)V
.end method

.method public abstract startWifiDelay()Z
.end method

.method public abstract startWifiDelaySendMsg()Z
.end method

.method public abstract syncGetGWSScanResultsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract unregBrdcastReceiverDelay()V
.end method

.method public abstract updateAutoConnectProfile(ILandroid/net/wifi/SupplicantState;)V
.end method

.method public abstract updateConnectionInfo(Landroid/net/wifi/WifiInfo;)V
.end method

.method public abstract updatePriorityNetwork(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateRssiAndLinkSpeedNative(IIII)V
.end method

.method public abstract waitForEvent()Ljava/lang/String;
.end method
