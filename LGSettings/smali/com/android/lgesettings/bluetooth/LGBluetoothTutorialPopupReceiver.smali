.class public final Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LGBluetoothTutorialPopupReceiver.java"


# static fields
.field public static btTutorialReceiverRegistered:Z

.field private static mBondState:I

.field private static mIntentFilter:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getBondState()I
    .locals 3

    .prologue
    .line 220
    const-string v0, "LGBluetoothTutorialPopupReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBondState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;->mBondState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;->mBondState:I

    return v0
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 48
    const-string v0, "LGBluetoothTutorialPopupReceiver"

    const-string v1, "mIntentFilter is null. so, create IntentFilter and return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 52
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lge.bluetooth.action.SHOW_TUTORIAL_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    :cond_0
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, action:Ljava/lang/String;
    const-string v6, "LGBluetoothTutorialPopupReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 78
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 80
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x8000

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 83
    .local v5, state:I
    const-string v6, "LGBluetoothTutorialPopupReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BluetoothAdapter.ACTION_STATE_CHANGED, state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "[ OFF : 10 / ON : 12]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/16 v6, 0xc

    if-ne v5, v6, :cond_1

    .line 90
    sget v6, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindowType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 91
    const-string v6, "LGBluetoothTutorialPopupReceiver"

    const-string v7, "Dismiss \'Turn on Bluetooth\' because Bluetooth is turned on"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->dismissPopup()V

    .line 216
    .end local v5           #state:I
    :cond_0
    :goto_0
    return-void

    .line 96
    .restart local v5       #state:I
    :cond_1
    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    .line 97
    const-string v6, "LGBluetoothTutorialPopupReceiver"

    const-string v7, "Show \'Turn on Bluetooth\'"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v6, 0x1

    invoke-static {p1, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->showTutorialPopup(Landroid/content/Context;I)V

    goto :goto_0

    .line 107
    .end local v5           #state:I
    :cond_2
    const-string v6, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 109
    const-string v6, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v7, -0x8000

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 111
    .local v1, bondState:I
    const-string v6, "LGBluetoothTutorialPopupReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bondState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "[none:10 / bonding:11 / bonded:12]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 117
    :pswitch_0
    const-string v6, "android.bluetooth.device.extra.REASON"

    const/high16 v7, -0x8000

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 118
    .local v4, reason:I
    const-string v6, "LGBluetoothTutorialPopupReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pairing canceled, reason("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") [failed:1 / rejected:2 / canceled:3 / down:4 / timeout:6 / rem_canceled:8 / removed:9]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 133
    :pswitch_1
    const/16 v6, 0xa

    sput v6, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;->mBondState:I

    goto :goto_0

    .line 149
    .end local v4           #reason:I
    :pswitch_2
    const/16 v6, 0xb

    sput v6, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;->mBondState:I

    goto :goto_0

    .line 155
    :pswitch_3
    const-string v6, "LGBluetoothTutorialPopupReceiver"

    const-string v7, "Show \'Completed\' popup"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/16 v6, 0xc

    sput v6, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;->mBondState:I

    .line 158
    const/4 v6, 0x4

    invoke-static {p1, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->showTutorialPopup(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 171
    .end local v1           #bondState:I
    :cond_3
    const-string v6, "com.lge.bluetooth.action.SHOW_TUTORIAL_POPUP"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 172
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x8000

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 175
    .restart local v5       #state:I
    const-string v6, "com.lge.bluetooth.extra.DISCOVERY_STATE"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 178
    .local v3, isDiscovering:Z
    const-string v6, "LGBluetoothTutorialPopupReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.lge.bluetooth.action.SHOW_TUTORIAL_POPUP, state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isDiscovering : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/16 v6, 0xc

    if-ne v5, v6, :cond_5

    if-eqz v3, :cond_5

    .line 184
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->isPopupShowing()Z

    move-result v6

    if-eqz v6, :cond_4

    sget v6, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindowType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 185
    const-string v6, "LGBluetoothTutorialPopupReceiver"

    const-string v7, "Already \'Select device\' is displayed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 188
    :cond_4
    const-string v6, "LGBluetoothTutorialPopupReceiver"

    const-string v7, "Bluetooth is ON and Discovering. Show \'Select device\'"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v6, 0x2

    invoke-static {p1, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->showTutorialPopup(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 199
    :cond_5
    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    .line 200
    const-string v6, "LGBluetoothTutorialPopupReceiver"

    const-string v7, "Show \'Turn on Bluetooth\'"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v6, 0x1

    invoke-static {p1, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->showTutorialPopup(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 120
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
