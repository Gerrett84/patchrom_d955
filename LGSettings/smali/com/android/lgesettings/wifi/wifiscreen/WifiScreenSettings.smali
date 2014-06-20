.class public Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "WifiScreenSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;,
        Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;,
        Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;
    }
.end annotation


# static fields
.field private static isAPModeSupport:Z

.field private static mAutoScanEnable:Z

.field private static mDlnaThread:Z

.field private static mForcedDlnaScan:Z

.field private static mShowScanEmpty:Z

.field public static mThisDevicePref:Landroid/preference/Preference;

.field private static mWifiScreenScanState:Z

.field static targetDevice:Ljava/lang/String;

.field static targetProductName:Ljava/lang/String;


# instance fields
.field private actionBarSwitch:Landroid/widget/Switch;

.field private connectedName:Ljava/lang/String;

.field private connectedUdn:Ljava/lang/String;

.field private curDevName:Ljava/lang/String;

.field public iSmartShareManagerClientAdapter:Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;

.field private isSearch:Z

.field mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectDialog:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenDialog;

.field private mConnectListener:Landroid/content/DialogInterface$OnClickListener;

.field mDevRenameDialog:Landroid/app/AlertDialog;

.field private mDeviceNameText:Landroid/widget/EditText;

.field private mDisconnectDlnaListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mLGMDMReceiver:Landroid/content/BroadcastReceiver;

.field private mNoDeviceFoundPreference:Landroid/preference/Preference;

.field public mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRenameListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSavedDeviceName:Ljava/lang/String;

.field private mSearchProgressHandler:Landroid/os/Handler;

.field private mSelectedDLNADevice:Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;

.field private mSelectedWifiPeer:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

.field private mSmartShareManagerClient:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mWFDDevices:[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

.field private mWfdManager:Lcom/lge/systemservice/core/wfdmanager/WfdManager;

.field private mWfdState:I

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiScreenEnabler:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;

.field public mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private show_dialog:Z

.field private wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    sput-boolean v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenScanState:Z

    .line 142
    sput-boolean v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mAutoScanEnable:Z

    .line 143
    sput-boolean v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mShowScanEmpty:Z

    .line 171
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->targetDevice:Ljava/lang/String;

    .line 172
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->targetProductName:Ljava/lang/String;

    .line 176
    sput-boolean v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->isAPModeSupport:Z

    .line 177
    sput-boolean v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mForcedDlnaScan:Z

    .line 178
    sput-boolean v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDlnaThread:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 438
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 121
    iput v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWfdState:I

    .line 123
    iput-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWfdManager:Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    .line 125
    iput-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 152
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 153
    iput-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    iput-boolean v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->isSearch:Z

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->show_dialog:Z

    .line 160
    iput-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSavedDeviceName:Ljava/lang/String;

    .line 161
    iput-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->curDevName:Ljava/lang/String;

    .line 179
    invoke-static {}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->getInstance()Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSmartShareManagerClient:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    .line 180
    iput-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWFDDevices:[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    .line 182
    iput-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedUdn:Ljava/lang/String;

    .line 183
    iput-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedName:Ljava/lang/String;

    .line 187
    iput-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->actionBarSwitch:Landroid/widget/Switch;

    .line 189
    new-instance v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$1;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->iSmartShareManagerClientAdapter:Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;

    .line 428
    iput-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    .line 497
    new-instance v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$3;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$3;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSearchProgressHandler:Landroid/os/Handler;

    .line 1540
    new-instance v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$15;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$15;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    .line 439
    const-string v0, "wlan.lge.wifidisplay"

    const-string v1, "direct"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "both"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->isAPModeSupport:Z

    .line 441
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 442
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lge.systemservice.core.wfdmanager.WFD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    new-instance v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$2;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 495
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Lcom/lge/smartshare/iface/client/SmartShareManagerClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSmartShareManagerClient:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;)[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWFDDevices:[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->updateDevicePref()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->isSearch:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mConnectDialog:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenDialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDeviceNameText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->isAPModeSupport:Z

    return v0
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mForcedDlnaScan:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->onDlnaRefresh()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Lcom/lge/systemservice/core/wfdmanager/WfdManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getWfdManager()Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->showConnectionFailToast()V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenScanState:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    sput-boolean p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenScanState:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->handleScreenStateChanged(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWfdState:I

    return v0
.end method

.method private addMessagePreference(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    if-eqz v0, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v0, p1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->onAddMessage(I)V

    .line 1260
    :cond_0
    return-void
.end method

.method private checkConnectingDevices()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1124
    iget-object v5, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    if-eqz v5, :cond_3

    .line 1125
    iget-object v5, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v5}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->getmDeviceCategory()Lcom/android/lgesettings/wifi/WifiProgressCategory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->getPreferenceCount()I

    move-result v3

    .line 1126
    .local v3, prefCount:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 1127
    iget-object v5, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v5}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->getmDeviceCategory()Lcom/android/lgesettings/wifi/WifiProgressCategory;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 1128
    .local v0, checkItem:Landroid/preference/Preference;
    instance-of v5, v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    if-eqz v5, :cond_1

    move-object v1, v0

    .line 1129
    check-cast v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    .line 1130
    .local v1, currentItem:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;
    iget-object v5, v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v5, v4, :cond_0

    iget-object v5, v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v5, :cond_2

    .line 1143
    .end local v0           #checkItem:Landroid/preference/Preference;
    .end local v1           #currentItem:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;
    .end local v2           #index:I
    .end local v3           #prefCount:I
    :cond_0
    :goto_1
    return v4

    .line 1134
    .restart local v0       #checkItem:Landroid/preference/Preference;
    .restart local v2       #index:I
    .restart local v3       #prefCount:I
    :cond_1
    instance-of v5, v0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;

    if-eqz v5, :cond_2

    move-object v1, v0

    .line 1135
    check-cast v1, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;

    .line 1136
    .local v1, currentItem:Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;
    iget v5, v1, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->status:I

    if-eq v5, v4, :cond_0

    iget v5, v1, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->status:I

    if-eqz v5, :cond_0

    .line 1126
    .end local v1           #currentItem:Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1143
    .end local v0           #checkItem:Landroid/preference/Preference;
    .end local v2           #index:I
    .end local v3           #prefCount:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private display_title_wifidisplaydevice()V
    .locals 3

    .prologue
    const v2, 0x7f0801de

    .line 814
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    if-eqz v1, :cond_0

    .line 815
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->getmDeviceCategory()Lcom/android/lgesettings/wifi/WifiProgressCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 817
    iget v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWfdState:I

    if-nez v1, :cond_1

    .line 818
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->getmDeviceCategory()Lcom/android/lgesettings/wifi/WifiProgressCategory;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->setTitle(I)V

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    sget-boolean v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mShowScanEmpty:Z

    if-eqz v1, :cond_0

    .line 821
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->getmDeviceCategory()Lcom/android/lgesettings/wifi/WifiProgressCategory;

    move-result-object v1

    const v2, 0x7f08134d

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->setTitle(I)V

    .line 823
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 824
    .local v0, mActivity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 825
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    .line 826
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v2, 0x7f0400ee

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 827
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v2, 0x7f08135c

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 828
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 829
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->getmDeviceCategory()Lcom/android/lgesettings/wifi/WifiProgressCategory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 833
    .end local v0           #mActivity:Landroid/app/Activity;
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->getmDeviceCategory()Lcom/android/lgesettings/wifi/WifiProgressCategory;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->setTitle(I)V

    .line 834
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->getmDeviceCategory()Lcom/android/lgesettings/wifi/WifiProgressCategory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->setEnabled(Z)V

    goto :goto_0
.end method

.method private getWfdManager()Lcom/lge/systemservice/core/wfdmanager/WfdManager;
    .locals 2

    .prologue
    .line 431
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWfdManager:Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    if-nez v1, :cond_0

    .line 432
    new-instance v0, Lcom/lge/systemservice/core/LGContextImpl;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/systemservice/core/LGContextImpl;-><init>(Landroid/content/Context;)V

    .line 433
    .local v0, mServiceContext:Lcom/lge/systemservice/core/LGContext;
    const-string v1, "wfdService"

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWfdManager:Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    .line 435
    .end local v0           #mServiceContext:Lcom/lge/systemservice/core/LGContext;
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWfdManager:Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    return-object v1
.end method

.method private handleScreenStateChanged(ILjava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1263
    const-string v0, "WifiScreenSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleScreenStateChanged == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWfdState:I

    .line 1265
    iput p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWfdState:I

    .line 1266
    sput-boolean v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mShowScanEmpty:Z

    .line 1267
    packed-switch p1, :pswitch_data_0

    .line 1368
    const-string v0, "WifiScreenSettings"

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

    .line 1369
    sput-boolean v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenScanState:Z

    .line 1372
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->updateDevicePref()V

    .line 1373
    return-void

    .line 1269
    :pswitch_0
    sput-boolean v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mAutoScanEnable:Z

    .line 1270
    sput-boolean v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenScanState:Z

    .line 1271
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1273
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->onRemoveAllDeviceCategory()V

    .line 1274
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v0, v3}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->updateProgressUi(Z)V

    .line 1276
    iput-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedUdn:Ljava/lang/String;

    .line 1277
    iput-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedName:Ljava/lang/String;

    .line 1279
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 1280
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->updateDevicePref()V

    .line 1281
    sget-boolean v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->isAPModeSupport:Z

    if-ne v0, v5, :cond_1

    .line 1282
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->onRemoveAllDeviceCategory()V

    .line 1285
    :cond_1
    const v0, 0x7f081639

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->addMessagePreference(I)V

    .line 1287
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mConnectDialog:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mConnectDialog:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1288
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mConnectDialog:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenDialog;->dismiss()V

    .line 1290
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDevRenameDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDevRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1291
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDevRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1293
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/lgesettings/Settings$WifiScreenSettingsDialogActivity;

    if-eqz v0, :cond_0

    .line 1294
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->finish()V

    goto :goto_0

    .line 1298
    :pswitch_1
    sput-boolean v5, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mAutoScanEnable:Z

    .line 1299
    sput-boolean v5, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenScanState:Z

    .line 1300
    invoke-direct {p0, v6}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->addMessagePreference(I)V

    .line 1301
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1303
    iput-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedUdn:Ljava/lang/String;

    .line 1304
    iput-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedName:Ljava/lang/String;

    .line 1306
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->search_wifi_display(Z)V

    goto :goto_0

    .line 1310
    :pswitch_2
    sput-boolean v5, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mAutoScanEnable:Z

    .line 1311
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->search_wifi_display(Z)V

    goto :goto_0

    .line 1314
    :pswitch_3
    sput-boolean v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mAutoScanEnable:Z

    .line 1315
    sput-boolean v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenScanState:Z

    .line 1316
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1317
    const v0, 0x7f08163a

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->addMessagePreference(I)V

    goto/16 :goto_0

    .line 1320
    :pswitch_4
    sput-boolean v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mAutoScanEnable:Z

    .line 1321
    sput-boolean v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenScanState:Z

    .line 1322
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1323
    const v0, 0x7f08163b

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->addMessagePreference(I)V

    goto/16 :goto_0

    .line 1326
    :pswitch_5
    if-eqz p2, :cond_5

    .line 1327
    const-string v0, ";~:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1328
    if-ne v0, v6, :cond_4

    .line 1329
    iput-object p2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedUdn:Ljava/lang/String;

    .line 1330
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedName:Ljava/lang/String;

    .line 1342
    :goto_1
    sput-boolean v5, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mAutoScanEnable:Z

    .line 1343
    invoke-direct {p0, v6}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->addMessagePreference(I)V

    .line 1344
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->search_wifi_display(Z)V

    goto/16 :goto_0

    .line 1332
    :cond_4
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedUdn:Ljava/lang/String;

    .line 1333
    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedName:Ljava/lang/String;

    goto :goto_1

    .line 1336
    :cond_5
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedUdn:Ljava/lang/String;

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    .line 1337
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->showConnectionFailToast()V

    .line 1339
    :cond_6
    iput-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedUdn:Ljava/lang/String;

    .line 1340
    iput-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedName:Ljava/lang/String;

    goto :goto_1

    .line 1347
    :pswitch_6
    if-eqz p2, :cond_8

    .line 1348
    const-string v0, ";~:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1349
    if-ne v0, v6, :cond_7

    .line 1350
    iput-object p2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedUdn:Ljava/lang/String;

    .line 1351
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedName:Ljava/lang/String;

    .line 1360
    :goto_2
    sput-boolean v5, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mAutoScanEnable:Z

    .line 1361
    invoke-direct {p0, v6}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->addMessagePreference(I)V

    .line 1362
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->search_wifi_display(Z)V

    .line 1363
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/lgesettings/Settings$WifiScreenSettingsDialogActivity;

    if-eqz v0, :cond_0

    .line 1364
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->finish()V

    goto/16 :goto_0

    .line 1353
    :cond_7
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedUdn:Ljava/lang/String;

    .line 1354
    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedName:Ljava/lang/String;

    goto :goto_2

    .line 1357
    :cond_8
    iput-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedUdn:Ljava/lang/String;

    .line 1358
    iput-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedName:Ljava/lang/String;

    goto :goto_2

    .line 1267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private onDlnaRefresh()V
    .locals 1

    .prologue
    .line 1147
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDlnaThread:Z

    .line 1148
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    .line 1149
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDlnaThread:Z

    .line 1150
    return-void
.end method

.method private showConnectionFailToast()V
    .locals 2

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSearchProgressHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1154
    return-void
.end method

.method private updateDevicePref()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1210
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_1

    .line 1212
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/lgesettings/Settings$WifiScreenSettingsDialogActivity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->getmThisDevicePref()Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1215
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->getmThisDevicePref()Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1242
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->getmDeviceCategory()Lcom/android/lgesettings/wifi/WifiProgressCategory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1243
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->getmDeviceCategory()Lcom/android/lgesettings/wifi/WifiProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->setPersistent(Z)V

    .line 1244
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->getmDeviceCategory()Lcom/android/lgesettings/wifi/WifiProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->setEnabled(Z)V

    .line 1245
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->getmDeviceCategory()Lcom/android/lgesettings/wifi/WifiProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->setSelectable(Z)V

    .line 1248
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    if-eqz v0, :cond_2

    .line 1249
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->getmDeviceCategory()Lcom/android/lgesettings/wifi/WifiProgressCategory;

    move-result-object v0

    const v1, 0x7f0801de

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->setTitle(I)V

    .line 1250
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->getmDeviceCategory()Lcom/android/lgesettings/wifi/WifiProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->setEnabled(Z)V

    .line 1252
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    .line 1254
    :cond_2
    return-void

    .line 1217
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->getmThisDevicePref()Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getRtspSessionUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1445
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1446
    const-string v0, "rtsp://255.255.255.255:8554"

    .line 1448
    if-eqz v1, :cond_0

    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rtsp://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":8554"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1451
    :cond_0
    return-object v0
.end method

.method public initializeSmartShare()V
    .locals 3

    .prologue
    .line 1377
    sget-boolean v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->isAPModeSupport:Z

    if-nez v0, :cond_1

    .line 1384
    :cond_0
    :goto_0
    return-void

    .line 1380
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSmartShareManagerClient:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSmartShareManagerClient:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->initialize(Landroid/app/Activity;I)Z

    .line 1382
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSmartShareManagerClient:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->iSmartShareManagerClientAdapter:Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;

    invoke-static {v0}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->registerListener(Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x1

    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 536
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 537
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 539
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "wifip2p"

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 540
    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v4, :cond_6

    .line 541
    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v4, v0, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 542
    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v4, :cond_0

    .line 544
    const-string v4, "WifiScreenSettings"

    const-string v5, "Failed to set up connection with wifi p2p service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iput-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 552
    :cond_0
    :goto_0
    const-string v4, "wifip2p"

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 553
    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v4, :cond_7

    .line 554
    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v4, v0, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 555
    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v4, :cond_1

    .line 556
    const-string v4, "WifiScreenSettings"

    const-string v5, "Failed to set up connection with wifi p2p service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iput-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 564
    :cond_1
    :goto_1
    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->actionBarSwitch:Landroid/widget/Switch;

    .line 566
    instance-of v4, v0, Lcom/android/lgesettings/Settings$WifiScreenSettingsDialogActivity;

    if-eqz v4, :cond_8

    .line 567
    const-string v4, "WifiScreenSettings"

    const-string v5, "WifiScreenSettingsDialogActivity"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance v4, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;

    invoke-direct {v4}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsDialogActivity;-><init>()V

    iput-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    .line 621
    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    const-string v4, "DEV_NAME"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 622
    const-string v4, "DEV_NAME"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSavedDeviceName:Ljava/lang/String;

    .line 626
    :cond_3
    new-instance v4, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$5;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$5;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V

    iput-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mConnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 647
    new-instance v4, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$6;

    invoke-direct {v4, p0, v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$6;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mRenameListener:Landroid/content/DialogInterface$OnClickListener;

    .line 671
    new-instance v4, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$7;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$7;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V

    iput-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 694
    new-instance v4, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$8;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$8;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V

    iput-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDisconnectDlnaListener:Landroid/content/DialogInterface$OnClickListener;

    .line 703
    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    if-eqz v4, :cond_4

    .line 704
    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    iget-object v5, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-interface {v4, p0, v5}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->onInitView(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;Landroid/widget/Switch;)V

    .line 706
    new-instance v4, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;

    iget-object v5, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->actionBarSwitch:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v6}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->getmDeviceCategory()Lcom/android/lgesettings/wifi/WifiProgressCategory;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/PreferenceCategory;)V

    iput-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenEnabler:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;

    .line 709
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 710
    invoke-virtual {p0, v9}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->setHasOptionsMenu(Z)V

    .line 711
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->updateDevicePref()V

    .line 713
    sget-boolean v4, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->isAPModeSupport:Z

    if-ne v4, v9, :cond_5

    .line 714
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->initializeSmartShare()V

    .line 717
    :cond_5
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 718
    return-void

    .line 548
    :cond_6
    const-string v4, "WifiScreenSettings"

    const-string v5, "mWifiScreenManager is null !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 560
    :cond_7
    const-string v4, "WifiScreenSettings"

    const-string v5, "mWifiP2pManager is null !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 575
    :cond_8
    const-string v4, "WifiScreenSettings"

    const-string v5, "WifiScreenSettingsAsDefault"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v4, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;

    invoke-direct {v4}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAsDefault;-><init>()V

    iput-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    .line 578
    instance-of v4, v0, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_2

    move-object v3, v0

    .line 579
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 580
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_2

    .line 581
    :cond_9
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 583
    .local v2, padding:I
    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v7, v7, v2, v7}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 584
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 586
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const v7, 0x800015

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 592
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v5, 0x7f081357

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 593
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v5, 0x7f020341

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setIcon(I)V

    .line 595
    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$4;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$4;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 1528
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1530
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    .line 1531
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1532
    .local v0, filterLGMDM:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->addWifiPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V

    .line 1534
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1537
    .end local v0           #filterLGMDM:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f08059e

    const v7, 0x7f08059d

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1032
    packed-switch p1, :pswitch_data_0

    .line 1117
    const-string v0, "WifiScreenSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Undefined dialog command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v0, v1

    .line 1120
    :goto_1
    return-object v0

    .line 1036
    :pswitch_0
    :try_start_0
    new-instance v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenDialog;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mConnectListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    iget-object v4, v4, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mConnectDialog:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenDialog;

    .line 1038
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mConnectDialog:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenDialog;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1039
    :catch_0
    move-exception v0

    .line 1040
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1045
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1049
    :goto_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f081357

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f08163e

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_2

    .line 1057
    :pswitch_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSelectedDLNADevice:Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->device:Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    invoke-virtual {v0}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Unknown"

    .line 1061
    :goto_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f081357

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f08163e

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDisconnectDlnaListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1

    .line 1057
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSelectedDLNADevice:Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->device:Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    invoke-virtual {v0}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1069
    :pswitch_3
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1073
    :goto_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f081357

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080312

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$13;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$13;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1

    .line 1069
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_4

    .line 1097
    :pswitch_4
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSelectedDLNADevice:Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->device:Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    invoke-virtual {v0}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Unknown"

    .line 1101
    :goto_5
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f081357

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080312

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$14;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$14;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1

    .line 1097
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSelectedDLNADevice:Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->device:Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    invoke-virtual {v0}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1032
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Z)V

    .line 809
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 810
    return-void
.end method

.method public onDLNADevAvailable([Lcom/lge/smartshare/iface/aidl/DataWFDDevice;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v1, 0x0

    .line 1398
    if-nez p1, :cond_1

    .line 1399
    const-string v0, "WifiScreenSettings"

    const-string v1, "No WFD Devices"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_0
    :goto_0
    return-void

    .line 1403
    :cond_1
    array-length v2, p1

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_5

    aget-object v3, p1, v0

    .line 1404
    const-string v4, "WifiScreenSettings"

    const-string v5, "WFD Device added"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    new-instance v4, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;-><init>(Landroid/content/Context;Lcom/lge/smartshare/iface/aidl/DataWFDDevice;)V

    .line 1406
    iget-object v5, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedUdn:Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedUdn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1412
    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedName:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1413
    invoke-virtual {v3}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedName:Ljava/lang/String;

    .line 1414
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getWfdManager()Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedUdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";~:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/systemservice/core/wfdmanager/WfdManager;->informConnectionRequstedUdn(Ljava/lang/String;)V

    .line 1403
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1418
    :cond_3
    iget v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWfdState:I

    if-ne v3, v7, :cond_4

    .line 1419
    iget v3, v4, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->status:I

    if-nez v3, :cond_2

    .line 1424
    :cond_4
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    if-eqz v3, :cond_2

    .line 1425
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v3}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->getmDeviceCategory()Lcom/android/lgesettings/wifi/WifiProgressCategory;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 1428
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedUdn:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1429
    new-instance v0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedUdn:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedName:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v2, v3}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;-><init>(Landroid/content/Context;Lcom/lge/smartshare/iface/aidl/DataWFDDevice;)V

    .line 1431
    iget v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWfdState:I

    if-ne v2, v7, :cond_6

    .line 1432
    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->setStatus(I)V

    .line 1438
    :goto_3
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    if-eqz v1, :cond_0

    .line 1439
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->getmDeviceCategory()Lcom/android/lgesettings/wifi/WifiProgressCategory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/wifi/WifiProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 1434
    :cond_6
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->setStatus(I)V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 787
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 788
    sget-boolean v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->isAPModeSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 789
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->terminateSmartShare()V

    .line 792
    :cond_0
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_1

    .line 794
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :cond_1
    :goto_0
    return-void

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MDM"

    const-string v2, "mLGMDMReceiver unregisterReceiver "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 866
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 878
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 868
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->search_wifi_display(Z)V

    goto :goto_0

    .line 873
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 874
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 875
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 866
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 769
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 770
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenEnabler:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenEnabler:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->pause()V

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 778
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 779
    return-void
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 7
    .parameter "peers"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1157
    sget-boolean v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mAutoScanEnable:Z

    if-nez v3, :cond_1

    .line 1200
    :cond_0
    :goto_0
    return-void

    .line 1161
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    if-eqz v3, :cond_2

    .line 1163
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v3}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->onRemoveAllDeviceCategory()V

    .line 1169
    :cond_2
    const/4 v1, 0x0

    .line 1170
    .local v1, p2p_connected:Z
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 1174
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1175
    .local v2, peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    if-eqz v3, :cond_6

    iget-object v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v3, :cond_6

    iget-object v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v3

    if-eq v3, v5, :cond_4

    iget-object v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 1178
    :cond_4
    iget v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->connectedUdn:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 1179
    const/4 v1, 0x1

    .line 1183
    :cond_5
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    iget v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWfdState:I

    invoke-interface {v3, v2, v4}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->onAddDeviceCategory(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    .line 1186
    :cond_6
    sget-boolean v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenScanState:Z

    if-eqz v3, :cond_3

    iget v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDlnaThread:Z

    if-nez v3, :cond_3

    .line 1187
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->wifiscreenSettingsAs:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;

    invoke-interface {v3, v6}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$WifiScreenSettingsAs;->updateProgressUi(Z)V

    goto :goto_1

    .line 1180
    :cond_7
    iget v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWfdState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    goto :goto_1

    .line 1191
    .end local v2           #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_8
    sget-boolean v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->isAPModeSupport:Z

    if-ne v3, v5, :cond_9

    if-nez v1, :cond_9

    .line 1192
    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWFDDevices:[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->onDLNADevAvailable([Lcom/lge/smartshare/iface/aidl/DataWFDDevice;)V

    .line 1196
    :cond_9
    sget-boolean v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDlnaThread:Z

    if-nez v3, :cond_0

    .line 1197
    sput-boolean v6, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mShowScanEmpty:Z

    .line 1198
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->display_title_wifidisplaydevice()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 883
    instance-of v0, p2, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    if-eqz v0, :cond_5

    move-object v0, p2

    .line 884
    check-cast v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    .line 885
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v0, v6, :cond_1

    .line 886
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->showDialog(I)V

    .line 1025
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eqz v0, :cond_4

    .line 888
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 889
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08163c

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 890
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 891
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->checkConnectingDevices()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 892
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->showConnectionFailToast()V

    goto :goto_0

    .line 902
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->getConfig()Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    new-instance v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$11;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$11;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 915
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/lgesettings/Settings$WifiScreenSettingsDialogActivity;

    if-nez v0, :cond_0

    .line 916
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->showDialog(I)V

    goto :goto_0

    .line 919
    :cond_5
    instance-of v0, p2, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;

    if-eqz v0, :cond_8

    move-object v0, p2

    .line 920
    check-cast v0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSelectedDLNADevice:Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;

    .line 923
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSelectedDLNADevice:Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;

    iget v0, v0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->status:I

    if-eqz v0, :cond_7

    .line 924
    iget v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWfdState:I

    if-ne v0, v1, :cond_0

    .line 925
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSelectedDLNADevice:Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;

    iget v0, v0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->status:I

    if-eq v0, v6, :cond_6

    invoke-direct {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->checkConnectingDevices()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 926
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->showConnectionFailToast()V

    goto :goto_0

    .line 928
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSmartShareManagerClient:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    if-eqz v0, :cond_0

    .line 929
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getWfdManager()Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSelectedDLNADevice:Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->device:Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    invoke-virtual {v2}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";~:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSelectedDLNADevice:Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->device:Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    invoke-virtual {v2}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/wfdmanager/WfdManager;->informConnectionRequstedUdn(Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSmartShareManagerClient:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSelectedDLNADevice:Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->device:Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    invoke-virtual {v1}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getRtspSessionUri()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->initWFD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 936
    :cond_7
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/lgesettings/Settings$WifiScreenSettingsDialogActivity;

    if-nez v0, :cond_0

    .line 937
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 942
    :cond_8
    instance-of v0, p2, Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 943
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 945
    const-string v1, "wifi_screen_devname"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->show_dialog:Z

    if-ne v0, v6, :cond_0

    .line 949
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 952
    const v1, 0x7f0401b3

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 955
    const v0, 0x7f0a03f6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDeviceNameText:Landroid/widget/EditText;

    .line 957
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDeviceNameText:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2, v6}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 959
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSavedDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 960
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSavedDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 964
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDeviceNameText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->curDevName:Ljava/lang/String;

    .line 966
    iput-object v7, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSavedDeviceName:Ljava/lang/String;

    .line 969
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDeviceNameText:Landroid/widget/EditText;

    new-array v2, v6, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;

    const/16 v5, 0x20

    invoke-direct {v4, p0, v5}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;I)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 972
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDeviceNameText:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 974
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDeviceNameText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 976
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0803f9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0802e6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mRenameListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08059e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDevRenameDialog:Landroid/app/AlertDialog;

    .line 989
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDevRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 991
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDeviceNameText:Landroid/widget/EditText;

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 992
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDeviceNameText:Landroid/widget/EditText;

    const-string v1, "com.lge.android.editmode.noEmoji"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 994
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDevRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 998
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDeviceNameText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$12;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$12;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 961
    :cond_a
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 962
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 722
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 724
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenEnabler:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;

    if-eqz v2, :cond_0

    .line 726
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenEnabler:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->resume()V

    .line 729
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 732
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_1

    .line 733
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->checkDisallowMiracast(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 735
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->finishFragment()V

    .line 738
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, activity:Landroid/app/Activity;
    move-object v1, v0

    .line 739
    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 741
    .local v1, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 742
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 743
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const v3, 0x7f081357

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 744
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const v3, 0x7f020341

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setIcon(I)V

    .line 753
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/SettingsBreadCrumb;->isAttached(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 754
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/lgesettings/Settings$WifiScreenSettingsDialogActivity;

    if-nez v2, :cond_3

    .line 755
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/SettingsBreadCrumb;->get(Landroid/app/Activity;)Lcom/android/lgesettings/SettingsBreadCrumb;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    .line 756
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/SettingsBreadCrumb;->addSwitch(Landroid/widget/Switch;)V

    .line 757
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$9;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$9;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 765
    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 782
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onStop()V

    .line 783
    return-void
.end method

.method public scheduleMessageStopSearchProgress(Z)V
    .locals 4
    .parameter "start"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x64

    .line 518
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSearchProgressHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSearchProgressHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 522
    :cond_0
    if-eqz p1, :cond_1

    .line 523
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSearchProgressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSearchProgressHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 531
    :goto_0
    iput-boolean p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->isSearch:Z

    .line 532
    return-void

    .line 527
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mShowScanEmpty:Z

    .line 528
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->display_title_wifidisplaydevice()V

    goto :goto_0
.end method

.method public search_wifi_display(Z)V
    .locals 3
    .parameter "isForced"

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 841
    sput-boolean p1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mForcedDlnaScan:Z

    .line 842
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$10;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$10;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 862
    :cond_0
    return-void
.end method

.method public terminateSmartShare()V
    .locals 2

    .prologue
    .line 1387
    sget-boolean v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->isAPModeSupport:Z

    if-nez v0, :cond_1

    .line 1395
    :cond_0
    :goto_0
    return-void

    .line 1390
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSmartShareManagerClient:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSmartShareManagerClient:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->iSmartShareManagerClientAdapter:Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;

    invoke-static {v0}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->unregisterListener(Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;)V

    .line 1392
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mSmartShareManagerClient:Lcom/lge/smartshare/iface/client/SmartShareManagerClient;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/smartshare/iface/client/SmartShareManagerClient;->terminate(Landroid/app/Activity;)Z

    goto :goto_0
.end method
