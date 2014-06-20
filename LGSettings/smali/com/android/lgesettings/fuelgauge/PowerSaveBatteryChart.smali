.class public Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;
.super Landroid/view/View;
.source "PowerSaveBatteryChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart$ChartData;
    }
.end annotation


# instance fields
.field final mBatCriticalPath:Landroid/graphics/Path;

.field final mBatGoodPath:Landroid/graphics/Path;

.field mBatHigh:I

.field final mBatLevelPath:Landroid/graphics/Path;

.field mBatLow:I

.field final mBatWarnPath:Landroid/graphics/Path;

.field final mBatteryBackgroundPaint:Landroid/graphics/Paint;

.field final mBatteryCriticalPaint:Landroid/graphics/Paint;

.field final mBatteryGoodPaint:Landroid/graphics/Paint;

.field final mBatteryWarnPaint:Landroid/graphics/Paint;

.field mChargingLabel:Ljava/lang/String;

.field mChargingOffset:I

.field final mChargingPaint:Landroid/graphics/Paint;

.field final mChargingPath:Landroid/graphics/Path;

.field private mContentResolver:Landroid/content/ContentResolver;

.field mDurationString:Ljava/lang/String;

.field mDurationStringWidth:I

.field mGpsOnLabel:Ljava/lang/String;

.field mGpsOnOffset:I

.field final mGpsOnPaint:Landroid/graphics/Paint;

.field final mGpsOnPath:Landroid/graphics/Path;

.field mHaveGps:Z

.field mHavePhoneSignal:Z

.field mHaveWifi:Z

.field mHistEnd:J

.field mHistStart:J

.field mLargeMode:Z

.field mLevelBottom:I

.field mLevelOffset:I

.field mLevelTop:I

.field mLineWidth:I

.field mNumHist:I

.field final mPhoneSignalChart:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart$ChartData;

.field mPhoneSignalLabel:Ljava/lang/String;

.field mPhoneSignalOffset:I

.field mScreenOnLabel:Ljava/lang/String;

.field mScreenOnOffset:I

.field final mScreenOnPaint:Landroid/graphics/Paint;

.field final mScreenOnPath:Landroid/graphics/Path;

.field mStats:Landroid/os/BatteryStats;

.field mStatsPeriod:J

.field mTextAscent:I

.field mTextDescent:I

.field final mTextPaint:Landroid/text/TextPaint;

.field final mTextRedPaint:Landroid/text/TextPaint;

.field mThinLineWidth:I

.field mTotalDurationString:Ljava/lang/String;

.field mTotalDurationStringWidth:I

.field mWakeLockLabel:Ljava/lang/String;

.field mWakeLockOffset:I

.field final mWakeLockPaint:Landroid/graphics/Paint;

.field final mWakeLockPath:Landroid/graphics/Path;

.field mWifiRunningLabel:Ljava/lang/String;

.field mWifiRunningOffset:I

.field final mWifiRunningPaint:Landroid/graphics/Paint;

.field final mWifiRunningPath:Landroid/graphics/Path;

.field final paddingText10:I

.field final paddingText16:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 26
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 194
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/16 v21, 0x1

    const/high16 v22, 0x4180

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->paddingText16:I

    .line 48
    const/16 v21, 0x1

    const/high16 v22, 0x4120

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->paddingText10:I

    .line 123
    new-instance v21, Landroid/graphics/Paint;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    .line 124
    new-instance v21, Landroid/graphics/Paint;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    .line 125
    new-instance v21, Landroid/graphics/Paint;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    .line 126
    new-instance v21, Landroid/graphics/Paint;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    .line 127
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mChargingPaint:Landroid/graphics/Paint;

    .line 128
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    .line 129
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    .line 130
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    .line 131
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    .line 132
    new-instance v21, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart$ChartData;

    invoke-direct/range {v21 .. v21}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart$ChartData;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mPhoneSignalChart:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart$ChartData;

    .line 133
    new-instance v21, Landroid/text/TextPaint;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 135
    new-instance v21, Landroid/text/TextPaint;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextRedPaint:Landroid/text/TextPaint;

    .line 137
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 138
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatGoodPath:Landroid/graphics/Path;

    .line 139
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatWarnPath:Landroid/graphics/Path;

    .line 140
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatCriticalPath:Landroid/graphics/Path;

    .line 141
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mChargingPath:Landroid/graphics/Path;

    .line 142
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mScreenOnPath:Landroid/graphics/Path;

    .line 143
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mGpsOnPath:Landroid/graphics/Path;

    .line 144
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWifiRunningPath:Landroid/graphics/Path;

    .line 145
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWakeLockPath:Landroid/graphics/Path;

    .line 195
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mContentResolver:Landroid/content/ContentResolver;

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, 0x80

    const/16 v23, 0x79

    const/16 v24, 0xe8

    const/16 v25, 0xff

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, 0x80

    const/16 v23, 0x0

    const/16 v24, 0xff

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, 0x80

    const/16 v23, 0xff

    const/16 v24, 0xff

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, 0xc0

    const/16 v23, 0xff

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, 0xff

    const/16 v23, 0x0

    const/16 v24, 0x80

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mPhoneSignalChart:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart$ChartData;

    move-object/from16 v21, v0

    const/16 v22, 0x7

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    fill-array-data v22, :array_0

    invoke-virtual/range {v21 .. v22}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart$ChartData;->setColors([I)V

    .line 220
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 221
    .local v12, instance:Landroid/content/res/Resources;
    if-eqz v12, :cond_0

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    invoke-virtual {v12}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v12           #instance:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    sget-object v21, Lcom/android/lgesettings/R$styleable;->BatteryHistoryChart:[I

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 234
    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    .line 235
    .local v17, textColor:Landroid/content/res/ColorStateList;
    const/16 v18, 0xf

    .line 236
    .local v18, textSize:I
    const/16 v20, -0x1

    .line 237
    .local v20, typefaceIndex:I
    const/16 v16, -0x1

    .line 239
    .local v16, styleIndex:I
    const/4 v7, 0x0

    .line 240
    .local v7, appearance:Landroid/content/res/TypedArray;
    const/16 v21, 0x0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 241
    .local v6, ap:I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v6, v0, :cond_1

    .line 242
    sget-object v21, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 246
    :cond_1
    if-eqz v7, :cond_3

    .line 247
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    .line 248
    .local v13, n:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v13, :cond_2

    .line 249
    invoke-virtual {v7, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 251
    .local v8, attr:I
    packed-switch v8, :pswitch_data_0

    .line 248
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 253
    :pswitch_0
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    .line 254
    goto :goto_2

    .line 257
    :pswitch_1
    move/from16 v0, v18

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    .line 258
    goto :goto_2

    .line 261
    :pswitch_2
    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    .line 262
    goto :goto_2

    .line 265
    :pswitch_3
    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 266
    goto :goto_2

    .line 272
    .end local v8           #attr:I
    :cond_2
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 275
    .end local v11           #i:I
    .end local v13           #n:I
    :cond_3
    const/4 v15, 0x0

    .line 276
    .local v15, shadowcolor:I
    const/4 v9, 0x0

    .line 277
    .local v9, dx:F
    const/4 v10, 0x0

    .line 278
    .local v10, dy:F
    const/4 v14, 0x0

    .line 280
    .local v14, r:F
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    .line 281
    .restart local v13       #n:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_3
    if-ge v11, v13, :cond_4

    .line 282
    invoke-virtual {v5, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 284
    .restart local v8       #attr:I
    packed-switch v8, :pswitch_data_1

    .line 281
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 286
    :pswitch_4
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 287
    goto :goto_4

    .line 290
    :pswitch_5
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 291
    goto :goto_4

    .line 294
    :pswitch_6
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 295
    goto :goto_4

    .line 298
    :pswitch_7
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    .line 299
    goto :goto_4

    .line 302
    :pswitch_8
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    .line 303
    goto :goto_4

    .line 306
    :pswitch_9
    move/from16 v0, v18

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    .line 307
    goto :goto_4

    .line 310
    :pswitch_a
    move/from16 v0, v20

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    .line 311
    goto :goto_4

    .line 314
    :pswitch_b
    move/from16 v0, v16

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 315
    goto :goto_4

    .line 321
    .end local v8           #attr:I
    :cond_4
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 324
    if-eqz v17, :cond_5

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/text/TextPaint;->setColor(I)V

    .line 327
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextRedPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    const/high16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/text/TextPaint;->setColor(I)V

    .line 330
    const/16 v19, 0x0

    .line 331
    .local v19, tf:Landroid/graphics/Typeface;
    packed-switch v20, :pswitch_data_2

    .line 347
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 349
    if-eqz v15, :cond_6

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v9, v10, v15}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 352
    :cond_6
    return-void

    .line 333
    :pswitch_c
    sget-object v19, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 334
    goto :goto_5

    .line 337
    :pswitch_d
    sget-object v19, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 338
    goto :goto_5

    .line 341
    :pswitch_e
    sget-object v19, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 342
    goto :goto_5

    .line 227
    .end local v5           #a:Landroid/content/res/TypedArray;
    .end local v6           #ap:I
    .end local v7           #appearance:Landroid/content/res/TypedArray;
    .end local v9           #dx:F
    .end local v10           #dy:F
    .end local v11           #i:I
    .end local v13           #n:I
    .end local v14           #r:F
    .end local v15           #shadowcolor:I
    .end local v16           #styleIndex:I
    .end local v17           #textColor:Landroid/content/res/ColorStateList;
    .end local v18           #textSize:I
    .end local v19           #tf:Landroid/graphics/Typeface;
    .end local v20           #typefaceIndex:I
    :catch_0
    move-exception v21

    goto/16 :goto_0

    .line 226
    :catch_1
    move-exception v21

    goto/16 :goto_0

    .line 214
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0xfft
        0x0t 0xa0t 0xa0t 0xfft
        0x20t 0x80t 0x80t 0xfft
        0x40t 0x80t 0x80t 0xfft
        0x60t 0x80t 0x80t 0xfft
        0x0t 0x80t 0x0t 0xfft
    .end array-data

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 284
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 331
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "levelh"
    .parameter "startX"
    .parameter "y"
    .parameter "curLevelPath"
    .parameter "lastX"
    .parameter "lastCharging"
    .parameter "lastScreenOn"
    .parameter "lastGpsOn"
    .parameter "lastWifiRunning"
    .parameter "lastWakeLock"
    .parameter "lastPath"

    .prologue
    .line 445
    if-eqz p6, :cond_2

    .line 446
    if-ltz p7, :cond_1

    if-ge p7, p1, :cond_1

    .line 447
    if-eqz p13, :cond_0

    .line 448
    int-to-float v1, p1

    int-to-float v2, p5

    move-object/from16 v0, p13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 450
    :cond_0
    int-to-float v1, p1

    int-to-float v2, p5

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 452
    :cond_1
    int-to-float v1, p1

    iget v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLevelTop:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 453
    int-to-float v1, p4

    iget v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLevelTop:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 454
    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    .line 457
    :cond_2
    if-eqz p8, :cond_3

    .line 458
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mChargingOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 460
    :cond_3
    if-eqz p9, :cond_4

    .line 461
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mScreenOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 463
    :cond_4
    if-eqz p10, :cond_5

    .line 464
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mGpsOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 466
    :cond_5
    if-eqz p11, :cond_6

    .line 467
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWifiRunningOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 469
    :cond_6
    if-eqz p12, :cond_7

    .line 470
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWakeLockPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWakeLockOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 472
    :cond_7
    iget-boolean v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mHavePhoneSignal:Z

    if-eqz v1, :cond_8

    .line 473
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mPhoneSignalChart:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart$ChartData;

    invoke-virtual {v1, p1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart$ChartData;->finish(I)V

    .line 475
    :cond_8
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 719
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 721
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->getWidth()I

    move-result v12

    .line 722
    .local v12, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->getHeight()I

    move-result v8

    .line 724
    .local v8, height:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatLevelPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 725
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLargeMode:Z

    if-eqz v1, :cond_6

    .line 727
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mDurationString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v13

    .line 728
    .local v13, withText:F
    add-int/lit8 v1, v12, -0xf

    int-to-float v1, v1

    cmpl-float v1, v13, v1

    if-lez v1, :cond_0

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mStatsPeriod:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v1, v2, v3}, Lcom/android/lgesettings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v7

    .line 730
    .local v7, durationString:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mDurationString:Ljava/lang/String;

    .line 734
    .end local v7           #durationString:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTotalDurationString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    .line 735
    .local v14, withTotalText:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTotalDurationStringWidth:I

    add-int/lit8 v2, v12, -0xf

    if-le v1, v2, :cond_1

    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mHistEnd:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mHistStart:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v1, v2, v3}, Lcom/android/lgesettings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v11

    .line 737
    .local v11, totalDurationString:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTotalDurationString:Ljava/lang/String;

    .line 738
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTotalDurationString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTotalDurationStringWidth:I

    .line 748
    .end local v11           #totalDurationString:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mDurationString:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextAscent:I

    neg-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->paddingText16:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 749
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTotalDurationString:Ljava/lang/String;

    div-int/lit8 v2, v12, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTotalDurationStringWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextAscent:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mThinLineWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->paddingText10:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 756
    .end local v13           #withText:F
    .end local v14           #withTotalText:F
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 757
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatGoodPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 759
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 760
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 762
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 763
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 789
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLargeMode:Z

    if-eqz v1, :cond_7

    .line 808
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    int-to-float v3, v1

    int-to-float v4, v12

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mThinLineWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 810
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLevelTop:I

    int-to-float v3, v1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mThinLineWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "power_save_mode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 815
    .local v10, powerSaveMode:I
    const/4 v9, 0x1

    .local v9, i:I
    :goto_1
    const/16 v1, 0xa

    if-ge v9, v1, :cond_7

    .line 816
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLevelTop:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLevelTop:I

    sub-int/2addr v2, v3

    mul-int/2addr v2, v9

    div-int/lit8 v2, v2, 0xa

    add-int v15, v1, v2

    .line 817
    .local v15, y:I
    const/4 v2, 0x0

    int-to-float v3, v15

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mThinLineWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v4, v1

    int-to-float v5, v15

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 818
    const/4 v1, -0x1

    if-le v10, v1, :cond_5

    rsub-int/lit8 v1, v9, 0xa

    mul-int/lit8 v1, v1, 0xa

    if-ne v10, v1, :cond_5

    .line 819
    const/4 v2, 0x0

    int-to-float v3, v15

    int-to-float v4, v12

    int-to-float v5, v15

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextRedPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 815
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 753
    .end local v9           #i:I
    .end local v10           #powerSaveMode:I
    .end local v15           #y:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mDurationString:Ljava/lang/String;

    div-int/lit8 v2, v12, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mDurationStringWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-int/lit8 v3, v8, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextAscent:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextAscent:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 823
    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 435
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 436
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mDurationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mDurationStringWidth:I

    .line 437
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTotalDurationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTotalDurationStringWidth:I

    .line 438
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextAscent:I

    .line 439
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextDescent:I

    .line 440
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 38
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 479
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 481
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->paddingText16:I

    add-int v26, v2, v3

    .line 483
    .local v26, textHeight:I
    const/4 v2, 0x1

    const/high16 v3, 0x4000

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mThinLineWidth:I

    .line 485
    mul-int/lit8 v2, v26, 0x6

    move/from16 v0, p2

    if-le v0, v2, :cond_a

    .line 486
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLargeMode:Z

    .line 487
    mul-int/lit8 v2, v26, 0xf

    move/from16 v0, p2

    if-le v0, v2, :cond_9

    .line 489
    div-int/lit8 v2, v26, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    .line 495
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->paddingText16:I

    add-int v2, v2, v26

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLevelTop:I

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v4, 0x20

    const/16 v36, 0x40

    const/16 v37, 0xff

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v4, 0x20

    const/16 v36, 0x40

    const/16 v37, 0xff

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v4, 0x20

    const/16 v36, 0x40

    const/16 v37, 0xff

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v4, 0x20

    const/16 v36, 0x40

    const/16 v37, 0xff

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 510
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    if-gtz v2, :cond_0

    .line 511
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    .line 513
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 523
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLargeMode:Z

    if-eqz v2, :cond_e

    .line 524
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    add-int v17, v26, v2

    .line 525
    .local v17, barOffset:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mChargingOffset:I

    .line 526
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mChargingOffset:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mScreenOnOffset:I

    .line 527
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mScreenOnOffset:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWakeLockOffset:I

    .line 528
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWakeLockOffset:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWifiRunningOffset:I

    .line 529
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mHaveWifi:Z

    if-eqz v2, :cond_b

    move/from16 v2, v17

    :goto_2
    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mGpsOnOffset:I

    .line 530
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mHaveGps:Z

    if-eqz v2, :cond_c

    move/from16 v2, v17

    :goto_3
    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mPhoneSignalOffset:I

    .line 531
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_d

    .end local v17           #barOffset:I
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLevelOffset:I

    .line 533
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_1

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mPhoneSignalChart:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart$ChartData;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart$ChartData;->init(I)V

    .line 547
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatLevelPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWakeLockPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 557
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mHistStart:J

    move-wide/from16 v29, v0

    .line 558
    .local v29, timeStart:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mHistEnd:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mHistStart:J

    move-wide/from16 v36, v0

    sub-long v27, v2, v36

    .line 560
    .local v27, timeChange:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatLow:I

    move/from16 v19, v0

    .line 561
    .local v19, batLow:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatHigh:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatLow:I

    sub-int v18, v2, v3

    .line 563
    .local v18, batChange:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLevelOffset:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLevelTop:I

    sub-int v5, v2, v3

    .line 564
    .local v5, levelh:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLevelTop:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLevelBottom:I

    .line 566
    const/16 v34, 0x0

    .line 567
    .local v34, x:I
    const/16 v35, 0x0

    .line 568
    .local v35, y:I
    const/4 v6, 0x0

    .line 569
    .local v6, startX:I
    const/4 v9, -0x1

    .line 570
    .local v9, lastX:I
    const/4 v7, -0x1

    .line 571
    .local v7, lastY:I
    const/16 v22, 0x0

    .line 572
    .local v22, i:I
    const/4 v8, 0x0

    .line 573
    .local v8, curLevelPath:Landroid/graphics/Path;
    const/4 v15, 0x0

    .line 574
    .local v15, lastLinePath:Landroid/graphics/Path;
    const/4 v10, 0x0

    .line 575
    .local v10, lastCharging:Z
    const/4 v11, 0x0

    .line 576
    .local v11, lastScreenOn:Z
    const/4 v12, 0x0

    .line 577
    .local v12, lastGpsOn:Z
    const/4 v13, 0x0

    .line 578
    .local v13, lastWifiRunning:Z
    const/4 v14, 0x0

    .line 579
    .local v14, lastWakeLock:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mNumHist:I

    move/from16 v16, v0

    .line 580
    .local v16, N:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 581
    new-instance v24, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v24 .. v24}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 582
    .end local v10           #lastCharging:Z
    .end local v11           #lastScreenOn:Z
    .end local v12           #lastGpsOn:Z
    .local v24, rec:Landroid/os/BatteryStats$HistoryItem;
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_1e

    .line 583
    move-object/from16 v0, v24

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 584
    move-object/from16 v0, v24

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v2, v2, v29

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v36, v0

    mul-long v2, v2, v36

    div-long v2, v2, v27

    long-to-int v0, v2

    move/from16 v34, v0

    .line 585
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLevelTop:I

    add-int/2addr v2, v5

    move-object/from16 v0, v24

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int v3, v3, v19

    add-int/lit8 v4, v5, -0x1

    mul-int/2addr v3, v4

    div-int v3, v3, v18

    sub-int v35, v2, v3

    .line 587
    move/from16 v0, v34

    if-eq v9, v0, :cond_8

    .line 589
    move/from16 v0, v35

    if-eq v7, v0, :cond_3

    .line 592
    move-object/from16 v0, v24

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v31, v0

    .line 593
    .local v31, value:B
    const/16 v2, 0xe

    move/from16 v0, v31

    if-gt v0, v2, :cond_f

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    .line 603
    .local v23, path:Landroid/graphics/Path;
    :goto_7
    move-object/from16 v0, v23

    if-eq v0, v15, :cond_11

    .line 604
    if-eqz v15, :cond_2

    .line 605
    move/from16 v0, v34

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 607
    :cond_2
    move/from16 v0, v34

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 608
    move-object/from16 v15, v23

    .line 613
    :goto_8
    if-nez v8, :cond_12

    .line 614
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 615
    move/from16 v0, v34

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 616
    move/from16 v6, v34

    .line 620
    :goto_9
    move/from16 v9, v34

    .line 621
    move/from16 v7, v35

    .line 624
    .end local v23           #path:Landroid/graphics/Path;
    .end local v31           #value:B
    :cond_3
    move-object/from16 v0, v24

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x8

    and-int/2addr v2, v3

    if-eqz v2, :cond_13

    const/16 v20, 0x1

    .line 626
    .local v20, charging:Z
    :goto_a
    move/from16 v0, v20

    if-eq v0, v10, :cond_4

    .line 627
    if-eqz v20, :cond_14

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mChargingPath:Landroid/graphics/Path;

    move/from16 v0, v34

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mChargingOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 632
    :goto_b
    move/from16 v10, v20

    .line 635
    :cond_4
    move-object/from16 v0, v24

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    if-eqz v2, :cond_15

    const/16 v25, 0x1

    .line 637
    .local v25, screenOn:Z
    :goto_c
    move/from16 v0, v25

    if-eq v0, v11, :cond_5

    .line 638
    if-eqz v25, :cond_16

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mScreenOnPath:Landroid/graphics/Path;

    move/from16 v0, v34

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mScreenOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 643
    :goto_d
    move/from16 v11, v25

    .line 646
    :cond_5
    move-object/from16 v0, v24

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    if-eqz v2, :cond_17

    const/16 v21, 0x1

    .line 648
    .local v21, gpsOn:Z
    :goto_e
    move/from16 v0, v21

    if-eq v0, v12, :cond_6

    .line 649
    if-eqz v21, :cond_18

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mGpsOnPath:Landroid/graphics/Path;

    move/from16 v0, v34

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mGpsOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 654
    :goto_f
    move/from16 v12, v21

    .line 657
    :cond_6
    move-object/from16 v0, v24

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x400

    and-int/2addr v2, v3

    if-eqz v2, :cond_19

    const/16 v33, 0x1

    .line 659
    .local v33, wifiRunning:Z
    :goto_10
    move/from16 v0, v33

    if-eq v0, v13, :cond_7

    .line 660
    if-eqz v33, :cond_1a

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move/from16 v0, v34

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWifiRunningOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 665
    :goto_11
    move/from16 v13, v33

    .line 668
    :cond_7
    move-object/from16 v0, v24

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x4000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1b

    const/16 v32, 0x1

    .line 670
    .local v32, wakeLock:Z
    :goto_12
    move/from16 v0, v32

    if-eq v0, v14, :cond_8

    .line 671
    if-eqz v32, :cond_1c

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWakeLockPath:Landroid/graphics/Path;

    move/from16 v0, v34

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWakeLockOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 676
    :goto_13
    move/from16 v14, v32

    .line 708
    .end local v20           #charging:Z
    .end local v21           #gpsOn:Z
    .end local v25           #screenOn:Z
    .end local v32           #wakeLock:Z
    .end local v33           #wifiRunning:Z
    :cond_8
    :goto_14
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_6

    .line 492
    .end local v5           #levelh:I
    .end local v6           #startX:I
    .end local v7           #lastY:I
    .end local v8           #curLevelPath:Landroid/graphics/Path;
    .end local v9           #lastX:I
    .end local v13           #lastWifiRunning:Z
    .end local v14           #lastWakeLock:Z
    .end local v15           #lastLinePath:Landroid/graphics/Path;
    .end local v16           #N:I
    .end local v18           #batChange:I
    .end local v19           #batLow:I
    .end local v22           #i:I
    .end local v24           #rec:Landroid/os/BatteryStats$HistoryItem;
    .end local v27           #timeChange:J
    .end local v29           #timeStart:J
    .end local v34           #x:I
    .end local v35           #y:I
    :cond_9
    div-int/lit8 v2, v26, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    goto/16 :goto_0

    .line 502
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLargeMode:Z

    .line 503
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mThinLineWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    .line 504
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLevelTop:I

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v36, 0x0

    const/16 v37, 0xff

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v36, 0x0

    const/16 v37, 0xff

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v36, 0x0

    const/16 v37, 0xff

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v36, 0x0

    const/16 v37, 0xff

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/16 :goto_1

    .line 529
    .restart local v17       #barOffset:I
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 530
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 531
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 537
    .end local v17           #barOffset:I
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWakeLockOffset:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mScreenOnOffset:I

    .line 539
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mChargingOffset:I

    .line 540
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mPhoneSignalOffset:I

    .line 541
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLineWidth:I

    mul-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mLevelOffset:I

    .line 542
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_1

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mPhoneSignalChart:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart$ChartData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart$ChartData;->init(I)V

    goto/16 :goto_5

    .line 596
    .restart local v5       #levelh:I
    .restart local v6       #startX:I
    .restart local v7       #lastY:I
    .restart local v8       #curLevelPath:Landroid/graphics/Path;
    .restart local v9       #lastX:I
    .restart local v13       #lastWifiRunning:Z
    .restart local v14       #lastWakeLock:Z
    .restart local v15       #lastLinePath:Landroid/graphics/Path;
    .restart local v16       #N:I
    .restart local v18       #batChange:I
    .restart local v19       #batLow:I
    .restart local v22       #i:I
    .restart local v24       #rec:Landroid/os/BatteryStats$HistoryItem;
    .restart local v27       #timeChange:J
    .restart local v29       #timeStart:J
    .restart local v31       #value:B
    .restart local v34       #x:I
    .restart local v35       #y:I
    :cond_f
    const/16 v2, 0x1d

    move/from16 v0, v31

    if-gt v0, v2, :cond_10

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    .restart local v23       #path:Landroid/graphics/Path;
    goto/16 :goto_7

    .line 600
    .end local v23           #path:Landroid/graphics/Path;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatGoodPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    .restart local v23       #path:Landroid/graphics/Path;
    goto/16 :goto_7

    .line 610
    :cond_11
    move/from16 v0, v34

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_8

    .line 618
    :cond_12
    move/from16 v0, v34

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9

    .line 624
    .end local v23           #path:Landroid/graphics/Path;
    .end local v31           #value:B
    :cond_13
    const/16 v20, 0x0

    goto/16 :goto_a

    .line 630
    .restart local v20       #charging:Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mChargingPath:Landroid/graphics/Path;

    move/from16 v0, v34

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mChargingOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_b

    .line 635
    :cond_15
    const/16 v25, 0x0

    goto/16 :goto_c

    .line 641
    .restart local v25       #screenOn:Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mScreenOnPath:Landroid/graphics/Path;

    move/from16 v0, v34

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mScreenOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_d

    .line 646
    :cond_17
    const/16 v21, 0x0

    goto/16 :goto_e

    .line 652
    .restart local v21       #gpsOn:Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mGpsOnPath:Landroid/graphics/Path;

    move/from16 v0, v34

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mGpsOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_f

    .line 657
    :cond_19
    const/16 v33, 0x0

    goto/16 :goto_10

    .line 663
    .restart local v33       #wifiRunning:Z
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move/from16 v0, v34

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWifiRunningOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_11

    .line 668
    :cond_1b
    const/16 v32, 0x0

    goto/16 :goto_12

    .line 674
    .restart local v32       #wakeLock:Z
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWakeLockPath:Landroid/graphics/Path;

    move/from16 v0, v34

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWakeLockOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_13

    .line 696
    .end local v20           #charging:Z
    .end local v21           #gpsOn:Z
    .end local v25           #screenOn:Z
    .end local v32           #wakeLock:Z
    .end local v33           #wifiRunning:Z
    :cond_1d
    move-object/from16 v0, v24

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    .line 697
    if-eqz v8, :cond_8

    .line 698
    add-int/lit8 v3, v34, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v15}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    .line 701
    const/4 v7, -0x1

    move v9, v7

    .line 702
    const/4 v8, 0x0

    .line 703
    const/4 v15, 0x0

    .line 704
    const/4 v14, 0x0

    move v12, v14

    .local v12, lastGpsOn:I
    move v11, v14

    .local v11, lastScreenOn:I
    move v10, v14

    .local v10, lastCharging:I
    goto/16 :goto_14

    .end local v10           #lastCharging:I
    .end local v11           #lastScreenOn:I
    .end local v12           #lastGpsOn:I
    .end local v24           #rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_1e
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    .line 712
    invoke-virtual/range {v2 .. v15}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    .line 715
    return-void
.end method

.method setStats(Landroid/os/BatteryStats;)V
    .locals 17
    .parameter "stats"

    .prologue
    .line 376
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mStats:Landroid/os/BatteryStats;

    .line 378
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mStats:Landroid/os/BatteryStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v10

    .line 380
    .local v10, uSecTime:J
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mStatsPeriod:J

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mStatsPeriod:J

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    long-to-double v13, v13

    invoke-static {v12, v13, v14}, Lcom/android/lgesettings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v3

    .line 382
    .local v3, durationString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f080688

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mDurationString:Ljava/lang/String;

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f08068a

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mChargingLabel:Ljava/lang/String;

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f08068b

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mScreenOnLabel:Ljava/lang/String;

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f08068c

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mGpsOnLabel:Ljava/lang/String;

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f08068d

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWifiRunningLabel:Ljava/lang/String;

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f08068e

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mWakeLockLabel:Ljava/lang/String;

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f08068f

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mPhoneSignalLabel:Ljava/lang/String;

    .line 391
    const/4 v7, 0x0

    .line 392
    .local v7, pos:I
    const/4 v5, 0x0

    .line 393
    .local v5, lastInteresting:I
    const/4 v6, -0x1

    .line 394
    .local v6, lastLevel:B
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatLow:I

    .line 395
    const/16 v12, 0x64

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mBatHigh:I

    .line 396
    const/4 v2, 0x0

    .line 397
    .local v2, aggrStates:I
    const/4 v4, 0x1

    .line 398
    .local v4, first:Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 399
    new-instance v8, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v8}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 400
    .local v8, rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 401
    add-int/lit8 v7, v7, 0x1

    .line 402
    iget-byte v12, v8, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 403
    if-eqz v4, :cond_1

    .line 404
    const/4 v4, 0x0

    .line 405
    iget-wide v12, v8, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mHistStart:J

    .line 407
    :cond_1
    iget-byte v12, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v12, v6, :cond_2

    const/4 v12, 0x1

    if-ne v7, v12, :cond_3

    .line 408
    :cond_2
    iget-byte v6, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 410
    :cond_3
    move v5, v7

    .line 411
    iget-wide v12, v8, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mHistEnd:J

    .line 412
    iget v12, v8, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v2, v12

    goto :goto_0

    .line 416
    .end local v8           #rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_4
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mNumHist:I

    .line 417
    const/high16 v12, 0x1000

    and-int/2addr v12, v2

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mHaveGps:Z

    .line 418
    const/high16 v12, 0x400

    and-int/2addr v12, v2

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mHaveWifi:Z

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 420
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mHavePhoneSignal:Z

    .line 422
    :cond_5
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mHistEnd:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mHistStart:J

    cmp-long v12, v12, v14

    if-gtz v12, :cond_6

    .line 423
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mHistStart:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mHistEnd:J

    .line 427
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mHistEnd:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mHistStart:J

    sub-long/2addr v13, v15

    long-to-double v13, v13

    invoke-static {v12, v13, v14}, Lcom/android/lgesettings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v9

    .line 428
    .local v9, totalDurationString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f081226

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTotalDurationString:Ljava/lang/String;

    .line 431
    return-void

    .line 417
    .end local v9           #totalDurationString:Ljava/lang/String;
    :cond_7
    const/4 v12, 0x0

    goto :goto_1

    .line 418
    :cond_8
    const/4 v12, 0x0

    goto :goto_2
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .parameter "tf"
    .parameter "style"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 355
    if-lez p2, :cond_4

    .line 356
    if-nez p1, :cond_1

    .line 357
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 362
    :goto_0
    iget-object v4, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 364
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 365
    .local v1, typefaceStyle:I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 366
    .local v0, need:I
    iget-object v4, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 367
    iget-object v4, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x4180

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 373
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :goto_3
    return-void

    .line 359
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 364
    goto :goto_1

    .restart local v0       #need:I
    .restart local v1       #typefaceStyle:I
    :cond_3
    move v2, v3

    .line 367
    goto :goto_2

    .line 369
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_4
    iget-object v4, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 370
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 371
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_3
.end method
