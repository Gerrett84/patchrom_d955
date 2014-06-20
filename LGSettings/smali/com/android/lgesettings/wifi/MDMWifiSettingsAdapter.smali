.class public Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;
.super Ljava/lang/Object;
.source "MDMWifiSettingsAdapter.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "MDMWifiSettingsAdapter"

    sput-object v0, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->mInstance:Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    invoke-direct {v0}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;-><init>()V

    sput-object v0, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->mInstance:Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    .line 47
    :cond_0
    sget-object v0, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->mInstance:Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    return-object v0
.end method


# virtual methods
.method public addWifiPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 183
    sget-object v0, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addWifiPolicyChangeIntentFilter: "

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v0, "com.lge.mdm.intent.action.WIFI_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public checkDisallowHotspot()Z
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Lcom/lge/mdm/LGMDMManagerInternal;->getInstance()Lcom/lge/mdm/LGMDMManagerInternal;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManagerInternal;->getDisallowTetheringType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "checkDisallowHotspot : LGMDM disallow Hotspot"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkDisallowMiracast(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 239
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/mdm/LGMDMManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    const v1, 0x7f080c44

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 242
    const/4 v0, 0x1

    .line 244
    :cond_0
    return v0
.end method

.method public checkDisallowWifiDirect(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/mdm/LGMDMManager;->getAllowWifiDirect(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    const v1, 0x7f080c14

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 177
    const/4 v0, 0x1

    .line 179
    :cond_0
    return v0
.end method

.method public getAllowWiFiProfileManagement()Z
    .locals 2

    .prologue
    .line 215
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getAllowWiFiProfileManagement(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public receiveWifiPolicyChangeIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 193
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v0

    .line 196
    :cond_1
    sget-object v1, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiveWifiPolicyChangeIntent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "com.lge.mdm.intent.action.WIFI_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAllowForgetNetwork(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 229
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/mdm/LGMDMManager;->getAllowWiFiProfileManagement(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    sget-object v1, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "AllowForgetNetwork check"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const v1, 0x7f080c3e

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAllowModifyNetwork(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/mdm/LGMDMManager;->getAllowWiFiProfileManagement(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    sget-object v1, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "setAllowModifyNetwork check"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const v1, 0x7f080c3f

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setWiFiEnableMenu(Landroid/widget/Switch;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 68
    if-nez p1, :cond_1

    .line 69
    sget-object v0, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "setWiFiEnableMenu : menu is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 75
    sget-object v0, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "setWiFiEnableMenu : LGMDM disabllow mSwitch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWiFiScreenEnablerMenu(Landroid/widget/Switch;)V
    .locals 3
    .parameter "switchButton"

    .prologue
    const/4 v2, 0x0

    .line 119
    if-nez p1, :cond_1

    .line 120
    sget-object v0, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "[LGMDM] setWiFiScreenEnablerMenu : switchButton is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 125
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 126
    sget-object v0, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "[LGMDM] WifiScreenEnabler disabllow mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWifiApEnablerMenu(Landroid/widget/Switch;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v0, 0x0

    .line 160
    if-nez p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->checkDisallowHotspot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 166
    sget-object v0, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "setWifiApEnablerMenu : LGMDM disable Hotspot switch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setWifiSettingDisable(Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;)V
    .locals 2
    .parameter "wifiSettingsAs"

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    sget-object v0, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "[LGMDM] Allow WiFi"

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_1
    sget-object v0, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "[LGMDM] Disabllow WIFi"

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const v0, 0x7f080c13

    invoke-interface {p1, v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->onAddMessage(I)V

    .line 62
    invoke-interface {p1}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->onRemoveAllAccessPoint()V

    goto :goto_0
.end method
