.class Lcom/android/server/WifiService$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 1495
    iput-object p1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .locals 1
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    .line 1677
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiStayAwake(II)Z
    .locals 5
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 1645
    iget-object v2, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1649
    .local v0, wifiSleepPolicy:I
    if-ne v0, v4, :cond_1

    .line 1658
    :cond_0
    :goto_0
    return v1

    .line 1652
    :cond_1
    if-ne v0, v1, :cond_2

    if-nez p2, :cond_0

    .line 1658
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$4;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1498
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1500
    .local v1, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_idle_ms"

    const-wide/32 v13, 0xdbba0

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1503
    .local v4, idleMillis:J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "stay_on_while_plugged_in"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1506
    .local v8, stayAwakeConditions:I
    const-string v11, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1508
    const-string v11, "WifiService"

    const-string v12, "ACTION_SCREEN_ON"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1511
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v12, 0x0

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$3002(Lcom/android/server/WifiService;Z)Z

    .line 1512
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v11}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)V

    .line 1513
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v12, 0x0

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$3100(Lcom/android/server/WifiService;Z)V

    .line 1634
    :cond_0
    :goto_0
    return-void

    .line 1514
    :cond_1
    const-string v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1516
    const-string v11, "WifiService"

    const-string v12, "ACTION_SCREEN_OFF"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v12, 0x1

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$3002(Lcom/android/server/WifiService;Z)Z

    .line 1519
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v11}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)V

    .line 1526
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v11}, Lcom/android/server/WifiService;->access$3200(Lcom/android/server/WifiService;)I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11}, Lcom/android/server/WifiService$4;->shouldWifiStayAwake(II)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1528
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    iget-object v11, v11, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v11, v12, :cond_3

    .line 1533
    sget-boolean v11, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v11, :cond_2

    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->useWifiOffDelayAfter15alarm()Z

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiOffDelayIfNotUsed:Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 1536
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiOffDelayIfNotUsed:Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;

    move-result-object v11

    invoke-interface {v11}, Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;->startMonitoring()V

    goto :goto_0

    .line 1538
    :cond_2
    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setting ACTION_DEVICE_IDLE: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    add-long/2addr v13, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v15}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1544
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiServiceExt:Lcom/lge/wifi_iface/WifiServiceExtIface;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Lcom/lge/wifi_iface/WifiServiceExtIface;

    move-result-object v11

    invoke-interface {v11}, Lcom/lge/wifi_iface/WifiServiceExtIface;->getIsP2pConnected()Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiOffDelayIfNotUsed:Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 1545
    const-string v11, "WifiService"

    const-string v12, "P2p is connected. Start Monitoring"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiOffDelayIfNotUsed:Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;

    move-result-object v11

    invoke-interface {v11}, Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;->startMonitoring()V

    goto/16 :goto_0

    .line 1551
    :cond_4
    sget-boolean v11, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v11, :cond_5

    sget-boolean v11, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_QCOM_PATCH:Z

    if-nez v11, :cond_5

    .line 1552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x7d0

    add-long v2, v11, v13

    .line 1553
    .local v2, delayTime:J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v11, v12, v2, v3, v13}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1554
    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setting ACTION_DEVICE_IDLE: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1557
    .end local v2           #delayTime:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v12, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$3100(Lcom/android/server/WifiService;Z)V

    goto/16 :goto_0

    .line 1561
    :cond_6
    const-string v11, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1566
    sget-boolean v11, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiOffDelayIfNotUsed:Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 1567
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v11}, Lcom/android/server/WifiService;->access$3000(Lcom/android/server/WifiService;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 1568
    const-string v11, "WifiService"

    const-string v12, "Screen is already on"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1576
    :cond_7
    sget-boolean v11, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v11, :cond_a

    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->useWifiOffDelayAfter15alarm()Z

    move-result v11

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiOffDelayIfNotUsed:Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 1579
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiOffDelayIfNotUsed:Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;

    move-result-object v11

    invoke-interface {v11}, Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;->getShouldWifiStopped()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1580
    const-string v11, "WifiService"

    const-string v12, "mShouldWifiStopped is true and setShouldWifiStopped is called"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiOffDelayIfNotUsed:Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;->setShouldWifiStopped(Z)V

    .line 1582
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v12, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$3100(Lcom/android/server/WifiService;Z)V

    goto/16 :goto_0

    .line 1583
    :cond_8
    sget-boolean v11, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_QCOM_PATCH:Z

    if-nez v11, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    iget-object v11, v11, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v11, v12, :cond_9

    .line 1585
    const-string v11, "WifiService"

    const-string v12, "mShouldWifiStopped is false, but Wifi driver should be stopped.(Wifi is not connection state) "

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v12, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$3100(Lcom/android/server/WifiService;Z)V

    goto/16 :goto_0

    .line 1588
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiOffDelayIfNotUsed:Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;

    move-result-object v11

    invoke-interface {v11}, Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;->startMonitoring()V

    goto/16 :goto_0

    .line 1591
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v12, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$3100(Lcom/android/server/WifiService;Z)V

    goto/16 :goto_0

    .line 1593
    :cond_b
    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1601
    const-string v11, "plugged"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1603
    .local v6, pluggedType:I
    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ACTION_BATTERY_CHANGED pluggedType: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v11}, Lcom/android/server/WifiService;->access$3000(Lcom/android/server/WifiService;)Z

    move-result v11

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v11}, Lcom/android/server/WifiService;->access$3200(Lcom/android/server/WifiService;)I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11}, Lcom/android/server/WifiService$4;->shouldWifiStayAwake(II)Z

    move-result v11

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6}, Lcom/android/server/WifiService$4;->shouldWifiStayAwake(II)Z

    move-result v11

    if-nez v11, :cond_c

    .line 1611
    sget-boolean v11, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v11, :cond_d

    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->useWifiOffDelayAfter15alarm()Z

    move-result v11

    if-nez v11, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiOffDelayIfNotUsed:Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 1614
    const-string v11, "WifiService"

    const-string v12, "ACTION_BATTERY_CHANGED : USB is unpluged"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiOffDelayIfNotUsed:Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;

    move-result-object v11

    invoke-interface {v11}, Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;->startMonitoring()V

    .line 1625
    :cond_c
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v11, v6}, Lcom/android/server/WifiService;->access$3202(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    .line 1617
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    add-long v9, v11, v4

    .line 1619
    .local v9, triggerTime:J
    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setting ACTION_DEVICE_IDLE timer for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v11, v12, v9, v10, v13}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 1626
    .end local v6           #pluggedType:I
    .end local v9           #triggerTime:J
    :cond_e
    const-string v11, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1627
    const-string v11, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1629
    .local v7, state:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto/16 :goto_0

    .line 1630
    .end local v7           #state:I
    :cond_f
    const-string v11, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1631
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const-string v12, "phoneinECMState"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    #setter for: Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$3402(Lcom/android/server/WifiService;Z)Z

    .line 1632
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static {v11}, Lcom/android/server/WifiService;->access$1100(Lcom/android/server/WifiService;)V

    goto/16 :goto_0
.end method
