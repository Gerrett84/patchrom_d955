.class public Lcom/android/lgesettings/deviceinfo/Status;
.super Landroid/preference/PreferenceActivity;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/deviceinfo/Status$MyHandler;
    }
.end annotation


# static fields
.field private static final DUAL_SIM_HIDE_ENTRIES:[Ljava/lang/String;

.field public static GEMINI_SIM_1:I

.field public static GEMINI_SIM_2:I

.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static SUPPORT_TECHNOLOGY:Ljava/lang/String;

.field private static emmc_size:Ljava/lang/String;

.field private static operator_code:Ljava/lang/String;

.field private static regioncode:Ljava/lang/String;

.field private static target_country:Ljava/lang/String;


# instance fields
.field private final CMD_CALL_LIFETIMER:I

.field private final CMD_CALL_WDC:I

.field private final CMD_SERVICE_SCRN:I

.field private DCM_HIDE_ENTRIES:[Ljava/lang/String;

.field private LGU_HIDE_ENTRIES:[Ljava/lang/String;

.field private mBT_Filter:Landroid/content/IntentFilter;

.field private mBT_Receiver:Landroid/content/BroadcastReceiver;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mLifeTimer:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mRev:Landroid/preference/Preference;

.field private mSMSC:Landroid/preference/Preference;

.field private mSignalStrength:Landroid/preference/Preference;

.field mSignalStrength_LTE:Landroid/telephony/SignalStrength;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUptime:Landroid/preference/Preference;

.field private mWdc:Ljava/lang/String;

.field private mWiFi_Filter:Landroid/content/IntentFilter;

.field private mWiFi_Receiver:Landroid/content/BroadcastReceiver;

.field m_display_run1:Ljava/lang/Runnable;

.field private regul_mHandler:Landroid/os/Handler;

.field private retryCountToReadNv:I

.field private sNetworkType:Ljava/lang/String;

.field private sUnknown:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 210
    const-string v0, "CDMA 1X: 850/1900/1700/2100\nCDMA EVDO Rev.A: 850/1900/1700/2100\nLTE:Band 2,Band 4"

    sput-object v0, Lcom/android/lgesettings/deviceinfo/Status;->SUPPORT_TECHNOLOGY:Ljava/lang/String;

    .line 221
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data_state"

    aput-object v1, v0, v3

    const-string v1, "service_state"

    aput-object v1, v0, v4

    const-string v1, "operator_name"

    aput-object v1, v0, v5

    const-string v1, "roaming_state"

    aput-object v1, v0, v6

    const-string v1, "network_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "esn_number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "meid_hexa"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "meid_decimal"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .line 260
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "operator_name"

    aput-object v1, v0, v3

    const-string v1, "signal_strength"

    aput-object v1, v0, v4

    const-string v1, "network_type"

    aput-object v1, v0, v5

    const-string v1, "service_state"

    aput-object v1, v0, v6

    const-string v1, "roaming_state"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data_state"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "esn_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "meid_hexa"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "meid_decimal"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "wifi_ip_address"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "serial_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/deviceinfo/Status;->DUAL_SIM_HIDE_ENTRIES:[Ljava/lang/String;

    .line 343
    const-string v0, "ro.build.target_region"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/deviceinfo/Status;->regioncode:Ljava/lang/String;

    .line 361
    sput v3, Lcom/android/lgesettings/deviceinfo/Status;->GEMINI_SIM_1:I

    .line 362
    sput v4, Lcom/android/lgesettings/deviceinfo/Status;->GEMINI_SIM_2:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 242
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "min_number"

    aput-object v1, v0, v3

    const-string v1, "prl_version"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "esn_number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "meid_hexa"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "meid_decimal"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->LGU_HIDE_ENTRIES:[Ljava/lang/String;

    .line 254
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "imei_sv"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->DCM_HIDE_ENTRIES:[Ljava/lang/String;

    .line 299
    const/16 v0, 0x3f2

    iput v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->CMD_CALL_WDC:I

    .line 300
    const/16 v0, 0x3f3

    iput v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->CMD_CALL_LIFETIMER:I

    .line 301
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->CMD_SERVICE_SCRN:I

    .line 310
    iput v3, p0, Lcom/android/lgesettings/deviceinfo/Status;->retryCountToReadNv:I

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 359
    const-string v0, ""

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->sNetworkType:Ljava/lang/String;

    .line 476
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->regul_mHandler:Landroid/os/Handler;

    .line 478
    new-instance v0, Lcom/android/lgesettings/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/Status$1;-><init>(Lcom/android/lgesettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->m_display_run1:Ljava/lang/Runnable;

    .line 522
    new-instance v0, Lcom/android/lgesettings/deviceinfo/Status$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/Status$4;-><init>(Lcom/android/lgesettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 538
    new-instance v0, Lcom/android/lgesettings/deviceinfo/Status$5;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/Status$5;-><init>(Lcom/android/lgesettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method private HardwareVersion()V
    .locals 3

    .prologue
    .line 1357
    const-string v0, "aboutphone # Status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HardwareVersion() ro.pcb_ver :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ro.pcb_ver"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ro.lge.hw.revision"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ro.lge.hw.revision"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    const-string v0, "rev_check"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRev:Landroid/preference/Preference;

    .line 1362
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1364
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRev:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    const-string v1, "ro.pcb_ver"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1365
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRev:Landroid/preference/Preference;

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->readHwVersion_pcb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1378
    :goto_0
    return-void

    .line 1366
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRev:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    const-string v1, "ro.lge.hw.revision"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1367
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRev:Landroid/preference/Preference;

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->readHwVersion_rev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1370
    :cond_1
    :try_start_0
    const-string v0, "rev_check"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1371
    const-string v0, "aboutphone # Status"

    const-string v1, "removePreferenceFromScreen(KEY_REV_CHECK)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1372
    :catch_0
    move-exception v0

    .line 1373
    const-string v0, "aboutphone # Status"

    const-string v1, "Property \'ro.pcb_ver or ro.lge.hw.revision\' missing and no \'rev_check\' preference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/lgesettings/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/deviceinfo/Status;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/lgesettings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/deviceinfo/Status;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/lgesettings/deviceinfo/Status;->onLifeTimeDataLoaded(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRev:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/lgesettings/deviceinfo/Status;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRev:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/lgesettings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Status;->setWifiStatus()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/lgesettings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Status;->setBtStatus()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/lgesettings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/lgesettings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/lgesettings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Status;->updateDataState()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/lgesettings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Status;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/lgesettings/deviceinfo/Status;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/deviceinfo/Status;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mWdc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/lgesettings/deviceinfo/Status;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mWdc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/lgesettings/deviceinfo/Status;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->retryCountToReadNv:I

    return v0
.end method

.method static synthetic access$308(Lcom/android/lgesettings/deviceinfo/Status;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->retryCountToReadNv:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->retryCountToReadNv:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getWdcNvItem()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/lgesettings/deviceinfo/Status;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/lgesettings/deviceinfo/Status;->onWdcLoaded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/lgesettings/deviceinfo/Status;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mLifeTimer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/lgesettings/deviceinfo/Status;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mLifeTimer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/lgesettings/deviceinfo/Status;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/lgesettings/deviceinfo/Status;->onLifeTimeLoaded(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/lgesettings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getLifetimeCallsNvItem()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/lgesettings/deviceinfo/Status;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/deviceinfo/Status;->onCHSIDLoaded(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const-wide/16 v3, 0x3c

    .line 2596
    rem-long v0, p1, v3

    long-to-int v0, v0

    .line 2597
    div-long v1, p1, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    .line 2598
    const-wide/16 v2, 0xe10

    div-long v2, p1, v2

    long-to-int v2, v2

    .line 2603
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2604
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2606
    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private convertforLifetime(J)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const-wide/32 v5, 0x36ee80

    const-wide/32 v3, 0xea60

    .line 2668
    const-string v0, "aboutphone # Status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertforLifetime t = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    div-long v0, p1, v5

    long-to-int v0, v0

    .line 2670
    rem-long v1, p1, v5

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 2671
    rem-long v2, p1, v3

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 2673
    const-string v3, "aboutphone # Status"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call duration convert c_hour is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " c_minute is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " c_second is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCalendarTimeMillis(J)J
    .locals 9
    .parameter "time"

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0xc

    const/16 v6, 0xb

    .line 1288
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1289
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1291
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1292
    .local v1, hourOfDay:I
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1293
    .local v2, minute:I
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1295
    .local v3, seconds:I
    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1296
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 1297
    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 1298
    invoke-virtual {v0, v8, v3}, Ljava/util/Calendar;->set(II)V

    .line 1300
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    return-wide v4
.end method

.method private getLifetimeCallsNvItem()V
    .locals 1

    .prologue
    .line 1513
    new-instance v0, Lcom/android/lgesettings/deviceinfo/Status$8;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/Status$8;-><init>(Lcom/android/lgesettings/deviceinfo/Status;)V

    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/Status$8;->start()V

    .line 1522
    return-void
.end method

.method private getRootedStatus()Ljava/lang/String;
    .locals 10

    .prologue
    const v9, 0xf4240

    .line 570
    const/4 v6, 0x4

    new-array v1, v6, [B

    .line 571
    .local v1, flag:[B
    const/4 v3, 0x0

    .line 572
    .local v3, result:I
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f08044e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 573
    .local v4, sNotRooted:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f08044d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 576
    .local v5, sRooted:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/persist/rct"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 577
    .local v2, in:Ljava/io/DataInputStream;
    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 579
    const/4 v6, 0x3

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    const/4 v7, 0x2

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x0

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    or-int v3, v6, v7

    .line 581
    const-string v6, "aboutphone # Status"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getRootedStatus() , result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 583
    if-ne v3, v9, :cond_1

    .line 596
    .end local v2           #in:Ljava/io/DataInputStream;
    .end local v4           #sNotRooted:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 587
    .restart local v2       #in:Ljava/io/DataInputStream;
    .restart local v4       #sNotRooted:Ljava/lang/String;
    :cond_1
    if-le v3, v9, :cond_0

    move-object v4, v5

    .line 588
    goto :goto_0

    .line 590
    .end local v2           #in:Ljava/io/DataInputStream;
    :catch_0
    move-exception v0

    .line 591
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v6, "aboutphone # Status"

    const-string v7, "FineNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 592
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 593
    .local v0, e:Ljava/io/IOException;
    const-string v6, "aboutphone # Status"

    const-string v7, "IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSvcCmdInstants()V
    .locals 1

    .prologue
    .line 1235
    new-instance v0, Lcom/android/lgesettings/deviceinfo/Status$6;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/Status$6;-><init>(Lcom/android/lgesettings/deviceinfo/Status;)V

    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/Status$6;->start()V

    .line 1240
    return-void
.end method

.method private getWdcNvItem()V
    .locals 1

    .prologue
    .line 1501
    new-instance v0, Lcom/android/lgesettings/deviceinfo/Status$7;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/Status$7;-><init>(Lcom/android/lgesettings/deviceinfo/Status;)V

    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/Status$7;->start()V

    .line 1510
    return-void
.end method

.method public static get_IMSI_Current_Tab(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 2824
    const-string v0, "aboutphone # Status"

    const-string v1, "get_IMSI_Current_Tab"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    const-string v0, "tab"

    invoke-static {v0, p0}, Lcom/android/lgesettings/deviceinfo/Status;->read_SharedPreference(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2827
    const-string v0, "aboutphone # Status"

    const-string v2, "get_IMSI_Current_Tab, sTabName: "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    const/4 v0, 0x0

    .line 2830
    const-string v2, "sim1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2831
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 2835
    :cond_0
    :goto_0
    const-string v1, "aboutphone # Status"

    const-string v2, "get_IMSI_Current_Tab, IMSI: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    return-object v0

    .line 2832
    :cond_1
    const-string v2, "sim2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2833
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hideItemForOperator()V
    .locals 4

    .prologue
    .line 1439
    const-string v0, "aboutphone # Status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[hideItemForOperator] getOperator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    const-string v0, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->LGU_HIDE_ENTRIES:[Ljava/lang/String;

    .line 1448
    :goto_0
    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1449
    invoke-direct {p0, v3}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1448
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1442
    :cond_0
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1443
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->DCM_HIDE_ENTRIES:[Ljava/lang/String;

    goto :goto_0

    .line 1451
    :cond_1
    return-void
.end method

.method private onCHSIDLoaded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 562
    const-string v0, "channel"

    invoke-direct {p0, v0, p1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v0, "sid"

    invoke-direct {p0, v0, p2}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method private onLifeTimeDataLoaded(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 2680
    const-string v0, "aboutphone # Status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lifeTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    if-eqz p1, :cond_0

    .line 2682
    const-string v0, "aboutphone # Status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lifeTime.toString() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    const-string v0, "life_time_data"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    :cond_0
    return-void
.end method

.method private onLifeTimeLoaded(I)V
    .locals 3
    .parameter

    .prologue
    .line 2657
    const-string v0, "aboutphone # Status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLifeTimeLoaded lifeTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    const-string v0, "VS930 4G"

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2660
    const-string v0, "life_time_call"

    int-to-long v1, p1

    invoke-direct {p0, v1, v2}, Lcom/android/lgesettings/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2665
    :goto_0
    return-void

    .line 2662
    :cond_0
    const-string v0, "life_time_call"

    int-to-long v1, p1

    invoke-direct {p0, v1, v2}, Lcom/android/lgesettings/deviceinfo/Status;->convertforLifetime(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onWdcLoaded(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f08045a

    .line 2642
    const-string v0, "aboutphone # Status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWdcLoaded dateCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    if-nez p1, :cond_0

    .line 2645
    const-string v0, "warranty_date_code"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    :goto_0
    return-void

    .line 2649
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NotActive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2650
    const-string v0, "warranty_date_code"

    invoke-direct {p0, v0, p1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2652
    :cond_1
    const-string v0, "warranty_date_code"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 2588
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 2589
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2591
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static read_SharedPreference(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2819
    const/4 v0, 0x7

    .line 2820
    const-string v1, "dsim_test_preference"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 1611
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1613
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1614
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1622
    :cond_0
    :goto_0
    return-void

    .line 1616
    :cond_1
    if-eqz v0, :cond_0

    .line 1619
    const-string v1, "aboutphone # Status"

    const-string v2, "removePreferenceFromScreen() getPreferenceScreen() == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setBtStatus()V
    .locals 3

    .prologue
    .line 2558
    const-string v0, "aboutphone # Status"

    const-string v1, "setBtStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2561
    const-string v1, "bt_address"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2563
    if-eqz v1, :cond_0

    .line 2564
    if-nez v0, :cond_1

    .line 2566
    const-string v0, "bt_address"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 2572
    :cond_0
    :goto_0
    return-void

    .line 2568
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2569
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2568
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 2569
    :cond_3
    const v0, 0x7f08045a

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setImsRegistrationStatus()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2622
    const-string v1, "ims_registration_status"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2628
    const-string v2, "net.ims.reg"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 2629
    :cond_0
    if-eqz v0, :cond_2

    .line 2630
    const v0, 0x7f080419

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2635
    :goto_0
    if-eqz v1, :cond_1

    .line 2636
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2638
    :cond_1
    return-void

    .line 2632
    :cond_2
    const v0, 0x7f08041a

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2636
    :cond_3
    const v0, 0x7f08045a

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 1647
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1648
    iget-object p2, p0, Lcom/android/lgesettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    .line 1651
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1652
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1654
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 4

    .prologue
    const v3, 0x7f08045a

    .line 2528
    const-string v0, "aboutphone # Status"

    const-string v1, "setWifiStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 2531
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 2533
    if-nez v0, :cond_0

    .line 2534
    const-string v1, "aboutphone # Status"

    const-string v2, "setWifiStatus , wifiInfo is NULL !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    :cond_0
    const-string v1, "wifi_mac_address"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2538
    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 2540
    :goto_0
    if-eqz v1, :cond_1

    .line 2542
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2545
    :cond_1
    const-string v0, "wifi_ip_address"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2546
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2548
    if-eqz v0, :cond_2

    .line 2549
    if-eqz v1, :cond_5

    .line 2550
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2555
    :cond_2
    :goto_2
    return-void

    .line 2538
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2542
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2552
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private setWimaxStatus()V
    .locals 3

    .prologue
    .line 2511
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2512
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2514
    if-nez v0, :cond_1

    .line 2515
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 2516
    const-string v1, "wimax_mac_address"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2517
    if-eqz v1, :cond_0

    .line 2518
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2525
    :cond_0
    :goto_0
    return-void

    .line 2521
    :cond_1
    const-string v0, "wimax_mac_address"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2522
    const-string v1, "net.wimax.mac.address"

    const v2, 0x7f08045a

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2523
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private set_roaming_state(Landroid/telephony/ServiceState;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f080031

    .line 2689
    const-string v0, "aboutphone # Status"

    const-string v1, "set_roaming_state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2692
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2695
    const-string v2, "VZW"

    sget-object v3, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2696
    const-string v2, "roaming_state"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2697
    const-string v2, "roaming_state"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f080455

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 2703
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2704
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v2, v3, v0, v1}, Lcom/android/lgesettings/lge/OverlayUtils;->get_roamming_state(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2706
    const-string v3, "common_pushed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2708
    const-string v0, "roaming_state"

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2734
    :goto_0
    return-void

    .line 2713
    :cond_2
    invoke-static {p1}, Lcom/android/lgesettings/lge/DeviceInfoLgeUtils_Roaming;->getDataRoaming(Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v2

    .line 2714
    invoke-static {p1}, Lcom/android/lgesettings/lge/DeviceInfoLgeUtils_Roaming;->getVoiceRoaming(Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v3

    .line 2716
    const-string v4, "N/A"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "N/A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2717
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2718
    const-string v1, "roaming_state"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2720
    :cond_4
    const-string v0, "roaming_state"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2723
    :cond_5
    const-string v0, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2724
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0803e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2732
    :goto_1
    const-string v1, "roaming_state"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2725
    :cond_6
    const-string v0, "false"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2726
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0803e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2727
    :cond_7
    const-string v0, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2728
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0803e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2730
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private set_service_state(Landroid/telephony/ServiceState;)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x3

    .line 2737
    .line 2739
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v1

    .line 2740
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 2743
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2744
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/lge/OverlayUtils;->get_service_state(Landroid/content/Context;)I

    move-result v0

    .line 2745
    const/16 v1, 0x270f

    if-ne v0, v1, :cond_1

    .line 2746
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 2760
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2762
    packed-switch v0, :pswitch_data_0

    .line 2783
    :goto_1
    const-string v2, "service_state"

    invoke-direct {p0, v2, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2784
    return v0

    .line 2749
    :cond_2
    if-nez v0, :cond_3

    if-eq v1, v4, :cond_1

    .line 2751
    :cond_3
    if-ne v0, v4, :cond_4

    if-nez v1, :cond_4

    move v0, v1

    .line 2752
    goto :goto_0

    .line 2753
    :cond_4
    if-eq v0, v2, :cond_5

    if-ne v1, v2, :cond_1

    :cond_5
    move v0, v2

    .line 2754
    goto :goto_0

    .line 2765
    :pswitch_0
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f08002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2771
    :pswitch_1
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f08002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2776
    :pswitch_2
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f08002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2762
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateDataState()V
    .locals 9

    .prologue
    const v8, 0x7f080035

    const/4 v7, 0x1

    .line 1686
    .line 1687
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 1688
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v3

    .line 1689
    const-string v0, ""

    .line 1692
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1693
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0, v1}, Lcom/android/lgesettings/lge/OverlayUtils;->get_mobileNetwork_state(Landroid/content/Context;Landroid/telephony/TelephonyManager;)I

    move-result v0

    .line 1698
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f080039

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1700
    const-string v4, "aboutphone # Status"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    const-string v4, "aboutphone # Status"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dataServiceState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    const-string v4, "aboutphone # Status"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    if-ne v2, v7, :cond_2

    if-ne v3, v7, :cond_2

    .line 1704
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1728
    :goto_1
    const-string v1, "data_state"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    return-void

    .line 1695
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    goto :goto_0

    .line 1706
    :cond_2
    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    goto :goto_1

    .line 1708
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f080037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1712
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f080038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1716
    :pswitch_2
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f080036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1720
    :pswitch_3
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1706
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 3

    .prologue
    .line 1658
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1659
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/lgesettings/lge/OverlayUtils;->get_network_type(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->sNetworkType:Ljava/lang/String;

    .line 1660
    const-string v0, "aboutphone # Status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sNetworkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status;->sNetworkType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->sNetworkType:Ljava/lang/String;

    const-string v1, "common_pushed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1662
    const-string v0, "network_type"

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->sNetworkType:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    :goto_0
    return-void

    .line 1667
    :cond_1
    const-string v0, "gsm.network.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->sNetworkType:Ljava/lang/String;

    .line 1669
    const-string v0, "aboutphone # Status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sNetworkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status;->sNetworkType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->sNetworkType:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->sNetworkType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->sNetworkType:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1673
    :cond_2
    const-string v0, "network_type"

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1674
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->sNetworkType:Ljava/lang/String;

    const-string v1, "LTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "VDF"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1675
    const-string v0, "network_type"

    const-string v1, "4G"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1677
    :cond_4
    const-string v0, "CA"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1678
    const-string v0, "network_type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1680
    :cond_5
    const-string v0, "network_type"

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->sNetworkType:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 13
    .parameter

    .prologue
    .line 1732
    invoke-direct {p0, p1}, Lcom/android/lgesettings/deviceinfo/Status;->set_service_state(Landroid/telephony/ServiceState;)I

    move-result v5

    .line 1735
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "u0_cdma"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1737
    const-string v0, "BM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1738
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "RoamPreference_MenuDisplay"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1739
    const-string v1, "aboutphone # Status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BM Chamelion_display = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    :goto_0
    if-nez v0, :cond_7

    .line 1749
    const-string v0, "aboutphone # Status"

    const-string v1, "remove roaming menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    const-string v0, "roaming_state"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1760
    :goto_1
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1761
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/lgesettings/lge/OverlayUtils;->get_operator_name(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1767
    const-string v1, "aboutphone # Status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator_name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    const-string v1, "COSCOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1770
    const-string v0, "Ucell"

    .line 1776
    :cond_1
    :goto_2
    const-string v1, "common_pushed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 1778
    const-string v1, "ro.build.target_country"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1779
    const-string v1, ""

    .line 1780
    if-eqz v0, :cond_4

    .line 1781
    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CHINA MOBILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1782
    :cond_2
    const v0, 0x7f080bb2

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1788
    :cond_3
    :goto_3
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2417
    :cond_4
    :goto_4
    return-void

    .line 1740
    :cond_5
    const-string v0, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1741
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "RoamPreference_MenuDisplay"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1742
    const-string v1, "aboutphone # Status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPR Chamelion_display = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1744
    :cond_6
    const/4 v0, 0x1

    .line 1745
    const-string v1, "aboutphone # Status"

    const-string v2, "Chamelion_display : 1 (other)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1752
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/lgesettings/deviceinfo/Status;->set_roaming_state(Landroid/telephony/ServiceState;)V

    goto/16 :goto_1

    .line 1755
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/lgesettings/deviceinfo/Status;->set_roaming_state(Landroid/telephony/ServiceState;)V

    goto/16 :goto_1

    .line 1771
    :cond_9
    const-string v1, "DW-GSM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1772
    const-string v0, "Beeline-Uz"

    goto/16 :goto_2

    .line 1783
    :cond_a
    const-string v1, "CHN-CUGSM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "CHN-UNICOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "CUCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1784
    :cond_b
    const v0, 0x7f080bb3

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1793
    :cond_c
    const-string v1, "ro.build.target_country"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "ro.build.target_country"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1794
    :cond_d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 1797
    const-string v1, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz v0, :cond_16

    .line 1798
    const-string v1, "Chunghwa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1799
    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    .line 1800
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 1823
    :cond_e
    :goto_5
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1802
    :cond_f
    const-string v1, "VIBO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1803
    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_1

    .line 1804
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_5

    .line 1806
    :cond_10
    const-string v1, "TW Mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "TWN GSM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "TRANSASIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "MOBITAI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1807
    :cond_11
    const/4 v0, 0x5

    new-array v1, v0, [C

    fill-array-data v1, :array_2

    .line 1808
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_5

    .line 1810
    :cond_12
    const-string v1, "Far EasTone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "Far EasTone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "KG Telecom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "KGT-ONLINE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "KGT Online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "KG Telecom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1812
    :cond_13
    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_3

    .line 1813
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_5

    .line 1817
    :cond_14
    const-string v1, "China Mobile HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "CMHK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "PEOPLES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1818
    :cond_15
    const/4 v0, 0x6

    new-array v1, v0, [C

    fill-array-data v1, :array_4

    .line 1819
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_5

    .line 1826
    :cond_16
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1835
    :cond_17
    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->regioncode:Ljava/lang/String;

    const-string v2, "ESA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->regioncode:Ljava/lang/String;

    const-string v2, "AME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_33

    .line 1836
    :cond_18
    if-nez v5, :cond_32

    .line 1841
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/Status;->get_IMSI_Current_Tab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 1844
    const/4 v4, 0x0

    .line 1845
    const/4 v3, 0x0

    .line 1846
    const/4 v2, 0x0

    .line 1848
    const/4 v1, 0x0

    .line 1850
    if-eqz v6, :cond_19

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x7

    if-le v7, v8, :cond_19

    .line 1851
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1852
    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1853
    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1855
    const/4 v1, 0x0

    const/4 v7, 0x7

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1858
    :cond_19
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 1860
    const-string v8, "aboutphone # Status"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mcc: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "mcc_mnc: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "mcc_mnc_ind: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "mcc_mnc_ind: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Operator_Imsi: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " mcc_mnc_gid: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " cellinfo: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    if-eqz v4, :cond_2b

    const-string v6, "404"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    const-string v6, "405"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1862
    :cond_1a
    const-string v2, "UNINOR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1863
    const-string v0, "Uninor"

    .line 1869
    :cond_1b
    :goto_6
    const-string v2, "VODAFONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1870
    const-string v0, "Vodafone IN"

    .line 1877
    :cond_1c
    :goto_7
    const-string v2, "operator_name"

    invoke-direct {p0, v2, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    :cond_1d
    :goto_8
    if-eqz v4, :cond_1f

    const-string v2, "520"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "TRUE-H/my"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1898
    if-eqz v1, :cond_2f

    const-string v2, "5200020"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1899
    const-string v0, "TRUE-H"

    .line 1903
    :cond_1e
    :goto_9
    const-string v2, "operator_name"

    invoke-direct {p0, v2, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    :cond_1f
    if-eqz v3, :cond_20

    const-string v2, "52015"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "TOT Mobile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1907
    const-string v0, "TOT 3G"

    .line 1908
    const-string v2, "operator_name"

    invoke-direct {p0, v2, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    :cond_20
    if-eqz v1, :cond_21

    const-string v2, "6550713"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "Cell C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1912
    const-string v0, "Red Bull"

    .line 1913
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    :cond_21
    if-eqz v4, :cond_22

    const-string v1, "604"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "IAM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1917
    const-string v0, "Maroc Telecom"

    .line 1918
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    :cond_22
    if-eqz v4, :cond_23

    const-string v1, "404"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "BPL Mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1922
    const-string v0, "Loop Mobile"

    .line 1923
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    :cond_23
    if-eqz v4, :cond_25

    const-string v1, "510"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "TELKOMSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "T-SEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1927
    :cond_24
    const-string v0, "TELKOMSEL"

    .line 1928
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    :cond_25
    if-eqz v4, :cond_26

    const-string v1, "525"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "STARHUB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1932
    const-string v0, "StarHub"

    .line 1933
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    :cond_26
    if-eqz v4, :cond_27

    const-string v1, "286"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "VODAFONE TR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1937
    const-string v0, "Vodafone TR"

    .line 1938
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    :cond_27
    if-eqz v3, :cond_30

    const-string v1, "45207"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1942
    const-string v0, "Gmobile"

    .line 1943
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1865
    :cond_28
    const-string v2, "Airtel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "IND airtel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1866
    :cond_29
    const-string v0, "airtel"

    goto/16 :goto_6

    .line 1873
    :cond_2a
    const-string v2, "IDEA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1874
    const-string v0, "Idea"

    goto/16 :goto_7

    .line 1879
    :cond_2b
    if-eqz v3, :cond_2d

    const-string v6, "41603"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 1880
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 1881
    const-string v0, "Umniah"

    .line 1883
    :cond_2c
    const-string v2, "operator_name"

    invoke-direct {p0, v2, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1885
    :cond_2d
    if-nez v5, :cond_2e

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    if-eqz v7, :cond_2e

    if-eqz v2, :cond_2e

    const-string v5, "405853"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string v2, "40430"

    invoke-virtual {v7, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2e

    .line 1886
    const-string v0, "Vodafone IN"

    .line 1887
    const-string v2, "operator_name"

    invoke-direct {p0, v2, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1889
    :cond_2e
    if-eqz v3, :cond_1d

    const-string v2, "40486"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1890
    const-string v0, "Vodafone IN"

    .line 1891
    const-string v2, "operator_name"

    invoke-direct {p0, v2, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1900
    :cond_2f
    if-eqz v1, :cond_1e

    const-string v2, "5200019"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1901
    const-string v0, "my"

    goto/16 :goto_9

    .line 1947
    :cond_30
    if-eqz v3, :cond_31

    const-string v1, "65502"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1948
    const-string v0, "TelkomSA"

    .line 1949
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1953
    :cond_31
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1957
    :cond_32
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1962
    :cond_33
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1975
    :cond_34
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1976
    if-eqz v0, :cond_35

    const-string v1, "24005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_35

    .line 1977
    const-string v0, "operator_name"

    const-string v1, "Sweden 3G"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1979
    :cond_35
    sget-object v0, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    const-string v1, "TRF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1980
    if-nez v5, :cond_37

    .line 1981
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1982
    const-string v0, "operator_name"

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080b48

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1984
    :cond_36
    const-string v0, "operator_name"

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080b47

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1987
    :cond_37
    const-string v0, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1989
    :cond_38
    const-string v0, "VZW"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1990
    const-string v0, "aboutphone # Status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceState.getState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_39

    .line 1992
    const-string v0, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1994
    :cond_39
    const-string v0, "operator_name"

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1996
    :cond_3a
    const-string v0, "LGU"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1998
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 2000
    const-string v0, "aboutphone # Status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceState.getState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    const-string v0, "aboutphone # Status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceState.getDataState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    const-string v0, "aboutphone # Status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v0

    if-nez v0, :cond_3e

    .line 2005
    :cond_3b
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    .line 2006
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2007
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 2009
    :cond_3c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 2010
    const-string v0, "LG U+"

    .line 2012
    :cond_3d
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2014
    :cond_3e
    const-string v0, "operator_name"

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2016
    :cond_3f
    const-string v0, "SKT"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2017
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 2018
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 2020
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 2021
    const-string v0, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2023
    :cond_40
    const-string v0, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2036
    :cond_41
    sget-object v0, Lcom/android/lgesettings/deviceinfo/Status;->regioncode:Ljava/lang/String;

    const-string v1, "ESA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lcom/android/lgesettings/deviceinfo/Status;->regioncode:Ljava/lang/String;

    const-string v1, "AME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 2037
    :cond_42
    const-string v0, "aboutphone # Status"

    const-string v1, "In UpdateServiceState executing ESA and AME Code for Single SIM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    if-nez v5, :cond_77

    .line 2058
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 2059
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    .line 2063
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 2065
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    .line 2066
    const-string v0, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v8

    .line 2082
    const/4 v3, 0x0

    .line 2083
    const/4 v2, 0x0

    .line 2084
    const/4 v1, 0x0

    .line 2085
    const/4 v0, 0x0

    .line 2088
    if-eqz v8, :cond_43

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x7

    if-le v9, v10, :cond_43

    .line 2089
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2090
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2096
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2098
    const/4 v0, 0x0

    const/4 v9, 0x7

    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2107
    :cond_43
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    .line 2110
    const-string v10, "aboutphone # Status"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In UpdateServiceState before processing NwName "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Operator_Imsi"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "cellinfo"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    const-string v8, "aboutphone # Status"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In UpdateServiceState before processing mcc_mnc "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "mcc"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "mcc_mnc_ind"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "serviceState.getRoaming()"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    const-string v8, "zh"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_67

    if-eqz v3, :cond_67

    const-string v8, "454"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_44

    const-string v8, "455"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_44

    const-string v8, "466"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_67

    .line 2117
    :cond_44
    const-string v6, "TW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 2118
    const-string v6, "Chunghwa"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 2119
    const/4 v4, 0x4

    new-array v6, v4, [C

    fill-array-data v6, :array_5

    .line 2120
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([C)V

    .line 2144
    :cond_45
    :goto_a
    const-string v6, "operator_name"

    invoke-direct {p0, v6, v4}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    :cond_46
    :goto_b
    if-nez v5, :cond_8b

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8b

    if-eqz v9, :cond_8b

    if-eqz v1, :cond_8b

    const-string v5, "405853"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    const-string v1, "40430"

    invoke-virtual {v9, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8b

    .line 2250
    const-string v1, "Vodafone IN"

    .line 2251
    const-string v4, "operator_name"

    invoke-direct {p0, v4, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    :goto_c
    if-eqz v2, :cond_47

    const-string v4, "40486"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 2259
    const-string v1, "Vodafone IN"

    .line 2260
    const-string v4, "operator_name"

    invoke-direct {p0, v4, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    :cond_47
    if-eqz v2, :cond_48

    const-string v4, "45207"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 2269
    const-string v1, "Gmobile"

    .line 2270
    const-string v4, "operator_name"

    invoke-direct {p0, v4, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    :cond_48
    if-eqz v3, :cond_4a

    const-string v4, "520"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    const-string v4, "TRUE-H/my"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 2282
    if-eqz v0, :cond_74

    const-string v4, "5200020"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 2283
    const-string v1, "TRUE-H"

    .line 2287
    :cond_49
    :goto_d
    const-string v4, "operator_name"

    invoke-direct {p0, v4, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    :cond_4a
    if-eqz v2, :cond_4b

    const-string v4, "52015"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string v2, "TOT Mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 2291
    const-string v1, "TOT 3G"

    .line 2292
    const-string v2, "operator_name"

    invoke-direct {p0, v2, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    :cond_4b
    if-eqz v0, :cond_8a

    const-string v2, "6550713"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const-string v0, "Cell C"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 2296
    const-string v0, "Red Bull"

    .line 2297
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    :goto_e
    if-eqz v3, :cond_4c

    const-string v1, "604"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const-string v1, "IAM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2301
    const-string v0, "Maroc Telecom"

    .line 2302
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    :cond_4c
    if-eqz v3, :cond_4d

    const-string v1, "404"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "BPL Mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 2306
    const-string v0, "Loop Mobile"

    .line 2307
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2310
    :cond_4d
    if-eqz v3, :cond_4f

    const-string v1, "510"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string v1, "TELKOMSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "T-SEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 2311
    :cond_4e
    const-string v0, "TELKOMSEL"

    .line 2312
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    :cond_4f
    if-eqz v3, :cond_50

    const-string v1, "525"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    const-string v1, "STARHUB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 2316
    const-string v0, "StarHub"

    .line 2317
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2320
    :cond_50
    if-eqz v3, :cond_51

    const-string v1, "286"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    const-string v1, "VODAFONE TR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 2321
    const-string v0, "Vodafone TR"

    .line 2322
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2326
    :cond_51
    const-string v1, "CN"

    const-string v2, "ro.build.target_country"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 2327
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 2328
    if-eqz v1, :cond_75

    const-string v2, "46000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_52

    const-string v2, "46002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_52

    const-string v2, "46007"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_52

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_75

    .line 2329
    :cond_52
    const-string v1, "operator_name"

    const v2, 0x7f080bb2

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    :cond_53
    :goto_f
    const-string v1, "aboutphone # Status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In UpdateServiceState after Processing NwName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2122
    :cond_54
    const-string v6, "VIBO"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_55

    const-string v6, "46689"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 2123
    :cond_55
    const/4 v4, 0x4

    new-array v6, v4, [C

    fill-array-data v6, :array_6

    .line 2124
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_a

    .line 2126
    :cond_56
    const-string v6, "TW Mobile"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_57

    const-string v6, "TWN GSM"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_57

    const-string v6, "TRANSASIA"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_57

    const-string v6, "MOBITAI"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 2127
    :cond_57
    const/4 v4, 0x5

    new-array v6, v4, [C

    fill-array-data v6, :array_7

    .line 2128
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_a

    .line 2130
    :cond_58
    const-string v6, "Far EasTone"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_59

    const-string v6, "Far EasTone"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_59

    const-string v6, "KG Telecom"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_59

    const-string v6, "KGT-ONLINE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_59

    const-string v6, "KGT Online"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_59

    const-string v6, "KG Telecom"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 2132
    :cond_59
    const/4 v4, 0x4

    new-array v6, v4, [C

    fill-array-data v6, :array_8

    .line 2133
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_a

    .line 2137
    :cond_5a
    const-string v6, "China Mobile HK"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5b

    const-string v6, "CMHK"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 2138
    :cond_5b
    const/4 v4, 0x6

    new-array v6, v4, [C

    fill-array-data v6, :array_9

    .line 2140
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_a

    .line 2145
    :cond_5c
    const-string v6, "HK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 2146
    const-string v6, "China Mobile HK"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5d

    const-string v6, "CMHK"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 2147
    :cond_5d
    const/4 v4, 0x6

    new-array v6, v4, [C

    fill-array-data v6, :array_a

    .line 2148
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([C)V

    .line 2155
    :cond_5e
    :goto_10
    const-string v6, "operator_name"

    invoke-direct {p0, v6, v4}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2150
    :cond_5f
    const-string v6, "CTM"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_60

    const-string v6, "ctm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 2151
    :cond_60
    const/4 v4, 0x4

    new-array v6, v4, [C

    fill-array-data v6, :array_b

    .line 2152
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([C)V

    goto :goto_10

    .line 2156
    :cond_61
    const-string v6, "CN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 2157
    const-string v6, "China Mobile HK"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_62

    const-string v6, "CMHK"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 2158
    :cond_62
    const/4 v4, 0x6

    new-array v6, v4, [C

    fill-array-data v6, :array_c

    .line 2159
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([C)V

    .line 2174
    :cond_63
    :goto_11
    const-string v6, "operator_name"

    invoke-direct {p0, v6, v4}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2161
    :cond_64
    const-string v6, "CTM"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 2162
    const/4 v4, 0x4

    new-array v6, v4, [C

    fill-array-data v6, :array_d

    .line 2163
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([C)V

    goto :goto_11

    .line 2165
    :cond_65
    const-string v6, "46689"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 2166
    const/4 v4, 0x4

    new-array v6, v4, [C

    fill-array-data v6, :array_e

    .line 2167
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([C)V

    goto :goto_11

    .line 2169
    :cond_66
    const-string v6, "Far EasTone"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 2170
    const/4 v4, 0x4

    new-array v6, v4, [C

    fill-array-data v6, :array_f

    .line 2171
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([C)V

    goto :goto_11

    .line 2181
    :cond_67
    const-string v7, "en"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    if-eqz v3, :cond_69

    const-string v6, "466"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 2182
    const-string v6, "46689"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 2183
    const-string v4, "VIBO"

    .line 2185
    :cond_68
    const-string v6, "operator_name"

    invoke-direct {p0, v6, v4}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2192
    :cond_69
    if-eqz v3, :cond_70

    const-string v6, "404"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6a

    const-string v6, "405"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 2193
    :cond_6a
    const-string v6, "UNINOR"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 2194
    const-string v4, "Uninor"

    .line 2219
    :cond_6b
    :goto_12
    const-string v6, "operator_name"

    invoke-direct {p0, v6, v4}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2202
    :cond_6c
    const-string v6, "Airtel"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6d

    const-string v6, "IND airtel"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 2204
    :cond_6d
    const-string v4, "airtel"

    goto :goto_12

    .line 2210
    :cond_6e
    const-string v6, "VODAFONE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 2211
    const-string v4, "Vodafone IN"

    goto :goto_12

    .line 2214
    :cond_6f
    const-string v6, "IDEA"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 2215
    const-string v4, "Idea"

    goto :goto_12

    .line 2226
    :cond_70
    if-eqz v2, :cond_72

    const-string v6, "41603"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 2227
    if-nez v5, :cond_71

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v6

    if-nez v6, :cond_71

    .line 2228
    const-string v4, "Umniah"

    .line 2230
    :cond_71
    const-string v6, "operator_name"

    invoke-direct {p0, v6, v4}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2233
    :cond_72
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_73

    .line 2234
    const-string v6, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    :goto_13
    const-string v6, "aboutphone # Status"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[NWINFO_Debug] serviceState.getOperatorAlphaLong = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    const-string v6, "aboutphone # Status"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[NWINFO_Debug] serviceState.getOperatorAlphaShort = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 2236
    :cond_73
    const-string v6, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 2284
    :cond_74
    if-eqz v0, :cond_49

    const-string v4, "5200019"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 2285
    const-string v1, "my"

    goto/16 :goto_d

    .line 2330
    :cond_75
    if-eqz v1, :cond_53

    const-string v2, "46001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_76

    const-string v2, "CHN-CUGSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_53

    .line 2331
    :cond_76
    const-string v1, "operator_name"

    const v2, 0x7f080bb3

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 2342
    :cond_77
    const-string v0, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2352
    :cond_78
    const-string v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 2354
    const-string v0, ""

    .line 2355
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 2356
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHINA MOBILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 2357
    :cond_79
    const v0, 0x7f080bb2

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2363
    :goto_14
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2358
    :cond_7a
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHN-CUGSM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHN-UNICOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CUCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 2359
    :cond_7b
    const v0, 0x7f080bb3

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 2361
    :cond_7c
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 2365
    :cond_7d
    const-string v0, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2370
    :cond_7e
    const-string v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 2371
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 2373
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 2374
    const-string v1, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    if-eqz v0, :cond_87

    .line 2375
    const-string v1, "Chunghwa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 2376
    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_10

    .line 2377
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 2401
    :cond_7f
    :goto_15
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2379
    :cond_80
    const-string v1, "VIBO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 2380
    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_11

    .line 2381
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_15

    .line 2383
    :cond_81
    const-string v1, "TW Mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_82

    const-string v1, "TWN GSM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_82

    const-string v1, "TRANSASIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_82

    const-string v1, "MOBITAI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 2384
    :cond_82
    const/4 v0, 0x5

    new-array v1, v0, [C

    fill-array-data v1, :array_12

    .line 2385
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_15

    .line 2387
    :cond_83
    const-string v1, "Far EasTone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_84

    const-string v1, "Far EasTone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_84

    const-string v1, "KG Telecom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_84

    const-string v1, "KGT-ONLINE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_84

    const-string v1, "KGT Online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_84

    const-string v1, "KG Telecom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 2389
    :cond_84
    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_13

    .line 2390
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_15

    .line 2394
    :cond_85
    const-string v1, "China Mobile HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_86

    const-string v1, "CMHK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_86

    const-string v1, "PEOPLES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 2395
    :cond_86
    const/4 v0, 0x6

    new-array v1, v0, [C

    fill-array-data v1, :array_14

    .line 2397
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_15

    .line 2404
    :cond_87
    const-string v1, "operator_name"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2409
    :cond_88
    const/4 v0, 0x1

    if-ne v5, v0, :cond_89

    .line 2410
    const-string v0, "operator_name"

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0803e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2412
    :cond_89
    const-string v0, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8a
    move-object v0, v1

    goto/16 :goto_e

    :cond_8b
    move-object v1, v4

    goto/16 :goto_c

    .line 1799
    nop

    :array_0
    .array-data 0x2
        0x2dt 0x4et
        0xeft 0x83t
        0xfbt 0x96t
        0xe1t 0x4ft
    .end array-data

    .line 1803
    :array_1
    .array-data 0x2
        0x1t 0x5at
        0xf6t 0x5bt
        0xfbt 0x96t
        0xe1t 0x4ft
    .end array-data

    .line 1807
    :array_2
    .array-data 0x2
        0xf0t 0x53t
        0x7et 0x6et
        0x27t 0x59t
        0xe5t 0x54t
        0x27t 0x59t
    .end array-data

    .line 1812
    nop

    :array_3
    .array-data 0x2
        0x60t 0x90t
        0xb3t 0x50t
        0xfbt 0x96t
        0xe1t 0x4ft
    .end array-data

    .line 1818
    :array_4
    .array-data 0x2
        0x2dt 0x4et
        0xbt 0x57t
        0xfbt 0x79t
        0xd5t 0x52t
        0x99t 0x99t
        0x2ft 0x6et
    .end array-data

    .line 2119
    :array_5
    .array-data 0x2
        0x2dt 0x4et
        0xeft 0x83t
        0xfbt 0x96t
        0xe1t 0x4ft
    .end array-data

    .line 2123
    :array_6
    .array-data 0x2
        0x1t 0x5at
        0xf6t 0x5bt
        0xfbt 0x96t
        0xe1t 0x4ft
    .end array-data

    .line 2127
    :array_7
    .array-data 0x2
        0xf0t 0x53t
        0x7et 0x6et
        0x27t 0x59t
        0xe5t 0x54t
        0x27t 0x59t
    .end array-data

    .line 2132
    nop

    :array_8
    .array-data 0x2
        0x60t 0x90t
        0xb3t 0x50t
        0xfbt 0x96t
        0xe1t 0x4ft
    .end array-data

    .line 2138
    :array_9
    .array-data 0x2
        0x2dt 0x4et
        0xbt 0x57t
        0xfbt 0x79t
        0xd5t 0x52t
        0x99t 0x99t
        0x2ft 0x6et
    .end array-data

    .line 2147
    :array_a
    .array-data 0x2
        0x2dt 0x4et
        0xbt 0x57t
        0xfbt 0x79t
        0xd5t 0x52t
        0x99t 0x99t
        0x2ft 0x6et
    .end array-data

    .line 2151
    :array_b
    .array-data 0x2
        0xb3t 0x6ft
        0x80t 0x95t
        0xfbt 0x96t
        0xat 0x8at
    .end array-data

    .line 2158
    :array_c
    .array-data 0x2
        0x2dt 0x4et
        0xfdt 0x56t
        0xfbt 0x79t
        0xa8t 0x52t
        0x99t 0x99t
        0x2ft 0x6et
    .end array-data

    .line 2162
    :array_d
    .array-data 0x2
        0xb3t 0x6ft
        0xe8t 0x95t
        0x35t 0x75t
        0xaft 0x8bt
    .end array-data

    .line 2166
    :array_e
    .array-data 0x2
        0x1t 0x5at
        0x9dt 0x5bt
        0x35t 0x75t
        0xe1t 0x4ft
    .end array-data

    .line 2170
    :array_f
    .array-data 0x2
        0xdct 0x8ft
        0x20t 0x4ft
        0x35t 0x75t
        0xe1t 0x4ft
    .end array-data

    .line 2376
    :array_10
    .array-data 0x2
        0x2dt 0x4et
        0xeft 0x83t
        0xfbt 0x96t
        0xe1t 0x4ft
    .end array-data

    .line 2380
    :array_11
    .array-data 0x2
        0x1t 0x5at
        0xf6t 0x5bt
        0xfbt 0x96t
        0xe1t 0x4ft
    .end array-data

    .line 2384
    :array_12
    .array-data 0x2
        0xf0t 0x53t
        0x7et 0x6et
        0x27t 0x59t
        0xe5t 0x54t
        0x27t 0x59t
    .end array-data

    .line 2389
    nop

    :array_13
    .array-data 0x2
        0x60t 0x90t
        0xb3t 0x50t
        0xfbt 0x96t
        0xe1t 0x4ft
    .end array-data

    .line 2395
    :array_14
    .array-data 0x2
        0x2dt 0x4et
        0xbt 0x57t
        0xfbt 0x79t
        0xd5t 0x52t
        0x99t 0x99t
        0x2ft 0x6et
    .end array-data
.end method


# virtual methods
.method public BTSettings()V
    .locals 2

    .prologue
    .line 511
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mBT_Filter:Landroid/content/IntentFilter;

    .line 512
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mBT_Filter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 514
    new-instance v0, Lcom/android/lgesettings/deviceinfo/Status$3;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/Status$3;-><init>(Lcom/android/lgesettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mBT_Receiver:Landroid/content/BroadcastReceiver;

    .line 520
    return-void
.end method

.method public WifiSettings()V
    .locals 2

    .prologue
    .line 499
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mWiFi_Filter:Landroid/content/IntentFilter;

    .line 500
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mWiFi_Filter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    new-instance v0, Lcom/android/lgesettings/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/Status$2;-><init>(Lcom/android/lgesettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mWiFi_Receiver:Landroid/content/BroadcastReceiver;

    .line 508
    return-void
.end method

.method public getDateString(Ljava/lang/Long;)Ljava/lang/String;
    .locals 1
    .parameter "time"

    .prologue
    .line 1259
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDummyTime(Z)J
    .locals 11
    .parameter "isAmPm"

    .prologue
    const/16 v10, 0xd

    const/16 v9, 0xc

    const/16 v8, 0xb

    const/4 v7, 0x6

    const/4 v6, 0x0

    .line 1263
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1264
    .local v0, c:Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1265
    .local v1, date:Ljava/util/Date;
    if-nez p1, :cond_0

    .line 1266
    const/16 v5, 0x16

    invoke-virtual {v1, v5}, Ljava/util/Date;->setHours(I)V

    .line 1267
    invoke-virtual {v1, v6}, Ljava/util/Date;->setMinutes(I)V

    .line 1268
    invoke-virtual {v1, v6}, Ljava/util/Date;->setSeconds(I)V

    .line 1275
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1276
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1277
    .local v2, hourOfDay:I
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1278
    .local v3, minute:I
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1279
    .local v4, seconds:I
    invoke-virtual {v0, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 1280
    invoke-virtual {v0, v9, v3}, Ljava/util/Calendar;->set(II)V

    .line 1281
    invoke-virtual {v0, v10, v4}, Ljava/util/Calendar;->set(II)V

    .line 1282
    const/4 v5, 0x1

    invoke-virtual {v0, v7, v5}, Ljava/util/Calendar;->add(II)V

    .line 1284
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    return-wide v5

    .line 1270
    .end local v2           #hourOfDay:I
    .end local v3           #minute:I
    .end local v4           #seconds:I
    :cond_0
    invoke-virtual {v1, v7}, Ljava/util/Date;->setHours(I)V

    .line 1271
    invoke-virtual {v1, v6}, Ljava/util/Date;->setMinutes(I)V

    .line 1272
    invoke-virtual {v1, v6}, Ljava/util/Date;->setSeconds(I)V

    goto :goto_0
.end method

.method public getLastFactoryResetTime()J
    .locals 4

    .prologue
    .line 1246
    :try_start_0
    const-string v0, "aboutphone # Status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastFactoryResetTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "factroy_reset_date"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "factroy_reset_date"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->getCalendarTimeMillis(J)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1250
    :goto_0
    return-wide v0

    .line 1248
    :catch_0
    move-exception v0

    .line 1249
    const-string v0, "aboutphone # Status"

    const-string v1, "getLastFactoryResetTime - SettingNotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->getDummyTime(Z)J

    move-result-wide v0

    goto :goto_0
.end method

.method public declared-synchronized getSIDCH()I
    .locals 2

    .prologue
    .line 2788
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/lgesettings/deviceinfo/Status$10;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/Status$10;-><init>(Lcom/android/lgesettings/deviceinfo/Status;)V

    .line 2809
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2811
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 2788
    .end local v0           #t:Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getTimeString(Ljava/lang/Long;)Ljava/lang/String;
    .locals 1
    .parameter "time"

    .prologue
    .line 1255
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x3

    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 602
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 605
    const-string v0, "aboutphone # Status"

    const-string v2, "onCreate"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance v0, Lcom/android/lgesettings/deviceinfo/Status$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/Status$MyHandler;-><init>(Lcom/android/lgesettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 608
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->WifiSettings()V

    .line 609
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->BTSettings()V

    .line 611
    const v0, 0x7f06001e

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 613
    const-string v0, "battery_status"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    .line 614
    const-string v0, "battery_level"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    .line 615
    const-string v0, "up_time"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    .line 628
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/android/lgesettings/lge/OverlayUtils;->LgSvcCmd_getCmdValue(I)Ljava/lang/String;

    move-result-object v0

    .line 629
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/lgesettings/lge/OverlayUtils;->LgSvcCmd_getCmdValue(I)Ljava/lang/String;

    move-result-object v2

    .line 633
    const-string v3, "refubish_counter"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 635
    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    .line 636
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0803de

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :goto_0
    const-string v0, "smsc"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mSMSC:Landroid/preference/Preference;

    .line 658
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 660
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 662
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080018

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    .line 663
    const-string v0, "device_model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v0, "aboutphone # Status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate] sUnknown= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 683
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    .line 684
    const-string v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/deviceinfo/Status;->target_country:Ljava/lang/String;

    .line 687
    const-string v0, "true"

    const-string v2, "ro.lge.one_binary_16G_32G"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 688
    const-string v0, "persist.sys.emmc_size"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/deviceinfo/Status;->emmc_size:Ljava/lang/String;

    .line 689
    const-string v0, "memory_size"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 690
    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->emmc_size:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 696
    :goto_1
    const-string v0, "VZW"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getSvcCmdInstants()V

    .line 702
    :cond_0
    const-string v0, "signal_strength"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    .line 703
    const-string v0, "MPCS"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 704
    const-string v0, "channel"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 705
    const-string v0, "sid"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 709
    :cond_1
    const-string v0, "DCM"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 710
    const-string v0, "signal_strength"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 711
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    .line 715
    :cond_2
    const-string v0, "VZW"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "LRA"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 716
    :cond_3
    const-string v0, "signal_strength"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 717
    const-string v0, "network_type"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 722
    :goto_2
    const-string v0, "VZW"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "MPCS"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CRK"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 724
    const-string v0, "life_time_call"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 727
    :cond_4
    const-string v0, "VZW"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "CRK"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 729
    const-string v0, "warranty_date_code"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 732
    :cond_5
    const-string v0, "MPCS"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "CRK"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 734
    const-string v0, "life_time_data"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 737
    :cond_6
    const-string v0, "LG-MS790"

    const-string v2, "ro.product.model"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 740
    const-string v0, "support_technology"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->SUPPORT_TECHNOLOGY:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    :goto_3
    const-string v0, "CRK"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 748
    const-string v0, "refubish_counter"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 751
    :cond_7
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Status;->hideItemForOperator()V

    .line 752
    const-string v0, "MPCS"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CDMA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 753
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getSIDCH()I

    .line 756
    :cond_8
    const-string v0, "aboutphone # Status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhone.getPhoneName() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const-string v0, "aboutphone # Status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhone.getLteOnCdmaMode() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", PhoneConstants.LTE_ON_CDMA_TRUE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 760
    :cond_9
    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_4
    if-ge v0, v3, :cond_15

    aget-object v1, v2, v0

    .line 761
    invoke-direct {p0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 760
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 638
    :cond_a
    :try_start_1
    const-string v0, "Unavailable"

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 641
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 692
    :cond_b
    const-string v0, "memory_size"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 719
    :cond_c
    const-string v0, "network_type_strength"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 744
    :cond_d
    const-string v0, "support_technology"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 765
    :cond_e
    const-string v0, "ro.config.multimode_cdma"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CDMA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 766
    :cond_f
    const-string v0, "prl_version"

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :goto_5
    const-string v0, "VZW"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 774
    const-string v0, "last_factory_date_reset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getLastFactoryResetTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/deviceinfo/Status;->getDateString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getLastFactoryResetTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/deviceinfo/Status;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v0, "rooting_status"

    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getRootedStatus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :goto_6
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CDMA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 785
    const-string v0, "VZW"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "MPCS"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 786
    :cond_10
    const-string v0, "esn_number"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 787
    const-string v0, "meid_number"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 799
    :goto_7
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v2, "USC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TRF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "ACG"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 800
    :cond_11
    const-string v0, "meid_number"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 801
    const-string v0, "meid_hexa"

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    .line 809
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 810
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080039

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 821
    :goto_8
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 822
    const-string v0, "meid_decimal"

    const-string v2, "000000000000000000"

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    :goto_9
    const-string v0, "VZW"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 882
    const-string v0, "min_number"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 895
    :cond_12
    :goto_a
    const-string v0, "imei_sv"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 897
    const-string v0, "VZW"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 899
    const-string v0, "eri_version"

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getEriFileVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string v0, "imei_svn"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v2, "IMEISV"

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 902
    const-string v0, "imei_svn"

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string v0, "imei_svn_gsm"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 915
    :goto_b
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    if-ne v0, v8, :cond_32

    .line 918
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 924
    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    const-string v3, "MPCS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    const-string v3, "USC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 925
    :cond_13
    if-eqz v0, :cond_2f

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 926
    const-string v2, "aboutphone # Status"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mImei.length() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v8, :cond_2e

    .line 928
    const-string v2, "imei"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    :goto_c
    const-string v0, "aboutphone # Status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIccSerialNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const-string v0, "icc_id"

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :goto_d
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/lge/OverlayUtils;->get_SIM_phone_number(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1039
    const-string v1, "aboutphone # Status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim_phone_number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const-string v1, "NULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1042
    const-string v0, "aboutphone # Status"

    const-string v1, "onCreate (), sim phone number read is Fail !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const-string v0, "aboutphone # Status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhone.getLine1Number(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 1047
    const-string v1, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1048
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "+82"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_14

    .line 1049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1053
    :cond_14
    const/4 v1, 0x0

    .line 1054
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 1056
    invoke-static {p0}, Lcom/android/lgesettings/quietmode/PhoneNumberFormatter;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1071
    :goto_e
    const-string v1, "aboutphone # Status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gsm.sim.state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const-string v1, "DCM"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PERM_DISABLED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1074
    const-string v0, "number"

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0803e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    :goto_f
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 1085
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 1086
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 1095
    :cond_15
    const-string v0, "SPR"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "UNF"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "MX"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->target_country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1099
    :cond_16
    const-string v0, ""

    .line 1100
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 1103
    if-eqz v1, :cond_3f

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_3f

    .line 1104
    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 1106
    if-eqz v1, :cond_3e

    .line 1107
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 1117
    :goto_10
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_40

    .line 1118
    :cond_17
    const-string v0, "imsi"

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    :goto_11
    const-string v0, "UNF"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "MX"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->target_country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1124
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 1134
    :goto_12
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "u0_cdma"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1135
    const-string v0, "esn_number"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1138
    :cond_18
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "l0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1139
    const-string v0, "esn_number"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1142
    :cond_19
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Status;->setWimaxStatus()V

    .line 1143
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Status;->setWifiStatus()V

    .line 1144
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Status;->setBtStatus()V

    .line 1145
    const-string v0, "MPCS"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "CRK"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1147
    :cond_1a
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->putDataLifeTime()V

    .line 1150
    :cond_1b
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 1160
    const-string v0, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1161
    const-string v0, "serial_number"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1166
    :cond_1c
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->isEmbededBattery(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1167
    const-string v0, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1180
    :goto_13
    const-string v0, "VZW"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1181
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Status;->setImsRegistrationStatus()V

    .line 1189
    :goto_14
    const-string v0, "VZW"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "MPCS"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "SPR"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "BM"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {p0}, Lcom/android/lgesettings/Utils;->isEmbededBattery(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "UNF"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    const-string v0, "MX"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->target_country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1193
    :cond_1d
    const-string v0, "SPR"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "VZW"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "UNF"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "MX"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->target_country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1195
    :cond_1e
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->regul_mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->m_display_run1:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1196
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/lge/ATClientUtils;->atClient_BindService(Landroid/content/Context;)V

    .line 1222
    :goto_15
    const-string v0, "VZW"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1223
    const-string v0, "battery_use"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1224
    const-string v0, "battery_condition_dcm"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1228
    :cond_1f
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->isEmbededBattery(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "DCM"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1229
    const-string v0, "imei"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1231
    :cond_20
    return-void

    .line 769
    :cond_21
    const-string v0, "prl_version"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 777
    :cond_22
    const-string v0, "last_factory_date_reset"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 778
    const-string v0, "rooting_status"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 789
    :cond_23
    const-string v0, "esn_number"

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v0, "LRA"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 791
    const-string v0, "meid_number"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 793
    :cond_24
    const-string v0, "meid_number"

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 812
    :cond_25
    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 813
    const/16 v3, 0xe

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 814
    invoke-static {v2, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 815
    invoke-static {v0, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    .line 816
    const-wide/32 v6, 0x5f5e100

    mul-long/2addr v2, v6

    add-long/2addr v2, v4

    .line 817
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 824
    :cond_26
    const-string v2, "meid_decimal"

    invoke-direct {p0, v2, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 830
    :cond_27
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SPR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 831
    :cond_28
    const-string v0, "meid_number"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 832
    const-string v0, "meid_hexa"

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    .line 839
    const-string v2, "aboutphone # Status"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMEID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_29

    .line 842
    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 843
    const/16 v3, 0xe

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 844
    invoke-static {v2, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 845
    invoke-static {v0, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    .line 846
    const-wide/32 v6, 0x5f5e100

    mul-long/2addr v2, v6

    add-long/2addr v2, v4

    .line 847
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 849
    const-string v2, "aboutphone # Status"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMEID_DEC:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const-string v2, ""

    .line 853
    const-string v3, ""

    .line 854
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 856
    const-string v4, "000000000000000000"

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 857
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 859
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v0, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x6

    const/16 v4, 0x9

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x9

    const/16 v4, 0xc

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    const/16 v4, 0xf

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 868
    const-string v2, "meid_decimal"

    invoke-direct {p0, v2, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 870
    :cond_29
    const-string v0, "meid_decimal"

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f080039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 876
    :cond_2a
    const-string v0, "meid_hexa"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 877
    const-string v0, "meid_decimal"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 884
    :cond_2b
    const-string v0, "aboutphone # Status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mPhone.getCdmaMin() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const-string v0, "min_number"

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string v0, "min_number"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 888
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 889
    const-string v0, "min_number"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v2, 0x7f080443

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_a

    .line 904
    :cond_2c
    const-string v0, "MPCS"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 906
    const-string v0, "eri_version"

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getEriFileVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v0, "imei_svn"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 908
    const-string v0, "imei_svn_gsm"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 910
    :cond_2d
    const-string v0, "eri_version"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 911
    const-string v0, "imei_svn"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 912
    const-string v0, "imei_svn_gsm"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 930
    :cond_2e
    const-string v1, "imei"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 933
    :cond_2f
    const-string v1, "imei"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 935
    :cond_30
    const-string v1, "LRA"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 936
    const-string v1, "imei"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 938
    :cond_31
    const-string v0, "imei"

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 947
    :cond_32
    const-string v0, "imei"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 948
    const-string v0, "icc_id"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 952
    :cond_33
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 953
    :cond_34
    const-string v0, ""

    .line 954
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0, v1}, Lcom/android/lgesettings/lge/OverlayUtils;->get_device_ID(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 955
    const-string v1, "imei"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    :goto_16
    const-string v0, "VZW"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "SPR"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "UNF"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "MX"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->target_country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 984
    :cond_35
    const-string v0, "icc_id"

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    :goto_17
    const-string v0, "u2_vdf_com"

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 993
    const-string v0, "imei_sv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    :goto_18
    const-string v0, "esn_number"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1014
    const-string v0, "meid_number"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1015
    const-string v0, "meid_hexa"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1016
    const-string v0, "meid_decimal"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1017
    const-string v0, "min_number"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1019
    const-string v0, "eri_version"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1020
    const-string v0, "imei_svn"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1021
    const-string v0, "imei_svn_gsm"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 974
    :cond_36
    const-string v0, "VZW"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 975
    const-string v0, "imei"

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 977
    :cond_37
    const-string v0, "imei"

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 988
    :cond_38
    const-string v0, "icc_id"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 997
    :cond_39
    const-string v0, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 999
    const-string v0, "imei_sv"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_18

    .line 1003
    :cond_3a
    const-string v0, "VZW"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1004
    const-string v0, "imei_sv"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "IMEISV"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1006
    :cond_3b
    const-string v0, "imei_sv"

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 1076
    :cond_3c
    const-string v1, "number"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1079
    :cond_3d
    const-string v1, "aboutphone # Status"

    const-string v2, "onCreate (), sim phone number read is Success !!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const-string v1, "number"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1110
    :cond_3e
    const-string v1, "aboutphone # Status"

    const-string v2, "iccRecord is null !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1113
    :cond_3f
    const-string v1, "aboutphone # Status"

    const-string v2, "icccard is null !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1120
    :cond_40
    const-string v1, "imsi"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1126
    :cond_41
    const-string v0, "smsc"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1129
    :cond_42
    const-string v0, "imsi"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1130
    const-string v0, "smsc"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1170
    :cond_43
    const-string v0, "manufacture_serial_number"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1171
    const-string v0, "manufacture_company_country"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1172
    const-string v0, "manufacture_serial_number_date"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1175
    :cond_44
    const-string v0, "manufacture_serial_number"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1176
    const-string v0, "manufacture_company_country"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1177
    const-string v0, "manufacture_serial_number_date"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1184
    :cond_45
    const-string v0, "ims_registration_status"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 1200
    :cond_46
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Status;->HardwareVersion()V

    goto/16 :goto_15

    .line 1203
    :cond_47
    const-string v0, "rev_check"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_48
    move-object v0, v1

    goto/16 :goto_e
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1491
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 1492
    const-string v0, "SPR"

    sget-object v1, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1493
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->regul_mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->m_display_run1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->regul_mHandler:Landroid/os/Handler;

    .line 1495
    invoke-static {}, Lcom/android/lgesettings/lge/ATClientUtils;->atClient_unBindService()V

    .line 1497
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1585
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 1586
    const-string v0, "aboutphone # Status"

    const-string v1, "onPause ()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1592
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 1593
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1598
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1599
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mWiFi_Receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1600
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mBT_Receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1601
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1602
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1306
    const-string v0, "aboutphone # Status"

    const-string v1, "onPreferenceTreeClick!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "imei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1309
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v8

    .line 1310
    new-instance v9, Landroid/app/Dialog;

    invoke-direct {v9, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1312
    const v0, 0x7f0400a9

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1313
    const-string v0, "IMEI"

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1321
    new-instance v0, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 1324
    :try_start_0
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    const/16 v3, 0x258

    const/16 v4, 0xc8

    invoke-virtual {v0, v8, v1, v3, v4}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1330
    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    .line 1331
    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    .line 1332
    mul-int v0, v3, v7

    new-array v1, v0, [I

    move v5, v2

    .line 1333
    :goto_0
    if-ge v5, v7, :cond_2

    .line 1334
    mul-int v10, v5, v3

    move v4, v2

    .line 1335
    :goto_1
    if-ge v4, v3, :cond_1

    .line 1336
    add-int v11, v10, v4

    invoke-virtual {v6, v4, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x100

    :goto_2
    aput v0, v1, v11

    .line 1335
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 1325
    :catch_0
    move-exception v0

    .line 1326
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1327
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    .line 1352
    :goto_3
    return v0

    .line 1336
    :cond_0
    const/4 v0, -0x1

    goto :goto_2

    .line 1333
    :cond_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 1340
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 1341
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1343
    const v1, 0x7f0a014a

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1344
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1346
    const v0, 0x7f0a014b

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1347
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1349
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 1352
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_3
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 1456
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1457
    const-string v0, "aboutphone # Status"

    const-string v1, "onResume ()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mWiFi_Receiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mWiFi_Filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1460
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mBT_Receiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mBT_Filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1467
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 1470
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->updateSignalStrength()V

    .line 1471
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 1472
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Status;->updateDataState()V

    .line 1474
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1480
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1482
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1485
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getWdcNvItem()V

    .line 1486
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getLifetimeCallsNvItem()V

    .line 1488
    return-void
.end method

.method public putDataLifeTime()V
    .locals 3

    .prologue
    .line 1526
    const-string v1, "aboutphone # Status"

    const-string v2, "status:: putDataLifeTime(), ENTER"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    new-instance v0, Lcom/android/lgesettings/deviceinfo/Status$9;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/Status$9;-><init>(Lcom/android/lgesettings/deviceinfo/Status;)V

    .line 1580
    .local v0, lt_t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1581
    return-void
.end method

.method updateSMSC(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 2612
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mSMSC:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 2613
    if-eqz p1, :cond_1

    .line 2614
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mSMSC:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2619
    :cond_0
    :goto_0
    return-void

    .line 2616
    :cond_1
    const-string v0, "aboutphone # Status"

    const-string v1, "get SMSC fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateSignalStrength()V
    .locals 12

    .prologue
    const v11, 0x7f08003d

    const/4 v10, 0x1

    const/4 v9, -0x1

    const v8, 0x7f08003c

    const/4 v0, 0x0

    .line 2422
    .line 2430
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v1, :cond_5

    .line 2432
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2433
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/lge/OverlayUtils;->get_service_state(Landroid/content/Context;)I

    move-result v3

    .line 2434
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-static {v1, v2}, Lcom/android/lgesettings/lge/OverlayUtils;->get_signal_strength_Dbm(Landroid/content/Context;Lcom/android/internal/telephony/PhoneStateIntentReceiver;)I

    move-result v2

    .line 2435
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-static {v1, v4}, Lcom/android/lgesettings/lge/OverlayUtils;->get_signal_strength_Asu(Landroid/content/Context;Lcom/android/internal/telephony/PhoneStateIntentReceiver;)I

    move-result v1

    move v4, v3

    move v3, v0

    .line 2472
    :cond_1
    :goto_0
    if-ne v4, v10, :cond_2

    if-ne v3, v10, :cond_2

    move v1, v0

    move v2, v0

    .line 2478
    :cond_2
    if-ne v2, v9, :cond_3

    move v2, v0

    .line 2481
    :cond_3
    if-ne v1, v9, :cond_e

    .line 2486
    :goto_1
    const-string v1, "USC"

    sget-object v3, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "SPR"

    sget-object v3, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CDMA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2487
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 2488
    packed-switch v1, :pswitch_data_0

    .line 2499
    :pswitch_0
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2508
    :cond_5
    :goto_2
    return-void

    .line 2437
    :cond_6
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .line 2438
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v3

    .line 2439
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .line 2440
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    .line 2441
    const-string v5, "starmotor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signalDbm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    const-string v5, "starmotor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signalAsu = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    const-string v5, "starmotor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSignalStrength_LTE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/Status;->mSignalStrength_LTE:Landroid/telephony/SignalStrength;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/Status;->mSignalStrength_LTE:Landroid/telephony/SignalStrength;

    if-eqz v5, :cond_1

    .line 2445
    const-string v5, "SPR"

    sget-object v6, Lcom/android/lgesettings/deviceinfo/Status;->operator_code:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2446
    const-string v5, "starmotor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sNetworkType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/Status;->sNetworkType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/Status;->sNetworkType:Ljava/lang/String;

    const-string v6, "LTE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/Status;->sNetworkType:Ljava/lang/String;

    const-string v6, "4G"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2448
    :cond_7
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mSignalStrength_LTE:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v2

    .line 2449
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mSignalStrength_LTE:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v1

    .line 2462
    :goto_3
    const v5, 0x7fffffff

    if-ne v2, v5, :cond_8

    move v2, v0

    .line 2465
    :cond_8
    const/16 v5, 0xff

    if-ne v1, v5, :cond_1

    move v1, v0

    .line 2466
    goto/16 :goto_0

    .line 2450
    :cond_9
    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/Status;->sNetworkType:Ljava/lang/String;

    const-string v6, "1xRTT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2451
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mSignalStrength_LTE:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v2

    .line 2452
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mSignalStrength_LTE:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    goto :goto_3

    .line 2453
    :cond_a
    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/Status;->sNetworkType:Ljava/lang/String;

    const-string v6, "EvDo-rev.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/Status;->sNetworkType:Ljava/lang/String;

    const-string v6, "EvDo-rev.A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/Status;->sNetworkType:Ljava/lang/String;

    const-string v6, "EvDo-rev.B"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2455
    :cond_b
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mSignalStrength_LTE:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 2456
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mSignalStrength_LTE:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v1

    goto :goto_3

    .line 2458
    :cond_c
    const-string v5, "starmotor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signalAsu_lte = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    const-string v5, "starmotor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signalDbm_lte = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2495
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2504
    :cond_d
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_e
    move v0, v1

    goto/16 :goto_1

    .line 2488
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 2575
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 2576
    .local v0, at:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 2578
    .local v2, ut:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 2579
    const-wide/16 v2, 0x1

    .line 2582
    :cond_0
    iget-object v4, p0, Lcom/android/lgesettings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    if-eqz v4, :cond_1

    .line 2583
    iget-object v4, p0, Lcom/android/lgesettings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/lgesettings/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2585
    :cond_1
    return-void
.end method
