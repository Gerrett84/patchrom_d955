.class public Lcom/android/lgesettings/wifi/WifiAutoControlReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiAutoControlReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, action:Ljava/lang/String;
    new-instance v4, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;

    invoke-direct {v4, p1}, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;-><init>(Landroid/content/Context;)V

    .line 22
    .local v4, wifiAutoControlRegister:Lcom/android/lgesettings/wifi/WifiAutoControlRegister;
    const-string v11, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_auto_control_on"

    invoke-static {v9, v10, v12}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 25
    .local v8, wifiOnTime:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_auto_control_off"

    invoke-static {v9, v10, v12}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 28
    .local v7, wifiOffTime:I
    invoke-virtual {v4, v8}, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->updateWifiOnAlarm(I)Z

    .line 29
    invoke-virtual {v4, v7}, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->updateWifiOffAlarm(I)Z

    .line 54
    .end local v7           #wifiOffTime:I
    .end local v8           #wifiOnTime:I
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    const-string v11, "com.lge.settings.wifi.WIFI_AUTO_CONTROL"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 32
    const-string v11, "WifiAutoControl"

    const-string v12, "received ACTION_WIFI_AUTO_CONTROL"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_auto_control_enable"

    invoke-static {v11, v12, v10}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_3

    move v1, v9

    .line 34
    .local v1, enable:Z
    :goto_1
    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 38
    .local v2, extras:Landroid/os/Bundle;
    const/4 v3, -0x1

    .line 39
    .local v3, state:I
    if-eqz v2, :cond_2

    .line 40
    const-string v11, "wifi_auto_control_state"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 42
    :cond_2
    const-string v11, "wifi"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 43
    .local v6, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    .line 44
    .local v5, wifiCurrentState:I
    if-nez v3, :cond_4

    .line 45
    if-ne v5, v9, :cond_0

    .line 46
    invoke-virtual {v6, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .end local v1           #enable:Z
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v3           #state:I
    .end local v5           #wifiCurrentState:I
    .end local v6           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_3
    move v1, v10

    .line 33
    goto :goto_1

    .line 48
    .restart local v1       #enable:Z
    .restart local v2       #extras:Landroid/os/Bundle;
    .restart local v3       #state:I
    .restart local v5       #wifiCurrentState:I
    .restart local v6       #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_4
    if-ne v3, v9, :cond_0

    .line 49
    const/4 v9, 0x3

    if-ne v5, v9, :cond_0

    .line 50
    invoke-virtual {v6, v10}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method
