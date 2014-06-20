.class public Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;
.super Ljava/lang/Object;
.source "WifiScreenSettingsAsActivity.java"

# interfaces
.implements Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;


# static fields
.field private static mWifiScreenScanState:Z


# instance fields
.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectDialog:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenDialog;

.field private mConnectListener:Landroid/content/DialogInterface$OnClickListener;

.field public mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

.field private mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

.field public mThisDevicePref:Landroid/preference/Preference;

.field private mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mWifiScreenScanState:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;)Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mConnectDialog:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method


# virtual methods
.method public getmDeviceCategory()Lcom/android/lgesettings/wifi/WifiProgressCategory;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    .line 257
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    const-string v1, "wifi_screen_devices"

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/wifi/WifiProgressCategory;

    goto :goto_0
.end method

.method public getmThisDevicePref()Landroid/preference/Preference;
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mThisDevicePref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mThisDevicePref:Landroid/preference/Preference;

    .line 263
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    const-string v1, "wifi_screen_devname"

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public onAddDeviceCategory(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .locals 3
    .parameter "peer"
    .parameter "wfd_state"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    new-instance v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 219
    :cond_0
    return-void
.end method

.method public onAddMessage(I)V
    .locals 0
    .parameter "msgId"

    .prologue
    .line 213
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Z)V
    .locals 6
    .parameter "menu"
    .parameter "inflater"
    .parameter "wifiIsEnabled"

    .prologue
    const v5, 0x7f080503

    const v4, 0x7f080307

    const/4 v1, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 194
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/lgesettings/Utils;->isEnglishDigitRTLLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    invoke-interface {p1, v2, v3, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 198
    invoke-interface {p1, v2, v1, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget-boolean v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mWifiScreenScanState:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 209
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-interface {p1, v2, v1, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget-boolean v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mWifiScreenScanState:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 205
    invoke-interface {p1, v2, v3, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onInitView(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;Landroid/widget/Switch;)V
    .locals 2
    .parameter "wifiscreenSettings"
    .parameter "actionBarSwitch"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    .line 101
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    const v1, 0x7f060081

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->addPreferencesFromResource(I)V

    .line 136
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    const-string v1, "wifi_screen_devname"

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mThisDevicePref:Landroid/preference/Preference;

    .line 137
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mThisDevicePref:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 138
    const-string v0, "WifiScreenSettings"

    const-string v1, "mThisDevicePref is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    const-string v1, "wifi_screen_devices"

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/wifi/WifiProgressCategory;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    .line 143
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    if-nez v0, :cond_1

    .line 144
    const-string v0, "WifiScreenSettings"

    const-string v1, "mDeviceCategory is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1
    new-instance v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity$1;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mConnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 169
    new-instance v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity$2;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 191
    :cond_2
    return-void
.end method

.method public onRemoveAllDeviceCategory()V
    .locals 2

    .prologue
    .line 237
    const-string v0, "WifiScreenSettings"

    const-string v1, "mDeviceCategory.removeAll() for Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->removeAll()V

    .line 240
    :cond_0
    return-void
.end method

.method public updateProgressUi(Z)V
    .locals 1
    .parameter "start"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    instance-of v0, v0, Lcom/android/lgesettings/wifi/WifiProgressCategory;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mDeviceCategory:Lcom/android/lgesettings/wifi/WifiProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->setProgress(Z)V

    .line 269
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mWifiScreenSettings:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->scheduleMessageStopSearchProgress(Z)V

    .line 271
    :cond_0
    return-void
.end method
