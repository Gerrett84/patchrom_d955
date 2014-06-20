.class public Lcom/android/lgesettings/lge/ConnectivitySettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "ConnectivitySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;
    }
.end annotation


# static fields
.field private static mOSPAsInterfaceMethod:Ljava/lang/reflect/Method;

.field private static mOSPIsConnectedMethod:Ljava/lang/reflect/Method;

.field private static mOSPgetTransportMethod:Ljava/lang/reflect/Method;

.field private static sNotSupportOSP:Z

.field private static sSupportOSP2:Z

.field private static sSupportOSP3:Z

.field private static sSupportPCSuite:Z


# instance fields
.field private mAutoLaunch:Landroid/preference/PreferenceCategory;

.field private mCarHome:Landroid/preference/CheckBoxPreference;

.field private mDeskHome:Landroid/preference/CheckBoxPreference;

.field private mIOSPService:Ljava/lang/Object;

.field private mLGCategory:Landroid/preference/PreferenceCategory;

.field private mLGCategorySummary:Landroid/preference/Preference;

.field private final mLGMDMReceiver:Landroid/content/BroadcastReceiver;

.field private mLGSoftwareHelp:Landroid/preference/Preference;

.field private mMediaHome:Landroid/preference/CheckBoxPreference;

.field private mOSPSettings:Landroid/preference/Preference;

.field private mOSPWIFIConnectionEnabler:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

.field private mOSPWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

.field private mPCSuiteWIFIConnectionEnabler:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

.field private mPCSuiteWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

.field private mPouchMode:Landroid/preference/CheckBoxPreference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherSettings:Landroid/preference/Preference;

.field private mUsbAlwaysAsk:Landroid/preference/CheckBoxPreference;

.field private mUsbConnection:Z

.field private mUsbConnectionCategory:Landroid/preference/PreferenceCategory;

.field private mUsbConnectionType:Landroid/preference/Preference;

.field private mUsbHelp:Landroid/preference/Preference;

.field private mUsbHelper:Landroid/preference/Preference;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUsbTether:Landroid/preference/CheckBoxPreference;

.field private mUsbTethered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 94
    sput-boolean v2, Lcom/android/lgesettings/lge/ConnectivitySettings;->sSupportPCSuite:Z

    .line 95
    sput-boolean v0, Lcom/android/lgesettings/lge/ConnectivitySettings;->sSupportOSP2:Z

    .line 96
    sput-boolean v0, Lcom/android/lgesettings/lge/ConnectivitySettings;->sSupportOSP3:Z

    .line 97
    sput-boolean v0, Lcom/android/lgesettings/lge/ConnectivitySettings;->sNotSupportOSP:Z

    .line 141
    sput-object v1, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPAsInterfaceMethod:Ljava/lang/reflect/Method;

    .line 142
    sput-object v1, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPIsConnectedMethod:Ljava/lang/reflect/Method;

    .line 143
    sput-object v1, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPgetTransportMethod:Ljava/lang/reflect/Method;

    .line 146
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_OSP:Z

    if-eqz v2, :cond_2

    .line 148
    :try_start_0
    const-string v2, "com.lge.osp.IOSPService"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 151
    if-eqz v3, :cond_2

    .line 152
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v4

    array-length v5, v4

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_4

    aget-object v0, v4, v2

    .line 153
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Stub"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 159
    :goto_1
    if-eqz v0, :cond_0

    .line 160
    const-string v1, "android.os.IBinder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 161
    const-string v2, "asInterface"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPAsInterfaceMethod:Ljava/lang/reflect/Method;

    .line 166
    :cond_0
    sget-object v0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPIsConnectedMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 167
    const-string v1, "isConnected"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPIsConnectedMethod:Ljava/lang/reflect/Method;

    .line 171
    :cond_1
    sget-object v0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPgetTransportMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    .line 172
    const-string v1, "getTransport"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPgetTransportMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_2
    :goto_2
    return-void

    .line 152
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    goto :goto_2

    .line 175
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTethered:Z

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mIOSPService:Ljava/lang/Object;

    .line 182
    new-instance v0, Lcom/android/lgesettings/lge/ConnectivitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/ConnectivitySettings$1;-><init>(Lcom/android/lgesettings/lge/ConnectivitySettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 976
    new-instance v0, Lcom/android/lgesettings/lge/ConnectivitySettings$6;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/ConnectivitySettings$6;-><init>(Lcom/android/lgesettings/lge/ConnectivitySettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/lge/ConnectivitySettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/lge/ConnectivitySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnection:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/lge/ConnectivitySettings;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mIOSPService:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/lgesettings/lge/ConnectivitySettings;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mIOSPService:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPgetTransportMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPIsConnectedMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/lgesettings/lge/ConnectivitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPAsInterfaceMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/lgesettings/lge/ConnectivitySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/lge/ConnectivitySettings;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/lge/ConnectivitySettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/lgesettings/lge/ConnectivitySettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/lgesettings/lge/ConnectivitySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTethered:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/lge/ConnectivitySettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/lgesettings/lge/ConnectivitySettings;->connectUsbTether(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/lgesettings/lge/ConnectivitySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/lge/ConnectivitySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/lgesettings/lge/ConnectivitySettings;->sNotSupportOSP:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/lgesettings/lge/ConnectivitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private connectUsbTether(Z)V
    .locals 5
    .parameter "connection"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 942
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 943
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 973
    :goto_0
    return-void

    .line 947
    :cond_0
    if-ne p1, v4, :cond_2

    .line 948
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setTetherStatus(Landroid/content/Context;Z)V

    .line 950
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    :goto_1
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_1

    .line 954
    const-string v1, "ConnectivitySettings"

    const-string v2, "[AUTORUN] ============ Tethering ERROR !! ============"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 972
    :goto_2
    sput-boolean v4, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mTetherChanged:Z

    goto :goto_0

    .line 958
    :cond_1
    iput-boolean v4, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTethered:Z

    .line 959
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 960
    const-string v1, "ConnectivitySettings"

    const-string v2, "[AUTORUN] ============ Tethering OK !!  =============="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 963
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setTetherStatus(Landroid/content/Context;Z)V

    .line 964
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 966
    const-wide/16 v1, 0x12c

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 969
    :goto_3
    iput-boolean v3, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTethered:Z

    .line 970
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 951
    :catch_0
    move-exception v1

    goto :goto_1

    .line 967
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public static getSupportOSP()Z
    .locals 1

    .prologue
    .line 441
    sget-boolean v0, Lcom/android/lgesettings/lge/ConnectivitySettings;->sSupportOSP3:Z

    return v0
.end method

.method public static getSupportPCSuite()Z
    .locals 1

    .prologue
    .line 437
    sget-boolean v0, Lcom/android/lgesettings/lge/ConnectivitySettings;->sSupportPCSuite:Z

    return v0
.end method

.method private initAutoLaunch()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 840
    const-string v0, "auto_launch"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    .line 842
    const-string v0, "car_home"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mCarHome:Landroid/preference/CheckBoxPreference;

    .line 843
    iget-object v3, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mCarHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "car_home_auto_launch"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 845
    const-string v0, "desk_home"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    .line 846
    iget-object v3, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "desk_home_auto_launch"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 848
    const-string v0, "media_home"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mMediaHome:Landroid/preference/CheckBoxPreference;

    .line 849
    iget-object v3, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mMediaHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "media_home_auto_launch"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 851
    const-string v0, "pouch_mode"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mPouchMode:Landroid/preference/CheckBoxPreference;

    .line 852
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mPouchMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pouch_mode_auto_launch"

    invoke-static {v3, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 854
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 855
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "d1lv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 856
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 889
    :goto_4
    return-void

    :cond_0
    move v0, v2

    .line 843
    goto :goto_0

    :cond_1
    move v0, v2

    .line 846
    goto :goto_1

    :cond_2
    move v0, v2

    .line 849
    goto :goto_2

    :cond_3
    move v1, v2

    .line 852
    goto :goto_3

    .line 860
    :cond_4
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "i_vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 861
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 862
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mMediaHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 864
    :cond_5
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "batman_vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 865
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mCarHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 866
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 867
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mPouchMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 868
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    const-string v1, "pouch_notification"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 870
    :cond_6
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cayman"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 871
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mMediaHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 872
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mPouchMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 873
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    const-string v1, "pouch_notification"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 875
    :cond_7
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "geeb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 876
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mCarHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 877
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 878
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mPouchMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 879
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    const-string v1, "pouch_notification"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 882
    :cond_8
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 886
    :cond_9
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4
.end method

.method private onCreateTetherAlertDialg(I)V
    .locals 4
    .parameter "dialogId"

    .prologue
    .line 902
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 903
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080a67

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080a68

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/lge/ConnectivitySettings$5;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/lge/ConnectivitySettings$5;-><init>(Lcom/android/lgesettings/lge/ConnectivitySettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/lge/ConnectivitySettings$4;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/lge/ConnectivitySettings$4;-><init>(Lcom/android/lgesettings/lge/ConnectivitySettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/lgesettings/lge/ConnectivitySettings$3;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/lge/ConnectivitySettings$3;-><init>(Lcom/android/lgesettings/lge/ConnectivitySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/lgesettings/lge/ConnectivitySettings$2;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/lge/ConnectivitySettings$2;-><init>(Lcom/android/lgesettings/lge/ConnectivitySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 937
    .local v0, altDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 939
    .end local v0           #altDialog:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 0

    .prologue
    .line 446
    return-void
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 7
    .parameter "function"

    .prologue
    const/4 v6, 0x1

    const v5, 0x7f080a12

    const v4, 0x7f081026

    const/4 v3, 0x0

    .line 449
    const-string v1, "charge_only"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 450
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 515
    :goto_0
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    :cond_0
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/MDMSettingsAdapter;->setUsbTetherMenu(Landroid/preference/CheckBoxPreference;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 551
    :cond_1
    :goto_1
    return-void

    .line 451
    :cond_2
    const-string v1, "mtp_only"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 452
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 453
    :cond_3
    const-string v1, "ecm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 454
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 455
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    const v2, 0x7f080a1f

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 457
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    const v2, 0x7f081029

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 459
    :cond_5
    const-string v1, "pc_suite"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 460
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 461
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    const v2, 0x7f080a20

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 463
    :cond_6
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ATT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 464
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    const v2, 0x7f080486

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 467
    :cond_7
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    const v2, 0x7f080a6c

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 470
    :cond_8
    const-string v1, "mass_storage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 471
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_skt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_u"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 472
    :cond_9
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    const v2, 0x7f080a22

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 475
    :cond_a
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    const v2, 0x7f080a0f

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 477
    :cond_b
    const-string v1, "ptp_only"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 478
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 479
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    const v2, 0x7f080482

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 481
    :cond_c
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    const v2, 0x7f08102c

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 485
    :cond_d
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 486
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 489
    :cond_e
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "u0_cdma"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 491
    const-string v1, "usb_enable_ecm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 492
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 495
    :cond_f
    const-string v1, "usb_enable_mtp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 496
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 505
    :cond_10
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 510
    :cond_11
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 523
    :cond_12
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 524
    iget-boolean v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnection:Z

    if-eqz v1, :cond_14

    .line 525
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 526
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f080a19

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 528
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getTetherStatus(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTethered:Z

    .line 529
    iget-boolean v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTethered:Z

    if-eqz v1, :cond_13

    .line 530
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 531
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 542
    :cond_13
    :goto_2
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/lgesettings/lge/OverlayUtils;->getAllowTethering(Landroid/content/ComponentName;)Z

    move-result v0

    .line 543
    .local v0, allowTethering:Z
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    if-nez v0, :cond_1

    .line 545
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 546
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f080c18

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 535
    .end local v0           #allowTethering:Z
    :cond_14
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 536
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 537
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0804f9

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_2
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 379
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 380
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->updateToggles(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 235
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 237
    const v8, 0x7f060011

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/lge/ConnectivitySettings;->addPreferencesFromResource(I)V

    .line 239
    const-string v8, "usb"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/usb/UsbManager;

    iput-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 241
    const-string v8, "usb_connection"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionCategory:Landroid/preference/PreferenceCategory;

    .line 242
    const-string v8, "usb_connection_type"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    .line 243
    const-string v8, "connectivity_helper"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbHelp:Landroid/preference/Preference;

    .line 244
    const-string v8, "usb_always_ask"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbAlwaysAsk:Landroid/preference/CheckBoxPreference;

    .line 245
    iget-object v11, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbAlwaysAsk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v12, "usb_ask_on_connection"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_b

    move v8, v9

    :goto_0
    invoke-virtual {v11, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 248
    const-string v8, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 249
    iget-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbAlwaysAsk:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f080a17

    invoke-virtual {v8, v11}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 253
    :cond_0
    const-string v8, "tether_settings"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mTetherSettings:Landroid/preference/Preference;

    .line 255
    iget-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mTetherSettings:Landroid/preference/Preference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    const-string v8, "usb_tether"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    .line 260
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    const-string v11, "SPR"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    const-string v11, "BM"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    :cond_1
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 263
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 266
    .local v1, cm:Landroid/net/ConnectivityManager;
    new-array v4, v9, [Ljava/lang/String;

    const-string v8, ""

    aput-object v8, v4, v10

    .line 267
    .local v4, mUsbRegexs:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v4

    .line 268
    const/4 v7, 0x0

    .line 269
    .local v7, usbAvailable:Z
    array-length v8, v4

    if-eqz v8, :cond_c

    move v7, v9

    .line 270
    :goto_1
    iput-boolean v7, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnection:Z

    .line 271
    const-string v8, "ConnectivitySettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCreate() : mUsbRegexs="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v8, "ConnectivitySettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCreate() : usbAvailable="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getTetherStatus(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTethered:Z

    .line 275
    iget-boolean v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTethered:Z

    if-eqz v8, :cond_2

    .line 276
    iget-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 277
    iget-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 279
    :cond_2
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/lgesettings/lge/OverlayUtils;->getAllowTethering(Landroid/content/ComponentName;)Z

    move-result v0

    .line 280
    .local v0, allowTethering:Z
    iget-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 281
    iget-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 283
    :cond_3
    invoke-static {}, Lcom/android/lgesettings/Utils;->getChameleonUsbTetheringMenuEnabled()Z

    move-result v8

    if-nez v8, :cond_4

    .line 284
    iget-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 285
    iget-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 292
    .end local v0           #allowTethering:Z
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v4           #mUsbRegexs:[Ljava/lang/String;
    .end local v7           #usbAvailable:Z
    :cond_4
    :goto_2
    const-string v8, "connectivity_helper"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbHelper:Landroid/preference/Preference;

    .line 295
    const-string v8, "lg_category"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mLGCategory:Landroid/preference/PreferenceCategory;

    .line 296
    const-string v8, "lg_category_summary"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mLGCategorySummary:Landroid/preference/Preference;

    .line 297
    const-string v8, "osp_settings"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPSettings:Landroid/preference/Preference;

    .line 298
    const-string v8, "wifi_pcsuite_connection_onoff"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

    .line 299
    const-string v8, "wifi_osp_connection_onoff"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

    .line 300
    new-instance v8, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, p0, v11}, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;-><init>(Lcom/android/lgesettings/lge/ConnectivitySettings;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionEnabler:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

    .line 301
    new-instance v8, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, p0, v11}, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;-><init>(Lcom/android/lgesettings/lge/ConnectivitySettings;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPWIFIConnectionEnabler:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

    .line 302
    const-string v8, "lg_software_help"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mLGSoftwareHelp:Landroid/preference/Preference;

    .line 303
    iget-object v11, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v12, "linkcloud_settings"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_e

    move v8, v9

    :goto_3
    invoke-virtual {v11, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 306
    iget-object v11, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v12, "osp_wifi_settings"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_f

    move v8, v9

    :goto_4
    invoke-virtual {v11, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 310
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 313
    .local v6, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v8, "com.lge.osp"

    const/4 v11, 0x0

    invoke-virtual {v6, v8, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 315
    .local v5, pkgInfo:Landroid/content/pm/PackageInfo;
    iget v8, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v11, 0x5208

    if-lt v8, v11, :cond_5

    .line 316
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/lgesettings/lge/ConnectivitySettings;->sSupportOSP3:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v5           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_5
    :goto_5
    :try_start_1
    const-string v8, "com.lge.sync"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 324
    .restart local v5       #pkgInfo:Landroid/content/pm/PackageInfo;
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/lgesettings/lge/ConnectivitySettings;->sSupportPCSuite:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 331
    .end local v5           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_6
    sget-boolean v8, Lcom/android/lgesettings/lge/ConnectivitySettings;->sSupportPCSuite:Z

    if-nez v8, :cond_6

    .line 332
    iget-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mLGCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 336
    :cond_6
    sget-boolean v8, Lcom/android/lgesettings/lge/ConnectivitySettings;->sSupportOSP3:Z

    if-eqz v8, :cond_10

    .line 337
    iget-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mLGCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPSettings:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 358
    :cond_7
    :goto_7
    iget-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mLGCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v8

    if-gtz v8, :cond_8

    .line 359
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mLGCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 362
    :cond_8
    invoke-direct {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->initAutoLaunch()V

    .line 365
    sget-boolean v8, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v8, :cond_a

    .line 366
    const-string v8, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "BM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 368
    :cond_9
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 369
    .local v3, filterLGMDM:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/lgesettings/MDMSettingsAdapter;->addUsbPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V

    .line 371
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 375
    .end local v3           #filterLGMDM:Landroid/content/IntentFilter;
    :cond_a
    return-void

    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_b
    move v8, v10

    .line 245
    goto/16 :goto_0

    .restart local v1       #cm:Landroid/net/ConnectivityManager;
    .restart local v4       #mUsbRegexs:[Ljava/lang/String;
    .restart local v7       #usbAvailable:Z
    :cond_c
    move v7, v10

    .line 269
    goto/16 :goto_1

    .line 289
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v4           #mUsbRegexs:[Ljava/lang/String;
    .end local v7           #usbAvailable:Z
    :cond_d
    iget-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_e
    move v8, v10

    .line 303
    goto/16 :goto_3

    :cond_f
    move v8, v10

    .line 306
    goto/16 :goto_4

    .line 318
    .restart local v6       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 319
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sput-boolean v9, Lcom/android/lgesettings/lge/ConnectivitySettings;->sNotSupportOSP:Z

    goto :goto_5

    .line 326
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 327
    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "ConnectivitySettings"

    const-string v9, "not support PCSuite"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sput-boolean v10, Lcom/android/lgesettings/lge/ConnectivitySettings;->sSupportPCSuite:Z

    goto :goto_6

    .line 338
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_10
    sget-boolean v8, Lcom/android/lgesettings/lge/ConnectivitySettings;->sNotSupportOSP:Z

    if-eqz v8, :cond_11

    sget-boolean v8, Lcom/android/lgesettings/lge/ConnectivitySettings;->sSupportPCSuite:Z

    if-eqz v8, :cond_11

    .line 340
    iget-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mLGCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 341
    iget-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mLGCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mLGCategorySummary:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 342
    iget-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mLGCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPSettings:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 345
    :cond_11
    iget-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mLGCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 346
    iget-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mLGCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mLGSoftwareHelp:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 347
    iget-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mLGCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mLGCategorySummary:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 351
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPSettings:Landroid/preference/Preference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.lge.osp"

    invoke-static {v8, v9}, Lcom/android/lgesettings/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 353
    iget-object v8, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mLGCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPSettings:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 420
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 422
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_1

    .line 423
    const-string v1, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :cond_1
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MDM"

    const-string v2, "mLGMDMReceiver unregisterReceiver "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 406
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 408
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionEnabler:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionEnabler:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;->pause()V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPWIFIConnectionEnabler:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPWIFIConnectionEnabler:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;->pause()V

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 416
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 556
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    if-ne p2, v2, :cond_2

    .line 557
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 558
    const-string v2, "extra_usb_launcher"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 564
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 565
    const-class v1, Lcom/android/lgesettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p0, v1, v3, v0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 623
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 568
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 569
    const-string v2, "com.android.lgesettings"

    const-string v3, "com.android.lgesettings.Settings$UsbSettingsActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 571
    const-string v2, "extra_usb_launcher"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 572
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 574
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbAlwaysAsk:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 575
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbAlwaysAsk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 576
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usb_ask_on_connection"

    if-eqz v2, :cond_3

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 579
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mCarHome:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_6

    .line 580
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mCarHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 581
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "car_home_auto_launch"

    if-eqz v2, :cond_5

    :goto_2
    invoke-static {v3, v4, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2

    .line 584
    :cond_6
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_8

    .line 585
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 586
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "desk_home_auto_launch"

    if-eqz v2, :cond_7

    :goto_3
    invoke-static {v3, v4, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_3

    .line 589
    :cond_8
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mMediaHome:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_a

    .line 590
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mMediaHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 591
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "media_home_auto_launch"

    if-eqz v2, :cond_9

    :goto_4
    invoke-static {v3, v4, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_4

    .line 594
    :cond_a
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mPouchMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_c

    .line 595
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mPouchMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 596
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pouch_mode_auto_launch"

    if-eqz v2, :cond_b

    :goto_5
    invoke-static {v3, v4, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto :goto_5

    .line 600
    :cond_c
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_e

    .line 601
    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 603
    if-eqz v2, :cond_d

    .line 604
    invoke-direct {p0, v0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->onCreateTetherAlertDialg(I)V

    goto/16 :goto_0

    .line 607
    :cond_d
    invoke-direct {p0, v1}, Lcom/android/lgesettings/lge/ConnectivitySettings;->connectUsbTether(Z)V

    .line 608
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 610
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 613
    :cond_e
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbHelp:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 615
    const-class v0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p0, v0, v3, v1}, Lcom/android/lgesettings/lge/ConnectivitySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 617
    :cond_f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 618
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.Settings$ConnectivityHelperPopupActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 385
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 387
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionEnabler:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionEnabler:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

    invoke-virtual {v1}, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;->resume()V

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPWIFIConnectionEnabler:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

    if-eqz v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPWIFIConnectionEnabler:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

    invoke-virtual {v1}, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;->resume()V

    .line 396
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 397
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 400
    invoke-direct {p0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->updateState()V

    .line 401
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/lge/ConnectivitySettings;->updateToggles(Ljava/lang/String;)V

    .line 402
    return-void
.end method
