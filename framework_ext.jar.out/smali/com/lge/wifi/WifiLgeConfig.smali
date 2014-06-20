.class public Lcom/lge/wifi/WifiLgeConfig;
.super Ljava/lang/Object;
.source "WifiLgeConfig.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final CONFIG_LGE_WLAN_BRCM_PATCH:Z = false

#the value of this static final field might be set in the static constructor
.field public static final CONFIG_LGE_WLAN_PATCH:Z = false

#the value of this static final field might be set in the static constructor
.field public static final CONFIG_LGE_WLAN_QCOM_PATCH:Z = false

#the value of this static final field might be set in the static constructor
.field public static final CONFIG_LGE_WLAN_TEST:Z = false

#the value of this static final field might be set in the static constructor
.field public static final CONFIG_LGE_WLAN_TEST_PROFILE:Z = false

#the value of this static final field might be set in the static constructor
.field private static final KSC5601SSID:Z = false

.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "WifiLgeConfig"

.field private static mContext:Landroid/content/Context; = null

.field private static mInitKsc5601Ssid:Z = false

.field private static mIsAvailableKtUsim:Z = false

.field private static final mLgeEap:Z = true

.field private static final mLgeKtCm:Z

.field private static final mMobileHotspot:Z

.field private static final mTargetCountry:Ljava/lang/String;

.field private static final mTargetOperator:Ljava/lang/String;

.field private static final mWiFiOffloading:Z

.field private static final mWifiIfaceName:Ljava/lang/String;

.field private static mWifiLgeConfig:Lcom/lge/wifi/WifiLgeConfig;

.field private static final mWifiOffdelayAfter15alarm:Z

.field private static final mWlanChipVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 20
    sput-object v0, Lcom/lge/wifi/WifiLgeConfig;->mWifiLgeConfig:Lcom/lge/wifi/WifiLgeConfig;

    .line 21
    sput-object v0, Lcom/lge/wifi/WifiLgeConfig;->mContext:Landroid/content/Context;

    .line 27
    const-string/jumbo v0, "wifi.lge.patch"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    .line 29
    const-string/jumbo v0, "wlan.chip.vendor"

    const-string v2, "brcm"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "qcom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_QCOM_PATCH:Z

    .line 31
    const-string/jumbo v0, "wlan.chip.vendor"

    const-string/jumbo v2, "qcom"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "brcm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_BRCM_PATCH:Z

    .line 37
    const-string/jumbo v0, "wifi.lge.test"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_TEST:Z

    .line 39
    const-string/jumbo v0, "wifi.lge.test_profile"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_TEST_PROFILE:Z

    .line 46
    const-string/jumbo v0, "wlan.chip.version"

    const-string v2, "bcm4330"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/WifiLgeConfig;->mWlanChipVersion:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "wifi.interface"

    const-string/jumbo v2, "wlan0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/WifiLgeConfig;->mWifiIfaceName:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "ro.build.target_operator"

    const-string v2, "OPEN"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/WifiLgeConfig;->mTargetOperator:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "ro.build.target_country"

    const-string v2, "COM"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/WifiLgeConfig;->mTargetCountry:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "wifi.lge.kt.cm"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lge/wifi/WifiLgeConfig;->mTargetOperator:Ljava/lang/String;

    const-string v2, "KT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->mLgeKtCm:Z

    .line 69
    const-string/jumbo v0, "wifi.lge.hanglessid"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->KSC5601SSID:Z

    .line 77
    const-string/jumbo v0, "wifi.lge.offdelay"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->mWifiOffdelayAfter15alarm:Z

    .line 82
    sput-boolean v1, Lcom/lge/wifi/WifiLgeConfig;->mInitKsc5601Ssid:Z

    .line 88
    const-string/jumbo v0, "wifi.lge.offloading"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->mWiFiOffloading:Z

    .line 95
    const-string/jumbo v0, "wifi.lge.mhp"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->mMobileHotspot:Z

    .line 107
    sput-boolean v1, Lcom/lge/wifi/WifiLgeConfig;->mIsAvailableKtUsim:Z

    return-void

    :cond_0
    move v0, v1

    .line 62
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    sput-object p1, Lcom/lge/wifi/WifiLgeConfig;->mContext:Landroid/content/Context;

    .line 120
    return-void
.end method

.method public static checkLgeKtCmProfileAccess()Z
    .locals 1

    .prologue
    .line 454
    sget-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->mIsAvailableKtUsim:Z

    if-eqz v0, :cond_0

    .line 455
    const/4 v0, 0x1

    .line 457
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkLgeKtUsimInfo()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 416
    const/4 v0, 0x0

    .line 418
    .local v0, checkedImsi:Ljava/lang/String;
    const-string v5, "WifiLgeConfig"

    const-string v6, "checkLgeKtUsimInfo"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget-object v5, Lcom/lge/wifi/WifiLgeConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 422
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_2

    .line 423
    const-string v5, "WifiLgeConfig"

    const-string/jumbo v6, "telephonyManager != null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 427
    :try_start_0
    const-string v5, "WifiLgeConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkedImsi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    if-eqz v0, :cond_1

    const-string v5, "45008"

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "45002"

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 431
    :cond_0
    const-string v5, "WifiLgeConfig"

    const-string/jumbo v6, "mIsAvailableKtUsim = true"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v5, 0x1

    sput-boolean v5, Lcom/lge/wifi/WifiLgeConfig;->mIsAvailableKtUsim:Z

    .line 444
    :goto_0
    return v3

    .line 434
    :cond_1
    const-string v5, "WifiLgeConfig"

    const-string/jumbo v6, "mIsAvailableKtUsim = false"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v5, 0x0

    sput-boolean v5, Lcom/lge/wifi/WifiLgeConfig;->mIsAvailableKtUsim:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v1

    .line 438
    .local v1, e:Ljava/lang/Exception;
    sput-boolean v4, Lcom/lge/wifi/WifiLgeConfig;->mIsAvailableKtUsim:Z

    goto :goto_0

    .line 442
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const-string v3, "WifiLgeConfig"

    const-string/jumbo v5, "telephonyManager == null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 444
    goto :goto_0
.end method

.method public static doesSupportHotspotList()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 339
    const-string v1, "TMO"

    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ATT"

    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MPCS"

    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->isWifiChameleonFeaturedCarrier()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "US"

    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    :cond_1
    :goto_0
    return v0

    .line 342
    :cond_2
    const-string v1, "TLS"

    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "BELL"

    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "RGS"

    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "CA"

    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    :cond_4
    const-string v1, "VZW"

    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "US"

    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 350
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/lge/wifi/WifiLgeConfig;->mTargetCountry:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/lge/wifi/WifiLgeConfig;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/lge/wifi/WifiLgeConfig;->mWifiLgeConfig:Lcom/lge/wifi/WifiLgeConfig;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/lge/wifi/WifiLgeConfig;

    invoke-direct {v0}, Lcom/lge/wifi/WifiLgeConfig;-><init>()V

    sput-object v0, Lcom/lge/wifi/WifiLgeConfig;->mWifiLgeConfig:Lcom/lge/wifi/WifiLgeConfig;

    .line 128
    :cond_0
    sget-object v0, Lcom/lge/wifi/WifiLgeConfig;->mWifiLgeConfig:Lcom/lge/wifi/WifiLgeConfig;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/wifi/WifiLgeConfig;
    .locals 1
    .parameter "context"

    .prologue
    .line 132
    sget-object v0, Lcom/lge/wifi/WifiLgeConfig;->mWifiLgeConfig:Lcom/lge/wifi/WifiLgeConfig;

    if-nez v0, :cond_1

    .line 133
    new-instance v0, Lcom/lge/wifi/WifiLgeConfig;

    invoke-direct {v0, p0}, Lcom/lge/wifi/WifiLgeConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/wifi/WifiLgeConfig;->mWifiLgeConfig:Lcom/lge/wifi/WifiLgeConfig;

    .line 138
    :cond_0
    :goto_0
    sget-object v0, Lcom/lge/wifi/WifiLgeConfig;->mWifiLgeConfig:Lcom/lge/wifi/WifiLgeConfig;

    return-object v0

    .line 134
    :cond_1
    sget-object v0, Lcom/lge/wifi/WifiLgeConfig;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 135
    sput-object p0, Lcom/lge/wifi/WifiLgeConfig;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private getMccMncInfo()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 272
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 274
    .local v1, simMccMnc:[Ljava/lang/String;
    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    move-object v1, v3

    .line 293
    .end local v1           #simMccMnc:[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 280
    .restart local v1       #simMccMnc:[Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 284
    const/4 v4, 0x1

    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 287
    const-string v2, "WifiLgeConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMccMncInfo: MCC ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] MNC ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v2, "WifiLgeConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMccMncInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 290
    goto :goto_0
.end method

.method public static getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/lge/wifi/WifiLgeConfig;->mTargetOperator:Ljava/lang/String;

    return-object v0
.end method

.method public static isWifiChameleonFeaturedCarrier()Z
    .locals 2

    .prologue
    .line 359
    const-string v0, "US"

    sget-object v1, Lcom/lge/wifi/WifiLgeConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    :cond_0
    const/4 v0, 0x1

    .line 364
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDefaultMobileHotspotUS()Z
    .locals 2

    .prologue
    .line 467
    const-string v0, "MPCS"

    sget-object v1, Lcom/lge/wifi/WifiLgeConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "USC"

    sget-object v1, Lcom/lge/wifi/WifiLgeConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "US"

    sget-object v1, Lcom/lge/wifi/WifiLgeConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->isWifiChameleonFeaturedCarrier()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 469
    :cond_2
    const/4 v0, 0x1

    .line 471
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setLgeKtUsimRemoved()Z
    .locals 2

    .prologue
    .line 448
    const-string v0, "WifiLgeConfig"

    const-string/jumbo v1, "setLgeKtUsimRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->mIsAvailableKtUsim:Z

    .line 450
    const/4 v0, 0x1

    return v0
.end method

.method public static setWiFiAutoChannel(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 401
    const-string/jumbo v0, "wifi.lge.autochannel"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public static useChangeSsid()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public static useDefaultWifiOn()Z
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useDefaultWifiSleepPolicy()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 195
    const-string/jumbo v2, "wifi.lge.sleeppolicy"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 197
    .local v0, wifiSleepPolicy:I
    packed-switch v0, :pswitch_data_0

    .line 203
    const-string v2, "WifiLgeConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown wifiSleepPolicy : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 206
    .end local v0           #wifiSleepPolicy:I
    :pswitch_0
    return v0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static useHotspotHidden()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 368
    const-string v1, "US"

    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ATT"

    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return v0

    .line 372
    :cond_1
    const-string v1, "CA"

    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    const-string v1, "TLS"

    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BELL"

    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RGS"

    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useKoreanSsid()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 241
    sget-boolean v1, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/lge/wifi/WifiLgeConfig;->KSC5601SSID:Z

    if-eqz v1, :cond_0

    .line 242
    const-string v1, "CN"

    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v0

    .line 244
    :cond_1
    const-string v1, "HK"

    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static useKoreanSsid(Ljava/lang/String;)Z
    .locals 3
    .parameter "SSID"

    .prologue
    const/4 v0, 0x0

    .line 255
    sget-boolean v1, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/lge/wifi/WifiLgeConfig;->KSC5601SSID:Z

    if-eqz v1, :cond_0

    .line 257
    const-string/jumbo v1, "\u200b\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    const-string v1, "CN"

    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 260
    :cond_1
    const-string v1, "HK"

    sget-object v2, Lcom/lge/wifi/WifiLgeConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static useLgeEap()Z
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method public static useLgeKtCm()Z
    .locals 1

    .prologue
    .line 159
    sget-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->mLgeKtCm:Z

    return v0
.end method

.method public static useMobileHotspot()Z
    .locals 1

    .prologue
    .line 323
    sget-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->mMobileHotspot:Z

    return v0
.end method

.method public static useOpProfile()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public static useWiFiAggregation()Z
    .locals 2

    .prologue
    .line 386
    const-string/jumbo v0, "wifi.lge.aggregation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static useWiFiAutoChannel()I
    .locals 3

    .prologue
    .line 393
    const-string/jumbo v1, "wifi.lge.autochannel"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 394
    .local v0, value:I
    return v0
.end method

.method public static useWiFiOffloading()Z
    .locals 2

    .prologue
    .line 313
    const-string/jumbo v0, "wifi.lge.offloading"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static useWifiActivationWhileCharging()Z
    .locals 2

    .prologue
    .line 214
    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x1

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useWifiDLNA()Z
    .locals 2

    .prologue
    .line 331
    const-string v0, "dhcp.dlna.using"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static useWifiOffDelayAfter15alarm()Z
    .locals 1

    .prologue
    .line 301
    sget-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/lge/wifi/WifiLgeConfig;->mWifiOffdelayAfter15alarm:Z

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x1

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkMccMnc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "mcc"
    .parameter "mnc"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    invoke-direct {p0}, Lcom/lge/wifi/WifiLgeConfig;->getMccMncInfo()[Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, myMccMnc:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 171
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method
