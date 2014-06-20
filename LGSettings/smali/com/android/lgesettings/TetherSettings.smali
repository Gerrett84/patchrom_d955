.class public Lcom/android/lgesettings/TetherSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;,
        Lcom/android/lgesettings/TetherSettings$HotspotClient;,
        Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;,
        Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;
    }
.end annotation


# static fields
.field private static final CONFIG_SUBTEXT:I


# instance fields
.field private final REQUEST_FIRST_TIME_USE:I

.field private actionBarSwitch:Landroid/widget/Switch;

.field alertDialogHandler:Landroid/content/DialogInterface$OnClickListener;

.field private alertDialogView:Landroid/view/View;

.field private hotSpotTimeoutPreference:Landroid/preference/ListPreference;

.field private loopCounting:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mAlertDialogView:Landroid/view/View;

.field private mAttentionView:Landroid/webkit/WebView;

.field private mAvailableTetherNum:I

.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/CheckBoxPreference;

.field private mCheckingMobileData:Z

.field private mClientDevices:Lcom/android/lgesettings/wifi/TetherProgressCategory;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDCMAlertDialog:Landroid/app/AlertDialog;

.field private mDefaultTether:I

.field private mDialog:Lcom/android/lgesettings/wifi/WifiApDialog;

.field private mDoNotShowAgain:Z

.field private mEnableUnicode:Landroid/preference/CheckBoxPreference;

.field private mEnableWifiAp:Landroid/preference/CheckBoxPreference;

.field private mEntry:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mInit:Z

.field private mIsNoSimAlert:Z

.field private mIscheckedTethering:Z

.field private final mLGMDMReceiver:Landroid/content/BroadcastReceiver;

.field private mMassStorageActive:Z

.field private mPassword:Landroid/widget/EditText;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSecurityType:[Ljava/lang/String;

.field private mSimEnabled:Z

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetherHelp:Landroid/preference/PreferenceScreen;

.field private mTimeValue:I

.field private mTimer:Ljava/util/Timer;

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/CheckBoxPreference;

.field private mView:Landroid/webkit/WebView;

.field private mWifiApEnabler:Lcom/android/lgesettings/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiHotspotStatus:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private originTimeoutValue:I

.field pwDialogHandler:Landroid/content/DialogInterface$OnClickListener;

.field private wifiErrorDialog:Landroid/app/AlertDialog$Builder;

.field private wifiErrorDlog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 171
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f0812ad

    :goto_0
    sput v0, Lcom/android/lgesettings/TetherSettings;->CONFIG_SUBTEXT:I

    return-void

    :cond_1
    const v0, 0x7f08031a

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 154
    iput v1, p0, Lcom/android/lgesettings/TetherSettings;->mIndex:I

    .line 155
    iput v1, p0, Lcom/android/lgesettings/TetherSettings;->mTimeValue:I

    .line 168
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 178
    iput-object v2, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 190
    iput v1, p0, Lcom/android/lgesettings/TetherSettings;->mAvailableTetherNum:I

    .line 191
    iput v1, p0, Lcom/android/lgesettings/TetherSettings;->mDefaultTether:I

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/TetherSettings;->mTetherChoice:I

    .line 208
    iput-boolean v1, p0, Lcom/android/lgesettings/TetherSettings;->mInit:Z

    .line 209
    iput-boolean v1, p0, Lcom/android/lgesettings/TetherSettings;->mDoNotShowAgain:Z

    .line 214
    iput-object v2, p0, Lcom/android/lgesettings/TetherSettings;->mClientDevices:Lcom/android/lgesettings/wifi/TetherProgressCategory;

    .line 220
    const v0, 0x927c0

    iput v0, p0, Lcom/android/lgesettings/TetherSettings;->originTimeoutValue:I

    .line 221
    iput-boolean v1, p0, Lcom/android/lgesettings/TetherSettings;->mIscheckedTethering:Z

    .line 244
    iput-boolean v1, p0, Lcom/android/lgesettings/TetherSettings;->mIsNoSimAlert:Z

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/TetherSettings;->mSimEnabled:Z

    .line 246
    iput-boolean v1, p0, Lcom/android/lgesettings/TetherSettings;->mCheckingMobileData:Z

    .line 251
    const/16 v0, 0x372

    iput v0, p0, Lcom/android/lgesettings/TetherSettings;->REQUEST_FIRST_TIME_USE:I

    .line 574
    new-instance v0, Lcom/android/lgesettings/TetherSettings$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/TetherSettings$2;-><init>(Lcom/android/lgesettings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 1316
    new-instance v0, Lcom/android/lgesettings/TetherSettings$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/TetherSettings$4;-><init>(Lcom/android/lgesettings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->pwDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    .line 1339
    new-instance v0, Lcom/android/lgesettings/TetherSettings$5;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/TetherSettings$5;-><init>(Lcom/android/lgesettings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->alertDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    .line 2029
    new-instance v0, Lcom/android/lgesettings/TetherSettings$8;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/TetherSettings$8;-><init>(Lcom/android/lgesettings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    .line 2273
    new-instance v0, Lcom/android/lgesettings/TetherSettings$11;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/TetherSettings$11;-><init>(Lcom/android/lgesettings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/TetherSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/lgesettings/TetherSettings;->setUsbTethering(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/lgesettings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/lgesettings/TetherSettings;->updateClientList()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/lgesettings/TetherSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/lgesettings/TetherSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/lgesettings/TetherSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/lgesettings/TetherSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/lgesettings/TetherSettings;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/lgesettings/TetherSettings;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/lgesettings/TetherSettings;->isTmusSimCard(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/lgesettings/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/lgesettings/TetherSettings;->setUpsellTimer()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/lgesettings/TetherSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/lgesettings/TetherSettings;->startUpsell(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/lgesettings/TetherSettings;)Lcom/android/lgesettings/wifi/WifiApEnabler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mWifiApEnabler:Lcom/android/lgesettings/wifi/WifiApEnabler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/TetherSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/lgesettings/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/lgesettings/TetherSettings;->getbFirstTimeUse()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/lgesettings/TetherSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/lgesettings/TetherSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/lgesettings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/lgesettings/TetherSettings;->mDoNotShowAgain:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/lgesettings/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/lgesettings/TetherSettings;->updateTetherEnable()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/lgesettings/TetherSettings;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/lgesettings/TetherSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Lcom/android/lgesettings/TetherSettings;->loopCounting:I

    return v0
.end method

.method static synthetic access$2708(Lcom/android/lgesettings/TetherSettings;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Lcom/android/lgesettings/TetherSettings;->loopCounting:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/lgesettings/TetherSettings;->loopCounting:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/lgesettings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/lgesettings/TetherSettings;->mInit:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/lgesettings/TetherSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/lgesettings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/lgesettings/TetherSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mDCMAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/lgesettings/TetherSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/lgesettings/TetherSettings;->mDCMAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/lgesettings/TetherSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/lgesettings/TetherSettings;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/lgesettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/lgesettings/TetherSettings;)Lcom/android/lgesettings/wifi/WifiApDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiApDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/android/lgesettings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/lgesettings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/lgesettings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/lgesettings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/lgesettings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method private checkFormValid(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1838
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    .line 1840
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1841
    const-string v3, "[\\uAC00-\\uD7A3\\u1100-\\u11F9\\u3131-\\u318E]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1844
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    if-eqz v3, :cond_1

    .line 1845
    const/4 v0, 0x1

    .line 1848
    :cond_0
    return v0

    .line 1840
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ifaces"
    .parameter "regexes"

    .prologue
    .line 1824
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 1825
    .local v4, iface:Ljava/lang/String;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 1826
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1831
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 1825
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1824
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 1831
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private getSettingInt(Ljava/lang/String;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2464
    const-string v0, "TetherSettings"

    const-string v1, "CSC_A getSettingInt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "first_time_use_Settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2466
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getbFirstTimeUse()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2448
    const-string v1, "wifi_help_ask"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/TetherSettings;->getSettingInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 2456
    :goto_0
    const-string v1, "TetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getbFirstTimeUse() return = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    return v0

    .line 2454
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initWifiTethering()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 525
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 526
    .local v0, activity:Landroid/app/Activity;
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 527
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 532
    const-string v3, "TetherSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initWifiTethering() is called, Operator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const-string v3, "TLS"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 536
    const-string v3, "TetherSettings"

    const-string v4, "SettingsEx.Secure.WIFI_AP_DEFAULT_STATUS = wifi_ap_default_status"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v3, "TetherSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings.Secure.getInt(getContentResolver(), SettingsEx.Secure.WIFI_AP_DEFAULT_STATUS, 1)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_ap_default_status"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ssid_update_done"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 544
    const-string v3, "TetherSettings"

    const-string v4, "  calling ChangeDefaultHotspotSSID()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->ChangeDefaultHotspotSSID()V

    .line 546
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 557
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 559
    const-string v3, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 561
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_2

    .line 562
    const v3, 0x1040434

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    sget v4, Lcom/android/lgesettings/TetherSettings;->CONFIG_SUBTEXT:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/android/lgesettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v7

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 572
    .end local v2           #s:Ljava/lang/String;
    :goto_1
    return-void

    .line 550
    :cond_1
    const-string v3, "TetherSettings"

    const-string v4, "Skip calling ChangeDefaultHotspotSSID()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 567
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 568
    .local v1, index:I
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    sget v4, Lcom/android/lgesettings/TetherSettings;->CONFIG_SUBTEXT:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/lgesettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v1

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private isTmusSimCard(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2517
    if-nez p1, :cond_1

    .line 2518
    const-string v1, "TetherSettings"

    const-string v2, "MCC + MNC : null!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    :cond_0
    :goto_0
    return v0

    .line 2521
    :cond_1
    const-string v1, "TetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MCC + MNC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    const-string v1, "45000"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "00101"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310160"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310200"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310210"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310220"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310230"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310240"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310250"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310260"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310270"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310300"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310310"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310490"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310530"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310580"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310590"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310640"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310660"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310800"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2527
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private setBatteryPopup(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2479
    const-string v0, "TetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBatteryPopup( ), mDoNotShowAgain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/lgesettings/TetherSettings;->mDoNotShowAgain:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2481
    iget-boolean v1, p0, Lcom/android/lgesettings/TetherSettings;->mDoNotShowAgain:Z

    if-nez v1, :cond_0

    const-string v1, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2482
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2483
    const v1, 0x7f040195

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialogView:Landroid/view/View;

    .line 2485
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f081647

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080015

    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings;->alertDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080016

    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings;->alertDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 2493
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialogView:Landroid/view/View;

    const v1, 0x7f0a002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2495
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 2496
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2511
    :goto_0
    return-void

    .line 2497
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/lgesettings/TetherSettings;->isTmusSimCard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2498
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 2499
    invoke-direct {p0}, Lcom/android/lgesettings/TetherSettings;->setUpsellTimer()V

    goto :goto_0

    .line 2501
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/TetherSettings;->startUpsell(I)V

    goto :goto_0

    .line 2504
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mWifiApEnabler:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method private setUpsellTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x1f4

    .line 2324
    const-string v0, "TetherSettings"

    const-string v1, "setUpsellTimer( )"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/TetherSettings;->loopCounting:I

    .line 2327
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mHandler:Landroid/os/Handler;

    .line 2328
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2329
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mTimer:Ljava/util/Timer;

    .line 2332
    :cond_0
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mTimer:Ljava/util/Timer;

    .line 2333
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/lgesettings/TetherSettings$12;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/TetherSettings$12;-><init>(Lcom/android/lgesettings/TetherSettings;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 2370
    return-void
.end method

.method private setUsbTethering(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1714
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1716
    if-nez v0, :cond_0

    .line 1730
    :goto_0
    return-void

    .line 1720
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setTetherStatus(Landroid/content/Context;Z)V

    .line 1721
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1722
    const-string v0, "TetherSettings"

    const-string v1, "[AUTORUN] ============ USB Tethering ERROR !! ============"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1724
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0804fa

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 1727
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1728
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1729
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mTetherChanged:Z

    goto :goto_0
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1622
    iput p1, p0, Lcom/android/lgesettings/TetherSettings;->mTetherChoice:I

    .line 1623
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->isProvisioningNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1624
    const-string v0, "TetherSettings"

    const-string v1, "[TetherSettings] Make Intent for Entitlement"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1628
    const-string v1, "US"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1629
    iget v1, p0, Lcom/android/lgesettings/TetherSettings;->mTetherChoice:I

    if-nez v1, :cond_0

    .line 1630
    const-string v1, "Tether_Type"

    const-string v2, "WIFI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1637
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1638
    invoke-virtual {p0, v0, v4}, Lcom/android/lgesettings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1642
    :goto_0
    return-void

    .line 1640
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/TetherSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1668
    iget v0, p0, Lcom/android/lgesettings/TetherSettings;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    .line 1711
    :goto_0
    return-void

    .line 1672
    :pswitch_0
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1674
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->CreateWarningDialogForDCM()Z

    goto :goto_0

    .line 1676
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mWifiApEnabler:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 1683
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1684
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1685
    iput-boolean v3, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothEnableForTether:Z

    .line 1686
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1687
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1688
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1690
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 1691
    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 1692
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f080fe9

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 1696
    :pswitch_2
    new-instance v0, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;-><init>(Lcom/android/lgesettings/TetherSettings;Lcom/android/lgesettings/TetherSettings$1;)V

    .line 1697
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1699
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "UsbDCMPopupFragment"

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1703
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "UsbDCMPopupFragment"

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1668
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private startUpsell(I)V
    .locals 3
    .parameter

    .prologue
    .line 2433
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2434
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 2435
    const-string v1, "Tethering_Type"

    const-string v2, "USB"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2440
    :cond_0
    :goto_0
    const-string v1, "com.lge.upsell"

    const-string v2, "com.lge.upsell.DataService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2441
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2442
    return-void

    .line 2437
    :cond_1
    if-nez p1, :cond_0

    .line 2438
    const-string v1, "Tethering_Type"

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1149
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/MDMSettingsAdapter;->setBluetoothTetheringMenu(Landroid/preference/TwoStatePreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1206
    :cond_0
    :goto_0
    return-void

    .line 1156
    :cond_1
    array-length v5, p3

    move v4, v3

    move v2, v3

    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v6, p3, v4

    .line 1157
    iget-object v7, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v8, v7

    move v0, v2

    move v2, v3

    :goto_2
    if-ge v2, v8, :cond_3

    aget-object v9, v7, v2

    .line 1158
    invoke-virtual {v6, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v0, v1

    .line 1157
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1156
    :cond_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_1

    .line 1162
    :cond_4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1163
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    .line 1164
    const/16 v0, 0xd

    if-ne v4, v0, :cond_5

    .line 1165
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1166
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f080290

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 1167
    :cond_5
    const/16 v0, 0xb

    if-ne v4, v0, :cond_6

    .line 1168
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1169
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 1171
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 1172
    const/16 v5, 0xc

    if-ne v4, v5, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1174
    iget-object v4, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1175
    iget-object v4, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1176
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1177
    if-le v0, v1, :cond_7

    .line 1178
    const v2, 0x7f080feb

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {p0, v2, v4}, Lcom/android/lgesettings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1181
    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1196
    :goto_3
    sget-boolean v0, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v0, :cond_0

    .line 1197
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tethering_blocked"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1200
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1201
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 1182
    :cond_7
    if-ne v0, v1, :cond_8

    .line 1183
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f080fea

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_3

    .line 1185
    :cond_8
    if-eqz v2, :cond_9

    .line 1186
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f080500

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_3

    .line 1188
    :cond_9
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f080fe9

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_3

    .line 1191
    :cond_a
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1192
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1193
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f081037

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_3
.end method

.method private updateClientList()V
    .locals 5

    .prologue
    .line 1953
    const-string v0, "TetherSettings"

    const-string v1, "[TetherSettings]    updateClientList "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->doesSupportHotspotList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1957
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWifiSapIfaceIface()Lcom/lge/wifi_iface/WifiSapIfaceIface;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/wifi_iface/WifiSapIfaceIface;->getAllAssocMacListATT()Ljava/util/List;

    move-result-object v0

    .line 1958
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mClientDevices:Lcom/android/lgesettings/wifi/TetherProgressCategory;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/TetherProgressCategory;->removeAll()V

    .line 1960
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 1961
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 1977
    :cond_0
    :goto_0
    return-void

    .line 1965
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1966
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 1967
    const-string v2, "TetherSettings"

    const-string v3, "[TetherSettings]    Add Preference "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings;->mClientDevices:Lcom/android/lgesettings/wifi/TetherProgressCategory;

    new-instance v3, Lcom/android/lgesettings/TetherSettings$HotspotClient;

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0}, Lcom/android/lgesettings/TetherSettings$HotspotClient;-><init>(Lcom/android/lgesettings/TetherSettings;Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/wifi/TetherProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 1971
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mClientDevices:Lcom/android/lgesettings/wifi/TetherProgressCategory;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/TetherProgressCategory;->getPreferenceCount()I

    move-result v0

    .line 1972
    const-string v1, "TetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TetherSettings]    Preference Count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 1029
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1032
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 1033
    .local v0, available:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 1034
    .local v3, tethered:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 1035
    .local v2, errored:[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/lgesettings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1036
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 1040
    invoke-direct {p0, p1, p2, p3}, Lcom/android/lgesettings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1041
    invoke-direct {p0, p1, p2, p3}, Lcom/android/lgesettings/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1042
    return-void
.end method

.method private updateTetherEnable()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2283
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 2284
    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    .line 2285
    iput-boolean v0, p0, Lcom/android/lgesettings/TetherSettings;->mSimEnabled:Z

    .line 2286
    iget-boolean v3, p0, Lcom/android/lgesettings/TetherSettings;->mIsNoSimAlert:Z

    if-nez v3, :cond_0

    .line 2287
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/TetherSettings;->showDialog(I)V

    .line 2289
    iput-boolean v1, p0, Lcom/android/lgesettings/TetherSettings;->mIsNoSimAlert:Z

    .line 2292
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 2293
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2295
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 2296
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2299
    :cond_2
    const-string v0, "TetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentSimStatus : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    const-string v0, "TetherSettings"

    const-string v1, "TelephonyManager.SIM_STATE_READY : 5"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    const-string v0, "TetherSettings"

    const-string v1, "Tether : false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    :goto_0
    return-void

    .line 2304
    :cond_3
    iput-boolean v1, p0, Lcom/android/lgesettings/TetherSettings;->mSimEnabled:Z

    .line 2306
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 2307
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    .line 2309
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2312
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_5

    .line 2313
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/MDMSettingsAdapter;->setWifiApEnablerMenu(Landroid/preference/Preference;)Z

    .line 2318
    :cond_5
    invoke-direct {p0}, Lcom/android/lgesettings/TetherSettings;->updateState()V

    .line 2319
    const-string v0, "TetherSettings"

    const-string v1, "Tether : true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateTimeoutSummary()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1212
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tethering_time"

    const v3, 0x493e0

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/TetherSettings;->mIndex:I

    .line 1217
    :cond_0
    const-string v0, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1218
    :cond_1
    iget v0, p0, Lcom/android/lgesettings/TetherSettings;->mIndex:I

    if-ne v0, v4, :cond_2

    .line 1219
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/lgesettings/TetherSettings;->mIndex:I

    .line 1222
    :cond_2
    iget v0, p0, Lcom/android/lgesettings/TetherSettings;->mIndex:I

    if-nez v0, :cond_3

    .line 1223
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    const v1, 0x7f0813bc

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1245
    :goto_0
    return-void

    .line 1225
    :cond_3
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1226
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    const v1, 0x7f0812c3

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/lgesettings/TetherSettings;->mTimeValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1228
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    const v1, 0x7f0813bb

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/lgesettings/TetherSettings;->mTimeValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1242
    :catch_0
    move-exception v0

    .line 1243
    const-string v1, "TetherSettings"

    const-string v2, "NumberFormatException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1232
    :cond_5
    :try_start_1
    iget v0, p0, Lcom/android/lgesettings/TetherSettings;->mIndex:I

    if-ne v0, v4, :cond_6

    .line 1233
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/TetherSettings;->mIndex:I

    .line 1236
    :cond_6
    iget v0, p0, Lcom/android/lgesettings/TetherSettings;->mIndex:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 1237
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    const v1, 0x7f0813bc

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1239
    :cond_7
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    const v1, 0x7f0813bb

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/lgesettings/TetherSettings;->mTimeValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1047
    const-string v0, "TetherSettings"

    const-string v1, "[AUTORUN] : TetherSettings updateUsbState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1051
    iget-boolean v1, p0, Lcom/android/lgesettings/TetherSettings;->mUsbConnected:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/lgesettings/TetherSettings;->mMassStorageActive:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 1052
    :goto_0
    const/4 v6, 0x0

    .line 1053
    array-length v5, p1

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v7, p1, v4

    .line 1054
    iget-object v8, p0, Lcom/android/lgesettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v9, v8

    const/4 v2, 0x0

    move v3, v2

    move v2, v6

    :goto_2
    if-ge v3, v9, :cond_2

    aget-object v6, v8, v3

    .line 1055
    invoke-virtual {v7, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1056
    if-nez v2, :cond_0

    .line 1057
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v2

    .line 1054
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1051
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1053
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v6, v2

    goto :goto_1

    .line 1062
    :cond_3
    const/4 v5, 0x0

    .line 1063
    array-length v4, p2

    const/4 v0, 0x0

    move v3, v0

    :goto_3
    if-ge v3, v4, :cond_6

    aget-object v7, p2, v3

    .line 1064
    iget-object v8, p0, Lcom/android/lgesettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v9, v8

    const/4 v0, 0x0

    move v2, v0

    move v0, v5

    :goto_4
    if-ge v2, v9, :cond_5

    aget-object v5, v8, v2

    .line 1065
    invoke-virtual {v7, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v0, 0x1

    .line 1064
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1063
    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v5, v0

    goto :goto_3

    .line 1068
    :cond_6
    const/4 v3, 0x0

    .line 1069
    array-length v7, p3

    const/4 v0, 0x0

    move v4, v0

    :goto_5
    if-ge v4, v7, :cond_9

    aget-object v8, p3, v4

    .line 1070
    iget-object v9, p0, Lcom/android/lgesettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v10, v9

    const/4 v0, 0x0

    move v2, v0

    move v0, v3

    :goto_6
    if-ge v2, v10, :cond_8

    aget-object v3, v9, v2

    .line 1071
    invoke-virtual {v8, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v0, 0x1

    .line 1070
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1069
    :cond_8
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v0

    goto :goto_5

    .line 1076
    :cond_9
    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->doesSupportHotspotList()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1078
    const/4 v2, 0x0

    .line 1079
    array-length v4, p2

    const/4 v0, 0x0

    move v11, v0

    move v0, v2

    move v2, v11

    :goto_7
    if-ge v2, v4, :cond_b

    aget-object v7, p2, v2

    .line 1080
    const-string v8, "wlan0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1081
    const/4 v0, 0x1

    .line 1079
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1084
    :cond_b
    if-nez v0, :cond_c

    .line 1085
    invoke-direct {p0}, Lcom/android/lgesettings/TetherSettings;->updateClientList()V

    .line 1091
    :cond_c
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/MDMSettingsAdapter;->setUsbTetheringMenu(Landroid/preference/TwoStatePreference;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1144
    :cond_d
    :goto_8
    return-void

    .line 1096
    :cond_e
    if-eqz v5, :cond_10

    .line 1097
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0804f7

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1098
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1099
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1136
    :cond_f
    :goto_9
    sget-boolean v0, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v0, :cond_d

    .line 1137
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tethering_blocked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 1139
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1140
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1141
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_8

    .line 1109
    :cond_10
    if-eqz v1, :cond_12

    .line 1110
    if-nez v6, :cond_11

    .line 1111
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0804f6

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1115
    :goto_a
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1116
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_9

    .line 1113
    :cond_11
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0804fa

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_a

    .line 1117
    :cond_12
    if-eqz v3, :cond_13

    .line 1118
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0804fa

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1119
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1120
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_9

    .line 1121
    :cond_13
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherSettings;->mMassStorageActive:Z

    if-eqz v0, :cond_14

    .line 1122
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0804f8

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1123
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1124
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_9

    .line 1126
    :cond_14
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0804f9

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1127
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1128
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1130
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mDCMAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_f

    .line 1131
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mDCMAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_9
.end method

.method private validate()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1251
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1254
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1260
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1261
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1269
    :cond_2
    :goto_0
    return-void

    .line 1264
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1265
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public ChangeDefaultHotspotSSID()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2140
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2141
    const-string v1, "gsm.sim.operator.gid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2143
    const-string v2, "TetherSettings"

    const-string v3, "ChangeDefaultHotspotSSID() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    const-string v2, "TetherSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    const-string v2, "TetherSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v3, "Android AP"

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2149
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 2151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2153
    const-string v2, "TetherSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChangeDefaultHotspotSSID()::IMSI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    const-string v0, "TetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChangeDefaultHotspotSSID()::GID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    const-string v0, "TetherSettings"

    const-string v2, "imsi is not null,gid is not null~~~~~~"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    const-string v0, "4B4F"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2158
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v1, "Koodo LTE"

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2159
    const-string v0, "TetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChangeDefaultHotspotSSID():Setup SSID ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ssid_update_done"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2161
    const-string v0, "TetherSettings"

    const-string v1, " SET SettingsEx.Secure.WIFI_AP_DEFAULT_STATUS = 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    :cond_0
    :goto_0
    return-void

    .line 2162
    :cond_1
    const-string v0, "5455"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2164
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v1, "TELUS LTE"

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2165
    const-string v0, "TetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChangeDefaultHotspotSSID():Setup SSID ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ssid_update_done"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2167
    const-string v0, "TetherSettings"

    const-string v1, " SET SettingsEx.Secure.WIFI_AP_DEFAULT_STATUS = 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2168
    :cond_2
    const-string v0, "5043"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2170
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v1, "PC mobile LTE"

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2171
    const-string v0, "TetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChangeDefaultHotspotSSID():Setup SSID ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ssid_update_done"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2173
    const-string v0, "TetherSettings"

    const-string v1, " SET SettingsEx.Secure.WIFI_AP_DEFAULT_STATUS = 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2178
    :cond_3
    const-string v0, "TetherSettings"

    const-string v1, "imsi or gid is empty , Set default SSID with Android AP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2183
    :cond_4
    const-string v0, "TetherSettings"

    const-string v1, "SIM Info is not available, Set default SSID with Android AP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected CreateWarningDialogForDCM()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2047
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 2049
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 2050
    const-string v0, "html/%y%z/tether_attention_wifi_%x.html"

    const-string v5, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 2054
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v5, "JP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2055
    const-string v0, "html/%y%z/tether_attention_wifi_%x.html"

    const-string v5, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2056
    const-string v5, "%z"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2057
    const-string v5, "%x"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2067
    :goto_0
    const/4 v5, 0x0

    .line 2070
    :try_start_0
    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2074
    if-eqz v0, :cond_7

    .line 2076
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 2082
    :goto_1
    const-string v4, "file:///android_asset/html/%y%z/tether_attention_wifi_%x.html"

    const-string v5, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 2083
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2084
    const-string v4, "file:///android_asset/html/%y%z/tether_attention_wifi_%x.html"

    const-string v5, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2085
    const-string v5, "%z"

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2086
    const-string v4, "%x"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 2096
    :goto_3
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2098
    const v4, 0x7f040164

    invoke-virtual {v0, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->alertDialogView:Landroid/view/View;

    .line 2099
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->alertDialogView:Landroid/view/View;

    const v4, 0x7f0a030a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAttentionView:Landroid/webkit/WebView;

    .line 2100
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAttentionView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2103
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAttentionView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 2104
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAttentionView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 2105
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAttentionView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2108
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2109
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2110
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2111
    const v1, 0x7f08031d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2112
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->alertDialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2113
    const v1, 0x7f08031e

    new-instance v3, Lcom/android/lgesettings/TetherSettings$9;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/TetherSettings$9;-><init>(Lcom/android/lgesettings/TetherSettings;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2121
    const v1, 0x7f08031f

    new-instance v3, Lcom/android/lgesettings/TetherSettings$10;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/TetherSettings$10;-><init>(Lcom/android/lgesettings/TetherSettings;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2126
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2127
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2129
    return v2

    .line 2061
    :cond_1
    const-string v0, "html/%y%z/tether_attention_wifi_%x.html"

    const-string v5, "%y"

    const-string v6, "en"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2062
    const-string v5, "%z"

    const-string v6, "_us"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2063
    const-string v5, "%x"

    const-string v6, "en"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2077
    :catch_0
    move-exception v0

    move v0, v1

    .line 2078
    goto/16 :goto_1

    .line 2071
    :catch_1
    move-exception v0

    .line 2074
    if-eqz v8, :cond_6

    .line 2076
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v2

    .line 2078
    goto/16 :goto_1

    .line 2077
    :catch_2
    move-exception v0

    move v0, v2

    .line 2078
    goto/16 :goto_1

    .line 2074
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 2076
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2078
    :cond_2
    :goto_4
    throw v0

    .line 2085
    :cond_3
    const-string v0, ""

    goto/16 :goto_2

    .line 2090
    :cond_4
    const-string v3, "file:///android_asset/html/%y%z/tether_attention_wifi_%x.html"

    const-string v4, "%y"

    const-string v5, "en"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 2091
    const-string v4, "%z"

    if-eqz v0, :cond_5

    const-string v0, "_us"

    :goto_5
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2092
    const-string v3, "%x"

    const-string v4, "en"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_3

    .line 2091
    :cond_5
    const-string v0, ""

    goto :goto_5

    .line 2077
    :catch_3
    move-exception v1

    goto :goto_4

    :cond_6
    move v0, v2

    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto/16 :goto_1
.end method

.method protected ShowWarningDialogForATT()V
    .locals 0

    .prologue
    .line 1595
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1272
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1273
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1274
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 1276
    const-string v1, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1277
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1278
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherSettings;->mDoNotShowAgain:Z

    if-nez v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/TetherSettings;->checkFormValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1282
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080d28

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1285
    iput-boolean v4, p0, Lcom/android/lgesettings/TetherSettings;->mDoNotShowAgain:Z

    .line 1294
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/TetherSettings;->validate()V

    .line 1295
    return-void

    .line 1289
    :cond_1
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherSettings;->mDoNotShowAgain:Z

    if-ne v0, v4, :cond_0

    .line 1290
    iput-boolean v3, p0, Lcom/android/lgesettings/TetherSettings;->mDoNotShowAgain:Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1299
    return-void
.end method

.method public checkProvWithUpsell(I)V
    .locals 6
    .parameter "type"

    .prologue
    const/4 v5, 0x0

    .line 2374
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 2375
    .local v2, wifiState:I
    move v1, p1

    .line 2378
    .local v1, tetherType:I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 2379
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2380
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 2381
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2382
    .local v0, mConnMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2383
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->showNotavailableDataNetworkPopup()V

    .line 2384
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2387
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v3, :cond_0

    .line 2388
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/MDMSettingsAdapter;->setWifiApEnablerMenu(Landroid/preference/Preference;)Z

    .line 2393
    :cond_0
    iput-boolean v5, p0, Lcom/android/lgesettings/TetherSettings;->mInit:Z

    .line 2394
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/TetherSettings;->setFirstFlagPreference(Z)V

    .line 2405
    .end local v0           #mConnMgr:Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 2398
    .restart local v0       #mConnMgr:Landroid/net/ConnectivityManager;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/lgesettings/TetherSettings;->setBatteryPopup(I)V

    goto :goto_0

    .line 2402
    .end local v0           #mConnMgr:Landroid/net/ConnectivityManager;
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/lgesettings/TetherSettings;->setBatteryPopup(I)V

    .line 2403
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public getHelpResource()I
    .locals 1

    .prologue
    .line 1949
    const v0, 0x7f08088a

    return v0
.end method

.method isProvisioningNeeded()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1601
    const-string v2, "US"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1602
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tether_entitlement_check_state"

    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    .line 1603
    const-string v1, "TetherSettings"

    const-string v2, "[TetherSettings] Need to provision for AT&T"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :cond_0
    :goto_0
    return v0

    .line 1606
    :cond_1
    const-string v0, "TetherSettings"

    const-string v2, "[TetherSettings] Provisioning for AT&T is already done"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tether_use_first_time"

    invoke-static {v0, v2, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 1609
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->ShowWarningDialogForATT()V

    :cond_2
    move v0, v1

    .line 1611
    goto :goto_0

    .line 1615
    :cond_3
    const-string v2, "net.tethering.noprovisioning"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 1616
    goto :goto_0

    .line 1618
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1645
    invoke-super {p0, p1, p2, p3}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1647
    const-string v0, "TetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TetherSettings] onActivityResult(), requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    if-nez p1, :cond_0

    .line 1649
    if-ne p2, v3, :cond_1

    .line 1650
    invoke-direct {p0}, Lcom/android/lgesettings/TetherSettings;->startTethering()V

    .line 1665
    :cond_0
    :goto_0
    return-void

    .line 1654
    :cond_1
    iget v0, p0, Lcom/android/lgesettings/TetherSettings;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    .line 1662
    :goto_1
    iput v3, p0, Lcom/android/lgesettings/TetherSettings;->mTetherChoice:I

    goto :goto_0

    .line 1656
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 1659
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 1654
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1910
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 1911
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1912
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiApDialog;->isNewConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1920
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 1921
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1922
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1926
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1927
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/android/lgesettings/TetherSettings;->CONFIG_SUBTEXT:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/lgesettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v0, v4, v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1929
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1930
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherSettings;->mIscheckedTethering:Z

    iput-boolean v0, p0, Lcom/android/lgesettings/TetherSettings;->mInit:Z

    if-eqz v0, :cond_0

    .line 1931
    const-string v0, "TetherSettings"

    const-string v1, "[TetherSettings]    checkProvWithUpsell( ) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/TetherSettings;->checkProvWithUpsell(I)V

    .line 1936
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->setInitFalse()V

    .line 1941
    :cond_1
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherSettings;->mInit:Z

    if-eqz v0, :cond_2

    .line 1942
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->setInitFalse()V

    .line 1945
    :cond_2
    return-void

    .line 1924
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1852
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0397

    if-ne v1, v2, :cond_4

    .line 1853
    const-string v1, "TetherSettings"

    const-string v2, "[YHD] onClick1(View view) : SHOW_DIALOG "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    const-string v1, "ro.build.target_country"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1856
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    or-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 1868
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1906
    :cond_0
    :goto_2
    return-void

    .line 1856
    :cond_1
    const/16 v0, 0x10

    goto :goto_0

    .line 1863
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x90

    :goto_3
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x80

    goto :goto_3

    .line 1871
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a002e

    if-ne v1, v2, :cond_0

    .line 1872
    const-string v1, "TetherSettings"

    const-string v2, "[YHD] onClick1(View view) : DO_NOT_SHOW_AGAIN "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1874
    iput-boolean v3, p0, Lcom/android/lgesettings/TetherSettings;->mDoNotShowAgain:Z

    .line 1875
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "NOT_SHOW"

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1877
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1878
    const-string v1, "not_show"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1879
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1904
    :goto_4
    const-string v0, "TetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[YHD] mDoNotShowAgain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/lgesettings/TetherSettings;->mDoNotShowAgain:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1889
    :cond_5
    iput-boolean v0, p0, Lcom/android/lgesettings/TetherSettings;->mDoNotShowAgain:Z

    .line 1890
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "NOT_SHOW"

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1892
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1893
    const-string v2, "not_show"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1894
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .parameter "icicle"

    .prologue
    .line 259
    invoke-super/range {p0 .. p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 261
    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->doesSupportHotspotList()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 263
    const v18, 0x7f060066

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/TetherSettings;->addPreferencesFromResource(I)V

    .line 264
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v18

    const-string v19, "TMO"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    const v19, 0x7f02033c

    invoke-virtual/range {v18 .. v19}, Landroid/app/ActionBar;->setIcon(I)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    const v19, 0x7f0812a8

    invoke-virtual/range {v18 .. v19}, Landroid/app/ActionBar;->setTitle(I)V

    .line 281
    :goto_0
    const-string v18, "TetherSettings"

    const-string v19, "onCreate()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 284
    .local v4, activity:Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    .line 285
    .local v5, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v5, :cond_0

    .line 286
    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 290
    :cond_0
    const-string v18, "enable_wifi_ap"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    .line 291
    const-string v18, "wifi_unicode"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/TetherSettings;->mEnableUnicode:Landroid/preference/CheckBoxPreference;

    .line 292
    const-string v18, "wifi_ap_ssid_and_security"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 293
    .local v16, wifiApSettings:Landroid/preference/Preference;
    const-string v18, "usb_tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    .line 295
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v18

    const-string v19, "US"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v18

    const-string v19, "TMO"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 296
    const v18, 0x7f0812a7

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 305
    :cond_1
    :goto_1
    const-string v18, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->mEnableUnicode:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->mEnableUnicode:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const-string v18, "persist.sys.hotssid.ksc5601"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-nez v18, :cond_18

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 313
    :cond_2
    const-string v18, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->mEnableUnicode:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->mEnableUnicode:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 317
    :cond_3
    const-string v18, "hotspot_timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "tethering_time"

    const v21, 0x493e0

    invoke-static/range {v19 .. v21}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0900d5

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/TetherSettings;->mEntry:[Ljava/lang/String;

    .line 325
    const-string v18, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0900d3

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/TetherSettings;->mEntry:[Ljava/lang/String;

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0900d3

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0900d4

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 332
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/lgesettings/TetherSettings;->mIndex:I

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const v19, 0xea60

    div-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/lgesettings/TetherSettings;->mTimeValue:I

    .line 336
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->updateTimeoutSummary()V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 340
    const-string v18, "enable_bluetooth_tethering"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    .line 341
    const-string v18, "tethering_help"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    .line 343
    const-string v18, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 346
    .local v7, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 347
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 348
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 352
    const/4 v15, 0x0

    .line 353
    .local v15, usbAvailable:Z
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v18

    const-string v19, "US"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v18

    const-string v19, "TMO"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 354
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-eqz v18, :cond_19

    const/4 v15, 0x1

    .line 362
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-eqz v18, :cond_1c

    const/16 v17, 0x1

    .line 368
    .local v17, wifiAvailable:Z
    :goto_4
    const/4 v6, 0x0

    .line 371
    .local v6, bluetoothAvailable:Z
    const-string v18, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 373
    new-instance v18, Landroid/widget/Switch;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/TetherSettings;->actionBarSwitch:Landroid/widget/Switch;

    .line 381
    instance-of v0, v4, Landroid/preference/PreferenceActivity;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object v14, v4

    .line 382
    check-cast v14, Landroid/preference/PreferenceActivity;

    .line 383
    .local v14, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v14}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v18

    if-nez v18, :cond_6

    invoke-virtual {v14}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v18

    if-nez v18, :cond_7

    .line 384
    :cond_6
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e0002

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 386
    .local v11, padding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->actionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v11, v3}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 387
    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    const/16 v19, 0x10

    const/16 v20, 0x10

    invoke-virtual/range {v18 .. v20}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 389
    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->actionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v19, v0

    new-instance v20, Landroid/app/ActionBar$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    const v23, 0x800015

    invoke-direct/range {v20 .. v23}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->actionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/lgesettings/TetherSettings$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/lgesettings/TetherSettings$1;-><init>(Lcom/android/lgesettings/TetherSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    .end local v11           #padding:I
    .end local v14           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_7
    new-instance v18, Lcom/android/lgesettings/wifi/WifiApEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->actionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v4, v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/TetherSettings;->mWifiApEnabler:Lcom/android/lgesettings/wifi/WifiApEnabler;

    .line 406
    :cond_8
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/lgesettings/TetherSettings;->mAvailableTetherNum:I

    .line 407
    if-eqz v15, :cond_9

    .line 408
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/TetherSettings;->mAvailableTetherNum:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/lgesettings/TetherSettings;->mAvailableTetherNum:I

    .line 409
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/lgesettings/TetherSettings;->mDefaultTether:I

    .line 415
    :cond_9
    if-eqz v17, :cond_a

    .line 416
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/TetherSettings;->mAvailableTetherNum:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/lgesettings/TetherSettings;->mAvailableTetherNum:I

    .line 417
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/lgesettings/TetherSettings;->mDefaultTether:I

    .line 421
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_b

    const-string v18, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    const-string v18, "geeb"

    sget-object v19, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 423
    :cond_b
    const-string v18, "TetherSettings"

    const-string v19, "[YHD] removePreference(mTetherHelp)"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 427
    :cond_c
    if-eqz v15, :cond_d

    invoke-static {}, Lcom/android/lgesettings/Utils;->isMonkeyRunning()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 428
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 431
    :cond_e
    if-eqz v17, :cond_1e

    invoke-static {}, Lcom/android/lgesettings/Utils;->isMonkeyRunning()Z

    move-result v18

    if-nez v18, :cond_1e

    .line 432
    const-string v18, "TetherSettings"

    const-string v19, "wifiAvailable && !Utils.isMonkeyRunning()***"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v18

    const-string v19, "DCM"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1d

    .line 434
    new-instance v18, Lcom/android/lgesettings/wifi/WifiApEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v4, v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/TetherSettings;->mWifiApEnabler:Lcom/android/lgesettings/wifi/WifiApEnabler;

    .line 442
    :cond_f
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->initWifiTethering()V

    .line 454
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 465
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v18

    const-string v19, "US"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_20

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v18

    const-string v19, "ATT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_20

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f09009e

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    .line 472
    :goto_7
    new-instance v18, Landroid/webkit/WebView;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/TetherSettings;->mView:Landroid/webkit/WebView;

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string v19, "FIRST_FLAG"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 477
    .local v12, pref_ff:Landroid/content/SharedPreferences;
    const-string v18, "f_flag"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 479
    .local v9, flag_ff:Z
    if-eqz v9, :cond_21

    .line 480
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/lgesettings/TetherSettings;->mInit:Z

    .line 484
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string v19, "NOT_SHOW"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 486
    .local v13, pref_ns:Landroid/content/SharedPreferences;
    const-string v18, "not_show"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 488
    .local v10, flag_ns:Z
    if-eqz v10, :cond_22

    .line 489
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/lgesettings/TetherSettings;->mDoNotShowAgain:Z

    .line 494
    :goto_9
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v18

    const-string v19, "US"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v18

    const-string v19, "ATT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 495
    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    const v19, 0x7f080ab4

    invoke-virtual/range {v18 .. v19}, Landroid/app/ActionBar;->setTitle(I)V

    .line 501
    :cond_10
    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->doesSupportHotspotList()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 503
    const-string v18, "wifi_tether_client_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/android/lgesettings/wifi/TetherProgressCategory;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/TetherSettings;->mClientDevices:Lcom/android/lgesettings/wifi/TetherProgressCategory;

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->mClientDevices:Lcom/android/lgesettings/wifi/TetherProgressCategory;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->mClientDevices:Lcom/android/lgesettings/wifi/TetherProgressCategory;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/lgesettings/wifi/TetherProgressCategory;->setOrderingAsAdded(Z)V

    .line 509
    :cond_11
    const-string v18, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 510
    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    const v19, 0x7f0812f0

    invoke-virtual/range {v18 .. v19}, Landroid/app/ActionBar;->setTitle(I)V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0812f2

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 516
    :cond_12
    sget-boolean v18, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v18, :cond_13

    .line 517
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 518
    .local v8, filterLGMDM:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/android/lgesettings/MDMSettingsAdapter;->addTetherPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 522
    .end local v8           #filterLGMDM:Landroid/content/IntentFilter;
    :cond_13
    return-void

    .line 268
    .end local v4           #activity:Landroid/app/Activity;
    .end local v5           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v6           #bluetoothAvailable:Z
    .end local v7           #cm:Landroid/net/ConnectivityManager;
    .end local v9           #flag_ff:Z
    .end local v10           #flag_ns:Z
    .end local v12           #pref_ff:Landroid/content/SharedPreferences;
    .end local v13           #pref_ns:Landroid/content/SharedPreferences;
    .end local v15           #usbAvailable:Z
    .end local v16           #wifiApSettings:Landroid/preference/Preference;
    .end local v17           #wifiAvailable:Z
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    const v19, 0x7f020337

    invoke-virtual/range {v18 .. v19}, Landroid/app/ActionBar;->setIcon(I)V

    goto/16 :goto_0

    .line 274
    :cond_15
    const-string v18, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    const v19, 0x7f020339

    invoke-virtual/range {v18 .. v19}, Landroid/app/ActionBar;->setIcon(I)V

    .line 279
    :cond_16
    const v18, 0x7f060065

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/TetherSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 299
    .restart local v4       #activity:Landroid/app/Activity;
    .restart local v5       #adapter:Landroid/bluetooth/BluetoothAdapter;
    .restart local v16       #wifiApSettings:Landroid/preference/Preference;
    :cond_17
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v18

    const-string v19, "US"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v18

    const-string v19, "SPR"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 300
    const v18, 0x7f081646

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_1

    .line 308
    :cond_18
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 355
    .restart local v7       #cm:Landroid/net/ConnectivityManager;
    .restart local v15       #usbAvailable:Z
    :cond_19
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 358
    :cond_1a
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v18

    const-string v19, "DCM"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-eqz v18, :cond_1b

    const/4 v15, 0x1

    :goto_a
    goto/16 :goto_3

    :cond_1b
    const/4 v15, 0x0

    goto :goto_a

    .line 362
    :cond_1c
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 437
    .restart local v6       #bluetoothAvailable:Z
    .restart local v17       #wifiAvailable:Z
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    .line 438
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Config.getCountry() :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 444
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1f

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 447
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 468
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1070025

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    goto/16 :goto_7

    .line 482
    .restart local v9       #flag_ff:Z
    .restart local v12       #pref_ff:Landroid/content/SharedPreferences;
    :cond_21
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/lgesettings/TetherSettings;->mInit:Z

    goto/16 :goto_8

    .line 491
    .restart local v10       #flag_ns:Z
    .restart local v13       #pref_ns:Landroid/content/SharedPreferences;
    :cond_22
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/lgesettings/TetherSettings;->mDoNotShowAgain:Z

    goto/16 :goto_9
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 586
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 588
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 589
    new-instance v2, Lcom/android/lgesettings/wifi/WifiApDialog;

    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2, v0, p0, v3}, Lcom/android/lgesettings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v2, p0, Lcom/android/lgesettings/TetherSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiApDialog;

    .line 591
    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiApDialog;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/WifiApDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 595
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiApDialog;

    .line 715
    .end local v0           #activity:Landroid/app/Activity;
    :goto_0
    return-object v1

    .line 700
    :cond_0
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 701
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "US"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 702
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0804ed

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0804ee

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0804ef

    new-instance v4, Lcom/android/lgesettings/TetherSettings$3;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/TetherSettings$3;-><init>(Lcom/android/lgesettings/TetherSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 710
    .local v1, noSimAlertDialog:Landroid/app/Dialog;
    goto :goto_0

    .line 715
    .end local v1           #noSimAlertDialog:Landroid/app/Dialog;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1011
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 1013
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1015
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mTimer:Ljava/util/Timer;

    .line 1018
    :cond_0
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    .line 1020
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1026
    :cond_1
    :goto_0
    return-void

    .line 1021
    :catch_0
    move-exception v0

    .line 1022
    const-string v1, "MDM"

    const-string v2, "mLGMDMReceiver unregisterReceiver "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 988
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 990
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 994
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1379
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1381
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_0

    move v0, v1

    .line 1552
    :goto_0
    return v0

    .line 1384
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    .line 1386
    const-string v4, "enable_wifi_ap"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1387
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1388
    iput-boolean v0, p0, Lcom/android/lgesettings/TetherSettings;->mWifiHotspotStatus:Z

    .line 1391
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v4

    const-string v5, "US"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TMO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1392
    if-eqz v0, :cond_4

    .line 1393
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_2

    if-ne v0, v2, :cond_2

    iget-boolean v3, p0, Lcom/android/lgesettings/TetherSettings;->mInit:Z

    if-eqz v3, :cond_2

    .line 1394
    const-string v0, "Hoon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "showDialog()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iput-boolean v2, p0, Lcom/android/lgesettings/TetherSettings;->mIscheckedTethering:Z

    .line 1396
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/TetherSettings;->showDialog(I)V

    :cond_1
    :goto_1
    move v0, v1

    .line 1552
    goto :goto_0

    .line 1397
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_3

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/android/lgesettings/TetherSettings;->mInit:Z

    if-nez v0, :cond_3

    .line 1398
    const-string v0, "Hoon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "checkProvWithUpsell()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TetherSettings;->checkProvWithUpsell(I)V

    goto :goto_1

    .line 1401
    :cond_3
    const-string v0, "Hoon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "startUpsell()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    invoke-direct {p0, v1}, Lcom/android/lgesettings/TetherSettings;->startUpsell(I)V

    goto :goto_1

    .line 1405
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mWifiApEnabler:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_1

    .line 1410
    :cond_5
    if-eqz v0, :cond_c

    .line 1411
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1412
    invoke-direct {p0, v1}, Lcom/android/lgesettings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_1

    .line 1414
    :cond_6
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherSettings;->mInit:Z

    if-eqz v0, :cond_9

    if-eq v3, v2, :cond_7

    const/4 v0, 0x2

    if-ne v3, v0, :cond_9

    .line 1415
    :cond_7
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1416
    const v3, 0x7f0401b9

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialogView:Landroid/view/View;

    .line 1418
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f081646

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialogView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0802e6

    iget-object v4, p0, Lcom/android/lgesettings/TetherSettings;->pwDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0802e8

    iget-object v4, p0, Lcom/android/lgesettings/TetherSettings;->pwDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1425
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialogView:Landroid/view/View;

    const v3, 0x7f0a0384

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;

    .line 1429
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;

    const/16 v4, 0x3f

    invoke-direct {v3, p0, v4}, Lcom/android/lgesettings/TetherSettings$Utf8ByteLengthFilter;-><init>(Lcom/android/lgesettings/TetherSettings;I)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1434
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AU"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TEL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1435
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 1439
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1440
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialogView:Landroid/view/View;

    const v2, 0x7f0a0397

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1443
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1448
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1452
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/lgesettings/TetherSettings$6;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/TetherSettings$6;-><init>(Lcom/android/lgesettings/TetherSettings;)V

    const-wide/16 v3, 0x96

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1465
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1467
    :cond_9
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherSettings;->mDoNotShowAgain:Z

    if-nez v0, :cond_b

    .line 1471
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1475
    const-string v3, "ORG"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    if-nez v3, :cond_a

    .line 1476
    const v3, 0x7f040198

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialogView:Landroid/view/View;

    .line 1481
    :goto_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f081647

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialogView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/lgesettings/TetherSettings$7;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/TetherSettings$7;-><init>(Lcom/android/lgesettings/TetherSettings;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f080015

    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->alertDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f080016

    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->alertDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1512
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialogView:Landroid/view/View;

    const v2, 0x7f0a002e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1514
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1515
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 1478
    :cond_a
    const v3, 0x7f040195

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mAlertDialogView:Landroid/view/View;

    goto :goto_2

    .line 1517
    :cond_b
    invoke-direct {p0, v1}, Lcom/android/lgesettings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto/16 :goto_1

    .line 1522
    :cond_c
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mWifiApEnabler:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto/16 :goto_1

    .line 1529
    :cond_d
    const-string v3, "hotspot_timeout"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 1530
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1531
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "tethering_time"

    invoke-static {v1, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1532
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0900d5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mEntry:[Ljava/lang/String;

    .line 1538
    const-string v1, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1540
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0900d3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mEntry:[Ljava/lang/String;

    .line 1544
    :cond_e
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->hotSpotTimeoutPreference:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/lgesettings/TetherSettings;->mIndex:I

    .line 1546
    const v1, 0xea60

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/lgesettings/TetherSettings;->mTimeValue:I

    .line 1548
    invoke-direct {p0}, Lcom/android/lgesettings/TetherSettings;->updateTimeoutSummary()V

    move v0, v2

    .line 1549
    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1734
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1736
    const-string v3, "TetherSettings"

    const-string v4, "[TetherSettings] onPreferenceTreeClick  "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_4

    .line 1738
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 1741
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/MDMSettingsAdapter;->setUsbTetheringMenu(Landroid/preference/TwoStatePreference;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1820
    :cond_0
    :goto_0
    return v1

    .line 1746
    :cond_1
    if-eqz v0, :cond_3

    .line 1747
    const-string v3, "TetherSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TetherSettings] onPreferenceTreeClick newState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1749
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1750
    invoke-direct {p0, v1}, Lcom/android/lgesettings/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 1820
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0

    .line 1752
    :cond_3
    const-string v1, "TetherSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TetherSettings] onPreferenceTreeClick newState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1754
    invoke-direct {p0, v0}, Lcom/android/lgesettings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_1

    .line 1756
    :cond_4
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_9

    .line 1757
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 1759
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/MDMSettingsAdapter;->setBluetoothTetheringMenu(Landroid/preference/TwoStatePreference;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1765
    :cond_5
    if-eqz v3, :cond_6

    .line 1766
    invoke-direct {p0, v6}, Lcom/android/lgesettings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_1

    .line 1770
    :cond_6
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 1771
    iget-object v4, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/lgesettings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1772
    if-eqz v3, :cond_f

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 1777
    :goto_2
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 1778
    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 1779
    :cond_7
    if-eqz v1, :cond_8

    .line 1780
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f080500

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1

    .line 1782
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f081037

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1

    .line 1785
    :cond_9
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_c

    .line 1786
    iget v0, p0, Lcom/android/lgesettings/TetherSettings;->mAvailableTetherNum:I

    if-le v0, v1, :cond_a

    .line 1787
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1788
    const-class v0, Lcom/android/lgesettings/lge/TetherSettingsHelp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 1789
    const v0, 0x7f08087f

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 1790
    const v0, 0x7f020337

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setIcon(I)V

    .line 1791
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 1794
    :cond_a
    iget v0, p0, Lcom/android/lgesettings/TetherSettings;->mDefaultTether:I

    if-nez v0, :cond_b

    .line 1799
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1800
    const-string v2, "com.android.lgesettings"

    const-string v3, "com.android.lgesettings.wifi.WifiHotspotHelp"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1802
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TetherSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1804
    :cond_b
    iget v0, p0, Lcom/android/lgesettings/TetherSettings;->mDefaultTether:I

    if-eq v0, v1, :cond_0

    .line 1807
    iget v0, p0, Lcom/android/lgesettings/TetherSettings;->mDefaultTether:I

    if-ne v0, v6, :cond_0

    goto/16 :goto_0

    .line 1812
    :cond_c
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v0, :cond_d

    .line 1813
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TetherSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 1815
    :cond_d
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mEnableUnicode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 1817
    const-string v1, "persist.sys.hotssid.ksc5601"

    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mEnableUnicode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "0"

    :goto_3
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    const-string v0, "1"

    goto :goto_3

    :cond_f
    move v1, v2

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 964
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 968
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 969
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 971
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 972
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 976
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/TetherSettings;->updateTimeoutSummary()V

    .line 979
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 912
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onStart()V

    .line 914
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 916
    const-string v1, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/lgesettings/TetherSettings;->mMassStorageActive:Z

    .line 917
    new-instance v1, Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/lgesettings/TetherSettings;Lcom/android/lgesettings/TetherSettings$1;)V

    iput-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 918
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 919
    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 921
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 922
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 923
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 925
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 926
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 927
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 928
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 929
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 931
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 932
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 935
    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->doesSupportHotspotList()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 937
    const-string v3, "com.lge.wifi.sap.WIFI_SAP_STATION_ASSOC"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 938
    const-string v3, "com.lge.wifi.sap.WIFI_SAP_STATION_DISASSOC"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 939
    const-string v3, "com.lge.wifi.sap.WIFI_SAP_DHCP_INFO_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 940
    invoke-direct {p0}, Lcom/android/lgesettings/TetherSettings;->updateClientList()V

    .line 945
    const-string v3, "TetherSettings"

    const-string v4, "clearTetheringBlockNotification SKIPPED"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 951
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 952
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mWifiApEnabler:Lcom/android/lgesettings/wifi/WifiApEnabler;

    if-eqz v0, :cond_3

    .line 953
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 954
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 956
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mWifiApEnabler:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->resume()V

    .line 959
    :cond_3
    invoke-direct {p0}, Lcom/android/lgesettings/TetherSettings;->updateState()V

    .line 960
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 998
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onStop()V

    .line 999
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1000
    iput-object v2, p0, Lcom/android/lgesettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1001
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mWifiApEnabler:Lcom/android/lgesettings/wifi/WifiApEnabler;

    if-eqz v0, :cond_1

    .line 1002
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->mWifiApEnabler:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->pause()V

    .line 1007
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1303
    return-void
.end method

.method public setFirstFlagPreference(Z)V
    .locals 5
    .parameter "value"

    .prologue
    .line 2407
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "FIRST_FLAG"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2408
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2409
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "f_flag"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2410
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2411
    return-void
.end method

.method public setInitFalse()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1307
    iput-boolean v4, p0, Lcom/android/lgesettings/TetherSettings;->mInit:Z

    .line 1308
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "FIRST_FLAG"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1310
    .local v1, pref_ff:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1311
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "f_flag"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1312
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1313
    return-void
.end method

.method public showNotavailableDataNetworkPopup()V
    .locals 3

    .prologue
    .line 2413
    const-string v0, "Hoon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!mConnMgr.getMobileDataEnabled()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->wifiErrorDialog:Landroid/app/AlertDialog$Builder;

    .line 2415
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->wifiErrorDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080291

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2416
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->wifiErrorDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2417
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->wifiErrorDialog:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2418
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->wifiErrorDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f081672

    new-instance v2, Lcom/android/lgesettings/TetherSettings$13;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/TetherSettings$13;-><init>(Lcom/android/lgesettings/TetherSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2427
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->wifiErrorDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0812bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2428
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->wifiErrorDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings;->wifiErrorDlog:Landroid/app/AlertDialog;

    .line 2429
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings;->wifiErrorDlog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2430
    return-void
.end method
