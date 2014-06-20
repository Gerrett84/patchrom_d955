.class public Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;
.super Ljava/lang/Object;
.source "WifiSettingsAsSetupWizard_open.java"

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

    .line 74
    const/4 v0, -0x1

    sput v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mNetworkMode:I

    .line 103
    sput-boolean v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isFirstNoSIM:Z

    .line 128
    sput-boolean v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->bWifiFirstChecked:Z

    .line 130
    sput-boolean v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->bSelectedWifiAp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mCurrActivity:Landroid/app/Activity;

    .line 106
    const-string v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetProduct:Ljava/lang/String;

    .line 108
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetOperator:Ljava/lang/String;

    .line 109
    const-string v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetCountry:Ljava/lang/String;

    .line 110
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetProductName:Ljava/lang/String;

    .line 113
    const-string v0, "ril.temp.countrycodeforoneimage"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetIccId:Ljava/lang/String;

    .line 114
    const-string v0, "persist.sys.iccid-mcc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetIccregionalId:Ljava/lang/String;

    .line 115
    const-string v0, "sys.lgsetupwizard.wifistatus"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->firstWifiPage:Ljava/lang/String;

    .line 118
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetDevice:Ljava/lang/String;

    .line 119
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mIsReceiverRegistered:Z

    .line 125
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isMobileCheckBtnClick:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isTempMobileSettingValue:Z

    .line 133
    new-instance v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$1;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private IsSIMStateCheck()Z
    .locals 4

    .prologue
    .line 790
    const/4 v0, 0x1

    .line 792
    .local v0, isInsertSIM:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 794
    const-string v1, "WifiSettingsAsSetupWizard_open"

    const-string v2, "TelephonyManager.getDefault() not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 796
    const/4 v0, 0x0

    .line 797
    :cond_0
    const-string v1, "WifiSettingsAsSetupWizard_open"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInsertSIM = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :goto_0
    if-nez v0, :cond_1

    sget-boolean v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isFirstNoSIM:Z

    if-nez v1, :cond_1

    .line 806
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08132b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08132c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$7;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$7;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 820
    :cond_1
    sget-boolean v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isFirstNoSIM:Z

    if-eqz v1, :cond_2

    .line 822
    const-string v1, "WifiSettingsAsSetupWizard_open"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFirstNoSIM = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isFirstNoSIM:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f08132d

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 825
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 827
    :cond_2
    return v0

    .line 801
    :cond_3
    const-string v1, "WifiSettingsAsSetupWizard_open"

    const-string v2, "TelephonyManager.getDefault() null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isWifiExtendFuncAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isFirstNoSIM:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-boolean p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isFirstNoSIM:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isWifiFirstChecked(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->handleStateChanged(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isMobileCheckBtnClick:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isMobileCheckBtnClick:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Lcom/android/lgesettings/wifi/WifiSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isTempMobileSettingValue:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isTempMobileSettingValue:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->getPreferredNetworkMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkMode:Landroid/preference/Preference;

    return-object v0
.end method

.method private displayConnectFailDialog(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 969
    const-string v0, "WifiSettingsAsSetupWizard_open"

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

    .line 974
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 975
    const v1, 0x7f08100e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 977
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08100f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 978
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 979
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f081010

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 981
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 983
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08031e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$8;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$8;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 989
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 990
    sput-boolean v4, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->bSelectedWifiAp:Z

    .line 992
    return-void
.end method

.method private getPreferredNetworkMode()I
    .locals 4

    .prologue
    .line 887
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    sget v3, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 889
    .local v0, nwMode:I
    return v0
.end method

.method private handleStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1004
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1005
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mCurrActivity:Landroid/app/Activity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1006
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 1008
    if-eqz v0, :cond_1

    .line 1009
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1010
    const-string v2, "WifiSettingsAsSetupWizard_open"

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

    .line 1011
    const-string v2, "WifiSettingsAsSetupWizard_open"

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

    .line 1012
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-boolean v2, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->bSelectedWifiAp:Z

    if-eqz v2, :cond_0

    .line 1013
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->displayConnectFailDialog(Ljava/lang/String;)V

    .line 1019
    :cond_1
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 764
    const-string v0, "WifiSettingsAsSetupWizard_open"

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

    .line 766
    packed-switch p1, :pswitch_data_0

    .line 782
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 783
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 786
    :goto_0
    return-void

    .line 768
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 771
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 772
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 775
    :pswitch_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 778
    :pswitch_3
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 779
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 766
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isNotInsertSIMWarning()Z
    .locals 6

    .prologue
    .line 831
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "g2_lgu_kr"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "vu3_lgu_kr"

    aput-object v4, v1, v3

    .line 832
    .local v1, productName:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 833
    .local v2, ret:Z
    const-string v3, "WifiSettingsAsSetupWizard_open"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "productName\'s number : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 836
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetProductName:Ljava/lang/String;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 837
    const-string v3, "WifiSettingsAsSetupWizard_open"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "targetProduct : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetProduct:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const-string v3, "WifiSettingsAsSetupWizard_open"

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

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const/4 v2, 0x1

    .line 835
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 842
    :cond_1
    const-string v3, "WifiSettingsAsSetupWizard_open"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNotInsertSIMWarning return = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    return v2
.end method

.method private isWifiExtendFuncAvailable()Z
    .locals 2

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetOperator:Ljava/lang/String;

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetCountry:Ljava/lang/String;

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    const/4 v0, 0x1

    .line 998
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiFirstChecked(Z)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 900
    .line 903
    const-string v0, "com.android.LGSetupWizard"

    .line 905
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    if-eqz v3, :cond_2

    .line 906
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v3}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mContext:Landroid/content/Context;

    .line 907
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 908
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    move v0, v1

    .line 915
    :goto_0
    const-string v3, "WifiSettingsAsSetupWizard_open"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDisableSetupWizard = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const-string v3, "WifiSettingsAsSetupWizard_open"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bWifiFirstChecked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->bWifiFirstChecked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const-string v3, "WifiSettingsAsSetupWizard_open"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifiEnable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->bWifiFirstChecked:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 920
    sput-boolean v2, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->bWifiFirstChecked:Z

    move v1, v2

    .line 924
    :cond_0
    const-string v0, "WifiSettingsAsSetupWizard_open"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    return v1

    :cond_1
    move v0, v2

    .line 911
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private updateState(I)V
    .locals 3
    .parameter "network_mode_status"

    .prologue
    .line 848
    const-string v0, "WifiSettingsAsSetupWizard_open"

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

    .line 849
    packed-switch p1, :pswitch_data_0

    .line 861
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkMode:Landroid/preference/Preference;

    const v1, 0x7f080be6

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 864
    :goto_0
    return-void

    .line 851
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkMode:Landroid/preference/Preference;

    const v1, 0x7f080be7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 852
    const-string v0, "WifiSettingsAsSetupWizard_open"

    const-string v1, "updateState() : NT_MODE_LTE_CDMA_AND_EVDO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 856
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkMode:Landroid/preference/Preference;

    const v1, 0x7f080be9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 857
    const-string v0, "WifiSettingsAsSetupWizard_open"

    const-string v1, "updateState() : NT_MODE_CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 849
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
    .line 758
    return-void
.end method

.method public getExpandableNotificationIndex()I
    .locals 1

    .prologue
    .line 750
    const/4 v0, 0x0

    return v0
.end method

.method public getExpandableNotificationYesButton()Z
    .locals 1

    .prologue
    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkMode()I
    .locals 5

    .prologue
    .line 868
    const/4 v0, -0x1

    .line 870
    .local v0, mode:I
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    sget v4, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 872
    .local v1, networkMode:I
    sparse-switch v1, :sswitch_data_0

    .line 883
    :goto_0
    return v0

    .line 874
    :sswitch_0
    const/4 v0, 0x0

    .line 875
    goto :goto_0

    .line 877
    :sswitch_1
    const/4 v0, 0x1

    .line 878
    goto :goto_0

    .line 872
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public getRuntimeMccCode()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 1022
    const-string v1, "0"

    .line 1023
    const/4 v2, 0x0

    .line 1027
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1033
    if-eqz v0, :cond_1

    .line 1034
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_1

    .line 1035
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1039
    :goto_0
    if-eqz v0, :cond_0

    .line 1040
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1045
    :goto_1
    return-object v0

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    const-string v0, "WifiSettingsAsSetupWizard_open"

    const-string v2, "[getRuntimeMccCode] Exception occured"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1030
    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public getRuntimeMncCode()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 1049
    const-string v1, "0"

    .line 1050
    const/4 v2, 0x0

    .line 1054
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1060
    if-eqz v0, :cond_1

    .line 1061
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_1

    .line 1062
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1066
    :goto_0
    if-eqz v0, :cond_0

    .line 1067
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1072
    :goto_1
    return-object v0

    .line 1055
    :catch_0
    move-exception v0

    .line 1056
    const-string v0, "WifiSettingsAsSetupWizard_open"

    const-string v2, "[getRuntimeMncCode] Exception occured"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1057
    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public hideExpandableNotificationGuide()V
    .locals 0

    .prologue
    .line 713
    return-void
.end method

.method public isDataEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 930
    const-string v0, "WifiSettingsAsSetupWizard_open"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDataEnable => iccid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", country : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", operator : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const-string v0, "DCM"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "OPEN"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CIS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "425"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "EU"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetIccregionalId:Ljava/lang/String;

    const-string v1, "208"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetIccregionalId:Ljava/lang/String;

    const-string v1, "647"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_0
    const-string v0, "ORG"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "226"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_1
    const-string v0, "H3G"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_2
    const-string v0, "TEL"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "505"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_3
    const-string v0, "VIV"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "724"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_4
    const-string v0, "BEL"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "TLS"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, "302"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_6
    const-string v0, "O2"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "262"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_7
    const-string v0, "CCM"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "PCL"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const-string v0, "425"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_9
    const-string v0, "MPCS"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "TRF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const-string v0, "310"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_b
    const-string v0, "TL2"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "TLA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    const-string v0, "240"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_d
    const-string v0, "TCL"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "USC"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    const-string v0, "334"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_f
    const-string v0, "BYT"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "FREE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "SFR"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    const-string v0, "208"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_11
    const-string v0, "CMCC"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "CN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    const-string v0, "TMO"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "262"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "216"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "204"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "202"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "231"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    const-string v0, "ORG"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "234"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 962
    :cond_14
    const-string v0, "WifiSettingsAsSetupWizard_open"

    const-string v1, "isDataEnable return true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/4 v0, 0x1

    .line 966
    :goto_0
    return v0

    .line 965
    :cond_15
    const-string v0, "WifiSettingsAsSetupWizard_open"

    const-string v1, "isDataEnable return false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAddAccessPoint(Landroid/preference/Preference;)V
    .locals 1
    .parameter "accessPoint"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 652
    :cond_0
    return-void
.end method

.method public onAddMessage(I)V
    .locals 0
    .parameter "msgId"

    .prologue
    .line 646
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Z)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"
    .parameter "wifiIsEnabled"

    .prologue
    const/4 v2, 0x0

    .line 626
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetOperator:Ljava/lang/String;

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetCountry:Ljava/lang/String;

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    const/4 v0, 0x6

    const v1, 0x7f080307

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 633
    :cond_0
    const/4 v0, 0x1

    const v1, 0x7f08029e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 637
    const/4 v0, 0x2

    const v1, 0x7f0802a0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 642
    return-void
.end method

.method public onGetAccessPoint(I)Landroid/preference/Preference;
    .locals 1
    .parameter "i"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 665
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
    .line 656
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 658
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitView(Lcom/android/lgesettings/wifi/WifiSettings;Landroid/widget/Switch;)V
    .locals 18
    .parameter "wifiSettings"
    .parameter "actionBarSwitch"

    .prologue
    .line 193
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetOperator:Ljava/lang/String;

    const-string v14, "USC"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetCountry:Ljava/lang/String;

    const-string v14, "MX"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 195
    const-string v13, "IUSACELL"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetOperator:Ljava/lang/String;

    .line 198
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->registerBroadcastReceiver()V

    .line 200
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    if-eqz v13, :cond_8

    .line 202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetOperator:Ljava/lang/String;

    const-string v14, "USC"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetCountry:Ljava/lang/String;

    const-string v14, "US"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const v14, 0x7f060096

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 217
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v13}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mCurrActivity:Landroid/app/Activity;

    .line 218
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v13}, Lcom/android/lgesettings/wifi/WifiSettings;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const-string v14, "wifi_access_point"

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    .line 221
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const-string v14, "add_network"

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mAddNetwork:Landroid/preference/Preference;

    .line 224
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const-string v14, "mobile_network"

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    .line 225
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    if-eqz v13, :cond_3

    .line 228
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetOperator:Ljava/lang/String;

    const-string v14, "TLF"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetCountry:Ljava/lang/String;

    const-string v14, "ES"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 229
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f0807f3

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f080f25

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 232
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mCurrActivity:Landroid/app/Activity;

    const-string v14, "connectivity"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 233
    .local v4, connManager:Landroid/net/ConnectivityManager;
    if-eqz v4, :cond_2

    .line 242
    const-string v13, "WifiSettingsAsSetupWizard_open"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "targetProductName : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetProductName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v13, "WifiSettingsAsSetupWizard_open"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "targetProduct : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetProduct:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v13, "WifiSettingsAsSetupWizard_open"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "targetOperator : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetOperator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v13, "WifiSettingsAsSetupWizard_open"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "targetIccregionalId : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetIccregionalId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v13, "WifiSettingsAsSetupWizard_open"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "targetIccId : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetIccId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v13, "WifiSettingsAsSetupWizard_open"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MobileNetwork OnOff connetivity : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v13, "WifiSettingsAsSetupWizard_open"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MobileNetwork OnOff Global.MOBILE_DATA : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "mobile_data"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->firstWifiPage:Ljava/lang/String;

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 251
    const-string v13, "WifiSettingsAsSetupWizard_open"

    const-string v14, "MobileNetwork OPEN Set internet connection firstpage"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isMobileCheckBtnClick:Z

    if-eqz v13, :cond_d

    .line 253
    const-string v13, "WifiSettingsAsSetupWizard_open"

    const-string v14, "MobileNetwork OPEN Set internet connection firstpage isMobileCheckBtnClick true"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isTempMobileSettingValue:Z

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v4           #connManager:Landroid/net/ConnectivityManager;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    new-instance v14, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)V

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 343
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetOperator:Ljava/lang/String;

    const-string v14, "USC"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetCountry:Ljava/lang/String;

    const-string v14, "US"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 344
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const-string v14, "network_mode"

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkMode:Landroid/preference/Preference;

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->getNetworkMode()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->network_mode_status:I

    .line 347
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkMode:Landroid/preference/Preference;

    if-eqz v13, :cond_4

    .line 348
    const-string v13, "WifiSettingsAsSetupWizard_open"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Testyouni]mMobileNetworkMode : network_mode_status "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->network_mode_status:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->network_mode_status:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->updateState(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkMode:Landroid/preference/Preference;

    new-instance v14, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)V

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 405
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v13}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 406
    .local v2, activity:Landroid/app/Activity;
    const v13, 0x1020289

    invoke-virtual {v2, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 407
    .local v12, vg:Landroid/view/ViewGroup;
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 409
    const v13, 0x1020359

    invoke-virtual {v2, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 410
    const v13, 0x102035a

    invoke-virtual {v2, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 411
    const v13, 0x102035b

    invoke-virtual {v2, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 413
    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f040142

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 415
    .local v7, layout:Landroid/view/View;
    const v13, 0x7f0a02d5

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 416
    .local v5, indication_LinearLayout:Landroid/widget/LinearLayout;
    new-instance v13, Lcom/android/lgesettings/wifi/indication_class;

    invoke-direct {v13, v2}, Lcom/android/lgesettings/wifi/indication_class;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mIndication:Lcom/android/lgesettings/wifi/indication_class;

    .line 418
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 419
    .local v6, intent:Landroid/content/Intent;
    const/4 v8, 0x0

    .local v8, max:I
    const/4 v11, 0x0

    .line 420
    .local v11, page_num:I
    if-eqz v6, :cond_5

    .line 422
    const-string v13, "indication_max"

    invoke-virtual {v6, v13, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 423
    const-string v13, "WifiSettingsAsSetupWizard_open"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SetupWelcome - max"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v13, "indication_page"

    invoke-virtual {v6, v13, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 425
    const-string v13, "WifiSettingsAsSetupWizard_open"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SetupWelcome - page_num"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mIndication:Lcom/android/lgesettings/wifi/indication_class;

    invoke-virtual {v13, v12, v7, v8, v11}, Lcom/android/lgesettings/wifi/indication_class;->updatePageIndicator(Landroid/view/ViewGroup;Landroid/view/View;II)V

    .line 430
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetProduct:Ljava/lang/String;

    const-string v14, "zee"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 432
    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f060087

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 439
    .local v3, buttonBar:Landroid/view/View;
    :goto_2
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    const v13, 0x7f0a0480

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 450
    .local v9, mbackButton:Landroid/view/View;
    new-instance v13, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$4;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)V

    invoke-virtual {v9, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    const v13, 0x7f0a0481

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 463
    .local v10, mnextButton:Landroid/view/View;
    new-instance v13, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)V

    invoke-virtual {v10, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 526
    .end local v2           #activity:Landroid/app/Activity;
    .end local v3           #buttonBar:Landroid/view/View;
    .end local v5           #indication_LinearLayout:Landroid/widget/LinearLayout;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #layout:Landroid/view/View;
    .end local v8           #max:I
    .end local v9           #mbackButton:Landroid/view/View;
    .end local v10           #mnextButton:Landroid/view/View;
    .end local v11           #page_num:I
    .end local v12           #vg:Landroid/view/ViewGroup;
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const-string v14, "wifi_on"

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;

    .line 527
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;

    if-eqz v13, :cond_6

    .line 529
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetProduct:Ljava/lang/String;

    const-string v14, "p2"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 531
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f06003b

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 532
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f06003b

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 540
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;

    if-eqz v13, :cond_7

    .line 542
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v14

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 544
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;

    new-instance v14, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$6;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)V

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 612
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    if-eqz v13, :cond_8

    .line 614
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isNotInsertSIMWarning()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 615
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->IsSIMStateCheck()Z

    .line 622
    :cond_8
    return-void

    .line 204
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetOperator:Ljava/lang/String;

    const-string v14, "TMO"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetCountry:Ljava/lang/String;

    const-string v14, "US"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 205
    const-string v13, "WifiSettingsAsSetupWizard_open"

    const-string v14, "mWifiSettings secontenview (TMO & US)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const v14, 0x7f060095

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 207
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetOperator:Ljava/lang/String;

    const-string v14, "TLF"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetCountry:Ljava/lang/String;

    const-string v14, "ES"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const v14, 0x7f060094

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 209
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetDevice:Ljava/lang/String;

    const-string v14, "awifi"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 210
    const-string v13, "WifiSettingsAsSetupWizard_open"

    const-string v14, "mWifiSettings setcontenview A-project"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const v14, 0x7f060090

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 213
    :cond_c
    const-string v13, "WifiSettingsAsSetupWizard_open"

    const-string v14, "mWifiSettings setcontenview open"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    const v14, 0x7f060093

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 256
    .restart local v4       #connManager:Landroid/net/ConnectivityManager;
    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetOperator:Ljava/lang/String;

    const-string v14, "VDF"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 257
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetIccregionalId:Ljava/lang/String;

    const-string v14, "202"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetIccregionalId:Ljava/lang/String;

    const-string v14, "219"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetIccregionalId:Ljava/lang/String;

    const-string v14, "226"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetIccregionalId:Ljava/lang/String;

    const-string v14, "222"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetIccregionalId:Ljava/lang/String;

    const-string v14, "208"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetIccregionalId:Ljava/lang/String;

    const-string v14, "647"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetIccregionalId:Ljava/lang/String;

    const-string v14, "655"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetIccregionalId:Ljava/lang/String;

    const-string v14, "204"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetIccregionalId:Ljava/lang/String;

    const-string v14, "262"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetIccregionalId:Ljava/lang/String;

    const-string v14, "280"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetIccregionalId:Ljava/lang/String;

    const-string v14, "268"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetIccregionalId:Ljava/lang/String;

    const-string v14, "232"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 261
    :cond_e
    const-string v13, "WifiSettingsAsSetupWizard_open"

    const-string v14, "VDF MobileNetwork Set internet connection true"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 288
    .end local v4           #connManager:Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v13

    goto/16 :goto_1

    .line 264
    .restart local v4       #connManager:Landroid/net/ConnectivityManager;
    :cond_f
    const-string v13, "WifiSettingsAsSetupWizard_open"

    const-string v14, "VDF MobileNetwork Set internet connection Global.MOBILE_DATA"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v15, "mobile_data"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_10

    const/4 v13, 0x1

    :goto_5
    invoke-virtual {v14, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_10
    const/4 v13, 0x0

    goto :goto_5

    .line 268
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetIccregionalId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetCountry:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetOperator:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isDataEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 269
    const-string v13, "WifiSettingsAsSetupWizard_open"

    const-string v14, "MobileNetwork Set internet connection true"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 272
    :cond_12
    const-string v13, "WifiSettingsAsSetupWizard_open"

    const-string v14, "MobileNetwork Set internet connection Global.MOBILE_DATA"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v15, "mobile_data"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_13

    const/4 v13, 0x1

    :goto_6
    invoke-virtual {v14, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_13
    const/4 v13, 0x0

    goto :goto_6

    .line 278
    :cond_14
    const-string v13, "WifiSettingsAsSetupWizard_open"

    const-string v14, "MobileNetwork OPEN Set internet connection no firstpage"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isMobileCheckBtnClick:Z

    if-eqz v13, :cond_15

    .line 280
    const-string v13, "WifiSettingsAsSetupWizard_open"

    const-string v14, "MobileNetwork OPEN Set internet connection isMobileCheckBtnClick true"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isTempMobileSettingValue:Z

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 283
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v14

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 433
    .end local v4           #connManager:Landroid/net/ConnectivityManager;
    .restart local v2       #activity:Landroid/app/Activity;
    .restart local v5       #indication_LinearLayout:Landroid/widget/LinearLayout;
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v7       #layout:Landroid/view/View;
    .restart local v8       #max:I
    .restart local v11       #page_num:I
    .restart local v12       #vg:Landroid/view/ViewGroup;
    :cond_16
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetProductName:Ljava/lang/String;

    const-string v14, "w7ds_open_cis"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 434
    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f060089

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .restart local v3       #buttonBar:Landroid/view/View;
    goto/16 :goto_2

    .line 436
    .end local v3           #buttonBar:Landroid/view/View;
    :cond_17
    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f060086

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    .restart local v3       #buttonBar:Landroid/view/View;
    goto/16 :goto_2

    .line 535
    .end local v2           #activity:Landroid/app/Activity;
    .end local v3           #buttonBar:Landroid/view/View;
    .end local v5           #indication_LinearLayout:Landroid/widget/LinearLayout;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #layout:Landroid/view/View;
    .end local v8           #max:I
    .end local v11           #page_num:I
    .end local v12           #vg:Landroid/view/ViewGroup;
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f060091

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 536
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f060091

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setWidgetLayoutResource(I)V

    goto/16 :goto_4

    .line 523
    :catch_1
    move-exception v13

    goto/16 :goto_3
.end method

.method public onPrefereceClicked(Landroid/preference/Preference;)V
    .locals 4
    .parameter "preference"

    .prologue
    .line 676
    const-string v1, "WifiSettingsAsSetupWizard_open"

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

    .line 677
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mAddNetwork:Landroid/preference/Preference;

    if-ne p1, v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    if-eqz v1, :cond_0

    .line 681
    const-string v1, "WifiSettingsAsSetupWizard_open"

    const-string v2, "onPrefereceClicked - mWifiSettings is not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->doAddNetwork()V

    .line 686
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isWifiExtendFuncAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 687
    instance-of v1, p1, Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 688
    check-cast v0, Lcom/android/lgesettings/wifi/AccessPoint;

    .line 690
    .local v0, SelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_1

    .line 691
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->bSelectedWifiAp:Z

    .line 694
    :cond_1
    const-string v1, "WifiSettingsAsSetupWizard_open"

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

    .line 695
    const-string v1, "WifiSettingsAsSetupWizard_open"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bSelectedWifiAp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->bSelectedWifiAp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    .end local v0           #SelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;
    :cond_2
    return-void
.end method

.method public onRemoveAllAccessPoint()V
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 672
    :cond_0
    return-void
.end method

.method public onWifiEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 708
    :cond_0
    return-void
.end method

.method public registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mContext:Landroid/content/Context;

    .line 154
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 155
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mIntentFilter:Landroid/content/IntentFilter;

    .line 158
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mIsReceiverRegistered:Z

    .line 164
    :cond_0
    return-void
.end method

.method public setExpandableNotificationIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 755
    return-void
.end method

.method public setExpandableNotificationYesButton(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 746
    return-void
.end method

.method public showExpandableNotificationGuide(I)V
    .locals 0
    .parameter "scene"

    .prologue
    .line 717
    return-void
.end method

.method public showExpandableNotificationGuide2(I)V
    .locals 0
    .parameter "scene"

    .prologue
    .line 733
    return-void
.end method

.method public unRegisterBroadcastReceiver()V
    .locals 3

    .prologue
    .line 171
    iget-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mIsReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 176
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 177
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    const-string v1, "WifiSettingsAsSetupWizard_open"

    const-string v2, "Call unRegisterBroadcastReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v0           #context:Landroid/content/Context;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mIsReceiverRegistered:Z

    goto :goto_0
.end method
