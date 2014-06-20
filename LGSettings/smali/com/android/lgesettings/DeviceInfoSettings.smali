.class public Lcom/android/lgesettings/DeviceInfoSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "DeviceInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/DeviceInfoSettings$BasebandVersionThread;,
        Lcom/android/lgesettings/DeviceInfoSettings$MyHandler;
    }
.end annotation


# static fields
.field private static operator_code:Ljava/lang/String;


# instance fields
.field private MCC:Ljava/lang/String;

.field private MNC:Ljava/lang/String;

.field private initial_name:Ljava/lang/String;

.field private mBasebandVersion:Ljava/lang/String;

.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field private mHandler:Landroid/os/Handler;

.field mHits:[J

.field private mRev:Landroid/preference/Preference;

.field m_display_run_factory:Ljava/lang/Runnable;

.field private ntcode_mccmnc:Ljava/lang/String;

.field private regul_mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->initial_name:Ljava/lang/String;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->MCC:Ljava/lang/String;

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->MNC:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->ntcode_mccmnc:Ljava/lang/String;

    .line 125
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mHits:[J

    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->regul_mHandler:Landroid/os/Handler;

    .line 179
    new-instance v0, Lcom/android/lgesettings/DeviceInfoSettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DeviceInfoSettings$1;-><init>(Lcom/android/lgesettings/DeviceInfoSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->m_display_run_factory:Ljava/lang/Runnable;

    .line 958
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/DeviceInfoSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mBasebandVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/lgesettings/DeviceInfoSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mBasebandVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/DeviceInfoSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/lgesettings/DeviceInfoSettings;->onBasebandeVersionLoaded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/DeviceInfoSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mRev:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/lgesettings/DeviceInfoSettings;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mRev:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/lgesettings/DeviceInfoSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private display_basebandVersion()V
    .locals 7

    .prologue
    .line 576
    const-string v4, "aboutphone # DeviceInfoSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ro.lge.basebandversion: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ro.lge.basebandversion"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-string v4, "aboutphone # DeviceInfoSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsm.version.baseband: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "gsm.version.baseband"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v4, "baseband_version"

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 580
    .local v1, pref:Landroid/preference/Preference;
    const-string v4, "ro.lge.basebandversion"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 581
    .local v2, ro_lge_baseband:Ljava/lang/String;
    const-string v4, "gsm.version.baseband"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, gsm_baseband:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 584
    const-string v4, "VZW"

    const-string v5, "ro.build.target_operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 585
    new-instance v3, Lcom/android/lgesettings/DeviceInfoSettings$BasebandVersionThread;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/DeviceInfoSettings$BasebandVersionThread;-><init>(Lcom/android/lgesettings/DeviceInfoSettings;)V

    .line 586
    .local v3, thread:Lcom/android/lgesettings/DeviceInfoSettings$BasebandVersionThread;
    invoke-virtual {v3}, Lcom/android/lgesettings/DeviceInfoSettings$BasebandVersionThread;->start()V

    .line 597
    .end local v3           #thread:Lcom/android/lgesettings/DeviceInfoSettings$BasebandVersionThread;
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    .line 589
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 590
    :cond_2
    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    .line 591
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 593
    :cond_3
    const v4, 0x7f080018

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method public static formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 880
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    .line 888
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 889
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 890
    const-string v0, "aboutphone # DeviceInfoSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Regex did not match on /proc/version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const-string v0, "Unavailable"

    .line 921
    :cond_0
    :goto_0
    return-object v0

    .line 892
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 893
    const-string v0, "aboutphone # DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Regex match on /proc/version only returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " groups"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const-string v0, "Unavailable"

    goto :goto_0

    .line 904
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 905
    const-string v0, "Unavailable"

    goto :goto_0

    .line 907
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 914
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 915
    if-lez v2, :cond_4

    .line 916
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 918
    :cond_4
    const-string v2, "VZW"

    const-string v3, "ro.build.target_operator"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lge@android-build "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFormattedKernelVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 865
    :try_start_0
    const-string v0, "/proc/version"

    invoke-static {v0}, Lcom/android/lgesettings/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/DeviceInfoSettings;->formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 870
    :goto_0
    return-object v0

    .line 866
    :catch_0
    move-exception v0

    .line 867
    const-string v0, "Unavailable"

    goto :goto_0

    .line 868
    :catch_1
    move-exception v0

    .line 869
    const-string v1, "aboutphone # DeviceInfoSettings"

    const-string v2, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 870
    const-string v0, "Unavailable"

    goto :goto_0
.end method

.method private getLatinAmericaSWVersion()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 622
    const-string v3, "lge.version.factorysw"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 623
    .local v2, version:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 625
    const-string v3, "ro.lge.factoryversion"

    const-string v4, "Unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 628
    :cond_0
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, factoryVersion:[Ljava/lang/String;
    array-length v3, v0

    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    .line 630
    aget-object v1, v0, v5

    .line 638
    :goto_0
    return-object v1

    .line 633
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v5

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v6

    const/4 v5, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, swversion:Ljava/lang/String;
    goto :goto_0
.end method

.method private getSWVersionInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 601
    const-string v2, ""

    .line 602
    .local v2, swver:Ljava/lang/String;
    const-string v0, ""

    .line 605
    .local v0, build_date:Ljava/lang/String;
    :try_start_0
    const-string v3, "ro.lge.swversion"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 606
    const-string v3, "ro.build.lge.version.date"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 611
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 607
    :catch_0
    move-exception v1

    .line 608
    .local v1, e:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private getVDF_country(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "mccmnc"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 684
    const-string v4, "aboutphone # DeviceInfoSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVDF_country (mccmnc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v11, :cond_1

    .line 687
    :cond_0
    const-string v4, "aboutphone # DeviceInfoSettings"

    const-string v5, "getVDF_country ( mcccmc is Wrong )"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v4, 0x0

    .line 712
    :goto_0
    return-object v4

    .line 691
    :cond_1
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, mcc:Ljava/lang/String;
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 693
    .local v3, mnc:Ljava/lang/String;
    const/16 v4, 0xa

    new-array v0, v4, [[Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "262"

    aput-object v5, v4, v7

    const-string v5, "02"

    aput-object v5, v4, v9

    const-string v5, "DE"

    aput-object v5, v4, v10

    aput-object v4, v0, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "226"

    aput-object v5, v4, v7

    const-string v5, "01"

    aput-object v5, v4, v9

    const-string v5, "RO"

    aput-object v5, v4, v10

    aput-object v4, v0, v9

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "204"

    aput-object v5, v4, v7

    const-string v5, "04"

    aput-object v5, v4, v9

    const-string v5, "NL"

    aput-object v5, v4, v10

    aput-object v4, v0, v10

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "208"

    aput-object v5, v4, v7

    const-string v5, "10"

    aput-object v5, v4, v9

    const-string v5, "SFR"

    aput-object v5, v4, v10

    aput-object v4, v0, v8

    const/4 v4, 0x4

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "647"

    aput-object v6, v5, v7

    const-string v6, "10"

    aput-object v6, v5, v9

    const-string v6, "SRR"

    aput-object v6, v5, v10

    aput-object v5, v0, v4

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "214"

    aput-object v5, v4, v7

    const-string v5, "02"

    aput-object v5, v4, v9

    const-string v5, "ES"

    aput-object v5, v4, v10

    aput-object v4, v0, v11

    const/4 v4, 0x6

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "222"

    aput-object v6, v5, v7

    const-string v6, "10"

    aput-object v6, v5, v9

    const-string v6, "IT"

    aput-object v6, v5, v10

    aput-object v5, v0, v4

    const/4 v4, 0x7

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "202"

    aput-object v6, v5, v7

    const-string v6, "05"

    aput-object v6, v5, v9

    const-string v6, "GR"

    aput-object v6, v5, v10

    aput-object v5, v0, v4

    const/16 v4, 0x8

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "280"

    aput-object v6, v5, v7

    const-string v6, "01"

    aput-object v6, v5, v9

    const-string v6, "CY"

    aput-object v6, v5, v10

    aput-object v5, v0, v4

    const/16 v4, 0x9

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "219"

    aput-object v6, v5, v7

    const-string v6, "10"

    aput-object v6, v5, v9

    const-string v6, "HR"

    aput-object v6, v5, v10

    aput-object v5, v0, v4

    .line 706
    .local v0, VDF_contry:[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 707
    aget-object v4, v0, v1

    aget-object v4, v4, v7

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v4, v0, v1

    aget-object v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 708
    aget-object v4, v0, v1

    aget-object v4, v4, v10

    goto/16 :goto_0

    .line 706
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 712
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public static isHypenValue(C)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 169
    packed-switch p0, :pswitch_data_0

    .line 175
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 172
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
    .end packed-switch
.end method

.method private makeSWversion_VDF(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "mccmnc"

    .prologue
    const/4 v2, 0x0

    .line 645
    const-string v3, "aboutphone # DeviceInfoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeSWversion_VDF / Software_property:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ro.lge.swversion"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const-string v3, "aboutphone # DeviceInfoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeSWversion_VDF (mccmnc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 649
    :cond_0
    const-string v3, "aboutphone # DeviceInfoSettings"

    const-string v4, "makeSWversion_VDF ( mcccmc is Wrong )"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :goto_0
    return-object v2

    .line 653
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/lgesettings/DeviceInfoSettings;->getVDF_country(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, VDF_country:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 655
    const-string v3, "aboutphone # DeviceInfoSettings"

    const-string v4, "VDF_country is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 659
    :cond_2
    const-string v3, "ro.lge.swversion"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 673
    .local v1, before_sw_ver:Ljava/lang/String;
    move-object v2, v1

    .line 674
    .local v2, new_sw_ver:Ljava/lang/String;
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 675
    const-string v3, "VDF-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 676
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 678
    const-string v3, "aboutphone # DeviceInfoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new_sw_ver:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onBasebandeVersionLoaded(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 978
    const-string v0, "baseband_version"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 980
    if-eqz v0, :cond_0

    .line 981
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 983
    :cond_0
    return-void

    .line 981
    :cond_1
    const v1, 0x7f08045a

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 852
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 854
    .local v0, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 856
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 991
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 993
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 994
    invoke-virtual {p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 996
    :cond_1
    if-eqz v0, :cond_0

    .line 999
    const-string v0, "aboutphone # DeviceInfoSettings"

    const-string v1, "removePreferenceFromScreen() getPreferenceScreen() == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removePreferenceIfBoolFalse(Ljava/lang/String;I)V
    .locals 2
    .parameter "preference"
    .parameter "resId"

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 815
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 816
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 820
    .end local v0           #pref:Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 803
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/lgesettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 807
    :catch_0
    move-exception v0

    .line 808
    const-string v0, "aboutphone # DeviceInfoSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' missing and no \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' preference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 824
    :try_start_0
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/lgesettings/Utils;->isEnglishDigitRTLLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 825
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u200f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 833
    :goto_0
    return-void

    .line 827
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 829
    :catch_0
    move-exception v0

    .line 830
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "preference"
    .parameter "property"

    .prologue
    .line 837
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    :goto_0
    return-void

    .line 840
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateSharedPreferenceForEasySettings()V
    .locals 3

    .prologue
    .line 1005
    .line 1007
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.lge.settings.easy"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 1008
    const-string v1, "easy_development"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    :goto_0
    return-void

    .line 1011
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .parameter "icicle"

    .prologue
    .line 228
    invoke-super/range {p0 .. p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 230
    const-string v20, "aboutphone # DeviceInfoSettings"

    const-string v21, "onCreate"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v20, Lcom/android/lgesettings/DeviceInfoSettings$MyHandler;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings$MyHandler;-><init>(Lcom/android/lgesettings/DeviceInfoSettings;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/DeviceInfoSettings;->mHandler:Landroid/os/Handler;

    .line 236
    const v20, 0x7f06001d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 239
    const-string v20, "ro.build.target_operator"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/android/lgesettings/DeviceInfoSettings;->operator_code:Ljava/lang/String;

    .line 247
    const-string v20, "dualsim_status_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 250
    const-string v20, "batman_dcm"

    sget-object v21, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 251
    const-string v20, "status_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    const v21, 0x7f08043b

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(I)V

    .line 259
    :goto_0
    const-string v20, "firmware_version"

    sget-object v21, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v20, "firmware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 262
    const-string v20, "ro.build.target_operator"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 263
    .local v18, targetOperator:Ljava/lang/String;
    const-string v20, "aboutphone # DeviceInfoSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "targetOperator: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v20, "ro.build.target_country"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 268
    .local v17, targetCountry:Ljava/lang/String;
    const-string v20, "aboutphone # DeviceInfoSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "taregetCountry: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v20, "aboutphone # DeviceInfoSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Build.DEVICE: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", Build.Model: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/DeviceInfoSettings;->display_basebandVersion()V

    .line 300
    const-string v20, "fcc_equipment_id"

    const-string v21, "ro.ril.fccid"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v20, "build_number"

    sget-object v21, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v20, "build_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 304
    const-string v20, "kernel_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-static {}, Lcom/android/lgesettings/DeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 308
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v20

    if-nez v20, :cond_f

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f08085e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 310
    .local v14, status:Ljava/lang/String;
    const-string v20, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v14}, Lcom/android/lgesettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .end local v14           #status:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    const-string v21, "selinux_status"

    const-string v22, "ro.build.selinux"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/lgesettings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/4 v7, 0x0

    .line 327
    .local v7, device_name:Ljava/lang/String;
    const/16 v19, 0x0

    .line 328
    .local v19, v_device_name:Ljava/lang/String;
    const-string v20, "ro.product.device"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 329
    const-string v20, "aboutphone # DeviceInfoSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "device_name.length() = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_10

    .line 332
    const/16 v20, 0x0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 338
    :goto_2
    const-string v20, "aboutphone # DeviceInfoSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "device_name = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v20, "aboutphone # DeviceInfoSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "v_device_name = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v20, "persist.sys.cust.unifiedversion"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 342
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getLatinAmericaSWVersion()Ljava/lang/String;

    move-result-object v15

    .line 343
    .local v15, swv:Ljava/lang/String;
    new-instance v16, Ljava/util/StringTokenizer;

    const-string v20, "-"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v15, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .local v16, swv_tokens:Ljava/util/StringTokenizer;
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/DeviceInfoSettings;->initial_name:Ljava/lang/String;

    .line 346
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/DeviceInfoSettings;->MCC:Ljava/lang/String;

    .line 347
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/DeviceInfoSettings;->MNC:Ljava/lang/String;

    .line 348
    const-string v20, "persist.sys.mcc-list"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/DeviceInfoSettings;->ntcode_mccmnc:Ljava/lang/String;

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/DeviceInfoSettings;->ntcode_mccmnc:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 350
    const-string v20, "SSV"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/DeviceInfoSettings;->MCC:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 351
    const-string v20, "TLF"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/DeviceInfoSettings;->MNC:Ljava/lang/String;

    .line 353
    :cond_1
    const-string v20, "AMX"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/DeviceInfoSettings;->MCC:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const-string v20, "XXX"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/DeviceInfoSettings;->MNC:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 354
    const-string v20, "CLR"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/DeviceInfoSettings;->MNC:Ljava/lang/String;

    .line 356
    :cond_2
    const-string v20, "TGO"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/DeviceInfoSettings;->MCC:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    const-string v20, "XXX"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/DeviceInfoSettings;->MNC:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 357
    const-string v20, "XXX"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/DeviceInfoSettings;->MNC:Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :cond_3
    :goto_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/DeviceInfoSettings;->initial_name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/DeviceInfoSettings;->MCC:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/DeviceInfoSettings;->MNC:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 367
    const-string v20, "software_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 433
    .end local v15           #swv:Ljava/lang/String;
    .end local v16           #swv_tokens:Ljava/util/StringTokenizer;
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    const-string v21, "safetylegal"

    const-string v22, "ro.url.safetylegal"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/lgesettings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    const-string v21, "fcc_equipment_id"

    const-string v22, "ro.ril.fccid"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/lgesettings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 440
    const-string v20, "baseband_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 447
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 449
    .local v4, act:Landroid/app/Activity;
    const-string v20, "container"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceGroup;

    .line 450
    .local v13, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v20, "terms"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v13, v0, v1}, Lcom/android/lgesettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 451
    const-string v20, "license"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v13, v0, v1}, Lcom/android/lgesettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 452
    const-string v20, "copyright"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v13, v0, v1}, Lcom/android/lgesettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 453
    const-string v20, "team"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v13, v0, v1}, Lcom/android/lgesettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 456
    const-string v20, "SPR"

    sget-object v21, Lcom/android/lgesettings/DeviceInfoSettings;->operator_code:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    const-string v20, "BM"

    sget-object v21, Lcom/android/lgesettings/DeviceInfoSettings;->operator_code:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_22

    .line 457
    :cond_5
    const-string v20, "ro.build.target_operator"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "TRF"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_21

    .line 458
    if-eqz v13, :cond_6

    .line 459
    const-string v20, "carrier_legal"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 472
    :cond_6
    :goto_5
    const-string v20, "MPCS"

    sget-object v21, Lcom/android/lgesettings/DeviceInfoSettings;->operator_code:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_23

    .line 473
    const-string v20, "mpcs_legal"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v13, v0, v1}, Lcom/android/lgesettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 482
    :cond_7
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 494
    const-string v20, "system_update_settings"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v13, v0, v1}, Lcom/android/lgesettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 497
    const-string v20, "contributors"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v13, v0, v1}, Lcom/android/lgesettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 500
    const-string v20, "additional_system_update_settings"

    const v21, 0x7f0b0003

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 504
    const-string v20, "regulatory_info"

    const v21, 0x7f0b0005

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 508
    const-string v20, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 509
    const-string v20, "software_update_settings_for_dcm"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 512
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b0003

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 514
    .local v9, isUpdateSettingAvailable:Z
    if-nez v9, :cond_9

    .line 515
    const-string v20, "additional_system_update_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 519
    :cond_9
    const-string v20, "USC"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_24

    .line 520
    const-string v20, "pri_version"

    const-string v21, "ro.lge.priversion"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :goto_7
    const-string v20, "batman_dcm"

    sget-object v21, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 528
    const-string v20, "regulatory_dcm"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 529
    const-string v20, "battery_dcm"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 534
    :cond_a
    const-string v20, "aboutphone # DeviceInfoSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Build.DEVICE:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v20, "device_serial_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 539
    const-string v20, "manufacture_serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 540
    const-string v20, "manufacture_company_country"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 541
    const-string v20, "manufacture_serial_number_date"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 544
    const-string v20, "CRK"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 545
    const-string v20, "refubish_counter"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 549
    :cond_b
    const-string v20, "manufacture_serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 550
    const-string v20, "manufacture_company_country"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 551
    const-string v20, "manufacture_serial_number_date"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 562
    const-string v20, "u0_cdma"

    sget-object v21, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    const-string v20, "ACG"

    sget-object v21, Lcom/android/lgesettings/DeviceInfoSettings;->operator_code:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 563
    :cond_c
    const-string v20, "script_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 565
    :cond_d
    return-void

    .line 254
    .end local v4           #act:Landroid/app/Activity;
    .end local v7           #device_name:Ljava/lang/String;
    .end local v9           #isUpdateSettingAvailable:Z
    .end local v13           #parentPreference:Landroid/preference/PreferenceGroup;
    .end local v17           #targetCountry:Ljava/lang/String;
    .end local v18           #targetOperator:Ljava/lang/String;
    .end local v19           #v_device_name:Ljava/lang/String;
    :cond_e
    const-string v20, "status_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    const v21, 0x7f08043a

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 311
    .restart local v17       #targetCountry:Ljava/lang/String;
    .restart local v18       #targetOperator:Ljava/lang/String;
    :cond_f
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v20

    if-nez v20, :cond_0

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f08085f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 313
    .restart local v14       #status:Ljava/lang/String;
    const-string v20, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v14}, Lcom/android/lgesettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 336
    .end local v14           #status:Ljava/lang/String;
    .restart local v7       #device_name:Ljava/lang/String;
    .restart local v19       #v_device_name:Ljava/lang/String;
    :cond_10
    move-object/from16 v19, v7

    goto/16 :goto_2

    .line 360
    .restart local v15       #swv:Ljava/lang/String;
    .restart local v16       #swv_tokens:Ljava/util/StringTokenizer;
    :catch_0
    move-exception v8

    .line 362
    .local v8, exception:Ljava/util/NoSuchElementException;
    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/DeviceInfoSettings;->initial_name:Ljava/lang/String;

    .line 363
    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/DeviceInfoSettings;->MCC:Ljava/lang/String;

    .line 364
    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/DeviceInfoSettings;->MNC:Ljava/lang/String;

    goto/16 :goto_3

    .line 368
    .end local v8           #exception:Ljava/util/NoSuchElementException;
    .end local v15           #swv:Ljava/lang/String;
    .end local v16           #swv_tokens:Ljava/util/StringTokenizer;
    :cond_11
    const-string v20, "LG-LU5400"

    sget-object v21, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 371
    const-string v20, "software_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getSWVersionInfo()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 372
    :cond_12
    const-string v20, "SCA"

    const-string v21, "ro.build.target_region"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    const-string v20, "l1e"

    const-string v21, "ro.product.device"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_13

    const-string v20, "TCL"

    const-string v21, "ro.build.target_operator"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_13

    const-string v20, "vee5"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_13

    const-string v20, "vee4"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_13

    .line 374
    const-string v20, "software_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getLatinAmericaSWVersion()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 375
    :cond_13
    const-string v20, "TCL"

    const-string v21, "ro.build.target_operator"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    const-string v20, "vee5"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_14

    const-string v20, "vee4"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_14

    .line 376
    const-string v20, "software_version"

    const-string v21, "V10a"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 377
    :cond_14
    const-string v20, "u2"

    sget-object v21, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    const-string v20, "VDF"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    .line 378
    const/4 v6, 0x1

    .line 379
    .local v6, default_sw:Z
    const-string v12, ""

    .line 380
    .local v12, new_sw_ver:Ljava/lang/String;
    const-string v20, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v10

    .line 382
    .local v10, mccmnc:Ljava/lang/String;
    if-eqz v10, :cond_16

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_16

    .line 383
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/lgesettings/DeviceInfoSettings;->makeSWversion_VDF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 385
    if-eqz v12, :cond_15

    .line 386
    const/4 v6, 0x0

    .line 392
    :cond_15
    :goto_8
    if-eqz v6, :cond_17

    .line 393
    const-string v20, "software_version"

    const-string v21, "ro.lge.swversion"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 389
    :cond_16
    const-string v20, "aboutphone # DeviceInfoSettings"

    const-string v21, "VDF : mccmnc is Wrong, default sw version"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 395
    :cond_17
    const-string v20, "software_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 397
    .end local v6           #default_sw:Z
    .end local v10           #mccmnc:Ljava/lang/String;
    .end local v12           #new_sw_ver:Ljava/lang/String;
    :cond_18
    const-string v20, "LG-E975"

    sget-object v21, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_19

    const-string v20, "LG-E975K"

    sget-object v21, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_19

    const-string v20, "LG-E977"

    sget-object v21, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_19

    const-string v20, "g2"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 398
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/DeviceInfoSettings;->regul_mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/DeviceInfoSettings;->m_display_run_factory:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x96

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/lgesettings/lge/ATClientUtils;->atClient_BindService(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 400
    :cond_1a
    const-string v20, "ril.lge.swversion"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1b

    .line 401
    const-string v20, "software_version"

    const-string v21, "ril.lge.swversion"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 403
    :cond_1b
    const-string v20, "HK"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1c

    const-string v20, "CIS"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1c

    const-string v20, "TW"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_20

    :cond_1c
    const-string v20, "OPEN"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_20

    .line 404
    const-string v20, "ro.lge.swversion"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 405
    .local v11, new_SW_v:Ljava/lang/String;
    const-string v5, ""

    .line 406
    .local v5, country_info:Ljava/lang/String;
    const-string v20, "HK"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1e

    .line 407
    const-string v5, "HKG"

    .line 413
    :cond_1d
    :goto_9
    const-string v20, "-"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 414
    invoke-virtual {v11, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 415
    const-string v20, "-"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 416
    const-string v20, "XX"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 417
    const-string v20, "software_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 408
    :cond_1e
    const-string v20, "TW"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1f

    .line 409
    const-string v5, "TWN"

    goto :goto_9

    .line 410
    :cond_1f
    const-string v20, "CIS"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 411
    const-string v5, "CIS"

    goto :goto_9

    .line 420
    .end local v5           #country_info:Ljava/lang/String;
    .end local v11           #new_SW_v:Ljava/lang/String;
    :cond_20
    const-string v20, "software_version"

    const-string v21, "ro.lge.swversion"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 462
    .restart local v4       #act:Landroid/app/Activity;
    .restart local v13       #parentPreference:Landroid/preference/PreferenceGroup;
    :cond_21
    const-string v20, "carrier_legal"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v13, v0, v1}, Lcom/android/lgesettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    goto/16 :goto_5

    .line 465
    :cond_22
    if-eqz v13, :cond_6

    .line 466
    const-string v20, "carrier_legal"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 475
    :cond_23
    if-eqz v13, :cond_7

    .line 476
    const-string v20, "mpcs_legal"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 522
    .restart local v9       #isUpdateSettingAvailable:Z
    :cond_24
    const-string v20, "pri_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 569
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 570
    iget-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->regul_mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/DeviceInfoSettings;->m_display_run_factory:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->regul_mHandler:Landroid/os/Handler;

    .line 572
    invoke-static {}, Lcom/android/lgesettings/lge/ATClientUtils;->atClient_unBindService()V

    .line 573
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 728
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "firmware_version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mHits:[J

    iget-object v1, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mHits:[J

    iget-object v2, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mHits:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 730
    iget-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mHits:[J

    iget-object v1, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mHits:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 731
    iget-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mHits:[J

    aget-wide v0, v0, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 732
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    const-string v1, "android"

    const-class v2, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 736
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 737
    :catch_0
    move-exception v1

    .line 738
    const-string v1, "aboutphone # DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 741
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "build_number"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v0, :cond_5

    .line 743
    iget v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 744
    iget v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mDevHitCountdown:I

    if-nez v0, :cond_3

    .line 745
    invoke-virtual {p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    invoke-virtual {v0, v1, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 748
    invoke-direct {p0}, Lcom/android/lgesettings/DeviceInfoSettings;->updateSharedPreferenceForEasySettings()V

    .line 751
    iget-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 752
    iget-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 754
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08001a

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 756
    iget-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 757
    :cond_3
    iget v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 759
    iget-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_4

    .line 760
    iget-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 762
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080019

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mDevHitCountdown:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 765
    iget-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 767
    :cond_5
    iget v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mDevHitCountdown:I

    if-gez v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_6

    .line 769
    iget-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 771
    :cond_6
    invoke-virtual {p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08001b

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 773
    iget-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 774
    invoke-direct {p0}, Lcom/android/lgesettings/DeviceInfoSettings;->updateSharedPreferenceForEasySettings()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 719
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 720
    invoke-virtual {p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 724
    return-void

    .line 720
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
