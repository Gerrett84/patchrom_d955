.class public Lcom/android/lgesettings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Lcom/android/lgesettings/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/WifiEnabler$1;-><init>(Lcom/android/lgesettings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    .line 76
    sget-boolean v0, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiEnabler;->isBlockedByMdm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0, v1}, Lcom/android/lgesettings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 84
    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 87
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/wifi/WifiEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 261
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 204
    packed-switch p1, :pswitch_data_0

    .line 220
    invoke-direct {p0, v2}, Lcom/android/lgesettings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 221
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 225
    :goto_0
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->setWiFiEnableMenu(Landroid/widget/Switch;)V

    .line 230
    :cond_0
    sget-boolean v0, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v0, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiEnabler;->isBlockedByMdm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    invoke-direct {p0, v2}, Lcom/android/lgesettings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 233
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 237
    :cond_1
    return-void

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 209
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/lgesettings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 213
    :pswitch_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 216
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/lgesettings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 217
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isBlockedByMdm()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 269
    const-string v1, "persist.security.wifi.lockout"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSwitchChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 242
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 245
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-boolean v3, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v3, :cond_0

    .line 201
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CMCC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 170
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 173
    .local v0, isAirplaneMode:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 174
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 175
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f08161e

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .end local v0           #isAirplaneMode:Z
    :cond_1
    move v0, v2

    .line 170
    goto :goto_1

    .line 181
    :cond_2
    if-eqz p2, :cond_3

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-static {v3, v4}, Lcom/android/lgesettings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 182
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f080292

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 184
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 188
    :cond_3
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 189
    .local v1, wifiApState:I
    if-eqz p2, :cond_5

    const/16 v3, 0xc

    if-eq v1, v3, :cond_4

    const/16 v3, 0xd

    if-ne v1, v3, :cond_5

    .line 191
    :cond_4
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 194
    :cond_5
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 196
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 199
    :cond_6
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f080291

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    return-void

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->setWiFiEnableMenu(Landroid/widget/Switch;)V

    .line 105
    :cond_0
    sget-boolean v0, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiEnabler;->isBlockedByMdm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-direct {p0, v3}, Lcom/android/lgesettings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 112
    :cond_1
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 7
    .parameter "switch_"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 127
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v5, p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 129
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    .line 130
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 132
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    new-instance v6, Lcom/android/lgesettings/wifi/WifiEnabler$2;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/wifi/WifiEnabler$2;-><init>(Lcom/android/lgesettings/wifi/WifiEnabler;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 140
    .local v2, wifiState:I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_4

    move v1, v3

    .line 141
    .local v1, isEnabled:Z
    :goto_1
    if-ne v2, v3, :cond_5

    move v0, v3

    .line 142
    .local v0, isDisabled:Z
    :goto_2
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 143
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_2

    if-eqz v0, :cond_6

    :cond_2
    :goto_3
    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 145
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v3, :cond_3

    .line 146
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v3

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->setWiFiEnableMenu(Landroid/widget/Switch;)V

    .line 150
    :cond_3
    sget-boolean v3, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v3, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiEnabler;->isBlockedByMdm()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .end local v0           #isDisabled:Z
    .end local v1           #isEnabled:Z
    :cond_4
    move v1, v4

    .line 140
    goto :goto_1

    .restart local v1       #isEnabled:Z
    :cond_5
    move v0, v4

    .line 141
    goto :goto_2

    .restart local v0       #isDisabled:Z
    :cond_6
    move v3, v4

    .line 143
    goto :goto_3
.end method

.method public setSwitch(Landroid/widget/Switch;Landroid/widget/TextView;)V
    .locals 0
    .parameter "switch_"
    .parameter "summary"

    .prologue
    .line 160
    return-void
.end method
