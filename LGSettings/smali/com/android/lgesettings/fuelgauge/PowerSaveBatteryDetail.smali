.class public Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;
.super Landroid/preference/PreferenceFragment;
.source "PowerSaveBatteryDetail.java"

# interfaces
.implements Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$OnTreeClickListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$5;
    }
.end annotation


# static fields
.field private static curLevel:I

.field private static curState:I

.field private static lastScrollX:I

.field private static lastState:I

.field private static sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;


# instance fields
.field private expectedTimePref:Landroid/preference/Preference;

.field private first:Z

.field private hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

.field private lastTimePref:Landroid/preference/Preference;

.field private mAbort:Z

.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mAppWifiRunning:J

.field mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothPower:D

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGraphGroup:Landroid/preference/PreferenceGroup;

.field mHandler:Landroid/os/Handler;

.field private mMaxPower:D

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestThread:Ljava/lang/Thread;

.field mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mStringNoData:Ljava/lang/String;

.field private mStringUse:Ljava/lang/String;

.field private mTotalPower:D

.field mUm:Landroid/os/UserManager;

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserPower:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSippers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/fuelgauge/BatterySipper;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWifiPower:D

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private onRotation:Z

.field private status:I

.field private totalLevel:I

.field private useOnBatteryPref:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 164
    sput v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->lastState:I

    .line 165
    sput v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->curState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mUsageList:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mWifiSippers:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mBluetoothSippers:Ljava/util/List;

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mUserSippers:Landroid/util/SparseArray;

    .line 110
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mUserPower:Landroid/util/SparseArray;

    .line 116
    iput v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsPeriod:J

    .line 122
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mMaxPower:D

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mRequestQueue:Ljava/util/ArrayList;

    .line 152
    iput v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->status:I

    .line 160
    iput-boolean v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->first:Z

    .line 161
    iput-boolean v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->onRotation:Z

    .line 172
    new-instance v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$1;-><init>(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;)V

    iput-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 1328
    new-instance v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$4;-><init>(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;)V

    iput-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->refreshInformation()V

    return-void
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    sput p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->curLevel:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->status:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->status:I

    return p1
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 88
    sget v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->curState:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    sput p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->curState:I

    return p0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 88
    sget v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->lastState:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    sput p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->lastState:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;)Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->onRotation:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->onRotation:Z

    return p1
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 88
    sget v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->lastScrollX:I

    return v0
.end method

.method private addBluetoothUsage(J)V
    .locals 11
    .parameter

    .prologue
    const-wide v9, 0x408f400000000000L

    .line 1179
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 1180
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    div-double/2addr v0, v9

    .line 1182
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v2

    .line 1183
    int-to-double v5, v2

    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "bluetooth.at"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    div-double/2addr v5, v9

    add-double v6, v0, v5

    .line 1185
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08069c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;->BLUETOOTH:Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020208

    iget-wide v8, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mBluetoothPower:D

    add-double/2addr v6, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->addEntry(Ljava/lang/String;Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/lgesettings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 1188
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mBluetoothSippers:Ljava/util/List;

    const-string v2, "Bluetooth"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->aggregateSippers(Lcom/android/lgesettings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 1189
    return-void
.end method

.method private addEntry(Ljava/lang/String;Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/lgesettings/fuelgauge/BatterySipper;
    .locals 9
    .parameter "label"
    .parameter "drainType"
    .parameter "time"
    .parameter "iconId"
    .parameter "power"

    .prologue
    .line 1286
    iget-wide v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mMaxPower:D

    cmpl-double v1, p6, v1

    if-lez v1, :cond_0

    .line 1287
    iput-wide p6, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mMaxPower:D

    .line 1289
    :cond_0
    iget-wide v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mTotalPower:D

    add-double/2addr v1, p6

    iput-wide v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mTotalPower:D

    .line 1290
    new-instance v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;

    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mRequestQueue:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v4, 0x1

    new-array v8, v4, [D

    const/4 v4, 0x0

    aput-wide p6, v8, v4

    move-object v4, p1

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/lgesettings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 1292
    .local v0, bs:Lcom/android/lgesettings/fuelgauge/BatterySipper;
    iput-wide p3, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->usageTime:J

    .line 1293
    iput p5, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->iconId:I

    .line 1294
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1295
    return-object v0
.end method

.method private addIdleUsage(J)V
    .locals 8
    .parameter

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 1172
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.idle"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v6, v0, v5

    .line 1174
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08069f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;->IDLE:Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020218

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->addEntry(Ljava/lang/String;Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/lgesettings/fuelgauge/BatterySipper;

    .line 1176
    return-void
.end method

.method private addPhoneUsage(J)V
    .locals 8
    .parameter

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 1083
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v5, v3

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v6, v0, v5

    .line 1085
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08069e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;->PHONE:Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020226

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->addEntry(Ljava/lang/String;Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/lgesettings/fuelgauge/BatterySipper;

    .line 1087
    return-void
.end method

.method private addRadioUsage(J)V
    .locals 12
    .parameter

    .prologue
    .line 1111
    const-wide/16 v1, 0x0

    .line 1112
    sget v5, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    .line 1113
    const-wide/16 v3, 0x0

    .line 1114
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    .line 1115
    iget-object v6, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v7, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v6, v0, p1, p2, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 1116
    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    long-to-double v8, v8

    iget-object v10, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v11, "radio.on"

    invoke-virtual {v10, v11, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v1, v8

    .line 1118
    add-long/2addr v3, v6

    .line 1114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v5, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v0, p1, p2, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalScanningTime(JI)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 1121
    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-double v5, v5

    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.scanning"

    invoke-virtual {v0, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double v6, v1, v5

    .line 1123
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08069d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;->CELL:Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f02020b

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->addEntry(Ljava/lang/String;Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/lgesettings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 1126
    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-eqz v1, :cond_1

    .line 1127
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v1, v2, p1, p2, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    long-to-double v1, v1

    const-wide/high16 v5, 0x4059

    mul-double/2addr v1, v5

    long-to-double v3, v3

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->noCoveragePercent:D

    .line 1130
    :cond_1
    return-void
.end method

.method private addScreenUsage(J)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v11, 0x3e8

    .line 1090
    const-wide/16 v0, 0x0

    .line 1091
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v2

    div-long v3, v2, v11

    .line 1092
    long-to-double v5, v3

    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "screen.on"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double v1, v0, v5

    .line 1093
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "screen.full"

    invoke-virtual {v0, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    .line 1095
    const/4 v0, 0x0

    :goto_0
    const/4 v7, 0x5

    if-ge v0, v7, :cond_0

    .line 1096
    int-to-float v7, v0

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-double v7, v7

    mul-double/2addr v7, v5

    const-wide/high16 v9, 0x4014

    div-double/2addr v7, v9

    .line 1098
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v10, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v9, v0, p1, p2, v10}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v9

    div-long/2addr v9, v11

    .line 1099
    long-to-double v9, v9

    mul-double/2addr v7, v9

    add-double/2addr v1, v7

    .line 1095
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1105
    :cond_0
    const-wide v5, 0x408f400000000000L

    div-double v6, v1, v5

    .line 1106
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08069a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;->SCREEN:Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020220

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->addEntry(Ljava/lang/String;Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/lgesettings/fuelgauge/BatterySipper;

    .line 1108
    return-void
.end method

.method private addUserUsage()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 1192
    move v9, v5

    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 1193
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1194
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    .line 1195
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1198
    if-eqz v1, :cond_2

    .line 1199
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/lgesettings/users/UserUtils;->getUserIcon(Landroid/os/UserManager;Landroid/content/pm/UserInfo;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1200
    if-eqz v1, :cond_1

    iget-object v0, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1201
    :goto_1
    if-nez v0, :cond_0

    .line 1202
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1204
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0805d6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    invoke-virtual {v1, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v2

    .line 1211
    :goto_2
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 1212
    sget-object v2, Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;->USER:Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->addEntry(Ljava/lang/String;Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/lgesettings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 1213
    iput-object v10, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 1214
    const-string v1, "User"

    invoke-direct {p0, v0, v8, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->aggregateSippers(Lcom/android/lgesettings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 1192
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_1
    move-object v0, v11

    .line 1200
    goto :goto_1

    .line 1208
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0805d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v10, v11

    goto :goto_2

    .line 1216
    :cond_3
    return-void
.end method

.method private addWiFiUsage(J)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v7, 0x3e8

    const-wide/16 v0, 0x0

    .line 1149
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiOnTime(JI)J

    move-result-wide v2

    div-long v5, v2, v7

    .line 1150
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v2

    div-long/2addr v2, v7

    .line 1155
    iget-wide v7, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mAppWifiRunning:J

    sub-long v3, v2, v7

    .line 1156
    cmp-long v2, v3, v0

    if-gez v2, :cond_0

    move-wide v3, v0

    .line 1159
    :cond_0
    mul-long/2addr v0, v5

    long-to-double v0, v0

    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "wifi.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    long-to-double v5, v3

    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "wifi.on"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v6, v0, v5

    .line 1165
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08069b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;->WIFI:Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020227

    iget-wide v8, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mWifiPower:D

    add-double/2addr v6, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->addEntry(Ljava/lang/String;Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/lgesettings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 1167
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mWifiSippers:Ljava/util/List;

    const-string v2, "WIFI"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->aggregateSippers(Lcom/android/lgesettings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 1168
    return-void
.end method

.method private aggregateSippers(Lcom/android/lgesettings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter "bs"
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/lgesettings/fuelgauge/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/fuelgauge/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1133
    .local p2, from:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/fuelgauge/BatterySipper;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1134
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/fuelgauge/BatterySipper;

    .line 1138
    .local v1, wbs:Lcom/android/lgesettings/fuelgauge/BatterySipper;
    iget-wide v2, p1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->cpuTime:J

    iget-wide v4, v1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->cpuTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->cpuTime:J

    .line 1139
    iget-wide v2, p1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->gpsTime:J

    iget-wide v4, v1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->gpsTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->gpsTime:J

    .line 1140
    iget-wide v2, p1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->wifiRunningTime:J

    iget-wide v4, v1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->wifiRunningTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->wifiRunningTime:J

    .line 1141
    iget-wide v2, p1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->cpuFgTime:J

    iget-wide v4, v1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->cpuFgTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->cpuFgTime:J

    .line 1142
    iget-wide v2, p1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->wakeLockTime:J

    iget-wide v4, v1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 1143
    iget-wide v2, p1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    iget-wide v4, v1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    .line 1144
    iget-wide v2, p1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    iget-wide v4, v1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    .line 1133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1146
    .end local v1           #wbs:Lcom/android/lgesettings/fuelgauge/BatterySipper;
    :cond_0
    return-void
.end method

.method private getAverageDataCost()D
    .locals 14

    .prologue
    .line 1219
    .line 1221
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "wifi.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x40ac200000000000L

    div-double v2, v0, v2

    .line 1223
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v4, 0x40ac200000000000L

    div-double v4, v0, v4

    .line 1225
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v7, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v6

    add-long/2addr v6, v0

    .line 1227
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v0

    iget-object v8, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v8

    add-long/2addr v0, v8

    sub-long v8, v0, v6

    .line 1229
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v0

    const-wide/16 v10, 0x3e8

    div-long/2addr v0, v10

    .line 1230
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-eqz v10, :cond_0

    const-wide/16 v10, 0x8

    mul-long/2addr v10, v6

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    div-long v0, v10, v0

    .line 1234
    :goto_0
    const-wide/16 v10, 0x8

    div-long/2addr v0, v10

    long-to-double v0, v0

    div-double v0, v4, v0

    .line 1235
    const-wide v4, 0x40fe848000000000L

    div-double/2addr v2, v4

    .line 1236
    add-long v4, v8, v6

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-eqz v4, :cond_1

    .line 1237
    long-to-double v4, v6

    mul-double/2addr v0, v4

    long-to-double v4, v8

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    add-long v2, v6, v8

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 1240
    :goto_1
    return-wide v0

    .line 1230
    :cond_0
    const-wide/32 v0, 0x30d40

    goto :goto_0

    .line 1240
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public static getCurState()I
    .locals 1

    .prologue
    .line 1253
    sget v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->curState:I

    return v0
.end method

.method private load()V
    .locals 4

    .prologue
    .line 1300
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 1301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1302
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1303
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1304
    sget-object v0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 1306
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1310
    :goto_0
    return-void

    .line 1307
    :catch_0
    move-exception v0

    .line 1308
    const-string v1, "PowerSaveBatteryDetail"

    const-string v2, "RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private millisToHour(J)I
    .locals 4
    .parameter "time"

    .prologue
    const-wide/16 v2, 0x3c

    .line 797
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
    .line 793
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    long-to-int v0, v0

    rem-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method private processAppUsage()V
    .locals 48

    .prologue
    .line 809
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "sensor"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/hardware/SensorManager;

    .line 811
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    move/from16 v27, v0

    .line 812
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v3}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v28

    .line 813
    move/from16 v0, v28

    new-array v0, v0, [D

    move-object/from16 v29, v0

    .line 814
    move/from16 v0, v28

    new-array v0, v0, [J

    move-object/from16 v30, v0

    .line 815
    const/4 v3, 0x0

    :goto_0
    move/from16 v0, v28

    if-ge v3, v0, :cond_0

    .line 816
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.active"

    invoke-virtual {v4, v5, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 815
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 818
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getAverageDataCost()D

    move-result-wide v31

    .line 819
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    move/from16 v0, v27

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v33

    .line 820
    const-wide/16 v5, 0x0

    .line 821
    const/4 v4, 0x0

    .line 822
    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsPeriod:J

    .line 823
    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->updateStatsPeriod(J)V

    .line 824
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v35

    .line 825
    invoke-virtual/range {v35 .. v35}, Landroid/util/SparseArray;->size()I

    move-result v36

    .line 826
    const/4 v3, 0x0

    move/from16 v23, v3

    move-object/from16 v24, v4

    move-wide/from16 v25, v5

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v36

    if-ge v0, v1, :cond_16

    .line 827
    move-object/from16 v0, v35

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Uid;

    .line 829
    const-wide/16 v13, 0x0

    .line 830
    const-wide/16 v8, 0x0

    .line 831
    const/4 v7, 0x0

    .line 833
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v11

    .line 834
    const-wide/16 v5, 0x0

    .line 835
    const-wide/16 v3, 0x0

    .line 836
    const-wide/16 v19, 0x0

    .line 837
    const-wide/16 v21, 0x0

    .line 841
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v15

    if-lez v15, :cond_1f

    .line 844
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v37

    move-wide v15, v13

    move-wide v13, v8

    move-object v9, v7

    move-wide v7, v5

    move-wide v5, v3

    :goto_2
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 849
    const-string v4, "com.android.cardock"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1079
    :cond_1
    :goto_3
    return-void

    .line 853
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Proc;

    .line 854
    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v17

    .line 855
    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v38

    .line 856
    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v40

    .line 857
    const-wide/16 v42, 0xa

    mul-long v40, v40, v42

    add-long v5, v5, v40

    .line 858
    add-long v17, v17, v38

    const-wide/16 v38, 0xa

    mul-long v38, v38, v17

    .line 859
    const/16 v17, 0x0

    .line 861
    const/4 v11, 0x0

    move/from16 v46, v11

    move/from16 v11, v17

    move/from16 v17, v46

    :goto_4
    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 862
    move/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v40

    aput-wide v40, v30, v17

    .line 863
    int-to-long v0, v11

    move-wide/from16 v40, v0

    aget-wide v42, v30, v17

    add-long v40, v40, v42

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v18, v0

    .line 861
    add-int/lit8 v11, v17, 0x1

    move/from16 v17, v11

    move/from16 v11, v18

    goto :goto_4

    .line 865
    :cond_3
    if-nez v11, :cond_1e

    .line 866
    const/4 v4, 0x1

    .line 869
    :goto_5
    const-wide/16 v17, 0x0

    .line 870
    const/4 v11, 0x0

    :goto_6
    move/from16 v0, v28

    if-ge v11, v0, :cond_4

    .line 871
    aget-wide v40, v30, v11

    move-wide/from16 v0, v40

    long-to-double v0, v0

    move-wide/from16 v40, v0

    int-to-double v0, v4

    move-wide/from16 v42, v0

    div-double v40, v40, v42

    .line 872
    move-wide/from16 v0, v38

    long-to-double v0, v0

    move-wide/from16 v42, v0

    mul-double v40, v40, v42

    aget-wide v42, v29, v11

    mul-double v40, v40, v42

    add-double v17, v17, v40

    .line 870
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 874
    :cond_4
    add-long v7, v7, v38

    .line 879
    add-double v15, v15, v17

    .line 880
    if-eqz v9, :cond_5

    const-string v4, "*"

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 883
    :cond_5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-wide/from16 v13, v17

    :goto_7
    move-object v9, v3

    .line 889
    goto/16 :goto_2

    .line 884
    :cond_6
    cmpg-double v4, v13, v17

    if-gez v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v11, "*"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 887
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-wide/from16 v13, v17

    goto :goto_7

    :cond_7
    move-wide v3, v7

    move-object v7, v9

    move-wide/from16 v46, v5

    move-wide v5, v15

    move-wide/from16 v15, v46

    .line 896
    :goto_8
    cmp-long v8, v15, v3

    if-lez v8, :cond_1c

    move-wide v13, v15

    .line 902
    :goto_9
    const-wide v3, 0x408f400000000000L

    div-double v8, v5, v3

    .line 908
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v3

    .line 910
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide/from16 v4, v19

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 911
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 914
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 915
    if-eqz v3, :cond_1b

    .line 916
    move-wide/from16 v0, v33

    move/from16 v2, v27

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v17

    add-long v3, v4, v17

    :goto_b
    move-wide v4, v3

    .line 918
    goto :goto_a

    .line 919
    :cond_8
    const-wide/16 v17, 0x3e8

    div-long v37, v4, v17

    .line 920
    add-long v25, v25, v37

    .line 923
    move-wide/from16 v0, v37

    long-to-double v3, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "cpu.awake"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide v5, 0x408f400000000000L

    div-double/2addr v3, v5

    .line 925
    add-double/2addr v3, v8

    .line 931
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v10, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v39

    .line 932
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v10, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v41

    .line 933
    add-long v5, v39, v41

    long-to-double v5, v5

    mul-double v5, v5, v31

    .line 934
    add-double/2addr v3, v5

    .line 940
    move-wide/from16 v0, v33

    move/from16 v2, v27

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v5

    const-wide/16 v8, 0x3e8

    div-long v43, v5, v8

    .line 941
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mAppWifiRunning:J

    add-long v5, v5, v43

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mAppWifiRunning:J

    .line 942
    move-wide/from16 v0, v43

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.on"

    invoke-virtual {v8, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v5, v8

    const-wide v8, 0x408f400000000000L

    div-double/2addr v5, v8

    .line 944
    add-double/2addr v3, v5

    .line 950
    move-wide/from16 v0, v33

    move/from16 v2, v27

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v5

    const-wide/16 v8, 0x3e8

    div-long/2addr v5, v8

    .line 951
    long-to-double v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.scan"

    invoke-virtual {v8, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v5, v8

    const-wide v8, 0x408f400000000000L

    div-double/2addr v5, v8

    .line 953
    add-double/2addr v3, v5

    .line 958
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v5

    .line 960
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide/from16 v17, v21

    move-wide/from16 v19, v3

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 961
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Sensor;

    .line 962
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v9

    .line 964
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 965
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 966
    move-wide/from16 v0, v33

    move/from16 v2, v27

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v5, v3, v5

    .line 967
    const-wide/16 v3, 0x0

    .line 968
    packed-switch v9, :pswitch_data_0

    .line 974
    invoke-virtual {v12, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    .line 976
    if-eqz v9, :cond_9

    .line 977
    invoke-virtual {v9}, Landroid/hardware/Sensor;->getPower()F

    move-result v3

    float-to-double v3, v3

    .line 984
    :cond_9
    :goto_d
    long-to-double v5, v5

    mul-double/2addr v3, v5

    const-wide v5, 0x408f400000000000L

    div-double/2addr v3, v5

    .line 985
    add-double v5, v19, v3

    move-wide/from16 v3, v17

    :goto_e
    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    .line 991
    goto :goto_c

    .line 970
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v4, "gps.on"

    invoke-virtual {v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v3

    move-wide/from16 v17, v5

    .line 972
    goto :goto_d

    .line 998
    :cond_a
    const/16 v21, 0x0

    .line 999
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    .line 1000
    const-wide/16 v3, 0x0

    cmpl-double v3, v19, v3

    if-gtz v3, :cond_b

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    if-nez v3, :cond_19

    .line 1001
    :cond_b
    new-instance v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mRequestQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mHandler:Landroid/os/Handler;

    sget-object v8, Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;

    const/4 v9, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [D

    const/16 v45, 0x0

    aput-wide v19, v11, v45

    invoke-direct/range {v3 .. v11}, Lcom/android/lgesettings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 1004
    iput-wide v13, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->cpuTime:J

    .line 1005
    move-wide/from16 v0, v17

    iput-wide v0, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->gpsTime:J

    .line 1006
    move-wide/from16 v0, v43

    iput-wide v0, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->wifiRunningTime:J

    .line 1007
    iput-wide v15, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->cpuFgTime:J

    .line 1008
    move-wide/from16 v0, v37

    iput-wide v0, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 1009
    move-wide/from16 v0, v39

    iput-wide v0, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    .line 1010
    move-wide/from16 v0, v41

    iput-wide v0, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    .line 1011
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    const/16 v5, 0x3f2

    if-ne v4, v5, :cond_d

    .line 1012
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mWifiSippers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v4, v21

    .line 1027
    :goto_f
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-nez v5, :cond_18

    move/from16 v21, v4

    move-object v4, v3

    .line 1031
    :goto_10
    const-wide/16 v5, 0x0

    cmpl-double v3, v19, v5

    if-eqz v3, :cond_c

    .line 1032
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    const/16 v5, 0x3f2

    if-ne v3, v5, :cond_11

    .line 1033
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mWifiPower:D

    add-double v5, v5, v19

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mWifiPower:D

    .line 826
    :cond_c
    :goto_11
    add-int/lit8 v3, v23, 0x1

    move/from16 v23, v3

    move-object/from16 v24, v4

    goto/16 :goto_1

    .line 1013
    :cond_d
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    const/16 v5, 0x7d0

    if-ne v4, v5, :cond_e

    .line 1014
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v4, v21

    goto :goto_f

    .line 1015
    :cond_e
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    move/from16 v0, v22

    if-eq v0, v4, :cond_10

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v5, 0x2710

    if-lt v4, v5, :cond_10

    .line 1017
    const/4 v5, 0x1

    .line 1018
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1019
    if-nez v4, :cond_f

    .line 1020
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1021
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v6, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1023
    :cond_f
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v5

    .line 1024
    goto :goto_f

    .line 1025
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mUsageList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v4, v21

    goto :goto_f

    .line 1034
    :cond_11
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    const/16 v5, 0x7d0

    if-ne v3, v5, :cond_12

    .line 1035
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mBluetoothPower:D

    add-double v5, v5, v19

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mBluetoothPower:D

    goto :goto_11

    .line 1036
    :cond_12
    if-eqz v21, :cond_14

    .line 1037
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mUserPower:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    .line 1038
    if-nez v3, :cond_13

    .line 1039
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 1043
    :goto_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mUserPower:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v5, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_11

    .line 1041
    :cond_13
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-double v5, v5, v19

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_12

    .line 1045
    :cond_14
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mMaxPower:D

    cmpl-double v3, v19, v5

    if-lez v3, :cond_15

    .line 1046
    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mMaxPower:D

    .line 1048
    :cond_15
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mTotalPower:D

    add-double v5, v5, v19

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mTotalPower:D

    goto/16 :goto_11

    .line 1059
    :cond_16
    if-eqz v24, :cond_1

    .line 1060
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    move/from16 v0, v27

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 1062
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move/from16 v0, v27

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    sub-long v5, v25, v5

    sub-long/2addr v3, v5

    .line 1064
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 1065
    long-to-double v5, v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v8, "cpu.awake"

    invoke-virtual {v7, v8}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    const-wide v7, 0x408f400000000000L

    div-double/2addr v5, v7

    .line 1070
    move-object/from16 v0, v24

    iget-wide v7, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long/2addr v3, v7

    move-object/from16 v0, v24

    iput-wide v3, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 1071
    move-object/from16 v0, v24

    iget-wide v3, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->value:D

    add-double/2addr v3, v5

    move-object/from16 v0, v24

    iput-wide v3, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->value:D

    .line 1072
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->values:[D

    const/4 v4, 0x0

    aget-wide v7, v3, v4

    add-double/2addr v7, v5

    aput-wide v7, v3, v4

    .line 1073
    move-object/from16 v0, v24

    iget-wide v3, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mMaxPower:D

    cmpl-double v3, v3, v7

    if-lez v3, :cond_17

    .line 1074
    move-object/from16 v0, v24

    iget-wide v3, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mMaxPower:D

    .line 1076
    :cond_17
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mTotalPower:D

    add-double/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mTotalPower:D

    goto/16 :goto_3

    :cond_18
    move/from16 v21, v4

    move-object/from16 v4, v24

    goto/16 :goto_10

    :cond_19
    move-object/from16 v4, v24

    goto/16 :goto_10

    :cond_1a
    move-wide/from16 v3, v17

    move-wide/from16 v5, v19

    goto/16 :goto_e

    :cond_1b
    move-wide v3, v4

    goto/16 :goto_b

    :cond_1c
    move-wide v13, v3

    goto/16 :goto_9

    :cond_1d
    move-object v3, v9

    goto/16 :goto_7

    :cond_1e
    move v4, v11

    goto/16 :goto_5

    :cond_1f
    move-wide v15, v3

    move-wide v3, v5

    move-wide v5, v13

    goto/16 :goto_8

    .line 968
    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private processMiscUsage()V
    .locals 11

    .prologue
    .line 1261
    iget v6, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    .line 1262
    .local v6, which:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v4, v7, v9

    .line 1263
    .local v4, uSecTime:J
    iget-object v7, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v7, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v2

    .line 1264
    .local v2, uSecNow:J
    move-wide v0, v2

    .line 1269
    .local v0, timeSinceUnplugged:J
    invoke-direct {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->addUserUsage()V

    .line 1271
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1272
    invoke-direct {p0, v2, v3}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->addPhoneUsage(J)V

    .line 1274
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->addScreenUsage(J)V

    .line 1275
    invoke-direct {p0, v2, v3}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->addWiFiUsage(J)V

    .line 1276
    invoke-direct {p0, v2, v3}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->addBluetoothUsage(J)V

    .line 1277
    invoke-direct {p0, v2, v3}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->addIdleUsage(J)V

    .line 1279
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1280
    invoke-direct {p0, v2, v3}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->addRadioUsage(J)V

    .line 1282
    :cond_1
    return-void
.end method

.method private refreshInformation()V
    .locals 13

    .prologue
    const v12, 0x7f081257

    const v11, 0x7f081252

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 638
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v0

    if-nez v0, :cond_0

    .line 790
    :goto_0
    return-void

    .line 642
    :cond_0
    const-string v0, "PowerSaveBatteryDetail"

    const-string v1, "refreshInformation()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-boolean v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->first:Z

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getScrollPosition()I

    move-result v0

    sput v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->lastScrollX:I

    .line 646
    iput-boolean v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->first:Z

    .line 649
    :cond_1
    sget v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->curState:I

    if-ne v0, v8, :cond_8

    .line 650
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getEstimateChargingTime()J

    move-result-wide v0

    .line 651
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getOnDischargingTotalLevel()I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->totalLevel:I

    .line 653
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->useOnBatteryPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08125d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->useOnBatteryPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsPeriod:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-double v4, v4

    invoke-static {v3, v4, v5}, Lcom/android/lgesettings/fuelgauge/Utils;->formatOnBatteryTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->expectedTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f081250

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 658
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getChargingDefaultstate()I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v3}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_2

    .line 659
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->expectedTimePref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStringNoData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 688
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->lastTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->lastTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f081254

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->invalidate()V

    .line 693
    const-string v0, "PowerSaveBatteryDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image Location : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getLastTimePosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v3}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const-string v0, "PowerSaveBatteryDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image Location : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getLastLevelPosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v3}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getLastTimePosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getLastLevelPosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v3}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v9, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 700
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getHorizontalScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object v0

    new-instance v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$2;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$2;-><init>(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 660
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToHour(J)I

    move-result v2

    if-nez v2, :cond_4

    .line 661
    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToMinutes(J)I

    move-result v2

    if-ne v2, v8, :cond_3

    .line 662
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->expectedTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f08125b

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToMinutes(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 665
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->expectedTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f08125c

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToMinutes(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 669
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToHour(J)I

    move-result v2

    if-ne v2, v8, :cond_6

    .line 670
    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToMinutes(J)I

    move-result v2

    if-ne v2, v8, :cond_5

    .line 671
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->expectedTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToHour(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToMinutes(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {v3, v12, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 674
    :cond_5
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->expectedTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f081258

    new-array v5, v10, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToHour(J)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToMinutes(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 679
    :cond_6
    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToMinutes(J)I

    move-result v2

    if-ne v2, v8, :cond_7

    .line 680
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->expectedTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f081259

    new-array v5, v10, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToHour(J)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToMinutes(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 683
    :cond_7
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->expectedTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f08125a

    new-array v5, v10, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToHour(J)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToMinutes(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 715
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getEstimateDischargingTime()J

    move-result-wide v0

    .line 716
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getOnDischargingTotalLevel()I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->totalLevel:I

    .line 718
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->useOnBatteryPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08125d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 719
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->useOnBatteryPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsPeriod:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-double v4, v4

    invoke-static {v3, v4, v5}, Lcom/android/lgesettings/fuelgauge/Utils;->formatOnBatteryTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 721
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->expectedTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f081251

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getDischargingDefaultstate()I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v3}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_9

    .line 724
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->expectedTimePref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStringNoData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 753
    :goto_2
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->lastTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 754
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 755
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->lastTimePref:Landroid/preference/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d"

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->totalLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u200f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStringUse:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 763
    :goto_3
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->invalidate()V

    .line 765
    const-string v0, "PowerSaveBatteryDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image Location : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getLastTimePosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v3}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const-string v0, "PowerSaveBatteryDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image Location : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getLastLevelPosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v3}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getLastTimePosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getLastLevelPosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v3}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v9, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 772
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 774
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getHorizontalScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object v0

    new-instance v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$3;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$3;-><init>(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 725
    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToHour(J)I

    move-result v2

    if-nez v2, :cond_b

    .line 726
    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToMinutes(J)I

    move-result v2

    if-ne v2, v8, :cond_a

    .line 727
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->expectedTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f08125b

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToMinutes(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 730
    :cond_a
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->expectedTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f08125c

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToMinutes(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 734
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToHour(J)I

    move-result v2

    if-ne v2, v8, :cond_d

    .line 735
    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToMinutes(J)I

    move-result v2

    if-ne v2, v8, :cond_c

    .line 736
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->expectedTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToHour(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToMinutes(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {v3, v12, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 739
    :cond_c
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->expectedTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f081258

    new-array v5, v10, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToHour(J)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToMinutes(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 744
    :cond_d
    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToMinutes(J)I

    move-result v2

    if-ne v2, v8, :cond_e

    .line 745
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->expectedTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f081259

    new-array v5, v10, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToHour(J)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToMinutes(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 748
    :cond_e
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->expectedTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f08125a

    new-array v5, v10, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToHour(J)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->millisToMinutes(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 759
    :cond_f
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->lastTimePref:Landroid/preference/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d"

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->totalLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStringUse:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method private refreshStats()V
    .locals 13

    .prologue
    .line 548
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v9, :cond_0

    .line 549
    invoke-direct {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->load()V

    .line 551
    :cond_0
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mMaxPower:D

    .line 552
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mTotalPower:D

    .line 553
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mWifiPower:D

    .line 554
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mBluetoothPower:D

    .line 555
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mAppWifiRunning:J

    .line 557
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 558
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mGraphGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 559
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mUsageList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 560
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mWifiSippers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 561
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 562
    invoke-direct {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->processAppUsage()V

    .line 563
    invoke-direct {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->processMiscUsage()V

    .line 565
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 566
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mGraphGroup:Landroid/preference/PreferenceGroup;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 569
    new-instance v8, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 570
    .local v8, useDetailTextPref:Landroid/preference/Preference;
    const v9, 0x7f040015

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 571
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08124f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 572
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 573
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 575
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 576
    .local v0, graphTipsPref:Landroid/preference/Preference;
    const v9, 0x7f040015

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 577
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08126b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 578
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 579
    const/4 v9, -0x2

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setOrder(I)V

    .line 580
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mGraphGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 583
    new-instance v9, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v9, v10, v11}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    iput-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    .line 584
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->setOrder(I)V

    .line 585
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->setSelectable(Z)V

    .line 588
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mGraphGroup:Landroid/preference/PreferenceGroup;

    iget-object v10, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 591
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mGraphGroup:Landroid/preference/PreferenceGroup;

    iget-object v10, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->useOnBatteryPref:Landroid/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 592
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mGraphGroup:Landroid/preference/PreferenceGroup;

    iget-object v10, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->expectedTimePref:Landroid/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 593
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mGraphGroup:Landroid/preference/PreferenceGroup;

    iget-object v10, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->lastTimePref:Landroid/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 596
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mUsageList:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 597
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mUsageList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/lgesettings/fuelgauge/BatterySipper;

    .line 599
    .local v7, sipper:Lcom/android/lgesettings/fuelgauge/BatterySipper;
    invoke-virtual {v7}, Lcom/android/lgesettings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mTotalPower:D

    div-double/2addr v9, v11

    const-wide/high16 v11, 0x4059

    mul-double v4, v9, v11

    .line 600
    .local v4, percentOfTotal:D
    const-wide/high16 v9, 0x3ff0

    cmpg-double v9, v4, v9

    if-ltz v9, :cond_1

    .line 603
    new-instance v6, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/lgesettings/fuelgauge/BatterySipper;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {v6, v9, v10, v7}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/lgesettings/fuelgauge/BatterySipper;)V

    .line 604
    .local v6, pref:Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;
    invoke-virtual {v7}, Lcom/android/lgesettings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v9

    const-wide/high16 v11, 0x4059

    mul-double/2addr v9, v11

    iget-wide v11, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mMaxPower:D

    div-double v2, v9, v11

    .line 605
    .local v2, percentOfMax:D
    iput-wide v4, v7, Lcom/android/lgesettings/fuelgauge/BatterySipper;->percent:D

    .line 606
    const v9, 0x7f080696

    invoke-virtual {v6, v9}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->setSummary(I)V

    .line 607
    iget-object v9, v7, Lcom/android/lgesettings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->setTitle(Ljava/lang/CharSequence;)V

    .line 609
    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->setPercent(DD)V

    .line 610
    iget-object v9, v7, Lcom/android/lgesettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v9, :cond_2

    .line 611
    iget-object v9, v7, Lcom/android/lgesettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->setKey(Ljava/lang/String;)V

    .line 614
    :cond_2
    invoke-virtual {v6, p0}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->setOnTreeClickListener(Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$OnTreeClickListener;)V

    .line 616
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 617
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v9

    const/16 v10, 0xb

    if-le v9, v10, :cond_1

    .line 622
    .end local v2           #percentOfMax:D
    .end local v4           #percentOfTotal:D
    .end local v6           #pref:Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;
    .end local v7           #sipper:Lcom/android/lgesettings/fuelgauge/BatterySipper;
    :cond_3
    iget-object v10, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v10

    .line 623
    :try_start_0
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 624
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mRequestThread:Ljava/lang/Thread;

    if-nez v9, :cond_4

    .line 625
    new-instance v9, Ljava/lang/Thread;

    const-string v11, "BatteryUsage Icon Loader"

    invoke-direct {v9, p0, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mRequestThread:Ljava/lang/Thread;

    .line 626
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mRequestThread:Ljava/lang/Thread;

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/Thread;->setPriority(I)V

    .line 627
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mRequestThread:Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 629
    :cond_4
    iget-object v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    .line 631
    :cond_5
    monitor-exit v10

    .line 632
    return-void

    .line 631
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method private updateStatsPeriod(J)V
    .locals 4
    .parameter "duration"

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-double v2, v2

    invoke-static {v1, v2, v3}, Lcom/android/lgesettings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, durationString:Ljava/lang/String;
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->onRotation:Z

    .line 217
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getChart()Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->hist:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;

    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryPreference2;->getHorizontalScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    sput v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->lastScrollX:I

    .line 219
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->lastScrollX:I

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v0, v1

    sput v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->lastScrollX:I

    .line 222
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const v4, 0x7f0400e5

    const/4 v3, 0x0

    .line 226
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 228
    if-eqz p1, :cond_0

    .line 229
    sget-object v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mContext:Landroid/content/Context;

    .line 234
    const v1, 0x7f06003a

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->addPreferencesFromResource(I)V

    .line 235
    const-string v1, "batteryinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 237
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mUm:Landroid/os/UserManager;

    .line 241
    const-string v1, "app_list"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 242
    const-string v1, "graph"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mGraphGroup:Landroid/preference/PreferenceGroup;

    .line 243
    new-instance v1, Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 248
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->useOnBatteryPref:Landroid/preference/Preference;

    .line 249
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->useOnBatteryPref:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 250
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->useOnBatteryPref:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 251
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->useOnBatteryPref:Landroid/preference/Preference;

    const v2, 0x7f0201a8

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIcon(I)V

    .line 253
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->expectedTimePref:Landroid/preference/Preference;

    .line 254
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->expectedTimePref:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 255
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->expectedTimePref:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 256
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->expectedTimePref:Landroid/preference/Preference;

    const v2, 0x7f0201a9

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIcon(I)V

    .line 258
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->lastTimePref:Landroid/preference/Preference;

    .line 259
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->lastTimePref:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 260
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->lastTimePref:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 261
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->lastTimePref:Landroid/preference/Preference;

    const v2, 0x7f0201ac

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIcon(I)V

    .line 263
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f081253

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStringUse:Ljava/lang/String;

    .line 264
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f081255

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStringNoData:Ljava/lang/String;

    .line 266
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 267
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 277
    :cond_1
    :goto_0
    return-void

    .line 272
    :cond_2
    if-eqz v0, :cond_1

    .line 273
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f081216

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x0

    .line 498
    const/4 v4, 0x2

    const v5, 0x7f0806c5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f0201bc

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v5, 0x72

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    .line 501
    .local v3, refresh:Landroid/view/MenuItem;
    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 504
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080886

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, helpUrl:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 505
    const/4 v4, 0x3

    const v5, 0x7f08087f

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 506
    .local v0, help:Landroid/view/MenuItem;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 507
    .local v1, helpIntent:Landroid/content/Intent;
    const/high16 v4, 0x1080

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 509
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 510
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 512
    .end local v0           #help:Landroid/view/MenuItem;
    .end local v1           #helpIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->recycleView(Landroid/view/View;)V

    .line 328
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 330
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 331
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sput-object v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    .line 334
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 516
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 536
    :goto_0
    return v0

    .line 518
    :sswitch_0
    iget v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    if-nez v2, :cond_0

    .line 519
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    .line 523
    :goto_1
    invoke-direct {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->refreshStats()V

    goto :goto_0

    .line 521
    :cond_0
    iput v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    goto :goto_1

    .line 527
    :sswitch_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 528
    invoke-direct {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->refreshStats()V

    goto :goto_0

    .line 532
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 516
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 309
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 310
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mAbort:Z

    .line 311
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 317
    sput v3, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->lastState:I

    .line 318
    sput v3, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->curState:I

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->first:Z

    .line 321
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 322
    return-void

    .line 311
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x6

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 347
    instance-of v0, p2, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference;

    if-nez v0, :cond_0

    .line 488
    :goto_0
    return v6

    :cond_0
    move-object v0, p2

    .line 350
    check-cast v0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference;

    .line 351
    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/lgesettings/fuelgauge/BatterySipper;

    move-result-object v3

    .line 352
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 353
    const-string v0, "title"

    iget-object v1, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v0, "percent"

    invoke-virtual {v3}, Lcom/android/lgesettings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v4

    const-wide/high16 v7, 0x4059

    mul-double/2addr v4, v7

    iget-wide v7, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mTotalPower:D

    div-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 356
    const-string v0, "gauge"

    invoke-virtual {v3}, Lcom/android/lgesettings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v4

    const-wide/high16 v7, 0x4059

    mul-double/2addr v4, v7

    iget-wide v7, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mTotalPower:D

    div-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 358
    const-string v0, "duration"

    iget-wide v4, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsPeriod:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 359
    const-string v0, "iconPackage"

    iget-object v1, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v0, "iconId"

    iget v1, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->iconId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 361
    const-string v0, "noCoverage"

    iget-wide v4, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 362
    iget-object v0, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_1

    .line 363
    const-string v0, "uid"

    iget-object v1, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 365
    :cond_1
    const-string v0, "drainType"

    iget-object v1, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->drainType:Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 369
    sget-object v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$5;->$SwitchMap$com$android$settings$fuelgauge$PowerUsageDetail$DrainType:[I

    iget-object v1, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->drainType:Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v1}, Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 474
    new-array v1, v9, [I

    const v0, 0x7f0806aa

    aput v0, v1, v6

    .line 477
    new-array v0, v9, [D

    iget-wide v3, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v3, v3

    aput-wide v3, v0, v6

    .line 482
    :cond_2
    :goto_1
    const-string v3, "types"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 483
    const-string v1, "values"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 484
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 485
    const-class v1, Lcom/android/lgesettings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080696

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 488
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto/16 :goto_0

    .line 373
    :pswitch_0
    iget-object v4, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 374
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 385
    const/16 v0, 0x9

    new-array v0, v0, [D

    iget-wide v7, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v7, v7

    aput-wide v7, v0, v6

    iget-wide v7, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v7, v7

    aput-wide v7, v0, v9

    iget-wide v7, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v7, v7

    aput-wide v7, v0, v10

    iget-wide v7, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->gpsTime:J

    long-to-double v7, v7

    aput-wide v7, v0, v12

    const/4 v5, 0x4

    iget-wide v7, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->wifiRunningTime:J

    long-to-double v7, v7

    aput-wide v7, v0, v5

    const/4 v5, 0x5

    iget-wide v7, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v7, v7

    aput-wide v7, v0, v5

    iget-wide v7, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v7, v7

    aput-wide v7, v0, v11

    const/4 v5, 0x7

    const-wide/16 v7, 0x0

    aput-wide v7, v0, v5

    const/16 v5, 0x8

    const-wide/16 v7, 0x0

    aput-wide v7, v0, v5

    .line 398
    :try_start_0
    iget-object v3, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->drainType:Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;

    sget-object v5, Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;

    if-ne v3, v5, :cond_2

    .line 399
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 400
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 402
    if-eqz v4, :cond_3

    .line 403
    iget-object v7, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-string v8, ""

    iget v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v10

    invoke-virtual {v7, v5, v8, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 406
    :cond_3
    const-string v5, "report_details"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 409
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 411
    if-eqz v4, :cond_4

    .line 412
    iget-object v7, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v8, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-virtual {v7, v5, v8, v4}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    .line 414
    :cond_4
    const-string v4, "report_checkin_details"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 417
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 424
    :pswitch_1
    new-array v1, v10, [I

    fill-array-data v1, :array_1

    .line 428
    new-array v0, v10, [D

    iget-wide v4, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v6

    iget-wide v3, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->noCoveragePercent:D

    aput-wide v3, v0, v9

    goto/16 :goto_1

    .line 436
    :pswitch_2
    new-array v1, v11, [I

    fill-array-data v1, :array_2

    .line 444
    new-array v0, v11, [D

    iget-wide v4, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v6

    iget-wide v4, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v9

    iget-wide v4, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v10

    iget-wide v4, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v12

    const/4 v4, 0x4

    iget-wide v7, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v7, v7

    aput-wide v7, v0, v4

    const/4 v4, 0x5

    iget-wide v7, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v7, v7

    aput-wide v7, v0, v4

    goto/16 :goto_1

    .line 455
    :pswitch_3
    new-array v1, v11, [I

    fill-array-data v1, :array_3

    .line 463
    new-array v0, v11, [D

    iget-wide v4, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v6

    iget-wide v4, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v9

    iget-wide v4, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v10

    iget-wide v4, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v12

    const/4 v4, 0x4

    iget-wide v7, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v7, v7

    aput-wide v7, v0, v4

    const/4 v4, 0x5

    iget-wide v7, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v7, v7

    aput-wide v7, v0, v4

    goto/16 :goto_1

    .line 369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 374
    :array_0
    .array-data 0x4
        0xa0t 0x6t 0x8t 0x7ft
        0xa1t 0x6t 0x8t 0x7ft
        0xa2t 0x6t 0x8t 0x7ft
        0xa3t 0x6t 0x8t 0x7ft
        0xa4t 0x6t 0x8t 0x7ft
        0xa6t 0x6t 0x8t 0x7ft
        0xa7t 0x6t 0x8t 0x7ft
        0xa8t 0x6t 0x8t 0x7ft
        0xa9t 0x6t 0x8t 0x7ft
    .end array-data

    .line 424
    :array_1
    .array-data 0x4
        0xaat 0x6t 0x8t 0x7ft
        0xabt 0x6t 0x8t 0x7ft
    .end array-data

    .line 436
    :array_2
    .array-data 0x4
        0xa4t 0x6t 0x8t 0x7ft
        0xa0t 0x6t 0x8t 0x7ft
        0xa1t 0x6t 0x8t 0x7ft
        0xa2t 0x6t 0x8t 0x7ft
        0xa6t 0x6t 0x8t 0x7ft
        0xa7t 0x6t 0x8t 0x7ft
    .end array-data

    .line 455
    :array_3
    .array-data 0x4
        0xaat 0x6t 0x8t 0x7ft
        0xa0t 0x6t 0x8t 0x7ft
        0xa1t 0x6t 0x8t 0x7ft
        0xa2t 0x6t 0x8t 0x7ft
        0xa6t 0x6t 0x8t 0x7ft
        0xa7t 0x6t 0x8t 0x7ft
    .end array-data
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 281
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 282
    iput-boolean v4, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mAbort:Z

    .line 285
    sput v2, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->lastState:I

    .line 286
    sput v2, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->curState:I

    .line 287
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->first:Z

    .line 289
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 290
    invoke-direct {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->refreshStats()V

    .line 293
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 294
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v2, "refresh"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 298
    iput-boolean v4, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->onRotation:Z

    .line 300
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/SettingsBreadCrumb;->get(Landroid/app/Activity;)Lcom/android/lgesettings/SettingsBreadCrumb;

    move-result-object v0

    .line 302
    .local v0, breadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;
    const v2, 0x7f081216

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/SettingsBreadCrumb;->setTitle(Ljava/lang/String;)V

    .line 305
    .end local v0           #breadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;
    :cond_0
    return-void
.end method

.method public onTreeClick(Landroid/preference/Preference;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x6

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 1352
    instance-of v0, p1, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;

    if-nez v0, :cond_0

    .line 1462
    :goto_0
    return-void

    .line 1355
    :cond_0
    check-cast p1, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;

    .line 1356
    invoke-virtual {p1}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->getInfo()Lcom/android/lgesettings/fuelgauge/BatterySipper;

    move-result-object v3

    .line 1357
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1358
    const-string v0, "title"

    iget-object v1, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    const-string v0, "percent"

    invoke-virtual {v3}, Lcom/android/lgesettings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v4

    const-wide/high16 v7, 0x4059

    mul-double/2addr v4, v7

    iget-wide v7, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mTotalPower:D

    div-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1362
    const-string v0, "gauge"

    invoke-virtual {v3}, Lcom/android/lgesettings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v4

    const-wide/high16 v7, 0x4059

    mul-double/2addr v4, v7

    iget-wide v7, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mTotalPower:D

    div-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1365
    const-string v0, "duration"

    iget-wide v4, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsPeriod:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1366
    const-string v0, "iconPackage"

    iget-object v1, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    const-string v0, "iconId"

    iget v1, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->iconId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1369
    const-string v0, "noCoverage"

    iget-wide v4, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1371
    iget-object v0, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_1

    .line 1372
    const-string v0, "uid"

    iget-object v1, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1374
    :cond_1
    const-string v0, "drainType"

    iget-object v1, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->drainType:Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1379
    sget-object v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$5;->$SwitchMap$com$android$settings$fuelgauge$PowerUsageDetail$DrainType:[I

    iget-object v1, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->drainType:Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v1}, Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1452
    :pswitch_0
    new-array v1, v9, [I

    const v0, 0x7f0806aa

    aput v0, v1, v6

    .line 1453
    new-array v0, v9, [D

    iget-wide v3, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v3, v3

    aput-wide v3, v0, v6

    .line 1457
    :goto_1
    const-string v3, "types"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1458
    const-string v1, "values"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 1459
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1460
    const-class v1, Lcom/android/lgesettings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080696

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 1381
    :pswitch_1
    iget-object v4, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 1382
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 1390
    const/16 v0, 0x9

    new-array v0, v0, [D

    iget-wide v7, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v7, v7

    aput-wide v7, v0, v6

    iget-wide v7, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v7, v7

    aput-wide v7, v0, v9

    iget-wide v7, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v7, v7

    aput-wide v7, v0, v10

    iget-wide v7, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->gpsTime:J

    long-to-double v7, v7

    aput-wide v7, v0, v12

    const/4 v5, 0x4

    iget-wide v7, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->wifiRunningTime:J

    long-to-double v7, v7

    aput-wide v7, v0, v5

    const/4 v5, 0x5

    iget-wide v7, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v7, v7

    aput-wide v7, v0, v5

    iget-wide v7, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v7, v7

    aput-wide v7, v0, v11

    const/4 v3, 0x7

    const-wide/16 v7, 0x0

    aput-wide v7, v0, v3

    const/16 v3, 0x8

    const-wide/16 v7, 0x0

    aput-wide v7, v0, v3

    .line 1396
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 1397
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1399
    if-eqz v4, :cond_2

    .line 1400
    iget-object v7, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-string v8, ""

    iget v9, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v10

    invoke-virtual {v7, v5, v8, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 1403
    :cond_2
    const-string v5, "report_details"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 1407
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1409
    if-eqz v4, :cond_3

    .line 1410
    iget-object v7, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v8, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mStatsType:I

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-virtual {v7, v5, v8, v4}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    .line 1413
    :cond_3
    const-string v4, "report_checkin_details"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1418
    :pswitch_2
    new-array v1, v10, [I

    fill-array-data v1, :array_1

    .line 1421
    new-array v0, v10, [D

    iget-wide v4, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v6

    iget-wide v3, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->noCoveragePercent:D

    aput-wide v3, v0, v9

    goto/16 :goto_1

    .line 1425
    :pswitch_3
    new-array v1, v11, [I

    fill-array-data v1, :array_2

    .line 1432
    new-array v0, v11, [D

    iget-wide v4, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v6

    iget-wide v4, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v9

    iget-wide v4, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v10

    iget-wide v4, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v12

    const/4 v4, 0x4

    iget-wide v7, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v7, v7

    aput-wide v7, v0, v4

    const/4 v4, 0x5

    iget-wide v7, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v7, v7

    aput-wide v7, v0, v4

    goto/16 :goto_1

    .line 1438
    :pswitch_4
    new-array v1, v11, [I

    fill-array-data v1, :array_3

    .line 1445
    new-array v0, v11, [D

    iget-wide v4, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v6

    iget-wide v4, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v9

    iget-wide v4, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v10

    iget-wide v4, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v12

    const/4 v4, 0x4

    iget-wide v7, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v7, v7

    aput-wide v7, v0, v4

    const/4 v4, 0x5

    iget-wide v7, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v7, v7

    aput-wide v7, v0, v4

    goto/16 :goto_1

    .line 1379
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1382
    :array_0
    .array-data 0x4
        0xa0t 0x6t 0x8t 0x7ft
        0xa1t 0x6t 0x8t 0x7ft
        0xa2t 0x6t 0x8t 0x7ft
        0xa3t 0x6t 0x8t 0x7ft
        0xa4t 0x6t 0x8t 0x7ft
        0xa6t 0x6t 0x8t 0x7ft
        0xa7t 0x6t 0x8t 0x7ft
        0xa8t 0x6t 0x8t 0x7ft
        0xa9t 0x6t 0x8t 0x7ft
    .end array-data

    .line 1418
    :array_1
    .array-data 0x4
        0xaat 0x6t 0x8t 0x7ft
        0xabt 0x6t 0x8t 0x7ft
    .end array-data

    .line 1425
    :array_2
    .array-data 0x4
        0xa4t 0x6t 0x8t 0x7ft
        0xa0t 0x6t 0x8t 0x7ft
        0xa1t 0x6t 0x8t 0x7ft
        0xa2t 0x6t 0x8t 0x7ft
        0xa6t 0x6t 0x8t 0x7ft
        0xa7t 0x6t 0x8t 0x7ft
    .end array-data

    .line 1438
    :array_3
    .array-data 0x4
        0xaat 0x6t 0x8t 0x7ft
        0xa0t 0x6t 0x8t 0x7ft
        0xa1t 0x6t 0x8t 0x7ft
        0xa2t 0x6t 0x8t 0x7ft
        0xa6t 0x6t 0x8t 0x7ft
        0xa7t 0x6t 0x8t 0x7ft
    .end array-data
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1315
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1316
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mAbort:Z

    if-eqz v1, :cond_1

    .line 1317
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mRequestThread:Ljava/lang/Thread;

    .line 1318
    monitor-exit v2

    return-void

    .line 1320
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->mRequestQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;

    .line 1321
    .local v0, bs:Lcom/android/lgesettings/fuelgauge/BatterySipper;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1322
    invoke-virtual {v0}, Lcom/android/lgesettings/fuelgauge/BatterySipper;->getNameIcon()V

    goto :goto_0

    .line 1321
    .end local v0           #bs:Lcom/android/lgesettings/fuelgauge/BatterySipper;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
