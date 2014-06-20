.class public Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "DeviceInfoLgeHardwareWifi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$MyHandler;
    }
.end annotation


# static fields
.field private static operator_code:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mRes:Landroid/content/res/Resources;

.field private mRev:Landroid/preference/Preference;

.field private mUptime:Landroid/preference/Preference;

.field m_display_run1:Ljava/lang/Runnable;

.field m_display_run2:Ljava/lang/Runnable;

.field m_display_run3:Ljava/lang/Runnable;

.field m_display_run4:Ljava/lang/Runnable;

.field private regul_mHandler:Landroid/os/Handler;

.field private sUnknown:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->regul_mHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$1;-><init>(Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->m_display_run1:Ljava/lang/Runnable;

    .line 145
    new-instance v0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$2;-><init>(Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->m_display_run2:Ljava/lang/Runnable;

    .line 160
    new-instance v0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$3;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$3;-><init>(Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->m_display_run3:Ljava/lang/Runnable;

    .line 176
    new-instance v0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$4;-><init>(Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->m_display_run4:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->mRev:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->mRev:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->setWifiStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->setBtStatus()V

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 8
    .parameter "t"

    .prologue
    const-wide/16 v5, 0x3c

    .line 293
    rem-long v3, p1, v5

    long-to-int v2, v3

    .line 294
    .local v2, s:I
    div-long v3, p1, v5

    rem-long/2addr v3, v5

    long-to-int v1, v3

    .line 295
    .local v1, m:I
    const-wide/16 v3, 0xe10

    div-long v3, p1, v3

    long-to-int v0, v3

    .line 300
    .local v0, h:I
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 303
    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 285
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 286
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 288
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

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 366
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 368
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 369
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    if-eqz v0, :cond_0

    .line 374
    const-string v1, "aboutphone #DeviceinfolgePhoneidentity"

    const-string v2, "removePreferenceFromScreen() getPreferenceScreen() == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setBtStatus()V
    .locals 5

    .prologue
    .line 339
    const-string v3, "aboutphone #DeviceinfolgePhoneidentity"

    const-string v4, "setBtStatus"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 342
    .local v1, bluetooth:Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 344
    .local v2, btAddressPref:Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 345
    if-nez v1, :cond_1

    .line 347
    const-string v3, "bt_address"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, address:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .end local v0           #address:Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 349
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 350
    .restart local v0       #address:Ljava/lang/String;
    :cond_3
    const v3, 0x7f08045a

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 357
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object p2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->sUnknown:Ljava/lang/String;

    .line 360
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 363
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 9

    .prologue
    const v8, 0x7f08045a

    .line 309
    const-string v6, "aboutphone #DeviceinfolgePhoneidentity"

    const-string v7, "setWifiStatus"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 312
    .local v5, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 314
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez v2, :cond_0

    .line 315
    const-string v6, "aboutphone #DeviceinfolgePhoneidentity"

    const-string v7, "setWifiStatus , wifiInfo is NULL !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    const-string v6, "wifi_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 319
    .local v4, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v2, :cond_3

    const/4 v1, 0x0

    .line 321
    .local v1, macAddress:Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_1

    .line 323
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 326
    :cond_1
    const-string v6, "wifi_ip_address"

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 327
    .local v3, wifiIpAddressPref:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/lgesettings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, ipAddress:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 330
    if-eqz v0, :cond_5

    .line 331
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 336
    :cond_2
    :goto_2
    return-void

    .line 319
    .end local v0           #ipAddress:Ljava/lang/String;
    .end local v1           #macAddress:Ljava/lang/String;
    .end local v3           #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_3
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 323
    .restart local v1       #macAddress:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v8}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 333
    .restart local v0       #ipAddress:Ljava/lang/String;
    .restart local v3       #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_5
    invoke-virtual {p0, v8}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const-wide/16 v3, 0x32

    .line 220
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 221
    const v0, 0x7f06001e

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->addPreferencesFromResource(I)V

    .line 223
    const-string v0, "aboutphone #DeviceinfolgePhoneidentity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$MyHandler;-><init>(Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->mHandler:Landroid/os/Handler;

    .line 226
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->mRes:Landroid/content/res/Resources;

    .line 227
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->sUnknown:Ljava/lang/String;

    .line 230
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->operator_code:Ljava/lang/String;

    .line 231
    const-string v0, "aboutphone #DeviceinfolgePhoneidentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "operator_code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->operator_code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v0, "device_model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->setWifiStatus()V

    .line 235
    invoke-direct {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->setBtStatus()V

    .line 237
    const-string v0, "up_time"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->mUptime:Landroid/preference/Preference;

    .line 262
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/lge/ATClientUtils;->atClient_BindService(Landroid/content/Context;)V

    .line 263
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->regul_mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->m_display_run1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->regul_mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->m_display_run2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 265
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->regul_mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->m_display_run3:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->regul_mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->m_display_run4:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 268
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->removeUnnecessaryPreference()V

    .line 269
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 400
    const-string v0, "aboutphone #DeviceinfolgePhoneidentity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isEmbededBattery(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    const-string v0, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->regul_mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->m_display_run1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 405
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->regul_mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->m_display_run2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 406
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->regul_mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->m_display_run3:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 407
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->regul_mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->m_display_run4:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 408
    invoke-static {}, Lcom/android/lgesettings/lge/ATClientUtils;->atClient_unBindService()V

    .line 414
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 415
    return-void

    .line 411
    :cond_1
    const-string v0, "aboutphone #DeviceinfolgePhoneidentity"

    const-string v1, "onPause (normal)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 392
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 393
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 394
    const-string v0, "aboutphone #DeviceinfolgePhoneidentity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 384
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 385
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 386
    const-string v0, "aboutphone #DeviceinfolgePhoneidentity"

    const-string v1, "Resume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void
.end method

.method protected removeUnnecessaryPreference()V
    .locals 8

    .prologue
    .line 421
    const/16 v6, 0x2b

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "button_aboutphone_msim_status"

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-string v7, "battery_status"

    aput-object v7, v2, v6

    const/4 v6, 0x2

    const-string v7, "battery_level"

    aput-object v7, v2, v6

    const/4 v6, 0x3

    const-string v7, "operator_name"

    aput-object v7, v2, v6

    const/4 v6, 0x4

    const-string v7, "signal_strength"

    aput-object v7, v2, v6

    const/4 v6, 0x5

    const-string v7, "network_type"

    aput-object v7, v2, v6

    const/4 v6, 0x6

    const-string v7, "network_type_strength"

    aput-object v7, v2, v6

    const/4 v6, 0x7

    const-string v7, "service_state"

    aput-object v7, v2, v6

    const/16 v6, 0x8

    const-string v7, "roaming_state"

    aput-object v7, v2, v6

    const/16 v6, 0x9

    const-string v7, "data_state"

    aput-object v7, v2, v6

    const/16 v6, 0xa

    const-string v7, "number"

    aput-object v7, v2, v6

    const/16 v6, 0xb

    const-string v7, "min_number"

    aput-object v7, v2, v6

    const/16 v6, 0xc

    const-string v7, "prl_version"

    aput-object v7, v2, v6

    const/16 v6, 0xd

    const-string v7, "eri_version"

    aput-object v7, v2, v6

    const/16 v6, 0xe

    const-string v7, "esn_number"

    aput-object v7, v2, v6

    const/16 v6, 0xf

    const-string v7, "meid_number"

    aput-object v7, v2, v6

    const/16 v6, 0x10

    const-string v7, "meid_hexa"

    aput-object v7, v2, v6

    const/16 v6, 0x11

    const-string v7, "meid_decimal"

    aput-object v7, v2, v6

    const/16 v6, 0x12

    const-string v7, "imei"

    aput-object v7, v2, v6

    const/16 v6, 0x13

    const-string v7, "imei_sv"

    aput-object v7, v2, v6

    const/16 v6, 0x14

    const-string v7, "imei_svn_gsm"

    aput-object v7, v2, v6

    const/16 v6, 0x15

    const-string v7, "imei_svn"

    aput-object v7, v2, v6

    const/16 v6, 0x16

    const-string v7, "channel"

    aput-object v7, v2, v6

    const/16 v6, 0x17

    const-string v7, "sid"

    aput-object v7, v2, v6

    const/16 v6, 0x18

    const-string v7, "icc_id"

    aput-object v7, v2, v6

    const/16 v6, 0x19

    const-string v7, "last_factory_date_reset"

    aput-object v7, v2, v6

    const/16 v6, 0x1a

    const-string v7, "rooting_status"

    aput-object v7, v2, v6

    const/16 v6, 0x1b

    const-string v7, "ims_registration_status"

    aput-object v7, v2, v6

    const/16 v6, 0x1c

    const-string v7, "battery_use"

    aput-object v7, v2, v6

    const/16 v6, 0x1d

    const-string v7, "battery_condition_dcm"

    aput-object v7, v2, v6

    const/16 v6, 0x1e

    const-string v7, "support_technology"

    aput-object v7, v2, v6

    const/16 v6, 0x1f

    const-string v7, "serial_number"

    aput-object v7, v2, v6

    const/16 v6, 0x20

    const-string v7, "life_time_call"

    aput-object v7, v2, v6

    const/16 v6, 0x21

    const-string v7, "warranty_date_code"

    aput-object v7, v2, v6

    const/16 v6, 0x22

    const-string v7, "life_time_data"

    aput-object v7, v2, v6

    const/16 v6, 0x23

    const-string v7, "rev_check"

    aput-object v7, v2, v6

    const/16 v6, 0x24

    const-string v7, "smsc"

    aput-object v7, v2, v6

    const/16 v6, 0x25

    const-string v7, "last_factory_date_reset"

    aput-object v7, v2, v6

    const/16 v6, 0x26

    const-string v7, "rooting_status"

    aput-object v7, v2, v6

    const/16 v6, 0x27

    const-string v7, "imsi"

    aput-object v7, v2, v6

    const/16 v6, 0x28

    const-string v7, "refubish_counter"

    aput-object v7, v2, v6

    const/16 v6, 0x29

    const-string v7, "wimax_mac_address"

    aput-object v7, v2, v6

    const/16 v6, 0x2a

    const-string v7, "memory_size"

    aput-object v7, v2, v6

    .line 481
    .local v2, keyStrings:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    .line 482
    .local v5, string:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 483
    .local v4, removablePref:Landroid/preference/Preference;
    if-eqz v4, :cond_0

    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 484
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 481
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 488
    .end local v4           #removablePref:Landroid/preference/Preference;
    .end local v5           #string:Ljava/lang/String;
    :cond_1
    const-string v6, "CLR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 489
    const-string v6, "imei_sv"

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 490
    .restart local v4       #removablePref:Landroid/preference/Preference;
    if-eqz v4, :cond_2

    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 491
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 494
    .end local v4           #removablePref:Landroid/preference/Preference;
    :cond_2
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 273
    .local v0, at:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 275
    .local v2, ut:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 276
    const-wide/16 v2, 0x1

    .line 279
    :cond_0
    iget-object v4, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->mUptime:Landroid/preference/Preference;

    if-eqz v4, :cond_1

    .line 280
    iget-object v4, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 282
    :cond_1
    return-void
.end method
