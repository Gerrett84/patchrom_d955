.class public Litectokyo/wiflus/SsbEnabler;
.super Ljava/lang/Object;
.source "SsbEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;,
        Litectokyo/wiflus/SsbEnabler$SdcardStateChangedReceiver;,
        Litectokyo/wiflus/SsbEnabler$WFDChangedReceiver;,
        Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;
    }
.end annotation


# static fields
.field private static mExternalSD:Z

.field private static mInternalSD:Z

.field private static mOwner:Z


# instance fields
.field private basePath:Ljava/lang/String;

.field private final defaultFilter:Landroid/content/IntentFilter;

.field private final directFilter:Landroid/content/IntentFilter;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private final mContext:Landroid/content/Context;

.field private mCurWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mDefaultActionReceiver:Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;

.field private mDirectEnabled:Z

.field private mDirectGroupConnected:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsUserStart:Z

.field private mNowNetwork:I

.field private mPassword:Ljava/lang/String;

.field private mProfileName:Ljava/lang/String;

.field private final mSdcardStateChangedReceiver:Litectokyo/wiflus/SsbEnabler$SdcardStateChangedReceiver;

.field private mSmartShareSwitchClient:Litectokyo/wiflus/service/SmartShareSwitchClient;

.field private mStandbyTime:I

.field private mState:I

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;

.field private mThumbnailPath:Ljava/lang/String;

.field private mUserP2pEnable:Z

.field private mUserWifiEnable:Z

.field private final mWFDChangedReceiver:Litectokyo/wiflus/SsbEnabler$WFDChangedReceiver;

.field private mWFDState:I

.field private mWiFiConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mWiFiDirectBroadcastReceiver:Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;

.field mWiFlusListener:Litectokyo/wiflus/service/OnWiFlusListener;

.field private mWifiHotspotManager:Litectokyo/wiflus/service/common/WifiHotspotManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private pref:Landroid/content/SharedPreferences;

.field private final sdcardFilter:Landroid/content/IntentFilter;

.field private smartShareBeamContext:Landroid/content/Context;

.field private final wfdFilter:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 108
    sput-boolean v0, Litectokyo/wiflus/SsbEnabler;->mInternalSD:Z

    .line 109
    sput-boolean v0, Litectokyo/wiflus/SsbEnabler;->mExternalSD:Z

    .line 111
    const/4 v0, 0x1

    sput-boolean v0, Litectokyo/wiflus/SsbEnabler;->mOwner:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 217
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object v1, p0, Litectokyo/wiflus/SsbEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 82
    iput-object v1, p0, Litectokyo/wiflus/SsbEnabler;->mWifiHotspotManager:Litectokyo/wiflus/service/common/WifiHotspotManager;

    .line 83
    iput-object v1, p0, Litectokyo/wiflus/SsbEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 84
    iput-object v1, p0, Litectokyo/wiflus/SsbEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 85
    iput-object v1, p0, Litectokyo/wiflus/SsbEnabler;->mWiFiConfigs:Ljava/util/List;

    .line 86
    iput-object v1, p0, Litectokyo/wiflus/SsbEnabler;->mCurWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 88
    iput-object v1, p0, Litectokyo/wiflus/SsbEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 95
    new-instance v0, Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;

    invoke-direct {v0, p0, v1}, Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;-><init>(Litectokyo/wiflus/SsbEnabler;Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;)V

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mDefaultActionReceiver:Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;

    .line 96
    new-instance v0, Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;-><init>(Litectokyo/wiflus/SsbEnabler;Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;)V

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mWiFiDirectBroadcastReceiver:Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;

    .line 97
    new-instance v0, Litectokyo/wiflus/SsbEnabler$SdcardStateChangedReceiver;

    invoke-direct {v0, p0, v1}, Litectokyo/wiflus/SsbEnabler$SdcardStateChangedReceiver;-><init>(Litectokyo/wiflus/SsbEnabler;Litectokyo/wiflus/SsbEnabler$SdcardStateChangedReceiver;)V

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSdcardStateChangedReceiver:Litectokyo/wiflus/SsbEnabler$SdcardStateChangedReceiver;

    .line 98
    new-instance v0, Litectokyo/wiflus/SsbEnabler$WFDChangedReceiver;

    invoke-direct {v0, p0, v1}, Litectokyo/wiflus/SsbEnabler$WFDChangedReceiver;-><init>(Litectokyo/wiflus/SsbEnabler;Litectokyo/wiflus/SsbEnabler$WFDChangedReceiver;)V

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mWFDChangedReceiver:Litectokyo/wiflus/SsbEnabler$WFDChangedReceiver;

    .line 100
    iput v3, p0, Litectokyo/wiflus/SsbEnabler;->mNowNetwork:I

    .line 101
    iput-boolean v2, p0, Litectokyo/wiflus/SsbEnabler;->mIsUserStart:Z

    .line 102
    iput-boolean v2, p0, Litectokyo/wiflus/SsbEnabler;->mDirectEnabled:Z

    .line 103
    iput-boolean v2, p0, Litectokyo/wiflus/SsbEnabler;->mDirectGroupConnected:Z

    .line 104
    iput-boolean v2, p0, Litectokyo/wiflus/SsbEnabler;->mUserP2pEnable:Z

    .line 105
    iput v3, p0, Litectokyo/wiflus/SsbEnabler;->mWFDState:I

    .line 106
    iput-boolean v2, p0, Litectokyo/wiflus/SsbEnabler;->mUserWifiEnable:Z

    .line 113
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mProfileName:Ljava/lang/String;

    .line 114
    const-string v0, "0000"

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mPassword:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Litectokyo/wiflus/SsbEnabler;->basePath:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Litectokyo/wiflus/SsbEnabler;->mThumbnailPath:Ljava/lang/String;

    .line 117
    const/4 v0, 0x5

    iput v0, p0, Litectokyo/wiflus/SsbEnabler;->mStandbyTime:I

    .line 119
    iput-object v1, p0, Litectokyo/wiflus/SsbEnabler;->pref:Landroid/content/SharedPreferences;

    .line 122
    iput v3, p0, Litectokyo/wiflus/SsbEnabler;->mState:I

    .line 123
    new-instance v0, Litectokyo/wiflus/SsbEnabler$1;

    invoke-direct {v0, p0}, Litectokyo/wiflus/SsbEnabler$1;-><init>(Litectokyo/wiflus/SsbEnabler;)V

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mHandler:Landroid/os/Handler;

    .line 470
    new-instance v0, Litectokyo/wiflus/SsbEnabler$2;

    invoke-direct {v0, p0}, Litectokyo/wiflus/SsbEnabler$2;-><init>(Litectokyo/wiflus/SsbEnabler;)V

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mWiFlusListener:Litectokyo/wiflus/service/OnWiFlusListener;

    .line 218
    const-string v0, "SsbEnabler"

    const-string v1, "SsbEnabler_1113"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iput-object p1, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    .line 220
    iput-object p2, p0, Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;

    .line 221
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 222
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 223
    new-instance v0, Litectokyo/wiflus/service/common/WifiHotspotManager;

    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Litectokyo/wiflus/service/common/WifiHotspotManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mWifiHotspotManager:Litectokyo/wiflus/service/common/WifiHotspotManager;

    .line 225
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->defaultFilter:Landroid/content/IntentFilter;

    .line 226
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->defaultFilter:Landroid/content/IntentFilter;

    sget-object v1, Litectokyo/wiflus/service/Broadcastor;->WIFLUS_ENGINE_STATE_CHANGED_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->defaultFilter:Landroid/content/IntentFilter;

    sget-object v1, Litectokyo/wiflus/service/Broadcastor;->WIFLUS_SERVICE_STATE_CHANGED_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->directFilter:Landroid/content/IntentFilter;

    .line 230
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->directFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->directFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->directFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->directFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->sdcardFilter:Landroid/content/IntentFilter;

    .line 236
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->sdcardFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->sdcardFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->sdcardFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->sdcardFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->sdcardFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->sdcardFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->sdcardFilter:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 244
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.systemservice.core.wfdmanager.WFD_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->wfdFilter:Landroid/content/IntentFilter;

    .line 246
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Litectokyo/wiflus/SsbEnabler;->isInstalledWiFlus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 252
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Litectokyo/wiflus/SsbEnabler;->mInternalSD:Z

    return v0
.end method

.method static synthetic access$1()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Litectokyo/wiflus/SsbEnabler;->mExternalSD:Z

    return v0
.end method

.method static synthetic access$10(Litectokyo/wiflus/SsbEnabler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 432
    invoke-direct {p0, p1}, Litectokyo/wiflus/SsbEnabler;->setSwitchChecked(Z)V

    return-void
.end method

.method static synthetic access$11(Litectokyo/wiflus/SsbEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    invoke-direct {p0}, Litectokyo/wiflus/SsbEnabler;->createClientInstance()V

    return-void
.end method

.method static synthetic access$12(Z)V
    .locals 0
    .parameter

    .prologue
    .line 108
    sput-boolean p0, Litectokyo/wiflus/SsbEnabler;->mInternalSD:Z

    return-void
.end method

.method static synthetic access$13(Z)V
    .locals 0
    .parameter

    .prologue
    .line 111
    sput-boolean p0, Litectokyo/wiflus/SsbEnabler;->mOwner:Z

    return-void
.end method

.method static synthetic access$14(Z)V
    .locals 0
    .parameter

    .prologue
    .line 109
    sput-boolean p0, Litectokyo/wiflus/SsbEnabler;->mExternalSD:Z

    return-void
.end method

.method static synthetic access$15(Litectokyo/wiflus/SsbEnabler;)I
    .locals 1
    .parameter

    .prologue
    .line 117
    iget v0, p0, Litectokyo/wiflus/SsbEnabler;->mStandbyTime:I

    return v0
.end method

.method static synthetic access$16(Litectokyo/wiflus/SsbEnabler;)I
    .locals 1
    .parameter

    .prologue
    .line 100
    iget v0, p0, Litectokyo/wiflus/SsbEnabler;->mNowNetwork:I

    return v0
.end method

.method static synthetic access$17(Litectokyo/wiflus/SsbEnabler;)Litectokyo/wiflus/service/SmartShareSwitchClient;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSmartShareSwitchClient:Litectokyo/wiflus/service/SmartShareSwitchClient;

    return-object v0
.end method

.method static synthetic access$18(Litectokyo/wiflus/SsbEnabler;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 859
    invoke-direct {p0, p1}, Litectokyo/wiflus/SsbEnabler;->min2sec(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$19(Litectokyo/wiflus/SsbEnabler;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mWiFiConfigs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Litectokyo/wiflus/SsbEnabler;)Z
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-boolean v0, p0, Litectokyo/wiflus/SsbEnabler;->mDirectEnabled:Z

    return v0
.end method

.method static synthetic access$20(Litectokyo/wiflus/SsbEnabler;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mCurWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$21(Litectokyo/wiflus/SsbEnabler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-boolean p1, p0, Litectokyo/wiflus/SsbEnabler;->mIsUserStart:Z

    return-void
.end method

.method static synthetic access$22(Litectokyo/wiflus/SsbEnabler;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    iput p1, p0, Litectokyo/wiflus/SsbEnabler;->mState:I

    return-void
.end method

.method static synthetic access$23(Litectokyo/wiflus/SsbEnabler;)I
    .locals 1
    .parameter

    .prologue
    .line 122
    iget v0, p0, Litectokyo/wiflus/SsbEnabler;->mState:I

    return v0
.end method

.method static synthetic access$24(Litectokyo/wiflus/SsbEnabler;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 807
    invoke-direct {p0, p1}, Litectokyo/wiflus/SsbEnabler;->setWiflusState(I)V

    return-void
.end method

.method static synthetic access$25(Litectokyo/wiflus/SsbEnabler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Litectokyo/wiflus/SsbEnabler;->mProfileName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$26(Litectokyo/wiflus/SsbEnabler;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$27(Litectokyo/wiflus/SsbEnabler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-boolean p1, p0, Litectokyo/wiflus/SsbEnabler;->mDirectGroupConnected:Z

    return-void
.end method

.method static synthetic access$28(Litectokyo/wiflus/SsbEnabler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-boolean p1, p0, Litectokyo/wiflus/SsbEnabler;->mDirectEnabled:Z

    return-void
.end method

.method static synthetic access$29(Litectokyo/wiflus/SsbEnabler;)Z
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-boolean v0, p0, Litectokyo/wiflus/SsbEnabler;->mUserP2pEnable:Z

    return v0
.end method

.method static synthetic access$3(Litectokyo/wiflus/SsbEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$30(Litectokyo/wiflus/SsbEnabler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-boolean p1, p0, Litectokyo/wiflus/SsbEnabler;->mUserP2pEnable:Z

    return-void
.end method

.method static synthetic access$31(Litectokyo/wiflus/SsbEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 666
    invoke-direct {p0}, Litectokyo/wiflus/SsbEnabler;->lunchEngine()V

    return-void
.end method

.method static synthetic access$32(Litectokyo/wiflus/SsbEnabler;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$33(Litectokyo/wiflus/SsbEnabler;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput p1, p0, Litectokyo/wiflus/SsbEnabler;->mWFDState:I

    return-void
.end method

.method static synthetic access$34(Litectokyo/wiflus/SsbEnabler;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$35(Litectokyo/wiflus/SsbEnabler;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Litectokyo/wiflus/SsbEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-void
.end method

.method static synthetic access$36(Litectokyo/wiflus/SsbEnabler;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$37(Litectokyo/wiflus/SsbEnabler;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$38(Litectokyo/wiflus/SsbEnabler;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1075
    invoke-direct {p0, p1}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$39(Litectokyo/wiflus/SsbEnabler;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Litectokyo/wiflus/SsbEnabler;->mWiFiConfigs:Ljava/util/List;

    return-void
.end method

.method static synthetic access$4(Litectokyo/wiflus/SsbEnabler;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$40(Litectokyo/wiflus/SsbEnabler;Landroid/net/wifi/WifiInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Litectokyo/wiflus/SsbEnabler;->mCurWifiInfo:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method static synthetic access$41(Litectokyo/wiflus/SsbEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 588
    invoke-direct {p0}, Litectokyo/wiflus/SsbEnabler;->saveNetworkState()V

    return-void
.end method

.method static synthetic access$42(Litectokyo/wiflus/SsbEnabler;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1083
    invoke-direct {p0, p1}, Litectokyo/wiflus/SsbEnabler;->setUserWifiEnable(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$43(Litectokyo/wiflus/SsbEnabler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    iput-boolean p1, p0, Litectokyo/wiflus/SsbEnabler;->mUserWifiEnable:Z

    return-void
.end method

.method static synthetic access$5(Litectokyo/wiflus/SsbEnabler;Landroid/content/Context;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1166
    invoke-direct {p0, p1}, Litectokyo/wiflus/SsbEnabler;->isInstalledWiFlus(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Litectokyo/wiflus/SsbEnabler;)Z
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-boolean v0, p0, Litectokyo/wiflus/SsbEnabler;->mUserWifiEnable:Z

    return v0
.end method

.method static synthetic access$7(Litectokyo/wiflus/SsbEnabler;)Z
    .locals 1
    .parameter

    .prologue
    .line 572
    invoke-direct {p0}, Litectokyo/wiflus/SsbEnabler;->checkWFDProcess()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8(Litectokyo/wiflus/SsbEnabler;)Z
    .locals 1
    .parameter

    .prologue
    .line 553
    invoke-direct {p0}, Litectokyo/wiflus/SsbEnabler;->hasWiFlusProcess()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Litectokyo/wiflus/SsbEnabler;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-boolean v0, p0, Litectokyo/wiflus/SsbEnabler;->mIsUserStart:Z

    return v0
.end method

.method private checkWFDProcess()Z
    .locals 3

    .prologue
    .line 573
    .line 574
    const-string v0, "SsbEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mWFDState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Litectokyo/wiflus/SsbEnabler;->mWFDState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget v0, p0, Litectokyo/wiflus/SsbEnabler;->mWFDState:I

    packed-switch v0, :pswitch_data_0

    .line 582
    const/4 v0, 0x1

    .line 585
    :goto_0
    return v0

    .line 578
    :pswitch_0
    const/4 v0, 0x0

    .line 579
    goto :goto_0

    .line 575
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkWiFlusProcess()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 526
    .line 528
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 529
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 531
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move v1, v2

    .line 533
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 549
    :goto_1
    const-string v0, "SsbEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "checkWiFlusProcess - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return v2

    .line 535
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 536
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 538
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 540
    const-string v5, "itectokyo.wiflus.service"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 543
    const-string v5, "itectokyo.wiflus"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 544
    const-string v1, "SsbEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v2, 0x1

    .line 546
    goto :goto_1

    .line 533
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private declared-synchronized createClientInstance()V
    .locals 8

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    const-string v0, "SsbEnabler"

    const-string v1, "SsbEnabler  createClientInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSmartShareSwitchClient:Litectokyo/wiflus/service/SmartShareSwitchClient;

    if-nez v0, :cond_3

    .line 443
    const/4 v0, 0x0

    .line 445
    invoke-direct {p0}, Litectokyo/wiflus/SsbEnabler;->hasWiFlusProcess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 446
    invoke-direct {p0}, Litectokyo/wiflus/SsbEnabler;->checkWiFlusProcess()Z

    move-result v0

    .line 448
    if-eqz v0, :cond_0

    .line 449
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Litectokyo/wiflus/SsbEnabler;->showDialogs(ILandroid/os/Bundle;)V

    .line 452
    :cond_0
    if-nez v0, :cond_1

    .line 453
    invoke-direct {p0}, Litectokyo/wiflus/SsbEnabler;->checkWFDProcess()Z

    move-result v0

    .line 454
    if-eqz v0, :cond_1

    .line 455
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Litectokyo/wiflus/SsbEnabler;->showDialogs(ILandroid/os/Bundle;)V

    .line 460
    :cond_1
    if-nez v0, :cond_2

    .line 461
    const-string v0, "SsbEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ssb enabler createClientInstance basepath - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler;->basePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v0, Litectokyo/wiflus/service/SmartShareSwitchClient;

    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler;->mWiFlusListener:Litectokyo/wiflus/service/OnWiFlusListener;

    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler;->mProfileName:Ljava/lang/String;

    iget-object v4, p0, Litectokyo/wiflus/SsbEnabler;->mThumbnailPath:Ljava/lang/String;

    iget-object v5, p0, Litectokyo/wiflus/SsbEnabler;->mPassword:Ljava/lang/String;

    iget-object v6, p0, Litectokyo/wiflus/SsbEnabler;->basePath:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Litectokyo/wiflus/service/SmartShareSwitchClient;-><init>(Landroid/content/Context;Litectokyo/wiflus/service/OnWiFlusListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSmartShareSwitchClient:Litectokyo/wiflus/service/SmartShareSwitchClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 465
    :cond_3
    :try_start_1
    const-string v0, "SsbEnabler"

    const-string v1, "mSmartShareSwitchClient is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getResourceItecString(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    .line 1076
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@string/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "itectokyo.wiflus.service"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getResourceItecStringArray(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    .line 1080
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@array/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "array"

    const-string v3, "itectokyo.wiflus.service"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getUserWifiEnable()Z
    .locals 4

    .prologue
    .line 1117
    .line 1118
    const-string v1, "userwifi.tmp"

    .line 1122
    sget-boolean v0, Litectokyo/wiflus/SsbEnabler;->mOwner:Z

    if-eqz v0, :cond_0

    .line 1123
    const-string v0, "/storage/emulated/0/"

    .line 1128
    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1129
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1130
    const/4 v0, 0x1

    .line 1132
    :goto_1
    return v0

    .line 1125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1132
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private hasWiFlusProcess()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 554
    .line 556
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 557
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 559
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 568
    :goto_1
    const-string v0, "SsbEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SsbEnabler  hasWiFlusProcess - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return v2

    .line 560
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 561
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 562
    const-string v4, "itectokyo.wiflus.service:wiflusservice"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    const/4 v2, 0x1

    .line 564
    goto :goto_1

    .line 559
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private isInstalledWiFlus(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1167
    .line 1169
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1171
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "itectokyo.wiflus.service"

    const-string v4, "itectokyo.wiflus.ui.wiflusapp.SettingActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1174
    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 1175
    const/4 v0, 0x1

    .line 1182
    :cond_0
    :goto_0
    return v0

    .line 1177
    :catch_0
    move-exception v1

    .line 1178
    const-string v1, "SSB"

    const-string v2, "Exception SmartShareBeam NameNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private lunchEngine()V
    .locals 2

    .prologue
    .line 667
    const-string v0, "SsbEnabler"

    const-string v1, "SsbEnabler  lunchEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-direct {p0}, Litectokyo/wiflus/SsbEnabler;->hasWiFlusProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Litectokyo/wiflus/SsbEnabler;->mIsUserStart:Z

    .line 672
    :cond_0
    invoke-direct {p0}, Litectokyo/wiflus/SsbEnabler;->createClientInstance()V

    .line 673
    return-void
.end method

.method private min2sec(I)I
    .locals 1
    .parameter "min"

    .prologue
    .line 860
    const/4 v0, 0x0

    .line 861
    .local v0, ret:I
    if-ltz p1, :cond_0

    .line 862
    mul-int/lit8 v0, p1, 0x3c

    .line 866
    :goto_0
    return v0

    .line 864
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private saveNetworkState()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x7d0

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 589
    const-string v0, "SsbEnabler"

    const-string v1, "SsbEnabler  saveNetworkState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-boolean v0, p0, Litectokyo/wiflus/SsbEnabler;->mDirectEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Litectokyo/wiflus/SsbEnabler;->hasWiFlusProcess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 592
    :cond_0
    invoke-direct {p0}, Litectokyo/wiflus/SsbEnabler;->lunchEngine()V

    .line 638
    :goto_0
    iget-boolean v0, p0, Litectokyo/wiflus/SsbEnabler;->mIsUserStart:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Litectokyo/wiflus/SsbEnabler;->mUserP2pEnable:Z

    if-eqz v0, :cond_2

    .line 639
    :cond_1
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 641
    iput v6, p0, Litectokyo/wiflus/SsbEnabler;->mNowNetwork:I

    .line 643
    const-string v0, "SsbEnabler"

    const-string v1, "WIFI ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_2
    :goto_1
    return-void

    .line 595
    :cond_3
    const-wide/16 v0, 0x0

    .line 597
    iget-object v4, p0, Litectokyo/wiflus/SsbEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    if-ne v4, v7, :cond_4

    .line 599
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mWiFiConfigs:Ljava/util/List;

    .line 600
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mCurWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 602
    iput v6, p0, Litectokyo/wiflus/SsbEnabler;->mNowNetwork:I

    .line 604
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 607
    const-string v0, "SsbEnabler"

    const-string v1, "WIFI ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v2

    .line 610
    :cond_4
    iget-object v4, p0, Litectokyo/wiflus/SsbEnabler;->mWifiHotspotManager:Litectokyo/wiflus/service/common/WifiHotspotManager;

    invoke-virtual {v4}, Litectokyo/wiflus/service/common/WifiHotspotManager;->isHotspotEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 612
    iput v8, p0, Litectokyo/wiflus/SsbEnabler;->mNowNetwork:I

    .line 614
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mWifiHotspotManager:Litectokyo/wiflus/service/common/WifiHotspotManager;

    invoke-virtual {v0, v5}, Litectokyo/wiflus/service/common/WifiHotspotManager;->setWifiApState(Z)V

    .line 617
    const-string v0, "SsbEnabler"

    const-string v1, "HOTSPOT ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :goto_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Litectokyo/wiflus/SsbEnabler$4;

    invoke-direct {v1, p0}, Litectokyo/wiflus/SsbEnabler$4;-><init>(Litectokyo/wiflus/SsbEnabler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 635
    iput-boolean v6, p0, Litectokyo/wiflus/SsbEnabler;->mUserP2pEnable:Z

    goto :goto_0

    .line 647
    :cond_5
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mWifiHotspotManager:Litectokyo/wiflus/service/common/WifiHotspotManager;

    invoke-virtual {v0}, Litectokyo/wiflus/service/common/WifiHotspotManager;->isHotspotEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 649
    iput v8, p0, Litectokyo/wiflus/SsbEnabler;->mNowNetwork:I

    .line 651
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mWifiHotspotManager:Litectokyo/wiflus/service/common/WifiHotspotManager;

    invoke-virtual {v0, v5}, Litectokyo/wiflus/service/common/WifiHotspotManager;->setWifiApState(Z)V

    .line 653
    const-string v0, "SsbEnabler"

    const-string v1, "HOTSPOT ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 657
    :cond_6
    iget-boolean v0, p0, Litectokyo/wiflus/SsbEnabler;->mDirectEnabled:Z

    if-eqz v0, :cond_2

    .line 659
    iput v7, p0, Litectokyo/wiflus/SsbEnabler;->mNowNetwork:I

    .line 661
    const-string v0, "SsbEnabler"

    const-string v1, "DIRECT ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    move-wide v2, v0

    goto :goto_2
.end method

.method private setStorage()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1034
    const-string v0, "SsbEnabler"

    const-string v1, "SsbEnabler setStorage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->pref:Landroid/content/SharedPreferences;

    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v2, "storage_key"

    invoke-direct {p0, v2}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1036
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v3, "storage_default_value"

    invoke-direct {p0, v3}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1035
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1038
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1039
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1040
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v2, "storage_key"

    invoke-direct {p0, v2}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1041
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "select_dialog_storage_value"

    invoke-direct {p0, v3}, Litectokyo/wiflus/SsbEnabler;->getResourceItecStringArray(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    .line 1040
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1042
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1044
    sget-boolean v0, Litectokyo/wiflus/SsbEnabler;->mOwner:Z

    if-eqz v0, :cond_1

    .line 1045
    const-string v0, "/storage/emulated/0/SmartShare"

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->basePath:Ljava/lang/String;

    .line 1073
    :cond_0
    :goto_0
    return-void

    .line 1047
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SmartShare"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->basePath:Ljava/lang/String;

    goto :goto_0

    .line 1051
    :cond_2
    invoke-static {}, Litectokyo/wiflus/service/ClientUtils;->isExternalSdcardExist()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1052
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "select_dialog_storage_value"

    invoke-direct {p0, v2}, Litectokyo/wiflus/SsbEnabler;->getResourceItecStringArray(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1053
    sget-boolean v0, Litectokyo/wiflus/SsbEnabler;->mOwner:Z

    if-eqz v0, :cond_3

    .line 1054
    const-string v0, "/storage/emulated/0/SmartShare"

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->basePath:Ljava/lang/String;

    goto :goto_0

    .line 1056
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SmartShare"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->basePath:Ljava/lang/String;

    goto :goto_0

    .line 1058
    :cond_4
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "select_dialog_storage_value"

    invoke-direct {p0, v2}, Litectokyo/wiflus/SsbEnabler;->getResourceItecStringArray(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Litectokyo/wiflus/service/ClientUtils;->getExternalSdcardMountedAllName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SmartShare"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->basePath:Ljava/lang/String;

    goto/16 :goto_0

    .line 1062
    :cond_5
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1063
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v2, "storage_key"

    invoke-direct {p0, v2}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1064
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "select_dialog_storage_value"

    invoke-direct {p0, v3}, Litectokyo/wiflus/SsbEnabler;->getResourceItecStringArray(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    .line 1063
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1065
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1066
    sget-boolean v0, Litectokyo/wiflus/SsbEnabler;->mOwner:Z

    if-eqz v0, :cond_6

    .line 1067
    const-string v0, "/storage/emulated/0/SmartShare"

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->basePath:Ljava/lang/String;

    goto/16 :goto_0

    .line 1069
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SmartShare"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->basePath:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private setSwitchByState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1137
    const-string v0, "SsbEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSwitchByState() - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Litectokyo/wiflus/SsbEnabler;->mInternalSD:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Litectokyo/wiflus/SsbEnabler;->mExternalSD:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Litectokyo/wiflus/SsbEnabler;->mDirectEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    sget-boolean v0, Litectokyo/wiflus/SsbEnabler;->mInternalSD:Z

    if-nez v0, :cond_0

    sget-boolean v0, Litectokyo/wiflus/SsbEnabler;->mExternalSD:Z

    if-nez v0, :cond_0

    .line 1139
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Litectokyo/wiflus/SsbEnabler$17;

    invoke-direct {v1, p0}, Litectokyo/wiflus/SsbEnabler$17;-><init>(Litectokyo/wiflus/SsbEnabler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1146
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1159
    :goto_0
    return-void

    .line 1151
    :cond_0
    invoke-direct {p0}, Litectokyo/wiflus/SsbEnabler;->hasWiFlusProcess()Z

    move-result v0

    .line 1152
    const-string v1, "SsbEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setSwitchByState isEnabledWiFlus -"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mUserWifiEnable -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Litectokyo/wiflus/SsbEnabler;->mUserWifiEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-boolean v1, p0, Litectokyo/wiflus/SsbEnabler;->mUserWifiEnable:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 1154
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Litectokyo/wiflus/SsbEnabler;->setSwitchChecked(Z)V

    .line 1155
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 1157
    :cond_1
    invoke-direct {p0, v0}, Litectokyo/wiflus/SsbEnabler;->setSwitchChecked(Z)V

    goto :goto_0
.end method

.method private setSwitchChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 433
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Litectokyo/wiflus/SsbEnabler;->mStateMachineEvent:Z

    .line 435
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Litectokyo/wiflus/SsbEnabler;->mStateMachineEvent:Z

    .line 438
    :cond_0
    return-void
.end method

.method private setUserWifiEnable(Z)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1085
    .line 1086
    const-string v2, "userwifi.tmp"

    .line 1088
    sget-boolean v1, Litectokyo/wiflus/SsbEnabler;->mOwner:Z

    if-eqz v1, :cond_0

    .line 1089
    const-string v1, "/storage/emulated/0/"

    .line 1096
    :goto_0
    if-eqz p1, :cond_1

    .line 1098
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1099
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 1100
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1101
    const-string v3, "UserWifi"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1102
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 1103
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    const/4 v0, 0x1

    .line 1112
    :goto_1
    return v0

    .line 1091
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1109
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 1105
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private setWiflusState(I)V
    .locals 4
    .parameter "state"

    .prologue
    const-wide/16 v2, 0x7d0

    const/4 v1, 0x0

    .line 808
    packed-switch p1, :pswitch_data_0

    .line 857
    :goto_0
    :pswitch_0
    return-void

    .line 811
    :pswitch_1
    iput-boolean v1, p0, Litectokyo/wiflus/SsbEnabler;->mIsUserStart:Z

    .line 813
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Litectokyo/wiflus/service/ClientUtils;->isInternalSdcardExist(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Litectokyo/wiflus/SsbEnabler;->mInternalSD:Z

    .line 814
    sget-boolean v0, Litectokyo/wiflus/SsbEnabler;->mInternalSD:Z

    if-nez v0, :cond_0

    .line 815
    sput-boolean v1, Litectokyo/wiflus/SsbEnabler;->mOwner:Z

    .line 816
    invoke-static {}, Litectokyo/wiflus/service/ClientUtils;->isInternalSdcardExist()Z

    move-result v0

    sput-boolean v0, Litectokyo/wiflus/SsbEnabler;->mInternalSD:Z

    .line 818
    :cond_0
    invoke-static {}, Litectokyo/wiflus/service/ClientUtils;->isExternalSdcardExist()Z

    move-result v0

    sput-boolean v0, Litectokyo/wiflus/SsbEnabler;->mExternalSD:Z

    .line 820
    sget-boolean v0, Litectokyo/wiflus/SsbEnabler;->mInternalSD:Z

    if-nez v0, :cond_1

    sget-boolean v0, Litectokyo/wiflus/SsbEnabler;->mExternalSD:Z

    if-eqz v0, :cond_3

    .line 821
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Litectokyo/wiflus/SsbEnabler$5;

    invoke-direct {v1, p0}, Litectokyo/wiflus/SsbEnabler$5;-><init>(Litectokyo/wiflus/SsbEnabler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 833
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSmartShareSwitchClient:Litectokyo/wiflus/service/SmartShareSwitchClient;

    goto :goto_0

    .line 829
    :cond_3
    sget-boolean v0, Litectokyo/wiflus/SsbEnabler;->mInternalSD:Z

    if-nez v0, :cond_2

    sget-boolean v0, Litectokyo/wiflus/SsbEnabler;->mExternalSD:Z

    if-nez v0, :cond_2

    .line 830
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_1

    .line 841
    :pswitch_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Litectokyo/wiflus/SsbEnabler$6;

    invoke-direct {v1, p0}, Litectokyo/wiflus/SsbEnabler$6;-><init>(Litectokyo/wiflus/SsbEnabler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 808
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 256
    const-string v0, "SsbEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SsbEnabler onCheckedChanged -"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-boolean v0, p0, Litectokyo/wiflus/SsbEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 264
    if-eqz p2, :cond_6

    .line 266
    invoke-direct {p0}, Litectokyo/wiflus/SsbEnabler;->hasWiFlusProcess()Z

    move-result v0

    if-nez v0, :cond_5

    .line 269
    invoke-static {}, Litectokyo/wiflus/service/ClientUtils;->isMultiChennelConcurrent()Z

    move-result v0

    .line 270
    if-nez v0, :cond_2

    .line 271
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 272
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 273
    const-string v1, "dialog_connection"

    const-string v2, "alert_wifi_activated"

    invoke-direct {p0, v2}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 274
    const-string v1, "dialog_connection_title"

    const-string v2, "wifi"

    invoke-direct {p0, v2}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    invoke-virtual {p0, v4, v0}, Litectokyo/wiflus/SsbEnabler;->showDialogs(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 281
    :cond_2
    if-nez v0, :cond_3

    .line 282
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mWifiHotspotManager:Litectokyo/wiflus/service/common/WifiHotspotManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mWifiHotspotManager:Litectokyo/wiflus/service/common/WifiHotspotManager;

    invoke-virtual {v0}, Litectokyo/wiflus/service/common/WifiHotspotManager;->isHotspotEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 284
    const-string v1, "dialog_connection"

    const-string v2, "alert_portable_wifihotspot"

    invoke-direct {p0, v2}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    const-string v1, "dialog_connection_title"

    const-string v2, "wifi_hotspot"

    invoke-direct {p0, v2}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    invoke-virtual {p0, v4, v0}, Litectokyo/wiflus/SsbEnabler;->showDialogs(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 291
    :cond_3
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 292
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 293
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Litectokyo/wiflus/SsbEnabler;->showDialogs(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 298
    :cond_4
    iget-boolean v0, p0, Litectokyo/wiflus/SsbEnabler;->mDirectGroupConnected:Z

    if-eqz v0, :cond_5

    .line 299
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 300
    const-string v1, "dialog_connection"

    const-string v2, "alert_wifidirect_activated"

    invoke-direct {p0, v2}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    const-string v1, "dialog_connection_title"

    const-string v2, "wifi_direct"

    invoke-direct {p0, v2}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 302
    invoke-virtual {p0, v4, v0}, Litectokyo/wiflus/SsbEnabler;->showDialogs(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 316
    :cond_5
    invoke-direct {p0}, Litectokyo/wiflus/SsbEnabler;->saveNetworkState()V

    goto/16 :goto_0

    .line 319
    :cond_6
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSmartShareSwitchClient:Litectokyo/wiflus/service/SmartShareSwitchClient;

    if-eqz v0, :cond_7

    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSmartShareSwitchClient:Litectokyo/wiflus/service/SmartShareSwitchClient;

    invoke-virtual {v0}, Litectokyo/wiflus/service/SmartShareSwitchClient;->isBinded()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 320
    const-string v0, "SsbEnabler"

    const-string v1, "mSmartShareSwitchClient.shutdownNow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSmartShareSwitchClient:Litectokyo/wiflus/service/SmartShareSwitchClient;

    invoke-virtual {v0}, Litectokyo/wiflus/service/SmartShareSwitchClient;->shutdownNow()Z

    .line 324
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSmartShareSwitchClient:Litectokyo/wiflus/service/SmartShareSwitchClient;

    .line 326
    iput-boolean v3, p0, Litectokyo/wiflus/SsbEnabler;->mIsUserStart:Z

    .line 327
    iget-boolean v0, p0, Litectokyo/wiflus/SsbEnabler;->mUserWifiEnable:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Litectokyo/wiflus/SsbEnabler;->checkWFDProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    invoke-direct {p0, v3}, Litectokyo/wiflus/SsbEnabler;->setUserWifiEnable(Z)Z

    .line 329
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 330
    iput-boolean v3, p0, Litectokyo/wiflus/SsbEnabler;->mUserWifiEnable:Z

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 383
    const-string v0, "SsbEnabler"

    const-string v1, "SsbEnabler pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->mDefaultActionReceiver:Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 386
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->mWiFiDirectBroadcastReceiver:Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 387
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->mSdcardStateChangedReceiver:Litectokyo/wiflus/SsbEnabler$SdcardStateChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 388
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->mWFDChangedReceiver:Litectokyo/wiflus/SsbEnabler$WFDChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 389
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 391
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSmartShareSwitchClient:Litectokyo/wiflus/service/SmartShareSwitchClient;

    if-eqz v0, :cond_0

    .line 392
    const-string v0, "SsbEnabler"

    const-string v1, "mSmartShareSwitchClient.close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSmartShareSwitchClient:Litectokyo/wiflus/service/SmartShareSwitchClient;

    invoke-virtual {v0}, Litectokyo/wiflus/service/SmartShareSwitchClient;->close()Z

    .line 394
    iput-object v3, p0, Litectokyo/wiflus/SsbEnabler;->mSmartShareSwitchClient:Litectokyo/wiflus/service/SmartShareSwitchClient;

    .line 396
    :cond_0
    iput-boolean v2, p0, Litectokyo/wiflus/SsbEnabler;->mIsUserStart:Z

    .line 399
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Litectokyo/wiflus/SsbEnabler;->hasWiFlusProcess()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Litectokyo/wiflus/SsbEnabler;->getUserWifiEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    invoke-direct {p0, v2}, Litectokyo/wiflus/SsbEnabler;->setUserWifiEnable(Z)Z

    .line 401
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 402
    iput-boolean v2, p0, Litectokyo/wiflus/SsbEnabler;->mUserWifiEnable:Z

    .line 404
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 336
    const-string v0, "SsbEnabler"

    const-string v1, "SsbEnabler resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->mWiFiDirectBroadcastReceiver:Litectokyo/wiflus/SsbEnabler$WiFiDirectBroadcastReceiver;

    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler;->directFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 339
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->mDefaultActionReceiver:Litectokyo/wiflus/SsbEnabler$DefaultActionReceiver;

    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler;->defaultFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 340
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->mSdcardStateChangedReceiver:Litectokyo/wiflus/SsbEnabler$SdcardStateChangedReceiver;

    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler;->sdcardFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 341
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->mWFDChangedReceiver:Litectokyo/wiflus/SsbEnabler$WFDChangedReceiver;

    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler;->wfdFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_0

    .line 343
    const-string v1, "wfd_state"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Litectokyo/wiflus/SsbEnabler;->mWFDState:I

    .line 346
    :cond_0
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Litectokyo/wiflus/service/ClientUtils;->isInternalSdcardExist(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Litectokyo/wiflus/SsbEnabler;->mInternalSD:Z

    .line 347
    sget-boolean v0, Litectokyo/wiflus/SsbEnabler;->mInternalSD:Z

    if-nez v0, :cond_1

    .line 348
    sput-boolean v3, Litectokyo/wiflus/SsbEnabler;->mOwner:Z

    .line 349
    invoke-static {}, Litectokyo/wiflus/service/ClientUtils;->isInternalSdcardExist()Z

    move-result v0

    sput-boolean v0, Litectokyo/wiflus/SsbEnabler;->mInternalSD:Z

    .line 351
    :cond_1
    invoke-static {}, Litectokyo/wiflus/service/ClientUtils;->isExternalSdcardExist()Z

    move-result v0

    sput-boolean v0, Litectokyo/wiflus/SsbEnabler;->mExternalSD:Z

    .line 353
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Litectokyo/wiflus/SsbEnabler;->isInstalledWiFlus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 354
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 359
    :goto_0
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 363
    :try_start_0
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    const-string v1, "itectokyo.wiflus.service"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_1
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v1, "WIFLUS"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->pref:Landroid/content/SharedPreferences;

    .line 369
    invoke-direct {p0}, Litectokyo/wiflus/SsbEnabler;->getUserWifiEnable()Z

    move-result v0

    iput-boolean v0, p0, Litectokyo/wiflus/SsbEnabler;->mUserWifiEnable:Z

    .line 371
    sget-boolean v0, Litectokyo/wiflus/SsbEnabler;->mInternalSD:Z

    if-nez v0, :cond_2

    sget-boolean v0, Litectokyo/wiflus/SsbEnabler;->mExternalSD:Z

    if-eqz v0, :cond_3

    .line 372
    :cond_2
    invoke-direct {p0}, Litectokyo/wiflus/SsbEnabler;->setStorage()V

    .line 374
    :cond_3
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->pref:Landroid/content/SharedPreferences;

    const-string v1, "wiflus_shutdown"

    const-string v2, "5"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Litectokyo/wiflus/SsbEnabler;->mStandbyTime:I

    .line 375
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSmartShareSwitchClient:Litectokyo/wiflus/service/SmartShareSwitchClient;

    if-eqz v0, :cond_5

    .line 376
    const-string v0, "SsbEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler;->mSmartShareSwitchClient:Litectokyo/wiflus/service/SmartShareSwitchClient;

    invoke-virtual {v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->isBinded()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<<<isBinded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_2
    return-void

    .line 356
    :cond_4
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 378
    :cond_5
    const-string v0, "SsbEnabler"

    const-string v1, "mSmartShareSwitchClient is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .parameter

    .prologue
    .line 407
    const-string v0, "SsbEnabler"

    const-string v1, "SsbEnabler setSwitch()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_1

    .line 409
    const-string v0, "SsbEnabler"

    const-string v1, "mSwitch == switch_"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 414
    iput-object p1, p0, Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;

    .line 415
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 417
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;

    new-instance v1, Litectokyo/wiflus/SsbEnabler$3;

    invoke-direct {v1, p0}, Litectokyo/wiflus/SsbEnabler$3;-><init>(Litectokyo/wiflus/SsbEnabler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget v0, p0, Litectokyo/wiflus/SsbEnabler;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Litectokyo/wiflus/SsbEnabler;->checkWFDProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    invoke-direct {p0}, Litectokyo/wiflus/SsbEnabler;->setSwitchByState()V

    goto :goto_0
.end method

.method protected showDialogs(ILandroid/os/Bundle;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x2

    const v4, 0x1010355

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 876
    const-string v0, "SsbEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SsbEnabler showDialogs - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    packed-switch p1, :pswitch_data_0

    .line 1031
    :goto_0
    return-void

    .line 880
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 881
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 882
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v2, "dialog_title_note"

    invoke-direct {p0, v2}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 883
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v2, "dialog_running_other_connect"

    invoke-direct {p0, v2}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 884
    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v4, "smartshare_app_name"

    invoke-direct {p0, v4}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 885
    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v4, "app_name"

    invoke-direct {p0, v4}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 886
    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v4, "app_name"

    invoke-direct {p0, v4}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 883
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 887
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v2, "btn_ok"

    invoke-direct {p0, v2}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Litectokyo/wiflus/SsbEnabler$7;

    invoke-direct {v2, p0}, Litectokyo/wiflus/SsbEnabler$7;-><init>(Litectokyo/wiflus/SsbEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 894
    new-instance v1, Litectokyo/wiflus/SsbEnabler$8;

    invoke-direct {v1, p0}, Litectokyo/wiflus/SsbEnabler$8;-><init>(Litectokyo/wiflus/SsbEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 902
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 880
    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 907
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 908
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 909
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v2, "dialog_title_note"

    invoke-direct {p0, v2}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 910
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v2, "dialog_running_other_connect"

    invoke-direct {p0, v2}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 911
    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v4, "smartshare_app_name"

    invoke-direct {p0, v4}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 912
    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v4, "miracast_app_name"

    invoke-direct {p0, v4}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 913
    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v4, "miracast_app_name"

    invoke-direct {p0, v4}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 910
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 914
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v2, "btn_ok"

    invoke-direct {p0, v2}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Litectokyo/wiflus/SsbEnabler$9;

    invoke-direct {v2, p0}, Litectokyo/wiflus/SsbEnabler$9;-><init>(Litectokyo/wiflus/SsbEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 925
    new-instance v1, Litectokyo/wiflus/SsbEnabler$10;

    invoke-direct {v1, p0}, Litectokyo/wiflus/SsbEnabler$10;-><init>(Litectokyo/wiflus/SsbEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 936
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 907
    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 941
    :pswitch_2
    const-string v0, "dialog_connection"

    const-string v1, "alert_wifi_activated"

    invoke-direct {p0, v1}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 942
    const-string v1, "dialog_connection_title"

    const-string v2, "wifi"

    invoke-direct {p0, v2}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 944
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 945
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 946
    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v4, "msg_activated"

    invoke-direct {p0, v4}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 947
    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v5, "smartshare_app_name"

    invoke-direct {p0, v5}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 948
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v3, "btn_yes"

    invoke-direct {p0, v3}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Litectokyo/wiflus/SsbEnabler$11;

    invoke-direct {v3, p0, v1}, Litectokyo/wiflus/SsbEnabler$11;-><init>(Litectokyo/wiflus/SsbEnabler;I)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 966
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v2, "btn_no"

    invoke-direct {p0, v2}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Litectokyo/wiflus/SsbEnabler$12;

    invoke-direct {v2, p0}, Litectokyo/wiflus/SsbEnabler$12;-><init>(Litectokyo/wiflus/SsbEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 974
    new-instance v1, Litectokyo/wiflus/SsbEnabler$13;

    invoke-direct {v1, p0}, Litectokyo/wiflus/SsbEnabler$13;-><init>(Litectokyo/wiflus/SsbEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 981
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 944
    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 982
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 987
    :pswitch_3
    const-string v0, "wifi_start_dialog2"

    invoke-direct {p0, v0}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v0

    .line 988
    const-string v1, "wifi_start_dialog1"

    invoke-direct {p0, v1}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v1

    .line 989
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 990
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 991
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 992
    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 993
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 994
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v2, "btn_yes"

    invoke-direct {p0, v2}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Litectokyo/wiflus/SsbEnabler$14;

    invoke-direct {v2, p0}, Litectokyo/wiflus/SsbEnabler$14;-><init>(Litectokyo/wiflus/SsbEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1008
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler;->smartShareBeamContext:Landroid/content/Context;

    const-string v2, "btn_no"

    invoke-direct {p0, v2}, Litectokyo/wiflus/SsbEnabler;->getResourceItecString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Litectokyo/wiflus/SsbEnabler$15;

    invoke-direct {v2, p0}, Litectokyo/wiflus/SsbEnabler$15;-><init>(Litectokyo/wiflus/SsbEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1016
    new-instance v1, Litectokyo/wiflus/SsbEnabler$16;

    invoke-direct {v1, p0}, Litectokyo/wiflus/SsbEnabler$16;-><init>(Litectokyo/wiflus/SsbEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1023
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 990
    iput-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1024
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 877
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
