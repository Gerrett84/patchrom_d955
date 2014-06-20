.class public Lcom/android/lgesettings/powersave/BatterySettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "BatterySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static batterySummary:Ljava/lang/String;

.field private static sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;


# instance fields
.field private curStatus:I

.field private enable_handler:Landroid/os/Handler;

.field private graphPadding:I

.field private lastLevel:I

.field private lastStatus:I

.field private lastTime:J

.field private mBatHigh:I

.field private mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

.field mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryPercentage:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mEcoMode:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

.field private mEnableObserver:Landroid/database/ContentObserver;

.field private mEstimateChargingTime:J

.field private mEstimateDischargingTime:J

.field private mHistEnd:J

.field private mHistStart:J

.field private mNumHist:I

.field private mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;

.field private mPowerSaveSwitch:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

.field private mPowerSaverCategory:Landroid/preference/PreferenceCategory;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRefTimeLayout:Landroid/text/Layout;

.field mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final minRefTime:I

.field private final minTime:I

.field final now:Ljava/util/Calendar;

.field private onChargingTotalLevel:I

.field private onChargingTotalTime:J

.field private onDischargingTotalLevel:I

.field private onDischargingTotalTime:J

.field private realTimeGraphWidth:D

.field private timeChange:J

.field private timeStart:J

.field private unitWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 102
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->minTime:I

    .line 103
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->minRefTime:I

    .line 107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->now:Ljava/util/Calendar;

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->lastTime:J

    .line 127
    iput v2, p0, Lcom/android/lgesettings/powersave/BatterySettings;->lastLevel:I

    .line 128
    iput v2, p0, Lcom/android/lgesettings/powersave/BatterySettings;->lastStatus:I

    .line 130
    iput v2, p0, Lcom/android/lgesettings/powersave/BatterySettings;->curStatus:I

    .line 136
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBatHigh:I

    .line 144
    new-instance v0, Lcom/android/lgesettings/powersave/BatterySettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/powersave/BatterySettings$1;-><init>(Lcom/android/lgesettings/powersave/BatterySettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 176
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->enable_handler:Landroid/os/Handler;

    .line 177
    new-instance v0, Lcom/android/lgesettings/powersave/BatterySettings$2;

    iget-object v1, p0, Lcom/android/lgesettings/powersave/BatterySettings;->enable_handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/powersave/BatterySettings$2;-><init>(Lcom/android/lgesettings/powersave/BatterySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEnableObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/lgesettings/powersave/BatterySettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/lgesettings/powersave/BatterySettings;->curStatus:I

    return p1
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput-object p0, Lcom/android/lgesettings/powersave/BatterySettings;->batterySummary:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/powersave/BatterySettings;)Lcom/android/lgesettings/powersave/PowerSave;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/powersave/BatterySettings;)Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/powersave/BatterySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->setExpectedTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/lgesettings/powersave/BatterySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/powersave/BatterySettings;)Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mPowerSaveSwitch:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    return-object v0
.end method

.method private checkPreference()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "power_save_enabled"

    invoke-static {v4, v5, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_0

    move v0, v2

    .line 274
    .local v0, isEnabled:Z
    :goto_0
    iget-object v4, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mPowerSaveSwitch:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    invoke-virtual {v4, v0}, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->setChecked(Z)V

    .line 276
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "power_save_mode"

    const/16 v6, 0x1e

    invoke-static {v4, v5, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, mode:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/lgesettings/powersave/BatterySettings;->updatePowerSaverModeSummary(Ljava/lang/Object;)V

    .line 280
    iget-object v5, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBatteryPercentage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "power_save_battery_indicator"

    invoke-static {v4, v6, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    :goto_1
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 282
    iget-object v4, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEcoMode:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "eco_mode"

    invoke-static {v5, v6, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->setChecked(Z)V

    .line 284
    return-void

    .end local v0           #isEnabled:Z
    .end local v1           #mode:Ljava/lang/String;
    :cond_0
    move v0, v3

    .line 273
    goto :goto_0

    .restart local v0       #isEnabled:Z
    .restart local v1       #mode:Ljava/lang/String;
    :cond_1
    move v4, v3

    .line 280
    goto :goto_1

    :cond_2
    move v2, v3

    .line 282
    goto :goto_2
.end method

.method public static getBatterySummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    sget-object v0, Lcom/android/lgesettings/powersave/BatterySettings;->batterySummary:Ljava/lang/String;

    return-object v0
.end method

.method private initPreference()V
    .locals 2

    .prologue
    .line 255
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/BatterySettings;->addPreferencesFromResource(I)V

    .line 257
    const-string v0, "power_saver_category"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mPowerSaverCategory:Landroid/preference/PreferenceCategory;

    .line 259
    const-string v0, "power_save_battery"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    iput-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    .line 260
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    const v1, 0x7f0400d7

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setLayoutResource(I)V

    .line 261
    const-string v0, "power_save_battery_percentage"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBatteryPercentage:Landroid/preference/CheckBoxPreference;

    .line 262
    const-string v0, "power_save_enabler"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    iput-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mPowerSaveSwitch:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    .line 265
    const-string v0, "power_save_eco_mode"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    iput-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEcoMode:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    .line 266
    invoke-static {}, Lcom/android/lgesettings/Utils;->supportQuadCore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mPowerSaverCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEcoMode:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 270
    :cond_0
    return-void
.end method

.method private load()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 288
    :try_start_0
    iget-object v6, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v6}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 289
    .local v0, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 290
    .local v3, parcel:Landroid/os/Parcel;
    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 291
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 292
    sget-object v6, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v6, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 294
    iget-object v6, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v0           #data:[B
    .end local v3           #parcel:Landroid/os/Parcel;
    :goto_0
    const/4 v2, 0x1

    .line 301
    .local v2, first:Z
    iget-object v6, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->startIteratingHistoryLocked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 302
    new-instance v4, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v4}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 303
    .local v4, rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 304
    iget v6, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mNumHist:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mNumHist:I

    .line 305
    iget-byte v6, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v6, v10, :cond_0

    .line 306
    if-eqz v2, :cond_1

    .line 307
    const/4 v2, 0x0

    .line 308
    iget-wide v6, v4, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v6, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mHistStart:J

    .line 310
    :cond_1
    iget-wide v6, v4, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v6, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mHistEnd:J

    goto :goto_1

    .line 295
    .end local v2           #first:Z
    .end local v4           #rec:Landroid/os/BatteryStats$HistoryItem;
    :catch_0
    move-exception v1

    .line 296
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "BatterySettings"

    const-string v7, "RemoteException:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 315
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #first:Z
    :cond_2
    iget-wide v6, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mHistEnd:J

    iget-wide v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mHistStart:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/lgesettings/powersave/BatterySettings;->timeChange:J

    .line 316
    iget-wide v6, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mHistStart:J

    iput-wide v6, p0, Lcom/android/lgesettings/powersave/BatterySettings;->timeStart:J

    .line 318
    const/high16 v6, 0x4218

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v10, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/lgesettings/powersave/BatterySettings;->graphPadding:I

    .line 321
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, p0, Lcom/android/lgesettings/powersave/BatterySettings;->graphPadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v5, v6, v7

    .line 324
    .local v5, windowSize:I
    div-int/lit8 v6, v5, 0x6

    iput v6, p0, Lcom/android/lgesettings/powersave/BatterySettings;->unitWidth:I

    .line 325
    iget-wide v6, p0, Lcom/android/lgesettings/powersave/BatterySettings;->timeChange:J

    iget v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->unitWidth:I

    int-to-long v8, v8

    mul-long/2addr v6, v8

    const-wide/32 v8, 0x36ee80

    div-long/2addr v6, v8

    long-to-double v6, v6

    iput-wide v6, p0, Lcom/android/lgesettings/powersave/BatterySettings;->realTimeGraphWidth:D

    .line 326
    return-void
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 9
    .parameter "text"

    .prologue
    const/4 v7, 0x1

    .line 602
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 603
    .local v8, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v7}, Landroid/text/TextPaint;-><init>(I)V

    .line 604
    .local v2, paint:Landroid/text/TextPaint;
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v2, Landroid/text/TextPaint;->density:F

    .line 605
    invoke-virtual {v8}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 606
    const/high16 v0, -0x100

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 607
    const/4 v0, 0x2

    const/high16 v1, 0x4120

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 610
    new-instance v0, Landroid/text/StaticLayout;

    invoke-static {p1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private millisToHour(J)I
    .locals 4
    .parameter "time"

    .prologue
    const-wide/16 v2, 0x3c

    .line 492
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private millisToMinutes(J)I
    .locals 4
    .parameter "time"

    .prologue
    .line 488
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    long-to-int v0, v0

    rem-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method private setChargingSummary()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const v4, 0x7f081250

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 397
    iget-wide v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onChargingTotalTime:J

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onChargingTotalLevel:I

    if-nez v0, :cond_1

    .line 398
    :cond_0
    iget v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBatHigh:I

    iget v1, p0, Lcom/android/lgesettings/powersave/BatterySettings;->lastLevel:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/32 v2, 0x927c0

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateChargingTime:J

    .line 399
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f081255

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 402
    const-string v0, "BatterySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChargingTotalTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onChargingTotalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", onChargingTotalLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onChargingTotalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mEstimateChargingTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateChargingTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-wide v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onChargingTotalTime:J

    iget v2, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBatHigh:I

    iget v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->lastLevel:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onChargingTotalLevel:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateChargingTime:J

    .line 406
    iget-wide v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateChargingTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToHour(J)I

    move-result v0

    if-nez v0, :cond_3

    .line 407
    iget-wide v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateChargingTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToMinutes(J)I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 408
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    const v1, 0x7f08125b

    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateChargingTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToMinutes(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/powersave/BatterySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 438
    :goto_1
    const-string v0, "BatterySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChargingTotalTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onChargingTotalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", onChargingTotalLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onChargingTotalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mEstimateChargingTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateChargingTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    const v1, 0x7f08125c

    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateChargingTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToMinutes(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/powersave/BatterySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 416
    :cond_3
    iget-wide v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateChargingTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToHour(J)I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 417
    iget-wide v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateChargingTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToMinutes(J)I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 418
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    const v1, 0x7f081257

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateChargingTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToHour(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-wide v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateChargingTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToMinutes(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/powersave/BatterySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 422
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    const v1, 0x7f081258

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateChargingTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToHour(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-wide v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateChargingTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToMinutes(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/powersave/BatterySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 428
    :cond_5
    iget-wide v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateChargingTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToMinutes(J)I

    move-result v0

    if-ne v0, v6, :cond_6

    .line 429
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    const v1, 0x7f081259

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateChargingTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToHour(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-wide v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateChargingTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToMinutes(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/powersave/BatterySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 433
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    const v1, 0x7f08125a

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateChargingTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToHour(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-wide v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateChargingTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToMinutes(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/powersave/BatterySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private setDischargingSummary()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const v4, 0x7f081251

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 443
    iget-wide v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onDischargingTotalTime:J

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onDischargingTotalLevel:I

    if-nez v0, :cond_1

    .line 444
    :cond_0
    iget v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->lastLevel:I

    int-to-long v0, v0

    const-wide/32 v2, 0x927c0

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateDischargingTime:J

    .line 445
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f081255

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 448
    const-string v0, "BatterySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDischargingTotalTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onDischargingTotalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", onDischargingTotalLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onDischargingTotalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mEstimateDischargingTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateDischargingTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-wide v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onDischargingTotalTime:J

    iget v2, p0, Lcom/android/lgesettings/powersave/BatterySettings;->lastLevel:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onDischargingTotalLevel:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateDischargingTime:J

    .line 452
    iget-wide v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateDischargingTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToHour(J)I

    move-result v0

    if-nez v0, :cond_3

    .line 453
    iget-wide v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateDischargingTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToMinutes(J)I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 454
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    const v1, 0x7f08125b

    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateDischargingTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToMinutes(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/powersave/BatterySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 483
    :goto_1
    const-string v0, "BatterySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDischargingTotalTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onDischargingTotalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", onDischargingTotalLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onDischargingTotalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mEstimateDischargingTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateDischargingTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    const v1, 0x7f08125c

    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateDischargingTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToMinutes(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/powersave/BatterySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 462
    :cond_3
    iget-wide v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateDischargingTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToHour(J)I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 463
    iget-wide v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateDischargingTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToMinutes(J)I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 464
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    const v1, 0x7f081257

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateDischargingTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToHour(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-wide v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateDischargingTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToMinutes(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/powersave/BatterySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 468
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    const v1, 0x7f081258

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateDischargingTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToHour(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-wide v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateDischargingTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToMinutes(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/powersave/BatterySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 474
    :cond_5
    iget-wide v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateDischargingTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToMinutes(J)I

    move-result v0

    if-ne v0, v6, :cond_6

    .line 475
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    const v1, 0x7f081259

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateDischargingTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToHour(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-wide v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateDischargingTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToMinutes(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/powersave/BatterySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 479
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    const v1, 0x7f08125a

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateDischargingTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToHour(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-wide v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEstimateDischargingTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/powersave/BatterySettings;->millisToMinutes(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/powersave/BatterySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private setExpectedTime()V
    .locals 14

    .prologue
    .line 329
    const/4 v1, 0x0

    .line 330
    .local v1, i:I
    const/4 v6, 0x0

    .line 331
    .local v6, x:I
    const/4 v7, 0x0

    .line 332
    .local v7, y:I
    const/4 v2, -0x1

    .line 333
    .local v2, lastX:I
    const/4 v3, -0x1

    .line 335
    .local v3, lastY:I
    iget-object v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mRefTimeLayout:Landroid/text/Layout;

    invoke-virtual {v8}, Landroid/text/Layout;->getWidth()I

    move-result v8

    div-int/lit8 v5, v8, 0x2

    .line 336
    .local v5, startPoint:I
    iget-wide v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->realTimeGraphWidth:D

    double-to-int v8, v8

    add-int v0, v5, v8

    .line 338
    .local v0, curTimePosition:I
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onDischargingTotalLevel:I

    .line 339
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onDischargingTotalTime:J

    .line 341
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onChargingTotalLevel:I

    .line 342
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onChargingTotalTime:J

    .line 344
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->lastTime:J

    .line 345
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->lastLevel:I

    .line 346
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->lastStatus:I

    .line 348
    iget-object v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl;->startIteratingHistoryLocked()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 349
    new-instance v4, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v4}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 350
    .local v4, rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v8, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 351
    iget-byte v8, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 353
    iget-wide v8, v4, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v10, p0, Lcom/android/lgesettings/powersave/BatterySettings;->timeStart:J

    sub-long/2addr v8, v10

    long-to-double v8, v8

    iget-wide v10, p0, Lcom/android/lgesettings/powersave/BatterySettings;->realTimeGraphWidth:D

    mul-double/2addr v8, v10

    iget-wide v10, p0, Lcom/android/lgesettings/powersave/BatterySettings;->timeChange:J

    long-to-double v10, v10

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int v6, v5, v8

    .line 355
    if-eq v2, v6, :cond_0

    iget v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->lastLevel:I

    iget-byte v9, v4, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-eq v8, v9, :cond_0

    .line 356
    iget-wide v8, v4, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v10, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mHistEnd:J

    const-wide/32 v12, 0xa4cb80

    sub-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-ltz v8, :cond_2

    .line 357
    iget-byte v8, v4, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget v9, p0, Lcom/android/lgesettings/powersave/BatterySettings;->lastStatus:I

    if-ne v8, v9, :cond_2

    .line 358
    const-string v8, "hong"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "rec.time : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v4, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const-string v8, "hong"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "rec.batteryLevel : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-byte v10, v4, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-byte v8, v4, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    iget-byte v8, v4, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    const/4 v9, 0x5

    if-ne v8, v9, :cond_3

    .line 362
    :cond_1
    iget-byte v8, v4, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget v9, p0, Lcom/android/lgesettings/powersave/BatterySettings;->lastLevel:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x1

    if-gt v8, v9, :cond_2

    .line 363
    iget v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onChargingTotalLevel:I

    iget-byte v9, v4, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget v10, p0, Lcom/android/lgesettings/powersave/BatterySettings;->lastLevel:I

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onChargingTotalLevel:I

    .line 364
    iget-wide v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onChargingTotalTime:J

    iget-wide v10, v4, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v12, p0, Lcom/android/lgesettings/powersave/BatterySettings;->lastTime:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onChargingTotalTime:J

    .line 375
    :cond_2
    :goto_1
    iget-byte v8, v4, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->lastStatus:I

    .line 376
    iget-byte v8, v4, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->lastLevel:I

    .line 377
    iget-wide v8, v4, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->lastTime:J

    .line 379
    move v2, v6

    .line 380
    move v3, v7

    goto/16 :goto_0

    .line 367
    :cond_3
    iget-byte v8, v4, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget v9, p0, Lcom/android/lgesettings/powersave/BatterySettings;->lastLevel:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x1

    if-gt v8, v9, :cond_2

    .line 368
    iget v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onDischargingTotalLevel:I

    iget-byte v9, v4, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget v10, p0, Lcom/android/lgesettings/powersave/BatterySettings;->lastLevel:I

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onDischargingTotalLevel:I

    .line 369
    iget-wide v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onDischargingTotalTime:J

    iget-wide v10, v4, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v12, p0, Lcom/android/lgesettings/powersave/BatterySettings;->lastTime:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->onDischargingTotalTime:J

    goto :goto_1

    .line 386
    .end local v4           #rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_4
    iget v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->curStatus:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    iget v8, p0, Lcom/android/lgesettings/powersave/BatterySettings;->curStatus:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_6

    .line 389
    :cond_5
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->setChargingSummary()V

    .line 394
    :goto_2
    return-void

    .line 392
    :cond_6
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->setDischargingSummary()V

    goto :goto_2
.end method

.method private updatePowerSaverModeSummary(Ljava/lang/Object;)V
    .locals 13
    .parameter "value"

    .prologue
    .line 527
    :try_start_0
    const-string v3, "-1"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 528
    iget-object v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mPowerSaveSwitch:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    const v4, 0x7f081205

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/powersave/BatterySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 551
    :goto_0
    return-void

    .line 530
    :cond_0
    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, immediatly_value:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 532
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, entry:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mPowerSaveSwitch:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 548
    .end local v1           #entry:[Ljava/lang/String;
    .end local v2           #immediatly_value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 549
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "BatterySettings"

    const-string v4, "could not persist Auto power save mode"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 535
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #immediatly_value:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 536
    iget-object v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mPowerSaveSwitch:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    const v4, 0x7f081230

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/lgesettings/powersave/BatterySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 542
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mPowerSaveSwitch:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    const v4, 0x7f081230

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u200e"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/lgesettings/powersave/BatterySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mContext:Landroid/content/Context;

    .line 196
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->initPreference()V

    .line 197
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->checkPreference()V

    .line 199
    if-eqz p1, :cond_0

    .line 200
    sget-object v0, Lcom/android/lgesettings/powersave/BatterySettings;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 203
    :cond_0
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 206
    new-instance v0, Lcom/android/lgesettings/powersave/PowerSave;

    iget-object v1, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/lgesettings/powersave/PowerSave;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;

    .line 208
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/powersave/BatterySettings;->now:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/powersave/BatterySettings;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mRefTimeLayout:Landroid/text/Layout;

    .line 210
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 247
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 248
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sput-object v0, Lcom/android/lgesettings/powersave/BatterySettings;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    .line 251
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    .line 557
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 587
    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    :goto_0
    return v8

    .line 559
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "settings_style"

    invoke-static {v8, v10, v11}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 560
    .local v3, settingStyle:I
    if-ne v3, v9, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 561
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/powersave/BatterySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 562
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 563
    .local v2, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 564
    .local v6, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 565
    .local v7, topActivityClassName:Ljava/lang/String;
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, baseActivityClassName:Ljava/lang/String;
    const-string v8, "kimyow"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "top="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  base="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const-string v8, "com.lge.settings.easy.EasySettings"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 568
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->onBackPressed()V

    move v8, v9

    .line 569
    goto :goto_0

    .line 571
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.settings.SETTINGS"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    .local v4, settings:Landroid/content/Intent;
    const/high16 v8, 0x1020

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 573
    invoke-static {v7}, Lcom/android/lgesettings/Utils;->getEasyTabIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 574
    .local v5, tabIndex:Ljava/lang/String;
    const-string v8, "kimyow"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tabIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-string v8, "android.intent.extra.TEXT"

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/powersave/BatterySettings;->startActivity(Landroid/content/Intent;)V

    .line 577
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->finish()V

    move v8, v9

    .line 578
    goto/16 :goto_0

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 236
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 238
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 503
    iget-object v4, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBatteryPercentage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_2

    .line 504
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "power_save_battery_indicator"

    iget-object v6, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mBatteryPercentage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    invoke-static {v4, v5, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 508
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.lgesettings.powersave.action.BATTERY_INDICATOR_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 516
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_1
    move v2, v3

    .line 504
    goto :goto_0

    .line 511
    :cond_2
    iget-object v4, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEcoMode:Lcom/android/lgesettings/powersave/PowerSaveSwitchPreference;

    if-ne p2, v4, :cond_0

    .line 512
    iget-object v4, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "eco_mode"

    invoke-static {v4, v5, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 514
    .local v1, value:I
    iget-object v4, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "eco_mode"

    if-nez v1, :cond_3

    :goto_2
    invoke-static {v4, v5, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 215
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 217
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->checkPreference()V

    .line 219
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 220
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->load()V

    .line 222
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->setExpectedTime()V

    .line 224
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 225
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    const-string v2, "power_save_enabled"

    invoke-static {v2}, Lcom/lge/provider/SettingsEx$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 229
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "BatterySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register observer uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/lgesettings/powersave/BatterySettings;->mEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 231
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 242
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onStop()V

    .line 243
    return-void
.end method
