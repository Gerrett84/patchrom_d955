.class public Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;
.super Ljava/lang/Object;
.source "WifiSettingsAsSetupWizard.java"

# interfaces
.implements Lcom/android/lgesettings/wifi/WifiSettings$WifiSettingsAs;


# static fields
.field private static bSelectedWifiAp:Z

.field private static bWifiFirstChecked:Z

.field private static isFirstNoSIM:Z

.field private static mNetworkMode:I


# instance fields
.field firstWifiPage:Ljava/lang/String;

.field private isMobileCheckBtnClick:Z

.field private isTempMobileSettingValue:Z

.field private mAccessPointCategory:Landroid/preference/PreferenceCategory;

.field private mAddNetwork:Landroid/preference/Preference;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field mCurrActivity:Landroid/app/Activity;

.field private mIndication:Lcom/android/lgesettings/wifi/indication_class;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsReceiverRegistered:Z

.field private mMobileNetworkMode:Landroid/preference/Preference;

.field private mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiOn:Landroid/preference/CheckBoxPreference;

.field private mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

.field network_mode_status:I

.field settingsNetworkMode:I

.field targetCountry:Ljava/lang/String;

.field targetDevice:Ljava/lang/String;

.field targetIccId:Ljava/lang/String;

.field targetIccregionalId:Ljava/lang/String;

.field targetOperator:Ljava/lang/String;

.field targetProduct:Ljava/lang/String;

.field targetProductName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    const/4 v0, -0x1

    sput v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mNetworkMode:I

    .line 101
    sput-boolean v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->isFirstNoSIM:Z

    .line 126
    sput-boolean v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->bWifiFirstChecked:Z

    .line 128
    sput-boolean v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->bSelectedWifiAp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mCurrActivity:Landroid/app/Activity;

    .line 104
    const-string v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetProduct:Ljava/lang/String;

    .line 106
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetOperator:Ljava/lang/String;

    .line 107
    const-string v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetCountry:Ljava/lang/String;

    .line 108
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetProductName:Ljava/lang/String;

    .line 111
    const-string v0, "ril.temp.countrycodeforoneimage"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetIccId:Ljava/lang/String;

    .line 112
    const-string v0, "persist.sys.iccid-mcc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetIccregionalId:Ljava/lang/String;

    .line 113
    const-string v0, "sys.lgsetupwizard.wifistatus"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->firstWifiPage:Ljava/lang/String;

    .line 116
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetDevice:Ljava/lang/String;

    .line 117
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mIsReceiverRegistered:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->isMobileCheckBtnClick:Z

    .line 124
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->isTempMobileSettingValue:Z

    .line 131
    new-instance v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$1;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->isWifiExtendFuncAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1002(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->isWifiFirstChecked(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->handleStateChanged(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->getPreferredNetworkMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkMode:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Lcom/android/lgesettings/wifi/WifiSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->isFirstNoSIM:Z

    return v0
.end method

.method private displayConnectFailDialog(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 942
    const-string v0, "WifiSettingsAsSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[displayConnectFailDialog] deviceName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 948
    const v1, 0x7f08100e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 950
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08100f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 951
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 952
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f081010

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 954
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 956
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08031e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$7;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$7;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 962
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 963
    sput-boolean v4, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->bSelectedWifiAp:Z

    .line 965
    return-void
.end method

.method private getPreferredNetworkMode()I
    .locals 4

    .prologue
    .line 864
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    sget v3, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 866
    .local v0, nwMode:I
    return v0
.end method

.method private handleStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 977
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 978
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mCurrActivity:Landroid/app/Activity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 979
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 981
    if-eqz v0, :cond_1

    .line 982
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 983
    const-string v2, "WifiSettingsAsSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifiConfig.status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const-string v2, "WifiSettingsAsSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifiConfig.SSID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-boolean v2, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->bSelectedWifiAp:Z

    if-eqz v2, :cond_0

    .line 986
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->displayConnectFailDialog(Ljava/lang/String;)V

    .line 992
    :cond_1
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 741
    const-string v0, "WifiSettingsAsSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleWifiStateChanged] state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    packed-switch p1, :pswitch_data_0

    .line 759
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 760
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 763
    :goto_0
    return-void

    .line 745
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 748
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 749
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 752
    :pswitch_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 755
    :pswitch_3
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 756
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 743
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isWifiExtendFuncAvailable()Z
    .locals 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetOperator:Ljava/lang/String;

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetCountry:Ljava/lang/String;

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    const/4 v0, 0x1

    .line 971
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiFirstChecked(Z)Z
    .locals 7
    .parameter "wifiEnable"

    .prologue
    .line 877
    const/4 v3, 0x0

    .line 878
    .local v3, ret:Z
    const/4 v1, 0x0

    .line 880
    .local v1, isDisableSetupWizard:Z
    const-string v0, "com.android.LGSetupWizard"

    .line 882
    .local v0, LGSetupWizard:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    if-eqz v4, :cond_0

    .line 883
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v4}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mContext:Landroid/content/Context;

    .line 884
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 885
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 886
    const/4 v1, 0x0

    .line 892
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    const-string v4, "WifiSettingsAsSetupWizard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDisableSetupWizard = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const-string v4, "WifiSettingsAsSetupWizard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bWifiFirstChecked = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->bWifiFirstChecked:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const-string v4, "WifiSettingsAsSetupWizard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wifiEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    if-nez v1, :cond_1

    sget-boolean v4, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->bWifiFirstChecked:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    .line 897
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->bWifiFirstChecked:Z

    .line 898
    const/4 v3, 0x1

    .line 901
    :cond_1
    const-string v4, "WifiSettingsAsSetupWizard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    return v3

    .line 888
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateState(I)V
    .locals 3
    .parameter "network_mode_status"

    .prologue
    .line 825
    const-string v0, "WifiSettingsAsSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState() : network_mode_status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    packed-switch p1, :pswitch_data_0

    .line 838
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkMode:Landroid/preference/Preference;

    const v1, 0x7f080be6

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 841
    :goto_0
    return-void

    .line 828
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkMode:Landroid/preference/Preference;

    const v1, 0x7f080be7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 829
    const-string v0, "WifiSettingsAsSetupWizard"

    const-string v1, "updateState() : NT_MODE_LTE_CDMA_AND_EVDO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 833
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkMode:Landroid/preference/Preference;

    const v1, 0x7f080be9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 834
    const-string v0, "WifiSettingsAsSetupWizard"

    const-string v1, "updateState() : NT_MODE_CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 826
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public createTutorialYNPopup()V
    .locals 0

    .prologue
    .line 735
    return-void
.end method

.method public getExpandableNotificationIndex()I
    .locals 1

    .prologue
    .line 727
    const/4 v0, 0x0

    return v0
.end method

.method public getExpandableNotificationYesButton()Z
    .locals 1

    .prologue
    .line 718
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkMode()I
    .locals 5

    .prologue
    .line 845
    const/4 v0, -0x1

    .line 847
    .local v0, mode:I
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    sget v4, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 849
    .local v1, networkMode:I
    sparse-switch v1, :sswitch_data_0

    .line 860
    :goto_0
    return v0

    .line 851
    :sswitch_0
    const/4 v0, 0x0

    .line 852
    goto :goto_0

    .line 854
    :sswitch_1
    const/4 v0, 0x1

    .line 855
    goto :goto_0

    .line 849
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public hideExpandableNotificationGuide()V
    .locals 0

    .prologue
    .line 690
    return-void
.end method

.method public isWifiOnly(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 995
    .line 997
    const/4 v1, 0x5

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "awifi_open_kr"

    aput-object v1, v3, v0

    const-string v1, "awifi_open_na"

    aput-object v1, v3, v2

    const/4 v1, 0x2

    const-string v4, "awifi_open_eu"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const-string v4, "awifi_open_la"

    aput-object v4, v3, v1

    const/4 v1, 0x4

    const-string v4, "awifi070u_open_kr"

    aput-object v4, v3, v1

    move v1, v0

    .line 999
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 1000
    aget-object v4, v3, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1001
    const-string v1, "SetupWizardUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mProductName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const-string v1, "SetupWizardUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "productName["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 999
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1007
    :cond_1
    return v1
.end method

.method public onAddAccessPoint(Landroid/preference/Preference;)V
    .locals 1
    .parameter "accessPoint"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 629
    :cond_0
    return-void
.end method

.method public onAddMessage(I)V
    .locals 0
    .parameter "msgId"

    .prologue
    .line 623
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Z)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"
    .parameter "wifiIsEnabled"

    .prologue
    const/4 v2, 0x0

    .line 603
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetOperator:Ljava/lang/String;

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetCountry:Ljava/lang/String;

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    const/4 v0, 0x6

    const v1, 0x7f080307

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 610
    :cond_0
    const/4 v0, 0x1

    const v1, 0x7f08029e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 614
    const/4 v0, 0x2

    const v1, 0x7f0802a0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 619
    return-void
.end method

.method public onGetAccessPoint(I)Landroid/preference/Preference;
    .locals 1
    .parameter "i"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 642
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

.method public onGetAccessPointCount()I
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 635
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitView(Lcom/android/lgesettings/wifi/WifiSettings;Landroid/widget/Switch;)V
    .locals 13
    .parameter "wifiSettings"
    .parameter "actionBarSwitch"

    .prologue
    .line 192
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetOperator:Ljava/lang/String;

    const-string v11, "USC"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetCountry:Ljava/lang/String;

    const-string v11, "MX"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 194
    const-string v10, "IUSACELL"

    iput-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetOperator:Ljava/lang/String;

    .line 197
    :cond_0
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    .line 198
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->registerBroadcastReceiver()V

    .line 199
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    if-eqz v10, :cond_3

    .line 201
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetOperator:Ljava/lang/String;

    const-string v11, "USC"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetCountry:Ljava/lang/String;

    const-string v11, "US"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 202
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const v11, 0x7f060096

    invoke-virtual {v10, v11}, Lcom/android/lgesettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 215
    :goto_0
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v10}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iput-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mCurrActivity:Landroid/app/Activity;

    .line 216
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v10}, Lcom/android/lgesettings/wifi/WifiSettings;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 217
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const-string v11, "wifi_access_point"

    invoke-virtual {v10, v11}, Lcom/android/lgesettings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    .line 219
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const-string v11, "add_network"

    invoke-virtual {v10, v11}, Lcom/android/lgesettings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mAddNetwork:Landroid/preference/Preference;

    .line 310
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetOperator:Ljava/lang/String;

    const-string v11, "USC"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetCountry:Ljava/lang/String;

    const-string v11, "US"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 311
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const-string v11, "network_mode"

    invoke-virtual {v10, v11}, Lcom/android/lgesettings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkMode:Landroid/preference/Preference;

    .line 312
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->getNetworkMode()I

    move-result v10

    iput v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->network_mode_status:I

    .line 314
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkMode:Landroid/preference/Preference;

    if-eqz v10, :cond_1

    .line 315
    const-string v10, "WifiSettingsAsSetupWizard"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[Testyouni]mMobileNetworkMode : network_mode_status "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->network_mode_status:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->network_mode_status:I

    invoke-direct {p0, v10}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->updateState(I)V

    .line 319
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkMode:Landroid/preference/Preference;

    new-instance v11, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;

    invoke-direct {v11, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)V

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 372
    :cond_1
    :try_start_0
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v10}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 373
    .local v0, activity:Landroid/app/Activity;
    const v10, 0x1020289

    invoke-virtual {v0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 374
    .local v9, vg:Landroid/view/ViewGroup;
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 376
    const v10, 0x1020359

    invoke-virtual {v0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 377
    const v10, 0x102035a

    invoke-virtual {v0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 378
    const v10, 0x102035b

    invoke-virtual {v0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 380
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f040142

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 382
    .local v4, layout:Landroid/view/View;
    const v10, 0x7f0a02d5

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 383
    .local v2, indication_LinearLayout:Landroid/widget/LinearLayout;
    new-instance v10, Lcom/android/lgesettings/wifi/indication_class;

    invoke-direct {v10, v0}, Lcom/android/lgesettings/wifi/indication_class;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mIndication:Lcom/android/lgesettings/wifi/indication_class;

    .line 385
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 386
    .local v3, intent:Landroid/content/Intent;
    const/4 v5, 0x0

    .local v5, max:I
    const/4 v8, 0x0

    .line 387
    .local v8, page_num:I
    if-eqz v3, :cond_2

    .line 389
    const-string v10, "indication_max"

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 390
    const-string v10, "WifiSettingsAsSetupWizard"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SetupWelcome - max"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v10, "indication_page"

    invoke-virtual {v3, v10, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 392
    const-string v10, "WifiSettingsAsSetupWizard"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SetupWelcome - page_num"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mIndication:Lcom/android/lgesettings/wifi/indication_class;

    invoke-virtual {v10, v9, v4, v5, v8}, Lcom/android/lgesettings/wifi/indication_class;->updatePageIndicator(Landroid/view/ViewGroup;Landroid/view/View;II)V

    .line 397
    :cond_2
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetProduct:Ljava/lang/String;

    const-string v11, "zee"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 399
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f060087

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 408
    .local v1, buttonBar:Landroid/view/View;
    :goto_1
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    const v10, 0x7f0a0480

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 419
    .local v6, mbackButton:Landroid/view/View;
    new-instance v10, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$3;

    invoke-direct {v10, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$3;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    const v10, 0x7f0a0481

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 432
    .local v7, mnextButton:Landroid/view/View;
    new-instance v10, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;

    invoke-direct {v10, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #buttonBar:Landroid/view/View;
    .end local v2           #indication_LinearLayout:Landroid/widget/LinearLayout;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #layout:Landroid/view/View;
    .end local v5           #max:I
    .end local v6           #mbackButton:Landroid/view/View;
    .end local v7           #mnextButton:Landroid/view/View;
    .end local v8           #page_num:I
    .end local v9           #vg:Landroid/view/ViewGroup;
    :goto_2
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const-string v11, "wifi_on"

    invoke-virtual {v10, v11}, Lcom/android/lgesettings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    .line 506
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetProduct:Ljava/lang/String;

    const-string v11, "p2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 509
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f06003b

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 516
    :goto_3
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_3

    .line 518
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 520
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    new-instance v11, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;

    invoke-direct {v11, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)V

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 599
    :cond_3
    return-void

    .line 203
    :cond_4
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetOperator:Ljava/lang/String;

    const-string v11, "TMO"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetCountry:Ljava/lang/String;

    const-string v11, "US"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 204
    const-string v10, "WifiSettingsAsSetupWizard"

    const-string v11, "mWifiSettings secontenview (TMO & US)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const v11, 0x7f060095

    invoke-virtual {v10, v11}, Lcom/android/lgesettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 206
    :cond_5
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetOperator:Ljava/lang/String;

    const-string v11, "TLF"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetCountry:Ljava/lang/String;

    const-string v11, "ES"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 207
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const v11, 0x7f060094

    invoke-virtual {v10, v11}, Lcom/android/lgesettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 208
    :cond_6
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetDevice:Ljava/lang/String;

    const-string v11, "awifi"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 209
    const-string v10, "WifiSettingsAsSetupWizard"

    const-string v11, "mWifiSettings setcontenview A-project"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const v11, 0x7f060090

    invoke-virtual {v10, v11}, Lcom/android/lgesettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 212
    :cond_7
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const v11, 0x7f06008f

    invoke-virtual {v10, v11}, Lcom/android/lgesettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 400
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v2       #indication_LinearLayout:Landroid/widget/LinearLayout;
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #layout:Landroid/view/View;
    .restart local v5       #max:I
    .restart local v8       #page_num:I
    .restart local v9       #vg:Landroid/view/ViewGroup;
    :cond_8
    :try_start_1
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetProduct:Ljava/lang/String;

    const-string v11, "vu3"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 401
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f060088

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .restart local v1       #buttonBar:Landroid/view/View;
    goto/16 :goto_1

    .line 402
    .end local v1           #buttonBar:Landroid/view/View;
    :cond_9
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetProductName:Ljava/lang/String;

    const-string v11, "w7ds_open_cis"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 403
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f060089

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .restart local v1       #buttonBar:Landroid/view/View;
    goto/16 :goto_1

    .line 405
    .end local v1           #buttonBar:Landroid/view/View;
    :cond_a
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f060086

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .restart local v1       #buttonBar:Landroid/view/View;
    goto/16 :goto_1

    .line 513
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #buttonBar:Landroid/view/View;
    .end local v2           #indication_LinearLayout:Landroid/widget/LinearLayout;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #layout:Landroid/view/View;
    .end local v5           #max:I
    .end local v8           #page_num:I
    .end local v9           #vg:Landroid/view/ViewGroup;
    :cond_b
    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f060091

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setWidgetLayoutResource(I)V

    goto/16 :goto_3

    .line 500
    :catch_0
    move-exception v10

    goto/16 :goto_2
.end method

.method public onPrefereceClicked(Landroid/preference/Preference;)V
    .locals 4
    .parameter "preference"

    .prologue
    .line 653
    const-string v1, "WifiSettingsAsSetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrefereceClicked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mAddNetwork:Landroid/preference/Preference;

    if-ne p1, v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    if-eqz v1, :cond_0

    .line 658
    const-string v1, "WifiSettingsAsSetupWizard"

    const-string v2, "onPrefereceClicked - mWifiSettings is not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->doAddNetwork()V

    .line 663
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->isWifiExtendFuncAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 664
    instance-of v1, p1, Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 665
    check-cast v0, Lcom/android/lgesettings/wifi/AccessPoint;

    .line 667
    .local v0, SelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_1

    .line 668
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->bSelectedWifiAp:Z

    .line 671
    :cond_1
    const-string v1, "WifiSettingsAsSetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected ap name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const-string v1, "WifiSettingsAsSetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bSelectedWifiAp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->bSelectedWifiAp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    .end local v0           #SelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;
    :cond_2
    return-void
.end method

.method public onRemoveAllAccessPoint()V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 649
    :cond_0
    return-void
.end method

.method public onWifiEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 685
    :cond_0
    return-void
.end method

.method public registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mContext:Landroid/content/Context;

    .line 152
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 153
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mIntentFilter:Landroid/content/IntentFilter;

    .line 156
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mIsReceiverRegistered:Z

    .line 162
    :cond_0
    return-void
.end method

.method public setExpandableNotificationIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 732
    return-void
.end method

.method public setExpandableNotificationYesButton(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 723
    return-void
.end method

.method public setWifiConnectButtonFlag(Z)V
    .locals 3
    .parameter "bConnectedFlag"

    .prologue
    .line 184
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->bSelectedWifiAp:Z

    .line 185
    const-string v0, "WifiSettingsAsSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bSelectedWifiAp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->bSelectedWifiAp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public showExpandableNotificationGuide(I)V
    .locals 0
    .parameter "scene"

    .prologue
    .line 694
    return-void
.end method

.method public showExpandableNotificationGuide2(I)V
    .locals 0
    .parameter "scene"

    .prologue
    .line 710
    return-void
.end method

.method public unRegisterBroadcastReceiver()V
    .locals 3

    .prologue
    .line 169
    iget-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mIsReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 181
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 174
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 175
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    const-string v1, "WifiSettingsAsSetupWizard"

    const-string v2, "Call unRegisterBroadcastReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v0           #context:Landroid/content/Context;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mIsReceiverRegistered:Z

    goto :goto_0
.end method

.method public updateProgressUi(Z)V
    .locals 1
    .parameter "start"

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    instance-of v0, v0, Lcom/android/lgesettings/wifi/WifiProgressCategorySetupWizard;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    check-cast v0, Lcom/android/lgesettings/wifi/WifiProgressCategorySetupWizard;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/wifi/WifiProgressCategorySetupWizard;->setProgress(Z)V

    .line 874
    :cond_0
    return-void
.end method
