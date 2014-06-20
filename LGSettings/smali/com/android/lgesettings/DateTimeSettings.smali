.class public Lcom/android/lgesettings/DateTimeSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/lge/sui/widget/dialog/SUIDrumDatePickerDialog$OnDateSetListener;
.implements Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$OnTimeSetListener;


# static fields
.field private static operator_code:Ljava/lang/String;


# instance fields
.field private chipset:Ljava/lang/String;

.field private dialog:Landroid/app/Dialog;

.field private isRoaming:Z

.field private mAutoTimePref:Landroid/preference/CheckBoxPreference;

.field private mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

.field private mDateFormat:Landroid/preference/ListPreference;

.field private mDatePref:Landroid/preference/Preference;

.field private mDualClock:Landroid/preference/Preference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTime24Pref:Landroid/preference/Preference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 117
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/android/lgesettings/DateTimeSettings;->chipset:Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/DateTimeSettings;->isRoaming:Z

    .line 789
    new-instance v0, Lcom/android/lgesettings/DateTimeSettings$5;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DateTimeSettings$5;-><init>(Lcom/android/lgesettings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/DateTimeSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/lgesettings/DateTimeSettings;->getClockSummaryIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/DateTimeSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/lgesettings/DateTimeSettings;->mDualClock:Landroid/preference/Preference;

    return-object v0
.end method

.method private static formatOffset(I)[C
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    .line 761
    div-int/lit16 v3, p0, 0x3e8

    div-int/lit8 p0, v3, 0x3c

    .line 763
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 764
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 765
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 766
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 768
    if-gez p0, :cond_0

    .line 769
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 770
    neg-int p0, p0

    .line 775
    :goto_0
    div-int/lit8 v1, p0, 0x3c

    .line 776
    .local v1, hours:I
    rem-int/lit8 v2, p0, 0x3c

    .line 778
    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 779
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 781
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 783
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 784
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 786
    return-object v0

    .line 772
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 632
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 634
    :cond_0
    :goto_0
    return v1

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getClockSummaryIndex()I
    .locals 3

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "skt_roaming_dualclock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 826
    const v0, 0x7f080f4b

    .line 828
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f080f4a

    goto :goto_0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKoreanFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 800
    move-object v0, p1

    .line 820
    .local v0, returnStr:Ljava/lang/String;
    return-object v0
.end method

.method static getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 13
    .parameter "tz"

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 695
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v9}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v4

    .line 696
    .local v4, daylight:Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 698
    .local v7, sb:Ljava/lang/StringBuilder;
    const-string v9, "ro.product.device"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 699
    .local v5, model:Ljava/lang/String;
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    .line 700
    .local v6, operator:Ljava/lang/String;
    const-string v9, "Date and Time Settings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "model = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "    /   operator = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const-string v9, "ATT"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 704
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v8

    invoke-static {v8}, Lcom/android/lgesettings/DateTimeSettings;->formatOffset(I)[C

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v4, v12}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    const-string v8, "Date and Time Settings"

    const-string v9, "atnt setTimezone"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :goto_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 714
    :cond_0
    const-string v9, "Asia/Bangkok"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 715
    const-string v9, "th"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 716
    const/4 v9, 0x7

    new-array v0, v9, [C

    fill-array-data v0, :array_0

    .line 717
    .local v0, Thai_Time_zone:[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 718
    .local v1, Thai_Timezone:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v8

    :cond_1
    add-int/2addr v8, v9

    invoke-static {v8}, Lcom/android/lgesettings/DateTimeSettings;->formatOffset(I)[C

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 720
    .end local v0           #Thai_Time_zone:[C
    .end local v1           #Thai_Timezone:Ljava/lang/String;
    :cond_2
    const-string v9, "en"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 721
    new-instance v1, Ljava/lang/String;

    const-string v9, "Bangkok"

    invoke-direct {v1, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 722
    .restart local v1       #Thai_Timezone:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v8

    :cond_3
    add-int/2addr v8, v9

    invoke-static {v8}, Lcom/android/lgesettings/DateTimeSettings;->formatOffset(I)[C

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 725
    .end local v1           #Thai_Timezone:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v8

    :cond_5
    add-int/2addr v8, v9

    invoke-static {v8}, Lcom/android/lgesettings/DateTimeSettings;->formatOffset(I)[C

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v4, v12}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 729
    :cond_6
    const-string v9, "Asia/Saigon"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 730
    const-string v9, "vi"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "en"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 731
    :cond_7
    new-instance v3, Ljava/lang/String;

    const-string v9, "Hanoi"

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 732
    .local v3, Vietnam_Timezone:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v8

    :cond_8
    add-int/2addr v8, v9

    invoke-static {v8}, Lcom/android/lgesettings/DateTimeSettings;->formatOffset(I)[C

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 735
    .end local v3           #Vietnam_Timezone:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v8

    :cond_a
    add-int/2addr v8, v9

    invoke-static {v8}, Lcom/android/lgesettings/DateTimeSettings;->formatOffset(I)[C

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v4, v12}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 738
    :cond_b
    const-string v9, "Europe/Istanbul"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 740
    new-instance v2, Ljava/lang/String;

    const-string v9, "Istanbul"

    invoke-direct {v2, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 741
    .local v2, Turkey_Timezone:Ljava/lang/String;
    const-string v9, "en"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "tr"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 742
    :cond_c
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v8

    :cond_d
    add-int/2addr v8, v9

    invoke-static {v8}, Lcom/android/lgesettings/DateTimeSettings;->formatOffset(I)[C

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 745
    :cond_e
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    if-eqz v4, :cond_f

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v8

    :cond_f
    add-int/2addr v8, v9

    invoke-static {v8}, Lcom/android/lgesettings/DateTimeSettings;->formatOffset(I)[C

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v4, v12}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 750
    .end local v2           #Turkey_Timezone:Ljava/lang/String;
    :cond_10
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    if-eqz v4, :cond_11

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v8

    :cond_11
    add-int/2addr v8, v9

    invoke-static {v8}, Lcom/android/lgesettings/DateTimeSettings;->formatOffset(I)[C

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v4, v12}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    const-string v8, "Date and Time Settings"

    const-string v9, "etc setTimezone"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 716
    :array_0
    .array-data 0x2
        0x1t 0xet
        0x23t 0xet
        0x38t 0xet
        0x7t 0xet
        0x40t 0xet
        0x17t 0xet
        0x1et 0xet
    .end array-data
.end method

.method private initUI()V
    .locals 17

    .prologue
    .line 162
    const-string v1, "auto_time"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/lgesettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v8

    .line 163
    .local v8, autoTimeEnabled:Z
    const-string v1, "auto_time_zone"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/lgesettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v9

    .line 165
    .local v9, autoTimeZoneEnabled:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 166
    .local v15, intent:Landroid/content/Intent;
    const-string v1, "firstRun"

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 168
    .local v16, isFirstRun:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/lgesettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x1f

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 172
    const-string v1, "auto_time"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/lgesettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 174
    const-string v1, "auto_zone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/lgesettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v16, :cond_1

    .line 178
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    const/4 v9, 0x0

    .line 181
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 183
    const-string v1, "time"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/lgesettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    .line 184
    const-string v1, "24 hour"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/lgesettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    .line 185
    const-string v1, "timezone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/lgesettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    .line 186
    const-string v1, "date"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/lgesettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    .line 188
    const-string v1, "troamingdualclock"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/lgesettings/DateTimeSettings;->mDualClock:Landroid/preference/Preference;

    .line 190
    const-string v1, "date_format"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/lgesettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    .line 191
    if-eqz v16, :cond_2

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 197
    .local v11, dateFormats:[Ljava/lang/String;
    array-length v1, v11

    new-array v13, v1, [Ljava/lang/String;

    .line 198
    .local v13, formattedDates:[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v10

    .line 201
    .local v10, currentFormat:Ljava/lang/String;
    if-nez v10, :cond_3

    .line 202
    const-string v10, "MM-dd-yyyy"

    .line 204
    :cond_3
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    array-length v1, v13

    if-ge v14, v1, :cond_5

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    aget-object v2, v11, v14

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 209
    .local v12, formatted:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/lgesettings/DateTimeSettings;->getKoreanFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 212
    aget-object v1, v11, v14

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v14

    .line 204
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 216
    :cond_4
    aput-object v12, v13, v14

    goto :goto_1

    .line 220
    .end local v12           #formatted:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1, v13}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v8, :cond_6

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v8, :cond_7

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v9, :cond_8

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 227
    const-string v1, "Date and Time Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initUI  autoTimeZoneEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void

    .line 224
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 225
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 226
    :cond_8
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private set24Hour(Z)V
    .locals 3
    .parameter "is24Hour"

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 623
    return-void

    .line 620
    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method

.method static setDate(III)V
    .locals 7
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 641
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 643
    .local v0, c:Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    .line 644
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 645
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 646
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 648
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 649
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 651
    :cond_0
    return-void
.end method

.method static setDatewifi(Landroid/content/Context;III)V
    .locals 7
    .parameter "context"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 654
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 656
    .local v0, c:Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 657
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 658
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 659
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 661
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 662
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    invoke-virtual {v3, v1, v2}, Landroid/app/AlarmManager;->setTime(J)V

    .line 664
    :cond_0
    return-void
.end method

.method static setTime(II)V
    .locals 7
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v4, 0x0

    .line 667
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 669
    .local v0, c:Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    .line 670
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 671
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 672
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 673
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 675
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 676
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 678
    :cond_0
    return-void
.end method

.method static setTimewifi(Landroid/content/Context;II)V
    .locals 7
    .parameter "context"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v4, 0x0

    .line 681
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 683
    .local v0, c:Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 684
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 685
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 686
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 687
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 689
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 690
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    invoke-virtual {v3, v1, v2}, Landroid/app/AlarmManager;->setTime(J)V

    .line 692
    :cond_0
    return-void
.end method

.method private timeUpdated()V
    .locals 3

    .prologue
    .line 608
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v0, timeChanged:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 610
    const-string v1, "Date and Time Settings"

    const-string v2, "Send Intent.ACTION_TIME_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-void
.end method


# virtual methods
.method public getCompleteString(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 832
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 833
    const v0, 0x7f080f4e

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DateTimeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 835
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f080f4d

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DateTimeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 605
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 130
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const v1, 0x7f060013

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/DateTimeSettings;->addPreferencesFromResource(I)V

    .line 133
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 134
    .local v0, activePhoneType:I
    const-string v1, "ro.board.platform"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/DateTimeSettings;->chipset:Ljava/lang/String;

    .line 136
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/lgesettings/DateTimeSettings;->operator_code:Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Lcom/android/lgesettings/DateTimeSettings;->initUI()V

    .line 142
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "u0_cdma"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "l0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "fx1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "l1v"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time_zone"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 146
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "auto_zone"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 147
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 149
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "timezone"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    :cond_1
    const-string v1, "SKT"

    sget-object v2, Lcom/android/lgesettings/DateTimeSettings;->operator_code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    const-string v1, "Date and Time Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/lgesettings/DateTimeSettings;->operator_code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "troamingdualclock"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 15
    .parameter "id"

    .prologue
    .line 463
    packed-switch p1, :pswitch_data_0

    .line 550
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/lgesettings/DateTimeSettings;->dialog:Landroid/app/Dialog;

    .line 554
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/DateTimeSettings;->dialog:Landroid/app/Dialog;

    return-object v1

    .line 465
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 466
    .local v11, calendar:Ljava/util/Calendar;
    new-instance v0, Lcom/lge/sui/widget/dialog/SUIDrumDatePickerDialog;

    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    const/4 v2, 0x5

    invoke-virtual {v11, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/android/lgesettings/DateTimeSettings$1;

    invoke-direct {v9, p0}, Lcom/android/lgesettings/DateTimeSettings$1;-><init>(Lcom/android/lgesettings/DateTimeSettings;)V

    move-object v2, p0

    invoke-direct/range {v0 .. v9}, Lcom/lge/sui/widget/dialog/SUIDrumDatePickerDialog;-><init>(Landroid/content/Context;Lcom/lge/sui/widget/dialog/SUIDrumDatePickerDialog$OnDateSetListener;IIIIIZLcom/lge/sui/widget/dialog/SUIDrumDatePickerDialog$TitleBuilder;)V

    .line 482
    .local v0, mSUIDialog:Lcom/lge/sui/widget/dialog/SUIDrumDatePickerDialog;
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "vee7ds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "vee7e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "vee3ds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "vee3e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "u0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    :cond_0
    invoke-virtual {v0}, Lcom/lge/sui/widget/dialog/SUIDrumDatePickerDialog;->getDatePicker()Lcom/lge/sui/widget/control/SUIDrumDatePicker;

    move-result-object v1

    const/16 v2, 0x7bc

    const/16 v3, 0x7f4

    invoke-virtual {v1, v2, v3}, Lcom/lge/sui/widget/control/SUIDrumDatePicker;->setStartEndYear(II)V

    .line 488
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08059d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v0}, Lcom/lge/sui/widget/dialog/SUIDrumDatePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 489
    iput-object v0, p0, Lcom/android/lgesettings/DateTimeSettings;->dialog:Landroid/app/Dialog;

    goto :goto_0

    .line 485
    :cond_1
    invoke-virtual {v0}, Lcom/lge/sui/widget/dialog/SUIDrumDatePickerDialog;->getDatePicker()Lcom/lge/sui/widget/control/SUIDrumDatePicker;

    move-result-object v1

    const/16 v2, 0x7b2

    const/16 v3, 0x7f4

    invoke-virtual {v1, v2, v3}, Lcom/lge/sui/widget/control/SUIDrumDatePicker;->setStartEndYear(II)V

    goto :goto_1

    .line 493
    .end local v0           #mSUIDialog:Lcom/lge/sui/widget/dialog/SUIDrumDatePickerDialog;
    .end local v11           #calendar:Ljava/util/Calendar;
    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 494
    .restart local v11       #calendar:Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v13, 0x7f040154

    .line 495
    .local v13, layout:I
    :goto_2
    new-instance v0, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;

    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v11, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v2, 0xc

    invoke-virtual {v11, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v2, 0xd

    invoke-virtual {v11, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/android/lgesettings/DateTimeSettings$2;

    invoke-direct {v9, p0}, Lcom/android/lgesettings/DateTimeSettings$2;-><init>(Lcom/android/lgesettings/DateTimeSettings;)V

    move-object v2, p0

    invoke-direct/range {v0 .. v9}, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;-><init>(Landroid/content/Context;Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$OnTimeSetListener;IIIIIZLcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;)V

    .line 510
    .local v0, mSUIDialog:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;
    invoke-virtual {v0}, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;->getTimePicker()Lcom/lge/sui/widget/control/SUIDrumTimePicker;

    move-result-object v14

    .line 512
    .local v14, timePicker:Lcom/lge/sui/widget/control/SUIDrumTimePicker;
    invoke-direct {p0}, Lcom/android/lgesettings/DateTimeSettings;->is24Hour()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 513
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Lcom/lge/sui/widget/control/SUIDrumTimePicker;->setTimeFormat(I)V

    .line 518
    :goto_3
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08059d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v0}, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 519
    iput-object v0, p0, Lcom/android/lgesettings/DateTimeSettings;->dialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 494
    .end local v0           #mSUIDialog:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;
    .end local v13           #layout:I
    .end local v14           #timePicker:Lcom/lge/sui/widget/control/SUIDrumTimePicker;
    :cond_2
    const v13, 0x7f040153

    goto :goto_2

    .line 515
    .restart local v0       #mSUIDialog:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;
    .restart local v13       #layout:I
    .restart local v14       #timePicker:Lcom/lge/sui/widget/control/SUIDrumTimePicker;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lcom/lge/sui/widget/control/SUIDrumTimePicker;->setTimeFormat(I)V

    goto :goto_3

    .line 524
    .end local v0           #mSUIDialog:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;
    .end local v11           #calendar:Ljava/util/Calendar;
    .end local v13           #layout:I
    .end local v14           #timePicker:Lcom/lge/sui/widget/control/SUIDrumTimePicker;
    :pswitch_2
    const/4 v1, 0x2

    new-array v12, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f080f4a

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/DateTimeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v1

    const/4 v1, 0x1

    const v2, 0x7f080f4b

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/DateTimeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v1

    .line 525
    .local v12, itemsDualClock:[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080f49

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "skt_roaming_dualclock"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Lcom/android/lgesettings/DateTimeSettings$4;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/DateTimeSettings$4;-><init>(Lcom/android/lgesettings/DateTimeSettings;)V

    invoke-virtual {v1, v12, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/lgesettings/DateTimeSettings$3;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/DateTimeSettings$3;-><init>(Lcom/android/lgesettings/DateTimeSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 545
    .local v10, alertDialog:Landroid/app/AlertDialog;
    iput-object v10, p0, Lcom/android/lgesettings/DateTimeSettings;->dialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDateSet(Lcom/lge/sui/widget/control/SUIDrumDatePicker;III)V
    .locals 5
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 340
    const-string v2, "starmotor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "year= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v2, "starmotor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "month= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string v2, "starmotor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "day= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 345
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 346
    add-int/lit8 v2, p3, -0x1

    invoke-static {v0, p2, v2, p4}, Lcom/android/lgesettings/DateTimeSettings;->setDatewifi(Landroid/content/Context;III)V

    .line 351
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/DateTimeSettings;->chipset:Ljava/lang/String;

    const-string v3, "msm7627a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    :cond_0
    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 358
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.settings.TIME_SET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v1, userTimeChanged:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 363
    .end local v1           #userTimeChanged:Landroid/content/Intent;
    :cond_1
    const-string v2, "persist.radio.timeupdate"

    const-string v3, "manual"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void

    .line 348
    :cond_2
    add-int/lit8 v2, p3, -0x1

    invoke-static {p2, v2, p4}, Lcom/android/lgesettings/DateTimeSettings;->setDate(III)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 286
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 287
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 290
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 585
    iget-object v0, p0, Lcom/android/lgesettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 586
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DateTimeSettings;->showDialog(I)V

    .line 598
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 589
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/DateTimeSettings;->removeDialog(I)V

    .line 590
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/DateTimeSettings;->showDialog(I)V

    goto :goto_0

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3

    .line 592
    iget-object v0, p0, Lcom/android/lgesettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/DateTimeSettings;->set24Hour(Z)V

    .line 593
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 594
    invoke-direct {p0}, Lcom/android/lgesettings/DateTimeSettings;->timeUpdated()V

    goto :goto_0

    .line 595
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/DateTimeSettings;->mDualClock:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 596
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DateTimeSettings;->showDialog(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 232
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 234
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 237
    iget-object v2, p0, Lcom/android/lgesettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/lgesettings/DateTimeSettings;->is24Hour()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 239
    const-string v2, "true"

    const-string v3, "gsm.operator.isroaming"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/lgesettings/DateTimeSettings;->isRoaming:Z

    .line 240
    iget-object v2, p0, Lcom/android/lgesettings/DateTimeSettings;->mDualClock:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/android/lgesettings/DateTimeSettings;->mDualClock:Landroid/preference/Preference;

    iget-boolean v3, p0, Lcom/android/lgesettings/DateTimeSettings;->isRoaming:Z

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 243
    :cond_0
    iget-boolean v2, p0, Lcom/android/lgesettings/DateTimeSettings;->isRoaming:Z

    if-eqz v2, :cond_3

    .line 244
    iget-object v2, p0, Lcom/android/lgesettings/DateTimeSettings;->mDualClock:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    .line 245
    iget-object v2, p0, Lcom/android/lgesettings/DateTimeSettings;->mDualClock:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/lgesettings/DateTimeSettings;->getClockSummaryIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 255
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 256
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 263
    iget-object v1, p0, Lcom/android/lgesettings/DateTimeSettings;->dialog:Landroid/app/Dialog;

    .line 264
    .local v1, mDialog:Landroid/app/Dialog;
    if-eqz v1, :cond_2

    .line 265
    instance-of v2, v1, Lcom/lge/sui/widget/dialog/SUIDrumDatePickerDialog;

    if-eqz v2, :cond_4

    .line 266
    check-cast v1, Lcom/lge/sui/widget/dialog/SUIDrumDatePickerDialog;

    .end local v1           #mDialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Lcom/lge/sui/widget/dialog/SUIDrumDatePickerDialog;->getDatePicker()Lcom/lge/sui/widget/control/SUIDrumDatePicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sui/widget/control/SUIDrumDatePicker;->refresh()V

    .line 271
    :cond_2
    :goto_1
    return-void

    .line 249
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/DateTimeSettings;->mDualClock:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    .line 250
    iget-object v2, p0, Lcom/android/lgesettings/DateTimeSettings;->mDualClock:Landroid/preference/Preference;

    const v3, 0x7f080f4c

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 267
    .restart local v0       #filter:Landroid/content/IntentFilter;
    .restart local v1       #mDialog:Landroid/app/Dialog;
    :cond_4
    instance-of v2, v1, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;

    if-eqz v2, :cond_2

    .line 268
    check-cast v1, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;

    .end local v1           #mDialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;->getTimePicker()Lcom/lge/sui/widget/control/SUIDrumTimePicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sui/widget/control/SUIDrumTimePicker;->refresh()V

    goto :goto_1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 10
    .parameter "preferences"
    .parameter "key"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 405
    const-string v5, "date_format"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 406
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800af

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, format:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "date_format"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 410
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 411
    invoke-direct {p0}, Lcom/android/lgesettings/DateTimeSettings;->timeUpdated()V

    .line 458
    .end local v3           #format:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    const-string v5, "auto_time"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 413
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 414
    .local v0, autoEnabled:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time"

    if-eqz v0, :cond_2

    move v5, v6

    :goto_1
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 416
    iget-object v8, p0, Lcom/android/lgesettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_3

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 417
    iget-object v5, p0, Lcom/android/lgesettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_4

    :goto_3
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 418
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 420
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.lge.settings.TIME_SET"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v4, userTimeChanged:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v4           #userTimeChanged:Landroid/content/Intent;
    :cond_2
    move v5, v7

    .line 414
    goto :goto_1

    :cond_3
    move v5, v7

    .line 416
    goto :goto_2

    :cond_4
    move v6, v7

    .line 417
    goto :goto_3

    .line 423
    .end local v0           #autoEnabled:Z
    :cond_5
    const-string v5, "auto_zone"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 424
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 425
    .local v2, autoZoneEnabled:Z
    const-string v5, "auto_time_zone"

    invoke-direct {p0, v5}, Lcom/android/lgesettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 426
    .local v1, autoTimeZoneEnabled:Z
    iget-object v8, p0, Lcom/android/lgesettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_6

    move v5, v6

    :goto_4
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 427
    const-string v5, "Date and Time Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "autoTimeZoneEnabled: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time_zone"

    if-eqz v2, :cond_7

    move v5, v6

    :goto_5
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 430
    const-string v5, "auto_time_zone"

    invoke-direct {p0, v5}, Lcom/android/lgesettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 431
    iget-object v5, p0, Lcom/android/lgesettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 432
    const-string v5, "Date and Time Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "autoTimeZoneEnabled: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v8, p0, Lcom/android/lgesettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v2, :cond_8

    move v5, v6

    :goto_6
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 451
    iget-object v5, p0, Lcom/android/lgesettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v2, :cond_9

    :goto_7
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 452
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 454
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.lge.settings.TIME_SET"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .restart local v4       #userTimeChanged:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v4           #userTimeChanged:Landroid/content/Intent;
    :cond_6
    move v5, v7

    .line 426
    goto :goto_4

    :cond_7
    move v5, v7

    .line 428
    goto :goto_5

    :cond_8
    move v5, v7

    .line 433
    goto :goto_6

    :cond_9
    move v6, v7

    .line 451
    goto :goto_7
.end method

.method public onTimeSet(Lcom/lge/sui/widget/control/SUIDrumTimePicker;II)V
    .locals 5
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 370
    const-string v2, "starmotor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hourOfDay= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v2, "starmotor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "minute= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 375
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 376
    invoke-static {v0, p2, p3}, Lcom/android/lgesettings/DateTimeSettings;->setTimewifi(Landroid/content/Context;II)V

    .line 381
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/DateTimeSettings;->chipset:Ljava/lang/String;

    const-string v3, "msm7627a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    :cond_0
    if-eqz v0, :cond_1

    .line 387
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 388
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.settings.TIME_SET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    .local v1, userTimeChanged:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 394
    .end local v1           #userTimeChanged:Landroid/content/Intent;
    :cond_1
    const-string v2, "persist.radio.timeupdate"

    const-string v3, "manual"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return-void

    .line 378
    :cond_2
    invoke-static {p2, p3}, Lcom/android/lgesettings/DateTimeSettings;->setTime(II)V

    goto :goto_0
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    .line 293
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v14

    .line 294
    .local v14, shortDateFormat:Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 295
    .local v13, now:Ljava/util/Calendar;
    iget-object v0, p0, Lcom/android/lgesettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 298
    iget-object v0, p0, Lcom/android/lgesettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x1f

    const/16 v4, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 299
    iget-object v0, p0, Lcom/android/lgesettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    .line 300
    .local v9, dummyDate:Ljava/util/Date;
    iget-object v0, p0, Lcom/android/lgesettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcom/android/lgesettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/DateTimeSettings;->getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/android/lgesettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/DateTimeSettings;->getKoreanFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/android/lgesettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/DateTimeSettings;->getKoreanFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 310
    .local v8, dateFormats:[Ljava/lang/String;
    array-length v0, v8

    new-array v11, v0, [Ljava/lang/String;

    .line 311
    .local v11, formattedDates:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/lgesettings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v7

    .line 314
    .local v7, currentFormat:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 315
    const-string v7, ""

    .line 317
    :cond_0
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    array-length v0, v11

    if-ge v12, v0, :cond_2

    .line 319
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    aget-object v1, v8, v12

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 321
    .local v10, formatted:Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/android/lgesettings/DateTimeSettings;->getKoreanFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 324
    aget-object v0, v8, v12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/android/lgesettings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800b0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v12

    .line 317
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 328
    :cond_1
    aput-object v10, v11, v12

    goto :goto_1

    .line 332
    .end local v10           #formatted:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v0, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcom/android/lgesettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 334
    iget-object v0, p0, Lcom/android/lgesettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 336
    return-void
.end method
