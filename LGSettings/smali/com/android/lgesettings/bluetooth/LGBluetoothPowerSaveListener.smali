.class public Lcom/android/lgesettings/bluetooth/LGBluetoothPowerSaveListener;
.super Landroid/content/BroadcastReceiver;
.source "LGBluetoothPowerSaveListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private final isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method decreaseAclLinkCount()V
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothPowerSaveListener;->getAclLinkCount()I

    move-result v0

    .line 114
    .local v0, count:I
    if-lez v0, :cond_0

    .line 115
    add-int/lit8 v0, v0, -0x1

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothPowerSaveListener;->setAclLinkCount(I)V

    .line 118
    :cond_0
    return-void
.end method

.method getAclLinkCount()I
    .locals 3

    .prologue
    .line 125
    const-string v1, "service.btui.aclLinkCount"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->readProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, count:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method increaseAclLinkCount()V
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothPowerSaveListener;->getAclLinkCount()I

    move-result v0

    .line 108
    .local v0, count:I
    add-int/lit8 v0, v0, 0x1

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothPowerSaveListener;->setAclLinkCount(I)V

    .line 110
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 41
    .local v1, adapter:Landroid/bluetooth/BluetoothAdapter;
    const-string v6, "com.android.lgesettings.powersave.POWERSAVE_ACTIVATION_TO_OTHERS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 42
    const-string v6, "powersave_activation"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 43
    .local v2, doActivation:I
    const-string v6, "powersave_name"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, name:Ljava/lang/String;
    const-string v6, "LGBluetoothPowerSaveListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BTUI] ACTION_POWERSAVE_MODE_CHANGED : doAct("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") AclLinkCount("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothPowerSaveListener;->getAclLinkCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    if-eqz v3, :cond_2

    const-string v6, "power_save_bt"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 46
    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothPowerSaveListener;->getAclLinkCount()I

    move-result v6

    if-ge v6, v9, :cond_1

    .line 47
    const-string v6, "LGBluetoothPowerSaveListener"

    const-string v7, "[BTUI] activate powersave mode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 49
    invoke-virtual {v1, v10}, Landroid/bluetooth/BluetoothAdapter;->disable(Z)Z

    .line 99
    .end local v2           #doActivation:I
    .end local v3           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v2       #doActivation:I
    .restart local v3       #name:Ljava/lang/String;
    :cond_1
    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothPowerSaveListener;->getAclLinkCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 52
    const-string v6, "LGBluetoothPowerSaveListener"

    const-string v7, "[BTUI] Bluetooth keeps being on because ACL is alive"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    :cond_2
    if-ge v2, v9, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/LGBluetoothPowerSaveListener;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 56
    const-string v6, "LGBluetoothPowerSaveListener"

    const-string v7, "[BTUI] Bluetooth keeps being off on airplane mode"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :cond_3
    const-string v6, "LGBluetoothPowerSaveListener"

    const-string v7, "[BTUI] deactivate powersave mode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bluetooth_on"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 63
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 64
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0

    .line 72
    .end local v2           #doActivation:I
    .end local v3           #name:Ljava/lang/String;
    :cond_4
    const-string v6, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "com.lge.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 74
    :cond_5
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothPowerSaveListener;->increaseAclLinkCount()V

    .line 75
    const-string v6, "LGBluetoothPowerSaveListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BTUI] ACL connected => AclLinkCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothPowerSaveListener;->getAclLinkCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_6
    const-string v6, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "com.lge.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 79
    :cond_7
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothPowerSaveListener;->decreaseAclLinkCount()V

    .line 80
    const-string v6, "LGBluetoothPowerSaveListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BTUI] ACL disconnected => AclLinkCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothPowerSaveListener;->getAclLinkCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothPowerSaveListener;->getAclLinkCount()I

    move-result v6

    if-ge v6, v9, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "power_save_mode_activated"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 83
    const-string v6, "LGBluetoothPowerSaveListener"

    const-string v7, "[BTUI] If AclLink is not exist and Powersave mode is on, BT is off"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.lgesettings.powersave.POWERSAVE_ACTIVATION_TO_OTHERS"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v4, powerIntent:Landroid/content/Intent;
    const-string v6, "powersave_activation"

    invoke-virtual {v4, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string v6, "powersave_name"

    const-string v7, "power_save_bt"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 93
    .end local v4           #powerIntent:Landroid/content/Intent;
    :cond_8
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 94
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x8000

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 95
    .local v5, state:I
    const/16 v6, 0xa

    if-eq v5, v6, :cond_9

    const/16 v6, 0xc

    if-ne v5, v6, :cond_0

    .line 96
    :cond_9
    invoke-virtual {p0, v10}, Lcom/android/lgesettings/bluetooth/LGBluetoothPowerSaveListener;->setAclLinkCount(I)V

    goto/16 :goto_0
.end method

.method setAclLinkCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 121
    const-string v0, "service.btui.aclLinkCount"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->writeProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method
