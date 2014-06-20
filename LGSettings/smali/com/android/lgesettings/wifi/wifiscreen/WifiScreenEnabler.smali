.class public Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;
.super Ljava/lang/Object;
.source "WifiScreenEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mWfdState:I

.field private static mWifiScreenState:Z


# instance fields
.field private final MSG_AMP_BUSY:I

.field private final mContext:Landroid/content/Context;

.field private mDeviceCategory:Landroid/preference/PreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mWifiScreenState:Z

    .line 77
    const/16 v0, 0x8

    sput v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mWfdState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler$1;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->MSG_AMP_BUSY:I

    .line 303
    new-instance v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler$4;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mHandler:Landroid/os/Handler;

    .line 92
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 96
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lge.systemservice.core.wfdmanager.WFD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/PreferenceCategory;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"
    .parameter "mDevice"

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler$1;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->MSG_AMP_BUSY:I

    .line 303
    new-instance v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler$4;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mHandler:Landroid/os/Handler;

    .line 102
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    .line 104
    iput-object p3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mDeviceCategory:Landroid/preference/PreferenceCategory;

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 107
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lge.systemservice.core.wfdmanager.WFD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->handleScreenStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private handleScreenStateChanged(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 258
    const-string v0, "WifiScreenEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleScreenStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sput p1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mWfdState:I

    .line 260
    packed-switch p1, :pswitch_data_0

    .line 290
    const-string v0, "WifiScreenEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled wifi state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    .line 295
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->setWiFiScreenEnablerMenu(Landroid/widget/Switch;)V

    .line 299
    :cond_1
    return-void

    .line 262
    :pswitch_0
    sput-boolean v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mWifiScreenState:Z

    .line 263
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 264
    invoke-direct {p0, v3}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->setSwitchChecked(Z)V

    .line 266
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mDeviceCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mDeviceCategory:Landroid/preference/PreferenceCategory;

    const v1, 0x7f0801de

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto :goto_0

    .line 271
    :pswitch_1
    sput-boolean v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mWifiScreenState:Z

    .line 272
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 273
    invoke-direct {p0, v4}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->setSwitchChecked(Z)V

    goto :goto_0

    .line 280
    :pswitch_2
    sput-boolean v4, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mWifiScreenState:Z

    .line 281
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 282
    invoke-direct {p0, v4}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->setSwitchChecked(Z)V

    goto :goto_0

    .line 285
    :pswitch_3
    sput-boolean v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mWifiScreenState:Z

    .line 286
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 287
    invoke-direct {p0, v3}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->setSwitchChecked(Z)V

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSwitchChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mStateMachineEvent:Z

    .line 252
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mStateMachineEvent:Z

    .line 255
    :cond_0
    return-void
.end method

.method private setWifiDisplayEnabled(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    .line 232
    if-eqz p1, :cond_0

    .line 233
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.systemservice.core.wfdmanager.WFD_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, intent:Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 238
    const/4 v1, 0x1

    return v1

    .line 235
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.systemservice.core.wfdmanager.WFD_DISABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 190
    iget-boolean v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mStateMachineEvent:Z

    if-eqz v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const-string v1, "service.btui.ampstate"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.action.WIFI_BT_HS_COEX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 198
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 208
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->setWifiDisplayEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 209
    if-eqz p2, :cond_3

    .line 210
    sget-boolean v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mWifiScreenState:Z

    if-nez v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 214
    :cond_3
    sget-boolean v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mWifiScreenState:Z

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 219
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 125
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->setWiFiScreenEnablerMenu(Landroid/widget/Switch;)V

    .line 119
    :cond_0
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;I)V
    .locals 2
    .parameter "switch_"
    .parameter "wfd_state"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 161
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    .line 162
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 164
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler$3;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler$3;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-direct {p0, p2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->handleScreenStateChanged(I)V

    .line 181
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->setWiFiScreenEnablerMenu(Landroid/widget/Switch;)V

    goto :goto_0
.end method
