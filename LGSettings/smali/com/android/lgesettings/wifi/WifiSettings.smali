.class public Lcom/android/lgesettings/wifi/WifiSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/wifi/WifiSettings$ProportionalOuterFrame;,
        Lcom/android/lgesettings/wifi/WifiSettings$Scanner;,
        Lcom/android/lgesettings/wifi/WifiSettings$Multimap;,
        Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;,
        Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    }
.end annotation


# static fields
.field static final EXCEPTSCAN_PROJECTION:[Ljava/lang/String;

.field private static final LGE_SKT_CM:Z

.field private static final TARGET_COUNTRY:Ljava/lang/String;

.field private static final TARGET_OPERATOR:Ljava/lang/String;

.field private static mFinishonConnectionbyRequest:Z

.field public static mLastStatehs20:Landroid/net/NetworkInfo$DetailedState;

.field private static final mLgeKtCm:Z


# instance fields
.field OPERATOR_KT:Z

.field OPERATOR_KT_CM:Z

.field OPERATOR_LGU:Z

.field OPERATOR_SKT:Z

.field OPERATOR_SKT_CM:Z

.field private actionBarSwitch:Landroid/widget/Switch;

.field private activeTutorial:Z

.field alertDialogHandler:Landroid/content/DialogInterface$OnClickListener;

.field private fromAPP:Ljava/lang/String;

.field isDialogShowing:Z

.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mAlertDialogView:Landroid/view/View;

.field private mAutoFinishOnConnection:Z

.field mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mEnableNextOnConnection:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mKeyStoreNetworkId:I

.field private final mLGMDMReceiver:Landroid/content/BroadcastReceiver;

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mLguphoAdvanced:Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;

.field private mMatchConditionSSID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mP2pSupported:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mScanner:Lcom/android/lgesettings/wifi/WifiSettings$Scanner;

.field private mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

.field private mSetupWizardMode:Z

.field private mSetupWrizadr_True:Z

.field private mSktCmDoNotShowAgain:Z

.field private mSktCmInit:Z

.field public mTimer:Ljava/util/Timer;

.field private mWifiEnabler:Lcom/android/lgesettings/wifi/WifiEnabler;

.field private mWifiInternetUnavailableDialog:Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSignalStrength:I

.field private mhiddenSSID:Z

.field private misCalledonCreate:I

.field private wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 228
    const-string v0, "wifi.lge.kt.cm"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/lgesettings/wifi/WifiSettings;->mLgeKtCm:Z

    .line 231
    const-string v0, "wifi.lge.skt.cm"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/lgesettings/wifi/WifiSettings;->LGE_SKT_CM:Z

    .line 264
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/wifi/WifiSettings;->TARGET_OPERATOR:Ljava/lang/String;

    .line 265
    const-string v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/wifi/WifiSettings;->TARGET_COUNTRY:Ljava/lang/String;

    .line 625
    sput-boolean v2, Lcom/android/lgesettings/wifi/WifiSettings;->mFinishonConnectionbyRequest:Z

    .line 3125
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "ssid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "security"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "match_condition"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/wifi/WifiSettings;->EXCEPTSCAN_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 228
    goto :goto_0

    :cond_1
    move v0, v2

    .line 231
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 627
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 197
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 210
    const/16 v0, -0xc8

    iput v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiSignalStrength:I

    .line 211
    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mMatchConditionSSID:Ljava/util/ArrayList;

    .line 213
    iput-boolean v4, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSktCmInit:Z

    .line 214
    iput-boolean v4, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSktCmDoNotShowAgain:Z

    .line 217
    iput-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mhiddenSSID:Z

    .line 220
    const-string v0, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->OPERATOR_SKT:Z

    .line 221
    iput-boolean v4, p0, Lcom/android/lgesettings/wifi/WifiSettings;->OPERATOR_SKT_CM:Z

    .line 222
    const-string v0, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->OPERATOR_KT:Z

    .line 223
    iput-boolean v4, p0, Lcom/android/lgesettings/wifi/WifiSettings;->OPERATOR_KT_CM:Z

    .line 224
    const-string v0, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->OPERATOR_LGU:Z

    .line 225
    iput-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSetupWrizadr_True:Z

    .line 261
    iput-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->activeTutorial:Z

    .line 275
    iput-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->isDialogShowing:Z

    .line 498
    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    .line 618
    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    .line 624
    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->fromAPP:Ljava/lang/String;

    .line 2945
    new-instance v0, Lcom/android/lgesettings/wifi/WifiSettings$19;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/WifiSettings$19;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    .line 3194
    new-instance v0, Lcom/android/lgesettings/wifi/WifiSettings$20;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/WifiSettings$20;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->alertDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    .line 628
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 629
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lge.wifi.AUTH_FAIL_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lge.wifi.WIFI_NO_RESPONSE_FROM_INTERNET_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    new-instance v0, Lcom/android/lgesettings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/WifiSettings$1;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 648
    new-instance v0, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;

    invoke-direct {v0, p0, v3}, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;Lcom/android/lgesettings/wifi/WifiSettings$1;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mScanner:Lcom/android/lgesettings/wifi/WifiSettings$Scanner;

    .line 649
    return-void
.end method

.method private InitSktCmFirstFlag()V
    .locals 6

    .prologue
    .line 3257
    iget-boolean v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSktCmInit:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3269
    :goto_0
    return-void

    .line 3261
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->initExceptScanDB()Z

    move-result v2

    .line 3263
    .local v2, result:Z
    iput-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSktCmInit:Z

    .line 3264
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "WifiSettings_preferences"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3266
    .local v1, pref_ff:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3267
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "sktcm_first_flag"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3268
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/lgesettings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/wifi/WifiSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->activeTutorial:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/android/lgesettings/wifi/WifiSettings;->TARGET_OPERATOR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/android/lgesettings/wifi/WifiSettings;->TARGET_COUNTRY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/lgesettings/wifi/WifiSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->InitSktCmFirstFlag()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/lgesettings/wifi/WifiSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSktCmDoNotShowAgain:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/wifi/WifiSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/lgesettings/wifi/WifiSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->isPhone()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/wifi/WifiSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/lgesettings/wifi/WifiSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/AccessPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/lgesettings/wifi/WifiSettings;Lcom/android/lgesettings/wifi/AccessPoint;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(Lcom/android/lgesettings/wifi/AccessPoint;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    return-object v0
.end method

.method private addMessagePreference(I)V
    .locals 2
    .parameter "messageId"

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_0

    .line 2120
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0, p1}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->onAddMessage(I)V

    .line 2121
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->onRemoveAllAccessPoint()V

    .line 2125
    :cond_0
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    .line 2126
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->setWifiSettingDisable(Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;)V

    .line 2129
    :cond_1
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 2662
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2663
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2665
    :cond_0
    return-void
.end method

.method private constructAccessPoints()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2133
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2136
    new-instance v4, Lcom/android/lgesettings/wifi/WifiSettings$Multimap;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;Lcom/android/lgesettings/wifi/WifiSettings$1;)V

    .line 2138
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 2139
    if-eqz v0, :cond_0

    .line 2140
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2141
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 2143
    if-nez v2, :cond_4

    .line 2144
    const-string v0, "WifiSettings"

    const-string v1, "mContext is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 2164
    if-eqz v0, :cond_7

    .line 2165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 2167
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "[IBSS]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2173
    sget-boolean v1, Lcom/android/lgesettings/wifi/WifiSettings;->LGE_SKT_CM:Z

    if-eqz v1, :cond_3

    .line 2175
    iget v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiSignalStrength:I

    const/16 v2, -0xc8

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiSignalStrength:I

    iget v2, v0, Landroid/net/wifi/ScanResult;->level:I

    if-gt v1, v2, :cond_1

    .line 2179
    :cond_2
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/lgesettings/wifi/WifiSettings;->isExistExceptScanList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2185
    :cond_3
    const/4 v1, 0x0

    .line 2186
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/android/lgesettings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/wifi/AccessPoint;

    .line 2187
    invoke-virtual {v1, v0}, Lcom/android/lgesettings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2188
    const/4 v1, 0x1

    :goto_4
    move v2, v1

    goto :goto_3

    .line 2148
    :cond_4
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 2150
    new-instance v5, Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-direct {v5, v2, v0}, Lcom/android/lgesettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 2151
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5, v0, v2}, Lcom/android/lgesettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 2152
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2153
    iget-object v0, v5, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/android/lgesettings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2157
    :cond_5
    const-string v0, "WifiSettings"

    const-string v1, "SSID is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2190
    :cond_6
    if-nez v2, :cond_1

    .line 2191
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2193
    if-nez v1, :cond_8

    .line 2194
    const-string v0, "WifiSettings"

    const-string v1, "mContext is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    :cond_7
    :try_start_0
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2212
    :goto_5
    return-object v3

    .line 2197
    :cond_8
    new-instance v2, Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-direct {v2, v1, v0}, Lcom/android/lgesettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 2198
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2199
    iget-object v0, v2, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Lcom/android/lgesettings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2208
    :catch_0
    move-exception v0

    .line 2209
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_5

    :cond_9
    move v1, v2

    goto :goto_4
.end method

.method private constructExceptScanList()V
    .locals 2

    .prologue
    .line 3183
    .line 3185
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mMatchConditionSSID:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mMatchConditionSSID:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3186
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mMatchConditionSSID:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mMatchConditionSSID:Ljava/util/ArrayList;

    .line 3190
    :cond_0
    const-string v0, "WifiSettings"

    const-string v1, "constructExceptScanList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->getMatchConditionList(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mMatchConditionSSID:Ljava/util/ArrayList;

    .line 3192
    return-void
.end method

.method private getMatchConditionList(I)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3133
    .line 3134
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/wifi/ExceptScanProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/lgesettings/wifi/WifiSettings;->EXCEPTSCAN_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "match_condition=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3139
    if-eqz v0, :cond_1

    .line 3140
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3141
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3142
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3145
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3147
    :cond_1
    return-object v1
.end method

.method private getPreferences_getPreference(I)Landroid/preference/Preference;
    .locals 1
    .parameter "i"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0, p1}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->onGetAccessPoint(I)Landroid/preference/Preference;

    move-result-object v0

    .line 528
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    goto :goto_0
.end method

.method private getPreferences_getPreferenceCount()I
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->onGetAccessPointCount()I

    move-result v0

    .line 522
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getmLastState()Landroid/net/NetworkInfo$DetailedState;
    .locals 3

    .prologue
    .line 3294
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PASSPOINT] mLastStatehs20 ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/wifi/WifiSettings;->mLastStatehs20:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    sget-object v0, Lcom/android/lgesettings/wifi/WifiSettings;->mLastStatehs20:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 2235
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2236
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2237
    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->updateWifiState(I)V

    .line 2397
    :cond_0
    :goto_0
    return-void

    .line 2239
    :cond_1
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2244
    :cond_2
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2246
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    instance-of v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    if-eqz v0, :cond_4

    .line 2247
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    check-cast v0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->updateProgressUi(Z)V

    .line 2257
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_0

    .line 2248
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    instance-of v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;

    if-eqz v0, :cond_5

    .line 2249
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    check-cast v0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->updateProgressUi(Z)V

    goto :goto_1

    .line 2250
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    instance-of v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    if-eqz v0, :cond_3

    .line 2251
    sget-object v0, Lcom/android/lgesettings/wifi/WifiSettings;->TARGET_OPERATOR:Ljava/lang/String;

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/lgesettings/wifi/WifiSettings;->TARGET_COUNTRY:Ljava/lang/String;

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2252
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    check-cast v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->updateProgressUi(Z)V

    goto :goto_1

    .line 2258
    :cond_6
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2267
    const-string v0, "newState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    .line 2269
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2270
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 2282
    :cond_7
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2283
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 2287
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2288
    invoke-direct {p0, v0, p2}, Lcom/android/lgesettings/wifi/WifiSettings;->startWiFiAggregationServer(Landroid/net/NetworkInfo;Landroid/content/Intent;)V

    .line 2292
    :cond_8
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2293
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 2294
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 2295
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 2296
    iget-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2297
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2298
    if-eqz v0, :cond_0

    .line 2299
    invoke-virtual {v0, v7}, Landroid/app/Activity;->setResult(I)V

    .line 2300
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 2308
    :cond_9
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    instance-of v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;

    if-nez v1, :cond_a

    sget-boolean v1, Lcom/android/lgesettings/wifi/WifiSettings;->mFinishonConnectionbyRequest:Z

    if-eqz v1, :cond_b

    .line 2310
    :cond_a
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2311
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->finish()V

    .line 2316
    :cond_b
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    instance-of v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/lgesettings/wifi/WifiSettings;->mLgeKtCm:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2318
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    .line 2320
    :cond_c
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2321
    invoke-direct {p0, v3}, Lcom/android/lgesettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 2323
    :cond_d
    const-string v1, "com.lge.wifi.AUTH_FAIL_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2324
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->isAuthFailNotiAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2325
    const-string v0, "authfail_networkid"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2328
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AUTH_FAIL_NOTIFICATION network id : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    if-nez v0, :cond_11

    :cond_f
    if-eq v4, v7, :cond_11

    .line 2332
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v5

    .line 2333
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2334
    if-eqz v5, :cond_15

    move v1, v2

    .line 2335
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v1, v0, :cond_15

    .line 2336
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    if-ne v0, v4, :cond_12

    .line 2337
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v4, v6}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 2338
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/wifi/AccessPoint;

    iput v7, v0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    .line 2339
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/wifi/AccessPoint;

    iput-object v3, v0, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 2340
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/wifi/AccessPoint;

    .line 2343
    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-ne v1, v8, :cond_10

    .line 2344
    iput-boolean v8, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mhiddenSSID:Z

    .line 2374
    :cond_10
    :goto_3
    if-eqz v0, :cond_11

    .line 2375
    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(Lcom/android/lgesettings/wifi/AccessPoint;Z)V

    .line 2380
    :cond_11
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0816ef

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2335
    :cond_12
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 2386
    :cond_13
    const-string v1, "com.lge.wifi.WIFI_NO_RESPONSE_FROM_INTERNET_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2387
    const-string v0, "wifi_no_response_ssid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2389
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiInternetUnavailableDialog:Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiInternetUnavailableDialog:Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2390
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiInternetUnavailableDialog:Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;->dismiss()V

    .line 2393
    :cond_14
    new-instance v1, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiInternetUnavailableDialog:Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;

    .line 2394
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiInternetUnavailableDialog:Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;->show()V

    goto/16 :goto_0

    :cond_15
    move-object v0, v3

    goto :goto_3
.end method

.method private initExceptScanDB()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3272
    .line 3273
    const/16 v2, 0x8

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "U+ Zone"

    aput-object v2, v3, v0

    const-string v2, "U+zone"

    aput-object v2, v3, v1

    const/4 v2, 0x2

    const-string v4, "U+ACN"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "myLGNet"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "QOOKnSHOWbasic"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "QOOKnSHOW"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "ollehWiFi"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "NESPOT"

    aput-object v4, v3, v2

    .line 3276
    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 3277
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 3279
    const-string v7, "ssid"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3280
    const-string v5, "match_condition"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3282
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcom/android/lgesettings/wifi/ExceptScanProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3283
    :catch_0
    move-exception v1

    .line 3284
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 3288
    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1
.end method

.method private isAuthFailNotiAvailable()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 3328
    const/4 v1, 0x0

    .line 3330
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->isExtendSetupWizardFuncAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3331
    const-string v2, "WifiSettings"

    const-string v3, "It it TMUS model check LGSetupWizard status"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.LGSetupWizard"

    const-string v4, "com.android.LGSetupWizard.SetupFlowController"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3334
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 3336
    const/4 v3, 0x2

    if-ne v3, v2, :cond_1

    .line 3345
    :goto_0
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isAuthFailNotiAvailable] ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    return v0

    .line 3340
    :cond_0
    const-string v1, "WifiSettings"

    const-string v2, "It it not TMUS model"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isCheckIMSIPrefix()Z
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x0

    .line 3046
    const/4 v1, 0x1

    .line 3047
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3049
    if-eqz v0, :cond_1

    .line 3050
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 3052
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCheckIMSIPrefix : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_1

    .line 3055
    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "45008"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "45002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 3062
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isCheckUSIM()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 3023
    const/4 v1, 0x0

    .line 3024
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3026
    if-eqz v0, :cond_1

    .line 3027
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 3028
    if-eq v2, v0, :cond_0

    const/4 v3, 0x6

    if-ne v3, v0, :cond_1

    :cond_0
    move v0, v2

    .line 3035
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isConnectionHistory()Z
    .locals 2

    .prologue
    .line 3067
    const-string v0, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3068
    const/4 v0, 0x0

    .line 3087
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isExistExceptScanList(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3154
    if-nez p1, :cond_0

    move v0, v1

    .line 3178
    :goto_0
    return v0

    .line 3160
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mMatchConditionSSID:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mMatchConditionSSID:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    .line 3161
    goto :goto_0

    .line 3164
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mMatchConditionSSID:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3165
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    .line 3166
    goto :goto_0

    .line 3169
    :cond_4
    const-string v4, "ollehWiFi"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "ollehWiFi "

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v2

    .line 3170
    goto :goto_0

    .line 3173
    :cond_5
    const-string v4, "\u200b"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u200b"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 3174
    goto :goto_0

    :cond_6
    move v0, v1

    .line 3178
    goto :goto_0
.end method

.method private isExtendSetupWizardFuncAvailable()Z
    .locals 3

    .prologue
    .line 3317
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3318
    const-string v1, "ro.build.target_country"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3320
    const-string v2, "TMO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "US"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3321
    const/4 v0, 0x1

    .line 3323
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOpenAPWarningAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2934
    .line 2936
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_open_ap_warning_do_not_show"

    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 2941
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isPhone()Z
    .locals 1

    .prologue
    .line 1976
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1978
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSetupWizardAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2893
    const/4 v0, 0x1

    .line 2895
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.android.LGSetupWizard"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2900
    :goto_0
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSetupWizardAvailable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    return v0

    .line 2896
    :catch_0
    move-exception v0

    move v0, v1

    .line 2897
    goto :goto_0
.end method

.method public static isSupportNSWO()Z
    .locals 2

    .prologue
    .line 3093
    const-string v0, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3094
    const-string v0, "WifiSettings"

    const-string v1, "isSupportNSWO() False"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    const/4 v0, 0x0

    .line 3099
    :goto_0
    return v0

    .line 3098
    :cond_0
    const-string v0, "WifiSettings"

    const-string v1, "isSupportNSWO() True"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isUserConnection(I)V
    .locals 5
    .parameter

    .prologue
    .line 3301
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->OPERATOR_LGU:Z

    if-nez v0, :cond_1

    .line 3313
    :cond_0
    :goto_0
    return-void

    .line 3305
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lgu.wifiapi.WifiSettings.CONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3306
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 3308
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 3309
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUserConnection::networkId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 3376
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3377
    .local v0, length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 3379
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 3381
    .end local p0
    :cond_0
    return-object p0
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 1996
    invoke-static {p1}, Lcom/android/lgesettings/wifi/WifiConfigController;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    .line 1998
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 1999
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 2000
    const/4 v0, 0x1

    .line 2002
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDialog(Lcom/android/lgesettings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v1, 0x1

    .line 1742
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1743
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiSettings;->removeDialog(I)V

    .line 1744
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    .line 1748
    :cond_0
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    .line 1749
    iput-boolean p2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 1751
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(I)V

    .line 1752
    return-void
.end method

.method private showSktCmAlertDialog()V
    .locals 3

    .prologue
    .line 3204
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3206
    const v1, 0x7f040195

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mAlertDialogView:Landroid/view/View;

    .line 3208
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08167a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mAlertDialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/lgesettings/wifi/WifiSettings$21;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/WifiSettings$21;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f081607

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->alertDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 3227
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mAlertDialogView:Landroid/view/View;

    const v1, 0x7f0a0309

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f081603

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3230
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mAlertDialogView:Landroid/view/View;

    const v1, 0x7f0a002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/lgesettings/wifi/WifiSettings$22;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/WifiSettings$22;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3252
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 3253
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3254
    return-void
.end method

.method private startWiFiAggregationServer(Landroid/net/NetworkInfo;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 3353
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 3354
    if-eqz p1, :cond_0

    .line 3355
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v2, :cond_0

    .line 3356
    const-string v0, "WifiSettings"

    const-string v2, "startWiFiAggregationServer"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    const-string v0, "wifiInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    .line 3358
    if-eqz v0, :cond_0

    .line 3359
    const-string v2, "WifiSettings"

    const-string v3, "null != wifiInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3360
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 3362
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectedSsid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    if-eqz v0, :cond_0

    .line 3364
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VerizonWiFi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 3365
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.wifiext.aggregation.start"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3366
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3367
    const-string v0, "WifiSettings"

    const-string v1, "sendBroadcast WIFI_AGGREGATION_SERVER_START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3373
    :cond_0
    return-void
.end method

.method private updateAccessPoints()V
    .locals 3

    .prologue
    .line 2011
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2113
    :cond_0
    :goto_0
    return-void

    .line 2013
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 2015
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2092
    :pswitch_0
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2093
    const v0, 0x7f080290

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 2018
    :pswitch_1
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v0

    .line 2019
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2020
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2025
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2026
    if-nez v1, :cond_3

    .line 2027
    const-string v0, "WifiSettings"

    const-string v1, "updateAccessPoints : mContext is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2031
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v1, :cond_4

    .line 2033
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    instance-of v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;

    if-eqz v1, :cond_6

    .line 2034
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->onInitView(Lcom/android/lgesettings/wifi/WifiSettings;Landroid/widget/Switch;)V

    .line 2044
    :cond_4
    :goto_1
    iget-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v1, :cond_8

    .line 2046
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/wifi/AccessPoint;

    .line 2047
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2049
    sget-boolean v2, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v2, :cond_7

    .line 2050
    iget-object v2, v0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/lgesettings/lge/OverlayUtils;->isSsidAllowed3LM(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2051
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 2036
    :cond_6
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-interface {v1, p0, v2}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->onInitView(Lcom/android/lgesettings/wifi/WifiSettings;Landroid/widget/Switch;)V

    goto :goto_1

    .line 2056
    :cond_7
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 2061
    :cond_8
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_9

    .line 2063
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2064
    const v1, 0x7f0802a8

    invoke-direct {p0, v1}, Lcom/android/lgesettings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 2068
    :cond_9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/wifi/AccessPoint;

    .line 2072
    sget-boolean v2, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v2, :cond_b

    .line 2073
    iget-object v2, v0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/lgesettings/lge/OverlayUtils;->isSsidAllowed3LM(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2074
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v2, v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->onAddAccessPoint(Landroid/preference/Preference;)V

    goto :goto_3

    .line 2078
    :cond_b
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v2, v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->onAddAccessPoint(Landroid/preference/Preference;)V

    goto :goto_3

    .line 2087
    :pswitch_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->onRemoveAllAccessPoint()V

    goto/16 :goto_0

    .line 2096
    :cond_c
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->onRemoveAllAccessPoint()V

    goto/16 :goto_0

    .line 2103
    :pswitch_3
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2104
    const v0, 0x7f0802a7

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_0

    .line 2107
    :cond_d
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->onRemoveAllAccessPoint()V

    goto/16 :goto_0

    .line 2015
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 2401
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2402
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mScanner:Lcom/android/lgesettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->pause()V

    .line 2459
    :cond_0
    :goto_0
    return-void

    .line 2406
    :cond_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_4

    .line 2407
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mScanner:Lcom/android/lgesettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->pause()V

    .line 2412
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 2413
    if-eqz p1, :cond_2

    .line 2414
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 2416
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sput-object v0, Lcom/android/lgesettings/wifi/WifiSettings;->mLastStatehs20:Landroid/net/NetworkInfo$DetailedState;

    .line 2421
    :cond_2
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getPreferences_getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_5

    .line 2424
    invoke-direct {p0, v1}, Lcom/android/lgesettings/wifi/WifiSettings;->getPreferences_getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 2425
    instance-of v2, v0, Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v2, :cond_3

    .line 2426
    check-cast v0, Lcom/android/lgesettings/wifi/AccessPoint;

    .line 2427
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v2, v3}, Lcom/android/lgesettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 2421
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 2409
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mScanner:Lcom/android/lgesettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 2432
    :cond_5
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_6

    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->activeTutorial:Z

    if-eqz v0, :cond_6

    .line 2433
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 2018, : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "if (state == DetailedState.CONNECTED) {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 2019, : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "if (state == DetailedState.CONNECTED) {, misCalledonCreate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->misCalledonCreate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0, v6}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->setExpandableNotificationIndex(I)V

    .line 2437
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationYesButton()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->misCalledonCreate:I

    if-eq v0, v5, :cond_0

    .line 2439
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0, v6}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->showExpandableNotificationGuide2(I)V

    goto/16 :goto_0

    .line 2442
    :cond_6
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->activeTutorial:Z

    if-eqz v0, :cond_0

    .line 2443
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 2027, : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "else if (state == DetailedState.DISCONNECTED) {, misCalledonCreate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->misCalledonCreate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 2028, : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wifiSettingsAs.getExpandableNotificationIndex() == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v2}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationYesButton()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 2450
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0, v4}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->setExpandableNotificationIndex(I)V

    .line 2451
    iget v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->misCalledonCreate:I

    if-eq v0, v5, :cond_0

    .line 2452
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0, v4}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->showExpandableNotificationGuide(I)V

    goto/16 :goto_0
.end method

.method private updateWifiState(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2462
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2463
    if-eqz v0, :cond_0

    .line 2464
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2467
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2559
    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 2560
    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 2562
    sput-object v3, Lcom/android/lgesettings/wifi/WifiSettings;->mLastStatehs20:Landroid/net/NetworkInfo$DetailedState;

    .line 2564
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mScanner:Lcom/android/lgesettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->pause()V

    .line 2565
    :cond_2
    :goto_1
    return-void

    .line 2478
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mScanner:Lcom/android/lgesettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->resume()V

    .line 2480
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->activeTutorial:Z

    if-eqz v0, :cond_2

    .line 2481
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :WIFI_STATE_ENABLED(): , 2070, misCalledonCreate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->misCalledonCreate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->isDialogShowing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 2484
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0, v5}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->setExpandableNotificationIndex(I)V

    .line 2485
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationYesButton()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->misCalledonCreate:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 2486
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0, v5}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->showExpandableNotificationGuide(I)V

    goto :goto_1

    .line 2495
    :pswitch_1
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2496
    const v0, 0x7f08028f

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 2502
    :pswitch_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0, v2}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->onWifiEnabled(Z)V

    .line 2504
    :cond_3
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2524
    const v0, 0x7f0802a7

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 2528
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    instance-of v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    if-eqz v0, :cond_8

    .line 2529
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    check-cast v0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->updateProgressUi(Z)V

    .line 2537
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->activeTutorial:Z

    if-eqz v0, :cond_6

    .line 2538
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0, v4}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->setExpandableNotificationIndex(I)V

    .line 2539
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationYesButton()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2540
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0, v4}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->showExpandableNotificationGuide(I)V

    .line 2546
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2547
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiDialog;->dismiss()V

    .line 2549
    :cond_7
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    .line 2552
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    instance-of v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;

    if-eqz v0, :cond_1

    .line 2553
    const-string v0, "WifiSettings"

    const-string v1, "updateWifiState WIFI_STATE_DISABLED -- WifiSettingsAsDialogActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->finish()V

    goto/16 :goto_0

    .line 2530
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    instance-of v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    if-eqz v0, :cond_5

    .line 2531
    sget-object v0, Lcom/android/lgesettings/wifi/WifiSettings;->TARGET_OPERATOR:Ljava/lang/String;

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/lgesettings/wifi/WifiSettings;->TARGET_COUNTRY:Ljava/lang/String;

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2532
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    check-cast v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->updateProgressUi(Z)V

    goto :goto_2

    .line 2467
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public doAddNetwork()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->onAddNetworkPressed()V

    goto :goto_0
.end method

.method public doScan()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mScanner:Lcom/android/lgesettings/wifi/WifiSettings$Scanner;

    if-nez v0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mScanner:Lcom/android/lgesettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->forceScan()V

    goto :goto_0
.end method

.method forget()V
    .locals 3

    .prologue
    .line 2812
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2814
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    :goto_0
    return-void

    .line 2818
    :cond_0
    sget-boolean v0, Lcom/android/lgesettings/wifi/WifiSettings;->mLgeKtCm:Z

    if-eqz v0, :cond_2

    const-string v0, "ollehWiFi"

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2819
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 2830
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2831
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mScanner:Lcom/android/lgesettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->resume()V

    .line 2833
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 2836
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    goto :goto_0

    .line 2821
    :cond_2
    sget-boolean v0, Lcom/android/lgesettings/wifi/WifiSettings;->LGE_SKT_CM:Z

    if-eqz v0, :cond_5

    const-string v0, "T wifi zone"

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "T wifi zone_secure"

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 2823
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto :goto_1

    .line 2826
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_1
.end method

.method public getContentResolverFromWifiSettings()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getEasyTabIndex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1370
    const-string v0, "com.android.lgesettings.Settings$ManageApplicationsActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1371
    const-string v0, "sound"

    .line 1377
    :goto_0
    return-object v0

    .line 1372
    :cond_0
    const-string v0, "com.android.lgesettings.Settings$ManageApplicationsActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.lgesettings.Settings$LocationSettingsActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.lgesettings.Settings$AccountSyncSettingsActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1375
    :cond_1
    const-string v0, "general"

    goto :goto_0

    .line 1377
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2975
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v0, :cond_0

    .line 2980
    :cond_0
    return v1
.end method

.method public getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 536
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public goWifiDirect()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 563
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    .line 565
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080303

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    const-class v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/lgesettings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method protected hasSimProblem()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1987
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1989
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x10

    const/4 v9, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 767
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 771
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.direct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 773
    const-string v0, "wlan.lge.concurrency"

    const-string v1, "MCC"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mP2pSupported:Z

    .line 780
    :goto_1
    sget-boolean v0, Lcom/android/lgesettings/wifi/WifiSettings;->mLgeKtCm:Z

    if-eqz v0, :cond_0

    .line 781
    iput-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->OPERATOR_KT_CM:Z

    .line 784
    :cond_0
    sget-boolean v0, Lcom/android/lgesettings/wifi/WifiSettings;->LGE_SKT_CM:Z

    if-eqz v0, :cond_1

    .line 785
    iput-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->OPERATOR_SKT_CM:Z

    .line 788
    :cond_1
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ************** wifisettings Model ==== "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 792
    new-instance v0, Lcom/android/lgesettings/wifi/WifiSettings$5;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/WifiSettings$5;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 805
    new-instance v0, Lcom/android/lgesettings/wifi/WifiSettings$6;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/WifiSettings$6;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 818
    new-instance v0, Lcom/android/lgesettings/wifi/WifiSettings$7;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/WifiSettings$7;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 846
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 847
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 849
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->isSetupWizardAvailable()Z

    move-result v0

    if-ne v0, v3, :cond_2

    .line 850
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.LGSetupWizard"

    const-string v6, "com.android.LGSetupWizard.SetupFlowController"

    invoke-direct {v0, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 853
    if-nez v0, :cond_2

    .line 854
    iput-boolean v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSetupWrizadr_True:Z

    .line 859
    :cond_2
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->OPERATOR_SKT:Z

    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->OPERATOR_SKT_CM:Z

    if-eq v0, v3, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->OPERATOR_KT:Z

    if-ne v0, v3, :cond_6

    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->OPERATOR_KT_CM:Z

    if-ne v0, v3, :cond_6

    :cond_4
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSetupWrizadr_True:Z

    if-nez v0, :cond_6

    .line 861
    const/4 v4, 0x0

    .line 864
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v6, "LG_WIFI_IN"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 865
    :try_start_1
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v6, "LG_WIFI"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 867
    :goto_2
    const-string v6, "WifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LG_WIFI_IN : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", LG_WIFI : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-static {}, Lcom/android/lgesettings/wifi/WifiCarrierCmIntent;->initWiFiCM()V

    .line 870
    const-string v6, "lg_wifi_into"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x47

    if-eq v0, v6, :cond_6

    :cond_5
    const-string v6, "lg_wifi_setup"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v4, 0x49

    if-ne v0, v4, :cond_c

    .line 881
    :cond_6
    if-eqz p1, :cond_7

    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 883
    const-string v0, "edit_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 884
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 891
    :cond_7
    const-string v0, "wifi_auto_finish_on_connect"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    .line 893
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v0, :cond_d

    .line 895
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 896
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 899
    :cond_8
    const-string v0, "connectivity"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 901
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 902
    if-eqz v0, :cond_d

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 904
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 905
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1076
    :cond_9
    :goto_3
    return-void

    :cond_a
    move v0, v3

    .line 773
    goto/16 :goto_0

    .line 775
    :cond_b
    iput-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mP2pSupported:Z

    goto/16 :goto_1

    .line 866
    :catch_0
    move-exception v0

    move-object v0, v4

    :goto_4
    move-object v4, v0

    move v0, v2

    goto/16 :goto_2

    .line 874
    :cond_c
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/lgesettings/wifi/WifiCarrierCmIntent;->carrierWiFiCM(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 876
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    goto :goto_3

    .line 913
    :cond_d
    const-string v0, "wifi_enable_next_on_connect"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 915
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_e

    .line 916
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 917
    const-string v0, "connectivity"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 919
    if-eqz v0, :cond_e

    .line 920
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 923
    if-eqz v0, :cond_10

    .line 924
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 935
    :cond_e
    :goto_5
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v0, :cond_f

    .line 936
    new-instance v0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;

    iget-boolean v4, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSetupWizardMode:Z

    invoke-direct {v0, v4}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;-><init>(Z)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    .line 937
    const v0, 0x7f060077

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 939
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    const/high16 v4, 0x1e4

    invoke-virtual {v0, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 947
    :cond_f
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "fromAPP"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->fromAPP:Ljava/lang/String;

    .line 949
    const-string v0, "com.lge.smartshare.conn_wizard"

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettings;->fromAPP:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 952
    sput-boolean v3, Lcom/android/lgesettings/wifi/WifiSettings;->mFinishonConnectionbyRequest:Z

    .line 954
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 956
    if-eqz v0, :cond_12

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 958
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->finish()V

    goto/16 :goto_3

    .line 926
    :cond_10
    const-string v0, "WifiSettings"

    const-string v4, "WifiSettings onActivityCreated NetworkInfo null"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 963
    :cond_11
    sput-boolean v2, Lcom/android/lgesettings/wifi/WifiSettings;->mFinishonConnectionbyRequest:Z

    .line 968
    :cond_12
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v0, :cond_14

    .line 970
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    .line 973
    const-string v0, "SetupWizard"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 974
    if-eqz v0, :cond_19

    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 975
    sget-object v0, Lcom/android/lgesettings/wifi/WifiSettings;->TARGET_COUNTRY:Ljava/lang/String;

    const-string v4, "KR"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 976
    const-string v0, "WifiSettings"

    const-string v4, "StartupWizard only KOR"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    new-instance v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    invoke-direct {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    .line 1014
    :cond_13
    :goto_6
    new-instance v0, Lcom/android/lgesettings/wifi/WifiEnabler;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v0, v1, v4}, Lcom/android/lgesettings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/lgesettings/wifi/WifiEnabler;

    .line 1020
    :cond_14
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_15

    .line 1030
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-interface {v0, p0, v1}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->onInitView(Lcom/android/lgesettings/wifi/WifiSettings;Landroid/widget/Switch;)V

    .line 1032
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_15

    .line 1033
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 1034
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v1, v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->onWifiEnabled(Z)V

    .line 1052
    :cond_15
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v0, :cond_16

    .line 1053
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 1055
    :cond_16
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 1057
    invoke-static {}, Lcom/android/lgesettings/wifi/WifiSettings;->isSupportNSWO()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1058
    new-instance v0, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;

    const v1, 0x7f0802a3

    const v4, 0x7f0802ee

    invoke-direct {v0, p0, v1, v4}, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;-><init>(Landroid/preference/PreferenceFragment;II)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mLguphoAdvanced:Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;

    .line 1066
    :cond_17
    iput v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->misCalledonCreate:I

    .line 1067
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->activeTutorial:Z

    if-eqz v0, :cond_9

    .line 1068
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_interactive_help_tips"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1069
    const-string v1, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :onResume(): , 991, wifi_interactive_help_tips:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    if-ne v0, v3, :cond_9

    .line 1071
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->createTutorialYNPopup()V

    .line 1072
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0, v2}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->setExpandableNotificationYesButton(I)V

    goto/16 :goto_3

    .line 979
    :cond_18
    const-string v0, "WifiSettings"

    const-string v4, "StartupWizard OPEN"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    new-instance v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    invoke-direct {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    goto/16 :goto_6

    .line 982
    :cond_19
    instance-of v0, v1, Lcom/android/lgesettings/Settings$WifiSettingsDialogActivity;

    if-eqz v0, :cond_1a

    .line 983
    new-instance v0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;

    invoke-direct {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    goto/16 :goto_6

    .line 984
    :cond_1a
    instance-of v0, v1, Lcom/android/lgesettings/Settings$WifiSettingsActivity;

    if-eqz v0, :cond_1b

    .line 985
    new-instance v0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-direct {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    goto/16 :goto_6

    .line 986
    :cond_1b
    instance-of v0, v1, Lcom/android/lgesettings/SubSettings;

    if-eqz v0, :cond_1c

    .line 987
    new-instance v0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-direct {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    goto/16 :goto_6

    .line 988
    :cond_1c
    instance-of v0, v1, Lcom/android/lgesettings/Settings;

    if-eqz v0, :cond_1d

    .line 989
    new-instance v0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-direct {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    goto/16 :goto_6

    .line 991
    :cond_1d
    new-instance v0, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;

    iget-boolean v4, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSetupWizardMode:Z

    invoke-direct {v0, v4}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAsDefault;-><init>(Z)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    .line 992
    const v0, 0x7f060084

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 994
    instance-of v0, v1, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_13

    move-object v0, v1

    .line 995
    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 996
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 997
    :cond_1e
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 999
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v2, v2, v4, v2}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 1000
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1002
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const v7, 0x800015

    invoke-direct {v6, v9, v9, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1008
    :cond_1f
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1009
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v4, 0x7f080107

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1010
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/high16 v4, 0x7f03

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setIcon(I)V

    goto/16 :goto_6

    .line 866
    :catch_1
    move-exception v0

    move-object v0, v4

    goto/16 :goto_4
.end method

.method onAddNetworkPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2857
    iput-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    .line 2859
    iput-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 2860
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(Lcom/android/lgesettings/wifi/AccessPoint;Z)V

    .line 2861
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2669
    sget-boolean v0, Lcom/android/lgesettings/wifi/WifiSettings;->mLgeKtCm:Z

    if-eqz v0, :cond_0

    .line 2670
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {v0, v4}, Lcom/android/lgesettings/wifi/WifiDialog;->setIpAndProxyInvalid(Z)V

    .line 2674
    :cond_0
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->activeTutorial:Z

    if-eqz v0, :cond_1

    .line 2675
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 2676
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onClick():if (button == WifiDialog.BUTTON_NEGATIVE) {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    const-string v0, "WifiSettings"

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

    const-string v2, "onClick():getExpandableNotificationIndex()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v2}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    const-string v0, "WifiSettings"

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

    const-string v2, "onClick():wifiSettingsAs.getExpandableNotificationYesButton()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v2}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationYesButton()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onClick():if (button == WifiDialog.BUTTON_NEGATIVE) {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    const-string v0, "WifiSettings"

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

    const-string v2, "onClick():getExpandableNotificationIndex()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v2}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    const-string v0, "WifiSettings"

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

    const-string v2, "onClick():wifiSettingsAs.getExpandableNotificationYesButton()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v2}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationYesButton()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationYesButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2683
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 2684
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v1}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->showExpandableNotificationGuide2(I)V

    .line 2698
    :cond_1
    :goto_0
    const/4 v0, -0x3

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v0, :cond_5

    .line 2699
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->forget()V

    .line 2755
    :cond_2
    :goto_1
    return-void

    .line 2686
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 2687
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v1}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->showExpandableNotificationGuide(I)V

    goto :goto_0

    .line 2690
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v1}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->showExpandableNotificationGuide(I)V

    goto :goto_0

    .line 2700
    :cond_5
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 2702
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiDialog;->getController()Lcom/android/lgesettings/wifi/WifiConfigController;

    move-result-object v0

    .line 2704
    sget-boolean v1, Lcom/android/lgesettings/wifi/WifiSettings;->mLgeKtCm:Z

    if-eqz v1, :cond_7

    .line 2705
    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiConfigController;->configValidKt()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2734
    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiConfigController;->ipAndProxyFieldsAreValidKt()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2735
    const-string v0, "WifiSettings"

    const-string v1, "onClick submit ipAndProxyFieldsAreValid() is true !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {v0, v4}, Lcom/android/lgesettings/wifi/WifiDialog;->setIpAndProxyInvalid(Z)V

    .line 2737
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiDialog;->getController()Lcom/android/lgesettings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->submit(Lcom/android/lgesettings/wifi/WifiConfigController;)V

    goto :goto_1

    .line 2710
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f081676

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2712
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/wifi/WifiDialog;->setIpAndProxyInvalid(Z)V

    goto :goto_1

    .line 2717
    :pswitch_1
    const v0, 0x7f081677

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_1

    .line 2722
    :pswitch_2
    const v0, 0x7f081678

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_1

    .line 2727
    :pswitch_3
    const v0, 0x7f081679

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_1

    .line 2740
    :cond_6
    const-string v0, "WifiSettings"

    const-string v1, "onClick submit ipAndProxyFieldsAreValid() is false !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/wifi/WifiDialog;->setIpAndProxyInvalid(Z)V

    goto/16 :goto_1

    .line 2745
    :cond_7
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiDialog;->getController()Lcom/android/lgesettings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->submit(Lcom/android/lgesettings/wifi/WifiConfigController;)V

    .line 2747
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->isExtendSetupWizardFuncAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2748
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    instance-of v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    if-eqz v0, :cond_2

    .line 2749
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    check-cast v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->setWifiConnectButtonFlag(Z)V

    goto/16 :goto_1

    .line 2705
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x6

    const/4 v3, -0x1

    const/4 v5, 0x3

    const/4 v1, 0x1

    .line 1453
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1455
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1458
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-nez v2, :cond_0

    .line 1459
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1610
    :goto_0
    return v0

    .line 1461
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1610
    :cond_1
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1463
    :pswitch_0
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    if-eq v2, v3, :cond_4

    .line 1464
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1466
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->isOpenAPWarningAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    if-nez v0, :cond_3

    .line 1467
    new-instance v0, Lcom/android/lgesettings/wifi/WifiOpenAPDialog;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-direct {v0, v2, v3}, Lcom/android/lgesettings/wifi/WifiOpenAPDialog;-><init>(Landroid/content/Context;Lcom/android/lgesettings/wifi/AccessPoint;)V

    .line 1468
    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiOpenAPDialog;->show()V

    :cond_2
    :goto_1
    move v0, v1

    .line 1573
    goto :goto_0

    .line 1471
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1473
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->isUserConnection(I)V

    goto :goto_1

    .line 1476
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    if-nez v2, :cond_8

    .line 1478
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_6

    const-string v2, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "u+zone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "u+acn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    if-eq v2, v5, :cond_6

    .line 1485
    if-eqz v0, :cond_2

    .line 1487
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContextItemSelected_NetworkState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eq v2, v3, :cond_2

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eq v2, v3, :cond_2

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-eq v2, v0, :cond_2

    .line 1490
    invoke-virtual {p0, v6}, Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 1496
    :cond_6
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->isOpenAPWarningAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1497
    new-instance v0, Lcom/android/lgesettings/wifi/WifiOpenAPDialog;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-direct {v0, v2, v3}, Lcom/android/lgesettings/wifi/WifiOpenAPDialog;-><init>(Landroid/content/Context;Lcom/android/lgesettings/wifi/AccessPoint;)V

    .line 1498
    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiOpenAPDialog;->show()V

    goto/16 :goto_1

    .line 1501
    :cond_7
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 1502
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1504
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->isUserConnection(I)V

    goto/16 :goto_1

    .line 1508
    :cond_8
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_a

    const-string v2, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "u+zone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "u+acn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    if-eq v2, v5, :cond_a

    .line 1515
    if-eqz v0, :cond_2

    .line 1517
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContextItemSelected_NetworkState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eq v2, v3, :cond_2

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eq v2, v3, :cond_2

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-eq v2, v0, :cond_2

    .line 1520
    invoke-virtual {p0, v6}, Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 1523
    :cond_a
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_c

    const-string v2, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-boolean v2, Lcom/android/lgesettings/wifi/WifiSettings;->mLgeKtCm:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    if-ne v2, v5, :cond_c

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v3, "ollehWiFi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->isCheckUSIM()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1526
    if-eqz v0, :cond_2

    .line 1528
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1530
    if-eqz v2, :cond_b

    .line 1531
    const-string v3, "ERROR_NOTIFICATION"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1532
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1536
    :cond_b
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContextItemSelected_NetworkState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0815e3

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1542
    :cond_c
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_e

    const-string v2, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    if-ne v2, v5, :cond_e

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v3, "ollehWiFi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-boolean v2, Lcom/android/lgesettings/wifi/WifiSettings;->mLgeKtCm:Z

    if-eqz v2, :cond_e

    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->isCheckIMSIPrefix()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1545
    if-eqz v0, :cond_2

    .line 1547
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1549
    if-eqz v2, :cond_d

    .line 1550
    const-string v3, "ERROR_NOTIFICATION"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1551
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1555
    :cond_d
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContextItemSelected_NetworkState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 1559
    :cond_e
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_f

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    if-ne v2, v5, :cond_f

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v3, "T wifi zone_secure"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->isCheckUSIM()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1563
    if-eqz v0, :cond_2

    .line 1564
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContextItemSelected_NetworkState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 1569
    :cond_f
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(Lcom/android/lgesettings/wifi/AccessPoint;Z)V

    goto/16 :goto_1

    .line 1577
    :pswitch_1
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_10

    .line 1578
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->setAllowForgetNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1584
    :cond_10
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    if-eq v0, v3, :cond_11

    .line 1585
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    :cond_11
    move v0, v1

    .line 1587
    goto/16 :goto_0

    .line 1591
    :pswitch_2
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_12

    .line 1592
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->setAllowModifyNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1597
    :cond_12
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(Lcom/android/lgesettings/wifi/AccessPoint;Z)V

    move v0, v1

    .line 1598
    goto/16 :goto_0

    .line 1602
    :pswitch_3
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    move v0, v1

    .line 1603
    goto/16 :goto_0

    :pswitch_4
    move v0, v1

    .line 1606
    goto/16 :goto_0

    .line 1461
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 654
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "firstRun"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSetupWizardMode:Z

    .line 657
    sget-boolean v5, Lcom/android/lgesettings/wifi/WifiSettings;->LGE_SKT_CM:Z

    if-eqz v5, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "WifiSettings_preferences"

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 660
    .local v3, pref_ff:Landroid/content/SharedPreferences;
    const-string v5, "sktcm_first_flag"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 662
    .local v1, flag_ff:Z
    if-eqz v1, :cond_2

    .line 663
    iput-boolean v8, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSktCmInit:Z

    .line 667
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "WifiSettings_preferences"

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 669
    .local v4, pref_ns:Landroid/content/SharedPreferences;
    const-string v5, "sktcm_not_show"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 671
    .local v2, flag_ns:Z
    if-eqz v2, :cond_3

    .line 672
    iput-boolean v8, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSktCmDoNotShowAgain:Z

    .line 679
    .end local v1           #flag_ff:Z
    .end local v2           #flag_ns:Z
    .end local v3           #pref_ff:Landroid/content/SharedPreferences;
    .end local v4           #pref_ns:Landroid/content/SharedPreferences;
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 682
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v5, :cond_1

    .line 683
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 684
    .local v0, filterLGMDM:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->addWifiPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V

    .line 685
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 688
    .end local v0           #filterLGMDM:Landroid/content/IntentFilter;
    :cond_1
    iput-boolean v8, p0, Lcom/android/lgesettings/wifi/WifiSettings;->activeTutorial:Z

    .line 689
    return-void

    .line 665
    .restart local v1       #flag_ff:Z
    .restart local v3       #pref_ff:Landroid/content/SharedPreferences;
    :cond_2
    iput-boolean v7, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSktCmInit:Z

    goto :goto_0

    .line 674
    .restart local v2       #flag_ns:Z
    .restart local v4       #pref_ns:Landroid/content/SharedPreferences;
    :cond_3
    iput-boolean v7, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSktCmDoNotShowAgain:Z

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0802a5

    const/16 v5, 0x9

    const/16 v4, 0x8

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1383
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_1

    .line 1384
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 1387
    instance-of v1, v0, Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v1, :cond_1

    .line 1388
    check-cast v0, Lcom/android/lgesettings/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    .line 1389
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1390
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/AccessPoint;->getLevel()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1392
    const/4 v0, 0x7

    const v1, 0x7f0802a4

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1394
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    if-eq v0, v3, :cond_1

    .line 1399
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1400
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v1, "VerizonWiFi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1403
    const v0, 0x7f0801ac

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1448
    :cond_1
    :goto_0
    return-void

    .line 1406
    :cond_2
    invoke-interface {p1, v2, v4, v2, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1407
    const v0, 0x7f0802a6

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1410
    :cond_3
    sget-boolean v0, Lcom/android/lgesettings/wifi/WifiSettings;->mLgeKtCm:Z

    if-eqz v0, :cond_6

    .line 1411
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/AccessPoint;->getLevel()I

    move-result v0

    if-ne v0, v3, :cond_5

    const-string v0, "ollehWiFi"

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1413
    const/16 v0, 0xb

    const v1, 0x7f081672

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1418
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_1

    .line 1419
    const/16 v0, 0xa

    const v1, 0x7f081674

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1414
    :cond_5
    const-string v0, "ollehWiFi"

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1415
    invoke-interface {p1, v2, v4, v2, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1416
    const v0, 0x7f0802a6

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 1424
    :cond_6
    sget-boolean v0, Lcom/android/lgesettings/wifi/WifiSettings;->LGE_SKT_CM:Z

    if-eqz v0, :cond_a

    const-string v0, "T wifi zone"

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_8

    :cond_7
    const-string v0, "T wifi zone_secure"

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 1429
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/AccessPoint;->getLevel()I

    move-result v0

    if-ne v0, v3, :cond_9

    .line 1430
    const/16 v0, 0xb

    const v1, 0x7f081672

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1432
    :cond_9
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_1

    .line 1433
    const/16 v0, 0xa

    const v1, 0x7f081674

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1437
    :cond_a
    invoke-interface {p1, v2, v4, v2, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1438
    const v0, 0x7f0802a6

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter

    .prologue
    const v5, 0x104000a

    const v4, 0x7f08136e

    const v3, 0x1010355

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1756
    sparse-switch p1, :sswitch_data_0

    .line 1972
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1759
    :sswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08136f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802e2

    new-instance v2, Lcom/android/lgesettings/wifi/WifiSettings$10;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/WifiSettings$10;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/lgesettings/wifi/WifiSettings$9;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/WifiSettings$9;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1783
    :sswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0815e3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/lgesettings/wifi/WifiSettings$11;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/WifiSettings$11;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1799
    :sswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0815e4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/lgesettings/wifi/WifiSettings$12;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/WifiSettings$12;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1820
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/wifi/WifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1821
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08167a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08059d

    new-instance v2, Lcom/android/lgesettings/wifi/WifiSettings$13;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/WifiSettings$13;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1838
    :sswitch_4
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-nez v2, :cond_5

    move v6, v0

    .line 1840
    :goto_1
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    .line 1841
    if-nez v3, :cond_0

    .line 1842
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1843
    new-instance v3, Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/lgesettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1845
    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    .line 1849
    :cond_0
    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    .line 1852
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1853
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1854
    const-string v1, "SetupWizard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1856
    if-eqz v0, :cond_6

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1857
    new-instance v0, Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDlgEdit:Z

    const v5, 0x7f100055

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/lgesettings/wifi/AccessPoint;ZI)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    .line 1863
    :goto_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDlgEdit:Z

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDlgEdit:Z

    if-eqz v0, :cond_4

    .line 1867
    :cond_3
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1868
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "productname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    if-eqz v0, :cond_7

    const-string v1, "vee3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1871
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xf0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1898
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    new-instance v1, Lcom/android/lgesettings/wifi/WifiSettings$14;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/WifiSettings$14;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/WifiDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1927
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    goto/16 :goto_0

    :cond_5
    move v6, v1

    .line 1838
    goto/16 :goto_1

    .line 1859
    :cond_6
    new-instance v0, Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/android/lgesettings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/lgesettings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    goto :goto_2

    .line 1882
    :cond_7
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationYesButton()Z

    move-result v0

    .line 1883
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activeTutorial:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->activeTutorial:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isTutorialView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isNetworkPressed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    iget-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->activeTutorial:Z

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    if-nez v6, :cond_8

    .line 1886
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_3

    .line 1888
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_3

    .line 1929
    :sswitch_5
    new-instance v0, Lcom/android/lgesettings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/android/lgesettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1931
    :sswitch_6
    new-instance v1, Lcom/android/lgesettings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/lgesettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto/16 :goto_0

    .line 1933
    :sswitch_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0802eb

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802e9

    new-instance v2, Lcom/android/lgesettings/wifi/WifiSettings$16;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/WifiSettings$16;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802ea

    new-instance v2, Lcom/android/lgesettings/wifi/WifiSettings$15;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/WifiSettings$15;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1952
    :sswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0802ec

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802e9

    new-instance v2, Lcom/android/lgesettings/wifi/WifiSettings$18;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/WifiSettings$18;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802ea

    new-instance v2, Lcom/android/lgesettings/wifi/WifiSettings$17;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/WifiSettings$17;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1756
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x3 -> :sswitch_6
        0x4 -> :sswitch_7
        0x5 -> :sswitch_8
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
        0x8 -> :sswitch_2
        0x7f081676 -> :sswitch_3
        0x7f081677 -> :sswitch_3
        0x7f081678 -> :sswitch_3
        0x7f081679 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 1255
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v1, :cond_0

    .line 1256
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 1257
    .local v0, wifiIsEnabled:Z
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Z)V

    .line 1259
    .end local v0           #wifiIsEnabled:Z
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1261
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 694
    iget-boolean v5, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v5, :cond_3

    .line 695
    const v5, 0x7f04013c

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 696
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0a02c5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 697
    .local v3, other:Landroid/view/View;
    new-instance v5, Lcom/android/lgesettings/wifi/WifiSettings$2;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/wifi/WifiSettings$2;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    const v5, 0x7f0a02c3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 706
    .local v0, b:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 707
    new-instance v5, Lcom/android/lgesettings/wifi/WifiSettings$3;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/lgesettings/wifi/WifiSettings$3;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;Landroid/view/LayoutInflater;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 730
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "wifi_show_custom_button"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 731
    const v5, 0x7f0a02c8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 732
    const v5, 0x7f0a0016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 733
    const v5, 0x7f0a006f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 734
    const v5, 0x7f0a0017

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 736
    const v5, 0x7f0a02c9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 737
    .local v1, customButton:Landroid/widget/Button;
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 738
    new-instance v5, Lcom/android/lgesettings/wifi/WifiSettings$4;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/wifi/WifiSettings$4;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    .end local v1           #customButton:Landroid/widget/Button;
    :cond_1
    const-string v5, "wifi_show_wifi_required_info"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 751
    const v5, 0x7f0a02c4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 761
    .end local v0           #b:Landroid/widget/ImageButton;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #other:Landroid/view/View;
    .end local v4           #view:Landroid/view/View;
    :cond_2
    :goto_0
    return-object v4

    .line 757
    :cond_3
    iget-boolean v5, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSktCmDoNotShowAgain:Z

    if-nez v5, :cond_4

    sget-boolean v5, Lcom/android/lgesettings/wifi/WifiSettings;->LGE_SKT_CM:Z

    if-eqz v5, :cond_4

    .line 758
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->showSktCmAlertDialog()V

    .line 761
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 2961
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 2963
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 2965
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2971
    :cond_0
    :goto_0
    return-void

    .line 2966
    :catch_0
    move-exception v0

    .line 2967
    const-string v1, "MDM"

    const-string v2, "mLGMDMReceiver unregisterReceiver "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 511
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 512
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroyView, activeTutorial:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->activeTutorial:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wifiSettingsAs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->activeTutorial:Z

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->setExpandableNotificationYesButton(I)V

    .line 516
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 1280
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1365
    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1282
    :sswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(I)V

    move v0, v7

    .line 1283
    goto :goto_0

    .line 1285
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    .line 1286
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080303

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v0, v7

    .line 1294
    goto :goto_0

    .line 1292
    :cond_1
    const-class v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/lgesettings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 1296
    :sswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(I)V

    move v0, v7

    .line 1297
    goto :goto_0

    .line 1299
    :sswitch_3
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1300
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mScanner:Lcom/android/lgesettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->forceScan()V

    :cond_2
    move v0, v7

    .line 1302
    goto :goto_0

    .line 1304
    :sswitch_4
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1305
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->onAddNetworkPressed()V

    :cond_3
    move v0, v7

    .line 1307
    goto :goto_0

    .line 1309
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_4

    .line 1310
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0802ee

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    move v0, v7

    .line 1318
    goto :goto_0

    .line 1316
    :cond_4
    const-class v0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/lgesettings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1320
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1321
    const-string v1, "com.lguplus.ho_client_impl"

    const-string v2, "com.lguplus.ho_client_impl.SettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1322
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    move v0, v7

    .line 1323
    goto/16 :goto_0

    .line 1327
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_5

    .line 1328
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/lgesettings/wifi/WifiConnectionHistory;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f08168b

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_3
    move v0, v7

    .line 1336
    goto/16 :goto_0

    .line 1334
    :cond_5
    const-class v0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/lgesettings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_3

    .line 1341
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings_style"

    invoke-static {v0, v1, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1342
    if-ne v0, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1343
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1344
    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1345
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1346
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1347
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1348
    const-string v1, "com.lge.settings.easy.EasySettings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1349
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    move v0, v7

    .line 1350
    goto/16 :goto_0

    .line 1352
    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1353
    const-string v1, "com.lge.settings.easy"

    const-string v3, "com.lge.settings.easy.EasySettings"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1354
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1355
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiSettings;->getEasyTabIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1356
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1357
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    .line 1358
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->finish()V

    move v0, v7

    .line 1359
    goto/16 :goto_0

    .line 1280
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_3
        0x64 -> :sswitch_7
        0x65 -> :sswitch_6
        0x102002c -> :sswitch_8
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1170
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 1173
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->activeTutorial:Z

    if-eqz v0, :cond_1

    .line 1174
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1177
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->hideExpandableNotificationGuide()V

    .line 1178
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1179
    iput v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->misCalledonCreate:I

    .line 1185
    :cond_1
    invoke-static {}, Lcom/android/lgesettings/wifi/WifiCarrierCmIntent;->isRunWiFiCM()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1186
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mScanner:Lcom/android/lgesettings/wifi/WifiSettings$Scanner;

    if-eqz v0, :cond_2

    .line 1187
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mScanner:Lcom/android/lgesettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->pause()V

    .line 1214
    :cond_2
    :goto_0
    return-void

    .line 1192
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/lgesettings/wifi/WifiEnabler;

    if-eqz v0, :cond_4

    .line 1193
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/lgesettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiEnabler;->pause()V

    .line 1195
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1198
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    instance-of v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    if-eqz v0, :cond_6

    .line 1199
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    check-cast v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->unRegisterBroadcastReceiver()V

    .line 1205
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mScanner:Lcom/android/lgesettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->pause()V

    .line 1208
    sget-boolean v0, Lcom/android/lgesettings/wifi/WifiSettings;->mLgeKtCm:Z

    if-eqz v0, :cond_2

    .line 1209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wifi.WIFI_SETTINGS_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1210
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1211
    const-string v1, "wifi_setting_status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1212
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1200
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    instance-of v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    if-eqz v0, :cond_5

    .line 1201
    const-string v0, "WifiSettings"

    const-string v1, "WifiSettingsAsSetupWizard_open unRegisterBroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    check-cast v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->unRegisterBroadcastReceiver()V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x1

    .line 1615
    instance-of v0, p2, Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v0, :cond_d

    .line 1617
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1619
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1621
    if-eqz v2, :cond_0

    .line 1622
    const-string v0, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, p2

    .line 1625
    check-cast v0, Lcom/android/lgesettings/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    .line 1627
    invoke-static {}, Lcom/android/lgesettings/wifi/WifiSettings;->isSupportNSWO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1628
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mLguphoAdvanced:Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;->checkBlackListAps(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1738
    :goto_0
    return v0

    .line 1635
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v3, :cond_4

    const-string v0, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "u+zone"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "u+acn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    if-eq v0, v5, :cond_4

    .line 1641
    if-eqz v2, :cond_3

    .line 1642
    const-string v0, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick_NetworkState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(I)V

    :cond_3
    :goto_1
    move v0, v1

    .line 1738
    goto :goto_0

    .line 1650
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v3, :cond_6

    const-string v0, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/lgesettings/wifi/WifiSettings;->mLgeKtCm:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v3, "ollehWiFi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->isCheckUSIM()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1653
    if-eqz v2, :cond_3

    .line 1655
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1657
    if-eqz v0, :cond_5

    .line 1658
    const-string v3, "ERROR_NOTIFICATION"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1659
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1663
    :cond_5
    const-string v0, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick_NetworkState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0815e3

    invoke-static {v0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1669
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v3, :cond_8

    const-string v0, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/lgesettings/wifi/WifiSettings;->mLgeKtCm:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    if-ne v0, v5, :cond_8

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v3, "ollehWiFi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->isCheckIMSIPrefix()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1672
    if-eqz v2, :cond_3

    .line 1674
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1676
    if-eqz v0, :cond_7

    .line 1677
    const-string v3, "ERROR_NOTIFICATION"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1678
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1682
    :cond_7
    const-string v0, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick_NetworkState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 1687
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v3, :cond_9

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    if-ne v0, v5, :cond_9

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v3, "T wifi zone_secure"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->isCheckUSIM()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1691
    if-eqz v2, :cond_3

    .line 1692
    const-string v0, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick_NetworkState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 1697
    :cond_9
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b

    const-string v0, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_b

    .line 1701
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->isOpenAPWarningAvailable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1702
    new-instance v0, Lcom/android/lgesettings/wifi/WifiOpenAPDialog;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-direct {v0, v2, v3}, Lcom/android/lgesettings/wifi/WifiOpenAPDialog;-><init>(Landroid/content/Context;Lcom/android/lgesettings/wifi/AccessPoint;)V

    .line 1703
    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiOpenAPDialog;->show()V

    goto/16 :goto_1

    .line 1705
    :cond_a
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 1706
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1707
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->isUserConnection(I)V

    .line 1709
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->isExtendSetupWizardFuncAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1710
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_3

    .line 1711
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0, p2}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->onPrefereceClicked(Landroid/preference/Preference;)V

    goto/16 :goto_1

    .line 1718
    :cond_b
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->activeTutorial:Z

    if-eqz v0, :cond_c

    .line 1720
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->hideExpandableNotificationGuide()V

    .line 1723
    :cond_c
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-direct {p0, v0, v6}, Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(Lcom/android/lgesettings/wifi/AccessPoint;Z)V

    .line 1725
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->isExtendSetupWizardFuncAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1726
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_3

    .line 1727
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0, p2}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->onPrefereceClicked(Landroid/preference/Preference;)V

    goto/16 :goto_1

    .line 1734
    :cond_d
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0, p2}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->onPrefereceClicked(Landroid/preference/Preference;)V

    .line 1736
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1080
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 1082
    invoke-static {}, Lcom/android/lgesettings/wifi/WifiCarrierCmIntent;->isRunWiFiCM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1083
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1166
    :cond_0
    :goto_0
    return-void

    .line 1087
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/lgesettings/wifi/WifiEnabler;

    if-eqz v0, :cond_2

    .line 1088
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/lgesettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiEnabler;->resume()V

    .line 1091
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1092
    iget v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    if-eq v0, v4, :cond_3

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_3

    .line 1094
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1095
    iget v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->isUserConnection(I)V

    .line 1097
    :cond_3
    iput v4, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 1100
    sget-boolean v0, Lcom/android/lgesettings/wifi/WifiSettings;->LGE_SKT_CM:Z

    if-eqz v0, :cond_4

    .line 1102
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_signal_strength"

    const/16 v2, -0xc8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiSignalStrength:I

    .line 1103
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->constructExceptScanList()V

    .line 1106
    :cond_4
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1108
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-ne v3, v0, :cond_5

    .line 1110
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1111
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiDialog;->dismiss()V

    .line 1116
    :cond_5
    sget-boolean v0, Lcom/android/lgesettings/wifi/WifiSettings;->mLgeKtCm:Z

    if-eqz v0, :cond_6

    .line 1117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wifi.WIFI_SETTINGS_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1118
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1119
    const-string v1, "wifi_setting_status"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1120
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1123
    :cond_6
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/SettingsBreadCrumb;->isAttached(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1124
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    instance-of v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    instance-of v0, v0, Lcom/android/lgesettings/Settings;

    if-eqz v0, :cond_8

    .line 1125
    :cond_7
    new-instance v0, Lcom/android/lgesettings/SettingsBreadCrumb;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/lgesettings/SettingsBreadCrumb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    .line 1126
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsBreadCrumb;->addSwitch(Landroid/widget/Switch;)V

    .line 1127
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/lgesettings/wifi/WifiSettings$8;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/WifiSettings$8;-><init>(Lcom/android/lgesettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1136
    :cond_8
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->activeTutorial:Z

    if-eqz v0, :cond_0

    .line 1137
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :onResume(): , 980, misCalledonCreate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->misCalledonCreate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1141
    iput-boolean v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->isDialogShowing:Z

    .line 1147
    :goto_1
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 988, :onResume(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wifiSettingsAs.getExpandableNotificationYesButton() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v2}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationYesButton()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 989, :onResume(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wifiSettingsAs.getExpandableNotificationIndex() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v2}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :onResume(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wifiSettingsAs.getExpandableNotificationYesButton() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v2}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationYesButton()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :onResume(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wifiSettingsAs.getExpandableNotificationIndex() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v2}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isDialogShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->isDialogShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->isDialogShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationYesButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 1155
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v1}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->showExpandableNotificationGuide2(I)V

    goto/16 :goto_0

    .line 1143
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->isDialogShowing:Z

    goto/16 :goto_1

    .line 1157
    :cond_a
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v0

    if-ne v0, v3, :cond_b

    .line 1158
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v1}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->showExpandableNotificationGuide(I)V

    goto/16 :goto_0

    .line 1161
    :cond_b
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v1}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->getExpandableNotificationIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->showExpandableNotificationGuide(I)V

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1265
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1268
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1270
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 1271
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 1272
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 1273
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1276
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 503
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onStop()V

    .line 504
    const-string v0, "WifiSettings"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/SettingsBreadCrumb;->isAttached(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->activeTutorial:Z

    .line 508
    :cond_0
    return-void
.end method

.method refreshAccessPoints()V
    .locals 1

    .prologue
    .line 2843
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2844
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mScanner:Lcom/android/lgesettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->resume()V

    .line 2849
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->wifiSettingsAs:Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;->onRemoveAllAccessPoint()V

    .line 2850
    :cond_1
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    .line 2886
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2887
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mScanner:Lcom/android/lgesettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->resume()V

    .line 2889
    :cond_0
    return-void
.end method

.method public setMisCalledonCreate(I)V
    .locals 3
    .parameter

    .prologue
    .line 3040
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :setMisCalledonCreate(): , 2595, misCalledonCreate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->misCalledonCreate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    iput p1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->misCalledonCreate:I

    .line 3042
    return-void
.end method

.method submit(Lcom/android/lgesettings/wifi/WifiConfigController;)V
    .locals 5
    .parameter "configController"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 2759
    invoke-virtual {p1}, Lcom/android/lgesettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2761
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_2

    .line 2762
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    if-eq v1, v3, :cond_0

    .line 2765
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 2767
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v1}, Lcom/android/lgesettings/wifi/WifiSettings;->isUserConnection(I)V

    .line 2805
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2806
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mScanner:Lcom/android/lgesettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiSettings$Scanner;->resume()V

    .line 2808
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 2809
    return-void

    .line 2769
    :cond_2
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v3, :cond_3

    .line 2770
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 2771
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 2772
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v1}, Lcom/android/lgesettings/wifi/WifiSettings;->isUserConnection(I)V

    goto :goto_0

    .line 2775
    :cond_3
    invoke-virtual {p1}, Lcom/android/lgesettings/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2782
    :cond_4
    iget-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mhiddenSSID:Z

    if-ne v1, v2, :cond_5

    .line 2783
    iput-boolean v4, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mhiddenSSID:Z

    .line 2784
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 2790
    :cond_5
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 2802
    :goto_1
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v1}, Lcom/android/lgesettings/wifi/WifiSettings;->isUserConnection(I)V

    goto :goto_0

    .line 2794
    :cond_6
    iget-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mhiddenSSID:Z

    if-ne v1, v2, :cond_7

    .line 2795
    iput-boolean v4, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mhiddenSSID:Z

    .line 2796
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 2800
    :cond_7
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_1
.end method
