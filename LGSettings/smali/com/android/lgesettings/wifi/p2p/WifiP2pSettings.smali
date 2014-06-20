.class public Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$Utf8ByteLengthFilter;
    }
.end annotation


# static fields
.field private static isGroup:Z

.field private static password:Ljava/lang/String;


# instance fields
.field private Connected:Z

.field private curDevName:Ljava/lang/String;

.field dialog:Landroid/app/AlertDialog;

.field inviteDialog:Landroid/app/AlertDialog;

.field private isSearch:Z

.field private mActivity:Landroid/app/Activity;

.field private mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mCommandButtonEnabled:Z

.field private mConnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mConnectedDevices:I

.field private mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeviceNameText:Landroid/widget/EditText;

.field private mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mGroupOwnerEnabled:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLGMDMReceiver:Landroid/content/BroadcastReceiver;

.field private mMenu:Landroid/view/Menu;

.field private mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mPeersGroupCategory:Landroid/preference/PreferenceCategory;

.field private mPersistentGroup:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRenameListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSavedDeviceName:Ljava/lang/String;

.field private mSearchProgressHandler:Landroid/os/Handler;

.field private mSearchView:Landroid/view/View;

.field private mSelectedGroup:Lcom/android/lgesettings/wifi/p2p/WifiP2pPersistentGroup;

.field private mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mThisDevicePref:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pEnabled:Z

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pSearching:Z

.field private show_dialog:Z

.field private ssid:Ljava/lang/String;

.field targetDevice:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    .line 167
    const-string v0, ""

    sput-object v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->password:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 109
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 125
    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->show_dialog:Z

    .line 126
    iput-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->curDevName:Ljava/lang/String;

    .line 128
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->Connected:Z

    .line 129
    iput-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    .line 132
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isSearch:Z

    .line 163
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 168
    const-string v2, ""

    iput-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->ssid:Ljava/lang/String;

    .line 179
    const-string v2, "ro.product.device"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->targetDevice:Ljava/lang/String;

    .line 180
    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->targetDevice:Ljava/lang/String;

    const-string v3, "awifi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->targetDevice:Ljava/lang/String;

    const-string v3, "awifi070u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mCommandButtonEnabled:Z

    .line 181
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mGroupOwnerEnabled:Z

    .line 183
    new-instance v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$1;-><init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 252
    new-instance v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$2;-><init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSearchProgressHandler:Landroid/os/Handler;

    .line 1549
    new-instance v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$15;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$15;-><init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    return-void

    :cond_1
    move v0, v1

    .line 180
    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->handleP2pStateChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateDevicePref()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isSearch:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isSearch:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Lcom/android/lgesettings/wifi/p2p/WifiP2pPersistentGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/lgesettings/wifi/p2p/WifiP2pPersistentGroup;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSearchProgressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    sput-boolean p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->startSearch()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateMenuGroupOwner(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    return-object v0
.end method

.method private handleP2pStateChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1271
    invoke-direct {p0, v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V

    .line 1272
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    if-eqz v0, :cond_1

    .line 1287
    iput-boolean v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isSearch:Z

    .line 1288
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isSearch:Z

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateProgressUi(Z)V

    .line 1289
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSearchProgressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSearchProgressHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1292
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateDevicePref()V

    .line 1295
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 1306
    :cond_0
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateMenuGroupOwner(Z)V

    .line 1307
    return-void

    .line 1297
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->inviteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->inviteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1298
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->inviteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1300
    :cond_2
    const-string v0, "wlan.lge.concurrency"

    const-string v1, "MCC"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1302
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->finish()V

    goto :goto_0
.end method

.method private startSearch()V
    .locals 3

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$14;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$14;-><init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1342
    :cond_0
    return-void
.end method

.method private updateDevicePref()V
    .locals 3

    .prologue
    .line 1346
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateDevicePref isGroup == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1350
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1355
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 1356
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1360
    :cond_0
    sget-boolean v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    if-nez v0, :cond_2

    .line 1369
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    .line 1370
    return-void

    .line 1352
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1367
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    const v1, 0x7f08164b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method

.method private updateMenuGroupOwner(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1374
    .line 1376
    const-string v0, "WifiP2pSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " updateMenuGroupOwner MENU DISPLAY  +++++++++++++++++ isGroup == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_a

    .line 1378
    const-string v0, "WifiP2pSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMenuGroupOwner status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_5

    .line 1381
    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    if-nez v0, :cond_1

    .line 1383
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1385
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mGroupOwnerEnabled:Z

    if-eqz v0, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1389
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1392
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1426
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mMenu:Landroid/view/Menu;

    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz p1, :cond_8

    sget-boolean v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    sget-boolean v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1430
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1431
    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v0, :cond_10

    .line 1432
    add-int/lit8 v0, v3, 0x1

    :goto_3
    move v3, v0

    goto :goto_2

    .line 1399
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1401
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mGroupOwnerEnabled:Z

    if-eqz v0, :cond_2

    .line 1402
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1406
    :cond_2
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mGroupOwnerEnabled:Z

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    sget-boolean v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_4
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    sget-boolean v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_5
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1409
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget-boolean v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    sget-boolean v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1407
    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_5

    .line 1415
    :cond_5
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mGroupOwnerEnabled:Z

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    sget-boolean v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    sget-boolean v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1419
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget-boolean v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    sget-boolean v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 1417
    goto :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v2

    .line 1426
    goto/16 :goto_1

    .line 1435
    :cond_9
    if-ne p1, v1, :cond_e

    .line 1436
    if-nez v3, :cond_c

    .line 1437
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isSearch:Z

    .line 1438
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mCommandButtonEnabled:Z

    if-nez v0, :cond_b

    .line 1439
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1468
    :cond_a
    :goto_8
    return-void

    .line 1441
    :cond_b
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSearchView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1442
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_8

    .line 1447
    :cond_c
    iput-boolean v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isSearch:Z

    .line 1448
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mCommandButtonEnabled:Z

    if-nez v0, :cond_d

    .line 1449
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_8

    .line 1451
    :cond_d
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSearchView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1452
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_8

    .line 1457
    :cond_e
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mCommandButtonEnabled:Z

    if-nez v0, :cond_f

    .line 1458
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_8

    .line 1460
    :cond_f
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSearchView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1461
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_8

    :cond_10
    move v0, v3

    goto/16 :goto_3
.end method

.method private updateSearchMenu(Z)V
    .locals 1
    .parameter "searching"

    .prologue
    .line 1310
    iput-boolean p1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    .line 1311
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1312
    :cond_0
    return-void
.end method


# virtual methods
.method public groupInit()V
    .locals 1

    .prologue
    .line 984
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    .line 987
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 270
    const v3, 0x7f06007f

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->addPreferencesFromResource(I)V

    .line 272
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    .line 281
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 282
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 503
    :goto_0
    return-void

    .line 285
    :cond_0
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 286
    const-string v3, "wifip2p"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 287
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v3, :cond_5

    .line 288
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 289
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v3, :cond_1

    .line 291
    const-string v3, "WifiP2pSettings"

    const-string v4, "Failed to set up connection with wifi p2p service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iput-object v7, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 315
    :cond_1
    :goto_1
    const-string v3, "wifi_direct_devname"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    .line 318
    const-string v3, "wifi_direct_title"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mPeersGroupCategory:Landroid/preference/PreferenceCategory;

    .line 322
    const-string v3, "wifi_direct_persistent_group"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    .line 324
    if-eqz p1, :cond_2

    const-string v3, "PEER_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 325
    const-string v3, "PEER_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 326
    .local v1, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, v1}, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    .line 328
    .end local v1           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    if-eqz p1, :cond_3

    const-string v3, "DEV_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 329
    const-string v3, "DEV_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    .line 332
    :cond_3
    new-instance v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$3;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$3;-><init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V

    iput-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mRenameListener:Landroid/content/DialogInterface$OnClickListener;

    .line 355
    new-instance v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$4;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$4;-><init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V

    iput-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 374
    new-instance v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$5;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$5;-><init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V

    iput-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 394
    new-instance v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$6;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$6;-><init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V

    iput-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

    .line 415
    new-instance v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$7;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$7;-><init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V

    iput-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mConnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 457
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->setHasOptionsMenu(Z)V

    .line 459
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f080303

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 460
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f02035a

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setIcon(I)V

    .line 463
    iget-boolean v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mCommandButtonEnabled:Z

    if-eqz v3, :cond_4

    .line 465
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    const v4, 0x1020289

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 466
    .local v2, vg:Landroid/view/ViewGroup;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 468
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    const v4, 0x1020359

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 469
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    const v4, 0x102035a

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 470
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    const v4, 0x102035b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f060080

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 473
    .local v0, buttonBar:Landroid/view/View;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    const v3, 0x7f0a047e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSearchView:Landroid/view/View;

    .line 479
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSearchView:Landroid/view/View;

    new-instance v4, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$8;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$8;-><init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    .end local v0           #buttonBar:Landroid/view/View;
    .end local v2           #vg:Landroid/view/ViewGroup;
    :cond_4
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 295
    :cond_5
    const-string v3, "WifiP2pSettings"

    const-string v4, "mWifiP2pManager is null !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f08059e

    const/4 v7, 0x0

    const v6, 0x7f08059d

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 991
    if-ne p1, v5, :cond_2

    .line 992
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 996
    :goto_0
    iget v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    if-le v1, v5, :cond_1

    .line 997
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    const v3, 0x7f080310

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    iget v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1002
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1010355

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f08030e

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1152
    :goto_2
    return-object v0

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_0

    .line 1000
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    const v3, 0x7f08030f

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1010
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 1011
    const v1, 0x7f080312

    .line 1012
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1016
    :goto_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080311

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v4, v1, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    .line 1012
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_3

    .line 1024
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 1025
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    .line 1026
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1027
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1028
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1033
    :cond_5
    :goto_4
    iput-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    .line 1034
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080309

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mRenameListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 1029
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1030
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_4

    .line 1041
    :cond_7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 1042
    const v0, 0x7f080313

    .line 1044
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 1051
    :cond_8
    const/4 v0, 0x6

    if-ne p1, v0, :cond_9

    .line 1053
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f081694

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f081658

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$13;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$13;-><init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 1083
    :cond_9
    const/4 v0, 0x7

    if-ne p1, v0, :cond_d

    .line 1084
    const-string v1, "Peer Device"

    .line 1087
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    if-eqz v0, :cond_b

    .line 1088
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1089
    iget v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v4, :cond_10

    .line 1090
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    :goto_6
    move-object v1, v0

    goto :goto_5

    :cond_a
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_6

    .line 1097
    :cond_b
    iget v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    if-le v0, v5, :cond_c

    .line 1098
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    const v3, 0x7f080310

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    iget v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1103
    :goto_7
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1010355

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f08030e

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 1101
    :cond_c
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    const v3, 0x7f08030f

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 1113
    :cond_d
    const/16 v0, 0x8

    if-ne p1, v0, :cond_e

    .line 1114
    sget-boolean v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    if-ne v0, v5, :cond_f

    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v0

    if-ne v0, v5, :cond_f

    .line 1119
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f081323

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->inviteDialog:Landroid/app/AlertDialog;

    .line 1124
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->inviteDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1145
    :cond_e
    const/4 v0, 0x5

    if-ne p1, v0, :cond_f

    .line 1147
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v0, :cond_f

    .line 1148
    new-instance v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    goto/16 :goto_2

    :cond_f
    move-object v0, v2

    .line 1152
    goto/16 :goto_2

    :cond_10
    move-object v0, v1

    goto/16 :goto_6
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 597
    iput-boolean v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->Connected:Z

    .line 598
    const-string v0, "WifiP2pSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onCreateOptionsMenu  isGroup ==   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v0, :cond_0

    .line 604
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->Connected:Z

    .line 605
    const-string v0, "WifiP2pSettings"

    const-string v3, " Connected   changeed true ++++++++++  "

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/lgesettings/Utils;->isEnglishDigitRTLLanguage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 609
    :cond_1
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mGroupOwnerEnabled:Z

    if-eqz v0, :cond_3

    .line 611
    const v0, 0x7f081694

    invoke-interface {p1, v2, v6, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget-boolean v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    sget-boolean v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 615
    sget-boolean v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    if-nez v0, :cond_2

    .line 616
    const v0, 0x7f0801ac

    invoke-interface {p1, v2, v7, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->Connected:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->Connected:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 623
    :cond_2
    const v0, 0x7f081693

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    sget-boolean v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    if-nez v0, :cond_7

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    sget-boolean v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    if-nez v0, :cond_8

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 630
    :cond_3
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mCommandButtonEnabled:Z

    if-nez v0, :cond_4

    .line 631
    const v0, 0x7f080307

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 635
    :cond_4
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/lgesettings/Utils;->isEnglishDigitRTLLanguage()Z

    move-result v0

    if-nez v0, :cond_6

    .line 636
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mGroupOwnerEnabled:Z

    if-eqz v0, :cond_6

    .line 638
    const v0, 0x7f081693

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    sget-boolean v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    if-nez v0, :cond_9

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    sget-boolean v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    if-nez v0, :cond_a

    move v0, v1

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 644
    sget-boolean v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    if-nez v0, :cond_5

    .line 645
    const v0, 0x7f0801ac

    invoke-interface {p1, v2, v7, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->Connected:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->Connected:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 652
    :cond_5
    const v0, 0x7f081694

    invoke-interface {p1, v2, v6, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget-boolean v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    sget-boolean v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 658
    :cond_6
    const/4 v0, 0x5

    const v3, 0x7f081695

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 662
    const/4 v0, 0x6

    const v3, 0x7f08164c

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget-boolean v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    sget-boolean v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 667
    const/4 v0, 0x7

    const v3, 0x7f08087f

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 670
    iput-object p1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mMenu:Landroid/view/Menu;

    .line 672
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 673
    invoke-direct {p0, v1}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateMenuGroupOwner(Z)V

    .line 674
    return-void

    :cond_7
    move v0, v2

    .line 623
    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 638
    goto :goto_2

    :cond_a
    move v0, v2

    goto :goto_3
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 577
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 578
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 579
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 580
    .local v1, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 583
    :cond_0
    return-void
.end method

.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1244
    if-nez p1, :cond_0

    .line 1245
    sput-boolean v2, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    .line 1246
    const-string v0, "WifiP2pSettings"

    const-string v1, "[madoga] group is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    const-string v0, ""

    sput-object v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->password:Ljava/lang/String;

    .line 1268
    :goto_0
    return-void

    .line 1251
    :cond_0
    iput-object p1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1253
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1254
    const-string v0, "WifiP2pSettings"

    const-string v1, "isGroup : true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    sput-boolean v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    .line 1256
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->password:Ljava/lang/String;

    .line 1257
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->ssid:Ljava/lang/String;

    .line 1258
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "password : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ssid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :goto_1
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateDevicePref()V

    .line 1267
    invoke-direct {p0, v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateMenuGroupOwner(Z)V

    goto :goto_0

    .line 1260
    :cond_1
    const-string v0, "WifiP2pSettings"

    const-string v1, "isGroup : false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    sput-boolean v2, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    .line 1262
    const-string v0, ""

    sput-object v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->password:Ljava/lang/String;

    .line 1263
    const-string v0, ""

    iput-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->ssid:Ljava/lang/String;

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x1f4

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 708
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 823
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 710
    :pswitch_0
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->startSearch()V

    move v0, v2

    .line 711
    goto :goto_0

    .line 714
    :pswitch_1
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_0

    .line 716
    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isSearch:Z

    .line 717
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isSearch:Z

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateProgressUi(Z)V

    .line 720
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 722
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$9;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$9;-><init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    move v0, v2

    .line 736
    goto :goto_0

    .line 738
    :pswitch_2
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_3

    .line 740
    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isSearch:Z

    .line 741
    iget-boolean v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isSearch:Z

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateProgressUi(Z)V

    .line 745
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    if-eqz v1, :cond_1

    .line 746
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 747
    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v4, 0x2

    if-ge v0, v4, :cond_7

    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v0

    .line 750
    :cond_2
    if-nez v1, :cond_4

    .line 752
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 753
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$10;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$10;-><init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_3
    :goto_3
    move v0, v2

    .line 786
    goto :goto_0

    .line 769
    :cond_4
    if-lez v1, :cond_3

    .line 770
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_3

    .line 790
    :pswitch_3
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_5

    .line 791
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    :cond_5
    move v0, v2

    .line 793
    goto :goto_0

    .line 797
    :pswitch_4
    const-class v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p0, v0, v1, v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    move v0, v2

    .line 799
    goto/16 :goto_0

    .line 803
    :pswitch_5
    sget-boolean v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    if-eqz v0, :cond_6

    .line 804
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    :cond_6
    move v0, v2

    .line 806
    goto/16 :goto_0

    .line 811
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 812
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pHelp;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 813
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 815
    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    .line 708
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 558
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 560
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 562
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 566
    :cond_0
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 572
    :cond_1
    return-void
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1168
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mPeersGroupCategory:Landroid/preference/PreferenceCategory;

    if-nez v0, :cond_2

    .line 1169
    const-string v0, "wifi_direct_title"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mPeersGroupCategory:Landroid/preference/PreferenceCategory;

    .line 1175
    :goto_0
    iput-object p1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 1176
    iput v6, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    .line 1177
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1180
    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mPeersGroupCategory:Landroid/preference/PreferenceCategory;

    new-instance v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1183
    iget v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v2, v5, :cond_1

    .line 1184
    iput-boolean v6, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isSearch:Z

    .line 1185
    iget-boolean v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isSearch:Z

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateProgressUi(Z)V

    .line 1188
    :cond_1
    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    goto :goto_1

    .line 1171
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mPeersGroupCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    goto :goto_0

    .line 1193
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_9

    .line 1195
    iget v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    if-nez v0, :cond_7

    .line 1196
    iput-boolean v5, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isSearch:Z

    .line 1197
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mCommandButtonEnabled:Z

    if-nez v0, :cond_6

    .line 1198
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1223
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mPeersGroupCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 1227
    :cond_5
    return-void

    .line 1200
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSearchView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1201
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    .line 1205
    :cond_7
    iput-boolean v6, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isSearch:Z

    .line 1206
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isSearch:Z

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->updateProgressUi(Z)V

    .line 1207
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mCommandButtonEnabled:Z

    if-nez v0, :cond_8

    .line 1208
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1210
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSearchView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1211
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    .line 1217
    :cond_9
    const-string v0, "WifiP2pSettings"

    const-string v1, " Invalid mMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V
    .locals 5
    .parameter "groups"

    .prologue
    .line 1230
    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1232
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getGroupList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1234
    .local v0, group:Landroid/net/wifi/p2p/WifiP2pGroup;
    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    new-instance v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pPersistentGroup;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pPersistentGroup;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 1236
    .end local v0           #group:Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v7, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 828
    instance-of v0, p2, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_8

    move-object v0, p2

    .line 829
    check-cast v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    .line 830
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v0, :cond_1

    .line 831
    invoke-virtual {p0, v6}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    .line 980
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 832
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v0, v6, :cond_2

    .line 836
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_0

    .line 842
    :cond_2
    sget-boolean v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v0

    if-ne v0, v6, :cond_3

    .line 843
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_0

    .line 845
    :cond_3
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 846
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 848
    const-string v1, "wifidirect.wps"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 850
    if-eq v1, v3, :cond_4

    .line 851
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v1, v2, Landroid/net/wifi/WpsInfo;->setup:I

    .line 866
    :goto_1
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$11;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$11;-><init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 853
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 854
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 863
    :goto_2
    const-string v1, "WifiP2pSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick : config.wps.setup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v3, v3, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 855
    :cond_5
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 856
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v5, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_2

    .line 857
    :cond_6
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 858
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v6, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_2

    .line 860
    :cond_7
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_2

    .line 880
    :cond_8
    instance-of v0, p2, Lcom/android/lgesettings/wifi/p2p/WifiP2pPersistentGroup;

    if-eqz v0, :cond_9

    move-object v0, p2

    .line 881
    check-cast v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pPersistentGroup;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/lgesettings/wifi/p2p/WifiP2pPersistentGroup;

    .line 882
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 883
    :cond_9
    instance-of v0, p2, Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 887
    sget-boolean v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->isGroup:Z

    if-nez v0, :cond_d

    .line 888
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 889
    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ge v0, v5, :cond_f

    .line 890
    iput-boolean v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->show_dialog:Z

    .line 891
    add-int/lit8 v0, v1, 0x1

    :goto_4
    move v1, v0

    goto :goto_3

    .line 894
    :cond_a
    if-nez v1, :cond_b

    iput-boolean v6, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->show_dialog:Z

    .line 898
    :cond_b
    :goto_5
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Check Condition show_dialog = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->show_dialog:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const-string v0, "wifi_direct_devname"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->show_dialog:Z

    if-ne v0, v6, :cond_0

    .line 904
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 907
    const v1, 0x7f0401b3

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 910
    const v0, 0x7f0a03f6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    .line 912
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3, v6}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 913
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 914
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 920
    :cond_c
    :goto_6
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->curDevName:Ljava/lang/String;

    .line 922
    iput-object v7, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    .line 925
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    new-array v3, v6, [Landroid/text/InputFilter;

    new-instance v4, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$Utf8ByteLengthFilter;

    const/16 v5, 0x20

    invoke-direct {v4, p0, v5}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$Utf8ByteLengthFilter;-><init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;I)V

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 928
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 930
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 932
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0803f9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0802e6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mRenameListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    const v2, 0x7f08059e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->dialog:Landroid/app/AlertDialog;

    .line 945
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 947
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 948
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    const-string v1, "com.lge.android.editmode.noEmoji"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 954
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$12;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$12;-><init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 896
    :cond_d
    iput-boolean v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->show_dialog:Z

    goto/16 :goto_5

    .line 916
    :cond_e
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 917
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_f
    move v0, v1

    goto/16 :goto_4
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    const/16 v3, 0x1234

    .line 696
    const/16 v0, 0x1234

    .line 698
    .local v0, SETTING_STYLE_ITEM_ID:I
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 699
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 700
    const-string v1, "kimyow"

    const-string v2, "SubSettings::menu.findItem(SETTING_STYLE_ITEM_ID)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 704
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 507
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 509
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 510
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 515
    :goto_0
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_2

    .line 516
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 517
    .local v0, filterLGMDM:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->addWifiPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V

    .line 519
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 520
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->checkDisallowWifiDirect(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 522
    const-string v1, "WifiP2pSettings"

    const-string v2, "MDM : onResume : finish"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 554
    .end local v0           #filterLGMDM:Landroid/content/IntentFilter;
    :cond_0
    :goto_1
    return-void

    .line 512
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->finishFragment()V

    goto :goto_0

    .line 529
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_3

    .line 540
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 546
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_0

    .line 547
    const-string v1, "WifiP2pSettings"

    const-string v2, "WifiP2pSettings onResume update: "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 550
    const-string v1, ""

    sget-object v2, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    .line 1158
    const-string v0, "PEER_STATE"

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 1161
    const-string v0, "DEV_NAME"

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    :cond_1
    return-void
.end method

.method public updateProgressUi(Z)V
    .locals 1
    .parameter "start"

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mPeersGroupCategory:Landroid/preference/PreferenceCategory;

    instance-of v0, v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;

    if-eqz v0, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mPeersGroupCategory:Landroid/preference/PreferenceCategory;

    check-cast v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->setProgress(Z)V

    .line 1474
    :cond_0
    return-void
.end method
