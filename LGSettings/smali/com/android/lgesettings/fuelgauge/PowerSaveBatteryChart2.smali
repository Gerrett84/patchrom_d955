.class public Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;
.super Landroid/widget/HorizontalScrollView;
.source "PowerSaveBatteryChart2.java"


# instance fields
.field public final DEFAULT_LINE:I

.field public final ESTIMATE_LINE:I

.field private chargingDefaultstate:I

.field private dischargingDefaultstate:I

.field final graphPadding:I

.field private lastLevel:I

.field private lastLevelPositon:I

.field private lastStatus:I

.field private lastTime:J

.field private lastTimePosition:I

.field final mAxisPaint:Landroid/graphics/Paint;

.field private final mBatBackgroundPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field final mBatEstimateChargingLevelPath:Landroid/graphics/Path;

.field final mBatEstimateDischargingLevelPath:Landroid/graphics/Path;

.field mBatHigh:I

.field final mBatLevelPath:Landroid/graphics/Path;

.field mBatLow:I

.field private final mBatPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field final mBatteryBackgroundPaint:Landroid/graphics/Paint;

.field final mBatteryEstimatePaint:Landroid/graphics/Paint;

.field final mBatteryGoodPaint:Landroid/graphics/Paint;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEstimateChargingTime:J

.field private mEstimateDischargingTime:J

.field final mGrayPaint:Landroid/graphics/Paint;

.field mHistEnd:J

.field mHistStart:J

.field mLargeMode:Z

.field mLevelBottom:I

.field mLevelOffset:I

.field mLevelTop:I

.field mLineWidth:I

.field mNumHist:I

.field private mRefDateLayout:Landroid/text/Layout;

.field private mRefLayout:Landroid/text/Layout;

.field private mRefLevelLayout:Landroid/text/Layout;

.field private mRefTimeLayout:Landroid/text/Layout;

.field mStats:Landroid/os/BatteryStats;

.field mStatsPeriod:J

.field mTextAscent:I

.field mTextDescent:I

.field final mTextPaint:Landroid/text/TextPaint;

.field mThinLineWidth:I

.field private final minRefTime:I

.field private final minTime:I

.field final now:Ljava/util/Calendar;

.field private onChargingTotalLevel:I

.field private onChargingTotalTime:J

.field private onDischargingTotalLevel:I

.field private onDischargingTotalTime:J

.field final padding:I

.field final paddingText18:I

.field final paddingText22:I

.field private realTimeGraphWidth:D

.field private scrollPosition:I

.field private timeChange:J

.field private timeStart:J

.field private unitWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v8, 0x3f80

    const/16 v7, 0xbe

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 170
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/high16 v1, 0x4190

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->paddingText18:I

    .line 67
    const/high16 v1, 0x41b0

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->paddingText22:I

    .line 74
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    .line 75
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatteryGoodPaint:Landroid/graphics/Paint;

    .line 77
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatteryEstimatePaint:Landroid/graphics/Paint;

    .line 79
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mTextPaint:Landroid/text/TextPaint;

    .line 82
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mGrayPaint:Landroid/graphics/Paint;

    .line 83
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mAxisPaint:Landroid/graphics/Paint;

    .line 85
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatEstimateDischargingLevelPath:Landroid/graphics/Path;

    .line 86
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatEstimateChargingLevelPath:Landroid/graphics/Path;

    .line 88
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatLevelPath:Landroid/graphics/Path;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatBackgroundPath:Ljava/util/List;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatPath:Ljava/util/List;

    .line 121
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->minTime:I

    .line 122
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->minRefTime:I

    .line 124
    iput v4, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onDischargingTotalLevel:I

    .line 125
    iput-wide v5, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onDischargingTotalTime:J

    .line 127
    iput v4, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onChargingTotalLevel:I

    .line 128
    iput-wide v5, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onChargingTotalTime:J

    .line 130
    iput v4, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastStatus:I

    .line 131
    iput v4, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastLevel:I

    .line 132
    iput-wide v5, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastTime:J

    .line 134
    iput-wide v5, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mEstimateDischargingTime:J

    .line 135
    iput-wide v5, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mEstimateChargingTime:J

    .line 142
    const v1, 0x40533333

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->padding:I

    .line 144
    const/high16 v1, 0x4218

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->graphPadding:I

    .line 147
    iput v4, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->DEFAULT_LINE:I

    .line 148
    iput v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->ESTIMATE_LINE:I

    .line 150
    iput v4, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->chargingDefaultstate:I

    .line 151
    iput v4, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->dischargingDefaultstate:I

    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->now:Ljava/util/Calendar;

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+24"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f081260

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mRefTimeLayout:Landroid/text/Layout;

    .line 163
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->now:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mRefDateLayout:Landroid/text/Layout;

    .line 164
    const-string v1, "100%"

    invoke-direct {p0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mRefLevelLayout:Landroid/text/Layout;

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mContentResolver:Landroid/content/ContentResolver;

    .line 174
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    const/16 v2, 0x33

    invoke-virtual {v1, v2, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 176
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatteryGoodPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0x3d

    const/16 v4, 0xc4

    const/16 v5, 0xe2

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 178
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatteryGoodPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1, v8}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 182
    .local v0, dashEffect:Landroid/graphics/DashPathEffect;
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatteryEstimatePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 183
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatteryEstimatePaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0x3d

    const/16 v4, 0xc4

    const/16 v5, 0xe2

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 184
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatteryEstimatePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 188
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mGrayPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 191
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mRefTimeLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mRefDateLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mRefTimeLayout:Landroid/text/Layout;

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mRefLayout:Landroid/text/Layout;

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mRefDateLayout:Landroid/text/Layout;

    iput-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mRefLayout:Landroid/text/Layout;

    goto :goto_0

    .line 181
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method private generatePath(II)V
    .locals 37
    .parameter "w"
    .parameter "h"

    .prologue
    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatLevelPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatBackgroundPath:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatPath:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatEstimateDischargingLevelPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatEstimateChargingLevelPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 326
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatLow:I

    .line 327
    .local v14, batLow:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatHigh:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatLow:I

    sub-int v13, v2, v3

    .line 330
    .local v13, batChange:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->paddingText22:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelBottom:I

    .line 331
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelTop:I

    sub-int v5, v2, v3

    .line 333
    .local v5, levelh:I
    const/16 v31, 0x0

    .line 334
    .local v31, x:I
    const/16 v32, 0x0

    .line 335
    .local v32, y:I
    const/4 v6, 0x0

    .line 336
    .local v6, startX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mRefLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    div-int/lit8 v29, v2, 0x2

    .line 338
    .local v29, startPoint:I
    const/4 v9, -0x1

    .line 339
    .local v9, lastX:I
    const/4 v7, -0x1

    .line 340
    .local v7, lastY:I
    const/16 v21, 0x0

    .line 342
    .local v21, i:I
    move/from16 v0, v29

    int-to-double v2, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->realTimeGraphWidth:D

    move-wide/from16 v33, v0

    add-double v16, v2, v33

    .line 343
    .local v16, curTimePosition:D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->realTimeGraphWidth:D

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->unitWidth:I

    mul-int/lit8 v4, v4, 0xc

    int-to-double v0, v4

    move-wide/from16 v33, v0

    div-double v2, v2, v33

    double-to-int v2, v2

    add-int/lit8 v12, v2, 0x1

    .line 344
    .local v12, arraySize:I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->realTimeGraphWidth:D

    int-to-double v0, v12

    move-wide/from16 v33, v0

    div-double v2, v2, v33

    double-to-int v0, v2

    move/from16 v27, v0

    .line 345
    .local v27, pathWidth:I
    const/16 v26, 0x0

    .line 347
    .local v26, pathNum:I
    const-string v2, "PowerSaveBatteryChart2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arraySize : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v2, "PowerSaveBatteryChart2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pathWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/16 v23, 0x0

    .local v23, j:I
    :goto_0
    move/from16 v0, v23

    if-ge v0, v12, :cond_0

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatBackgroundPath:Ljava/util/List;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatPath:Ljava/util/List;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 355
    :cond_0
    const/4 v8, 0x0

    .line 356
    .local v8, curLevelPath:Landroid/graphics/Path;
    const/4 v10, 0x0

    .line 357
    .local v10, lastLinePath:Landroid/graphics/Path;
    const/16 v25, 0x0

    .line 358
    .local v25, path:Landroid/graphics/Path;
    const/16 v24, 0x0

    .line 359
    .local v24, paintPath:Landroid/graphics/Path;
    const/16 v20, 0x0

    .line 360
    .local v20, dischargingPath:Landroid/graphics/Path;
    const/4 v15, 0x0

    .line 362
    .local v15, chargingPath:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mNumHist:I

    .line 364
    .local v11, N:I
    const-string v2, "PowerSaveBatteryChart2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hist number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mNumHist:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v2, "PowerSaveBatteryChart2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "realTimeGraphWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->realTimeGraphWidth:D

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string v2, "PowerSaveBatteryChart2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unitWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->unitWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v2, "PowerSaveBatteryChart2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeChange : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->timeChange:J

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 370
    new-instance v28, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v28 .. v28}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 371
    .local v28, rec:Landroid/os/BatteryStats$HistoryItem;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v2

    if-eqz v2, :cond_e

    add-int/lit8 v22, v21, 0x1

    .end local v21           #i:I
    .local v22, i:I
    move/from16 v0, v21

    if-ge v0, v11, :cond_d

    .line 373
    move-object/from16 v0, v28

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 375
    move-object/from16 v0, v28

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->timeStart:J

    move-wide/from16 v33, v0

    sub-long v2, v2, v33

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->realTimeGraphWidth:D

    move-wide/from16 v33, v0

    mul-double v2, v2, v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->timeChange:J

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    long-to-double v0, v0

    move-wide/from16 v33, v0

    div-double v2, v2, v33

    double-to-int v2, v2

    add-int v31, v29, v2

    .line 376
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelBottom:I

    move-object/from16 v0, v28

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    mul-int/2addr v3, v5

    div-int/2addr v3, v13

    sub-int v32, v2, v3

    .line 380
    move/from16 v0, v31

    if-eq v9, v0, :cond_18

    .line 382
    move/from16 v0, v32

    if-eq v7, v0, :cond_18

    .line 384
    move-object/from16 v0, v28

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v30, v0

    .line 386
    .local v30, value:B
    move/from16 v0, v31

    int-to-double v2, v0

    add-int/lit8 v4, v26, 0x1

    int-to-double v0, v4

    move-wide/from16 v33, v0

    mul-double v33, v33, v16

    int-to-double v0, v12

    move-wide/from16 v35, v0

    div-double v33, v33, v35

    cmpl-double v2, v2, v33

    if-lez v2, :cond_1

    .line 387
    add-int/lit8 v2, v12, -0x1

    move/from16 v0, v26

    if-ge v0, v2, :cond_1

    .line 388
    add-int/lit8 v26, v26, 0x1

    .line 392
    :cond_1
    move/from16 v0, v31

    int-to-double v2, v0

    add-int/lit8 v4, v26, 0x1

    int-to-double v0, v4

    move-wide/from16 v33, v0

    mul-double v33, v33, v16

    int-to-double v0, v12

    move-wide/from16 v35, v0

    div-double v33, v33, v35

    cmpg-double v2, v2, v33

    if-gtz v2, :cond_2

    .line 393
    if-nez v26, :cond_8

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatPath:Ljava/util/List;

    move/from16 v0, v26

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    .end local v25           #path:Landroid/graphics/Path;
    check-cast v25, Landroid/graphics/Path;

    .line 395
    .restart local v25       #path:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatBackgroundPath:Ljava/util/List;

    move/from16 v0, v26

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #paintPath:Landroid/graphics/Path;
    check-cast v24, Landroid/graphics/Path;

    .line 412
    .restart local v24       #paintPath:Landroid/graphics/Path;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatEstimateDischargingLevelPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    .line 413
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatEstimateChargingLevelPath:Landroid/graphics/Path;

    .line 415
    move-object/from16 v0, v25

    if-eq v0, v10, :cond_9

    .line 416
    if-eqz v10, :cond_3

    .line 417
    move/from16 v0, v31

    int-to-float v2, v0

    move/from16 v0, v32

    int-to-float v3, v0

    invoke-virtual {v10, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 419
    :cond_3
    if-eqz v25, :cond_4

    .line 420
    move/from16 v0, v31

    int-to-float v2, v0

    move/from16 v0, v32

    int-to-float v3, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 422
    :cond_4
    move-object/from16 v10, v25

    .line 429
    :cond_5
    :goto_3
    if-nez v8, :cond_a

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatBackgroundPath:Ljava/util/List;

    move/from16 v0, v26

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #curLevelPath:Landroid/graphics/Path;
    check-cast v8, Landroid/graphics/Path;

    .line 432
    .restart local v8       #curLevelPath:Landroid/graphics/Path;
    move/from16 v0, v31

    int-to-float v2, v0

    move/from16 v0, v32

    int-to-float v3, v0

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 433
    move/from16 v6, v31

    .line 439
    :goto_4
    move-object/from16 v0, v28

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mHistEnd:J

    move-wide/from16 v33, v0

    const-wide/32 v35, 0xa4cb80

    sub-long v33, v33, v35

    cmp-long v2, v2, v33

    if-ltz v2, :cond_7

    .line 440
    move-object/from16 v0, v28

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastStatus:I

    if-ne v2, v3, :cond_7

    .line 441
    move-object/from16 v0, v28

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    move-object/from16 v0, v28

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    const/4 v3, 0x5

    if-ne v2, v3, :cond_b

    .line 443
    :cond_6
    move-object/from16 v0, v28

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastLevel:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_7

    .line 444
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onChargingTotalLevel:I

    move-object/from16 v0, v28

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastLevel:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onChargingTotalLevel:I

    .line 445
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onChargingTotalTime:J

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v33, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastTime:J

    move-wide/from16 v35, v0

    sub-long v33, v33, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->abs(J)J

    move-result-wide v33

    add-long v2, v2, v33

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onChargingTotalTime:J

    .line 456
    :cond_7
    :goto_5
    move-object/from16 v0, v28

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastStatus:I

    .line 457
    move-object/from16 v0, v28

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastLevel:I

    .line 458
    move-object/from16 v0, v28

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastTime:J

    .line 460
    move/from16 v9, v31

    .line 461
    move/from16 v7, v32

    move/from16 v21, v22

    .line 462
    .end local v22           #i:I
    .restart local v21       #i:I
    goto/16 :goto_1

    .line 397
    .end local v21           #i:I
    .restart local v22       #i:I
    :cond_8
    const-string v2, "hong"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pathNum : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatPath:Ljava/util/List;

    move/from16 v0, v26

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    .end local v25           #path:Landroid/graphics/Path;
    check-cast v25, Landroid/graphics/Path;

    .line 400
    .restart local v25       #path:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatBackgroundPath:Ljava/util/List;

    add-int/lit8 v3, v26, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_2

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatBackgroundPath:Ljava/util/List;

    add-int/lit8 v3, v26, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    move/from16 v0, v31

    int-to-float v3, v0

    move/from16 v0, v32

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatBackgroundPath:Ljava/util/List;

    add-int/lit8 v3, v26, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    move/from16 v0, v31

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelBottom:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatBackgroundPath:Ljava/util/List;

    add-int/lit8 v3, v26, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    int-to-float v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelBottom:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatBackgroundPath:Ljava/util/List;

    add-int/lit8 v3, v26, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 405
    const/4 v8, 0x0

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatBackgroundPath:Ljava/util/List;

    move/from16 v0, v26

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #paintPath:Landroid/graphics/Path;
    check-cast v24, Landroid/graphics/Path;

    .restart local v24       #paintPath:Landroid/graphics/Path;
    goto/16 :goto_2

    .line 424
    :cond_9
    if-eqz v25, :cond_5

    .line 425
    move/from16 v0, v31

    int-to-float v2, v0

    move/from16 v0, v32

    int-to-float v3, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_3

    .line 435
    :cond_a
    move/from16 v0, v31

    int-to-float v2, v0

    move/from16 v0, v32

    int-to-float v3, v0

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_4

    .line 448
    :cond_b
    move-object/from16 v0, v28

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastLevel:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_7

    .line 449
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onDischargingTotalLevel:I

    move-object/from16 v0, v28

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastLevel:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onDischargingTotalLevel:I

    .line 450
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onDischargingTotalTime:J

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v33, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastTime:J

    move-wide/from16 v35, v0

    sub-long v33, v33, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->abs(J)J

    move-result-wide v33

    add-long v2, v2, v33

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onDischargingTotalTime:J

    goto/16 :goto_5

    .line 465
    .end local v30           #value:B
    :cond_c
    move-object/from16 v0, v28

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x3

    if-eq v2, v3, :cond_18

    .line 466
    if-eqz v8, :cond_18

    .line 467
    add-int/lit8 v3, v31, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v10}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->finishPaths(IIIIILandroid/graphics/Path;ILandroid/graphics/Path;)V

    .line 468
    const/4 v7, -0x1

    move v9, v7

    .line 469
    const/4 v8, 0x0

    .line 470
    const/4 v10, 0x0

    move/from16 v21, v22

    .end local v22           #i:I
    .restart local v21       #i:I
    goto/16 :goto_1

    .end local v21           #i:I
    .restart local v22       #i:I
    :cond_d
    move/from16 v21, v22

    .line 478
    .end local v22           #i:I
    .end local v28           #rec:Landroid/os/BatteryStats$HistoryItem;
    .restart local v21       #i:I
    :cond_e
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mHistEnd:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->timeStart:J

    move-wide/from16 v33, v0

    sub-long v2, v2, v33

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->realTimeGraphWidth:D

    move-wide/from16 v33, v0

    mul-double v2, v2, v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->timeChange:J

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    long-to-double v0, v0

    move-wide/from16 v33, v0

    div-double v2, v2, v33

    double-to-int v2, v2

    add-int v9, v29, v2

    .line 479
    if-eqz v10, :cond_f

    .line 480
    int-to-float v2, v9

    int-to-float v3, v7

    invoke-virtual {v10, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 482
    :cond_f
    if-eqz v8, :cond_10

    .line 483
    int-to-float v2, v9

    int-to-float v3, v7

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 487
    :cond_10
    const-wide v2, 0x414b774000000000L

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->realTimeGraphWidth:D

    move-wide/from16 v33, v0

    mul-double v2, v2, v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->timeChange:J

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    long-to-double v0, v0

    move-wide/from16 v33, v0

    div-double v2, v2, v33

    double-to-int v2, v2

    sub-int v2, v9, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->scrollPosition:I

    .line 488
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastLevelPositon:I

    .line 489
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastTimePosition:I

    .line 492
    if-eqz v8, :cond_11

    .line 493
    int-to-float v2, v9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelBottom:I

    int-to-float v3, v3

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 494
    int-to-float v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelBottom:I

    int-to-float v3, v3

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 495
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 498
    :cond_11
    int-to-float v2, v9

    int-to-float v3, v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 499
    int-to-float v2, v9

    int-to-float v3, v7

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 502
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onDischargingTotalTime:J

    const-wide/32 v33, 0x2bf20

    cmp-long v2, v2, v33

    if-ltz v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onDischargingTotalLevel:I

    if-nez v2, :cond_14

    .line 503
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->dischargingDefaultstate:I

    .line 504
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastLevel:I

    int-to-long v2, v2

    const-wide/32 v33, 0x927c0

    mul-long v2, v2, v33

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mEstimateDischargingTime:J

    .line 510
    :goto_6
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mEstimateDischargingTime:J

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->unitWidth:I

    int-to-long v0, v4

    move-wide/from16 v33, v0

    mul-long v2, v2, v33

    const-wide/32 v33, 0x36ee80

    div-long v2, v2, v33

    long-to-int v2, v2

    add-int/2addr v2, v9

    move/from16 v0, p1

    if-ge v0, v2, :cond_15

    .line 511
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastLevel:I

    sub-int v3, p1, v9

    mul-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mEstimateDischargingTime:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->unitWidth:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    mul-long v3, v3, v33

    const-wide/32 v33, 0x36ee80

    div-long v3, v3, v33

    long-to-int v3, v3

    div-int/2addr v2, v3

    int-to-long v0, v2

    move-wide/from16 v18, v0

    .line 513
    .local v18, deltaY:J
    move/from16 v0, p1

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelBottom:I

    int-to-long v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastLevel:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    sub-long v33, v33, v18

    int-to-long v0, v5

    move-wide/from16 v35, v0

    mul-long v33, v33, v35

    int-to-long v0, v13

    move-wide/from16 v35, v0

    div-long v33, v33, v35

    sub-long v3, v3, v33

    long-to-float v3, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 517
    .end local v18           #deltaY:J
    :goto_7
    const-string v2, "PowerSaveBatteryChart2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDischargingTotalTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onDischargingTotalTime:J

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", onDischargingTotalLevel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onDischargingTotalLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mEstimateDischargingTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mEstimateDischargingTime:J

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onChargingTotalTime:J

    const-wide/32 v33, 0x2bf20

    cmp-long v2, v2, v33

    if-ltz v2, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onChargingTotalLevel:I

    if-nez v2, :cond_16

    .line 522
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->chargingDefaultstate:I

    .line 523
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatHigh:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastLevel:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/32 v33, 0x927c0

    mul-long v2, v2, v33

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mEstimateChargingTime:J

    .line 529
    :goto_8
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mEstimateChargingTime:J

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->unitWidth:I

    int-to-long v0, v4

    move-wide/from16 v33, v0

    mul-long v2, v2, v33

    const-wide/32 v33, 0x36ee80

    div-long v2, v2, v33

    long-to-int v2, v2

    add-int/2addr v2, v9

    move/from16 v0, p1

    if-ge v0, v2, :cond_17

    .line 530
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastLevel:I

    sub-int v3, p1, v9

    mul-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mEstimateChargingTime:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->unitWidth:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    mul-long v3, v3, v33

    const-wide/32 v33, 0x36ee80

    div-long v3, v3, v33

    long-to-int v3, v3

    div-int/2addr v2, v3

    int-to-long v0, v2

    move-wide/from16 v18, v0

    .line 532
    .restart local v18       #deltaY:J
    move/from16 v0, p1

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelBottom:I

    int-to-long v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastLevel:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    add-long v33, v33, v18

    int-to-long v0, v5

    move-wide/from16 v35, v0

    mul-long v33, v33, v35

    int-to-long v0, v13

    move-wide/from16 v35, v0

    div-long v33, v33, v35

    sub-long v3, v3, v33

    long-to-float v3, v3

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 537
    .end local v18           #deltaY:J
    :goto_9
    const-string v2, "PowerSaveBatteryChart2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChargingTotalTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onChargingTotalTime:J

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", onChargingTotalLevel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onChargingTotalLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mEstimateChargingTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mEstimateChargingTime:J

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return-void

    .line 506
    :cond_14
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->dischargingDefaultstate:I

    .line 507
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onDischargingTotalTime:J

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastLevel:I

    int-to-long v0, v4

    move-wide/from16 v33, v0

    mul-long v2, v2, v33

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onDischargingTotalLevel:I

    int-to-long v0, v4

    move-wide/from16 v33, v0

    div-long v2, v2, v33

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mEstimateDischargingTime:J

    goto/16 :goto_6

    .line 515
    :cond_15
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mEstimateDischargingTime:J

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->unitWidth:I

    int-to-long v0, v4

    move-wide/from16 v33, v0

    mul-long v2, v2, v33

    const-wide/32 v33, 0x36ee80

    div-long v2, v2, v33

    long-to-int v2, v2

    add-int/2addr v2, v9

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelBottom:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_7

    .line 525
    :cond_16
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->chargingDefaultstate:I

    .line 526
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onChargingTotalTime:J

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatHigh:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastLevel:I

    move/from16 v33, v0

    sub-int v4, v4, v33

    int-to-long v0, v4

    move-wide/from16 v33, v0

    mul-long v2, v2, v33

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onChargingTotalLevel:I

    int-to-long v0, v4

    move-wide/from16 v33, v0

    div-long v2, v2, v33

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mEstimateChargingTime:J

    goto/16 :goto_8

    .line 534
    :cond_17
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mEstimateChargingTime:J

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->unitWidth:I

    int-to-long v0, v4

    move-wide/from16 v33, v0

    mul-long v2, v2, v33

    const-wide/32 v33, 0x36ee80

    div-long v2, v2, v33

    long-to-int v2, v2

    add-int/2addr v2, v9

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelTop:I

    int-to-float v3, v3

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9

    .end local v21           #i:I
    .restart local v22       #i:I
    .restart local v28       #rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_18
    move/from16 v21, v22

    .end local v22           #i:I
    .restart local v21       #i:I
    goto/16 :goto_1
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 9
    .parameter "text"

    .prologue
    const/4 v7, 0x1

    .line 633
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 634
    .local v8, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v7}, Landroid/text/TextPaint;-><init>(I)V

    .line 635
    .local v2, paint:Landroid/text/TextPaint;
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v2, Landroid/text/TextPaint;->density:F

    .line 636
    invoke-virtual {v8}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 637
    const v0, 0x7f0c001e

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 638
    const/4 v0, 0x2

    const/high16 v1, 0x4120

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 641
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


# virtual methods
.method finishPaths(IIIIILandroid/graphics/Path;ILandroid/graphics/Path;)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "levelh"
    .parameter "startX"
    .parameter "y"
    .parameter "curLevelPath"
    .parameter "lastX"
    .parameter "lastPath"

    .prologue
    .line 258
    if-eqz p6, :cond_2

    .line 259
    if-ltz p7, :cond_1

    if-ge p7, p1, :cond_1

    .line 260
    if-eqz p8, :cond_0

    .line 261
    int-to-float v0, p1

    int-to-float v1, p5

    invoke-virtual {p8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 263
    :cond_0
    int-to-float v0, p1

    int-to-float v1, p5

    invoke-virtual {p6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 265
    :cond_1
    int-to-float v0, p1

    iget v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelTop:I

    add-int/2addr v1, p3

    int-to-float v1, v1

    invoke-virtual {p6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 266
    int-to-float v0, p4

    iget v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelTop:I

    add-int/2addr v1, p3

    int-to-float v1, v1

    invoke-virtual {p6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 267
    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    .line 269
    :cond_2
    return-void
.end method

.method public getChargingDefaultstate()I
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->chargingDefaultstate:I

    return v0
.end method

.method public getDischargingDefaultstate()I
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->dischargingDefaultstate:I

    return v0
.end method

.method public getEstimateChargingTime()J
    .locals 2

    .prologue
    .line 647
    iget-wide v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mEstimateChargingTime:J

    return-wide v0
.end method

.method public getEstimateDischargingTime()J
    .locals 2

    .prologue
    .line 651
    iget-wide v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mEstimateDischargingTime:J

    return-wide v0
.end method

.method public getLastLevelPosition()I
    .locals 1

    .prologue
    .line 675
    iget v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastLevelPositon:I

    return v0
.end method

.method public getLastTimePosition()I
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastTimePosition:I

    return v0
.end method

.method public getOnDischargingTotalLevel()I
    .locals 1

    .prologue
    .line 659
    iget v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->onDischargingTotalLevel:I

    return v0
.end method

.method public getScrollPosition()I
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->scrollPosition:I

    return v0
.end method

.method public getViewWidth()I
    .locals 5

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->graphPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 686
    .local v0, windowSize:I
    div-int/lit8 v1, v0, 0x6

    iput v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->unitWidth:I

    .line 687
    iget-wide v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->timeChange:J

    iget v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->unitWidth:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    div-long/2addr v1, v3

    long-to-double v1, v1

    iput-wide v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->realTimeGraphWidth:D

    .line 689
    iget-wide v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->realTimeGraphWidth:D

    iget v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->unitWidth:I

    mul-int/lit8 v3, v3, 0xc

    int-to-double v3, v3

    add-double/2addr v1, v3

    iget-object v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mRefLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    int-to-double v3, v3

    add-double/2addr v1, v3

    double-to-int v1, v1

    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 544
    invoke-super/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getWidth()I

    move-result v16

    .line 547
    .local v16, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getHeight()I

    move-result v8

    .line 550
    .local v8, height:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->lastTimePosition:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->unitWidth:I

    mul-int/lit8 v2, v2, 0xc

    add-int v11, v1, v2

    .line 551
    .local v11, layoutX:I
    const/16 v7, 0xc

    .line 554
    .local v7, drawHour:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mGrayPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0xb9

    const/16 v4, 0xb9

    const/16 v5, 0xb9

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 556
    :goto_0
    if-ltz v11, :cond_2

    .line 557
    if-nez v7, :cond_1

    .line 558
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->now:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v12

    .line 561
    .local v12, mLayout:Landroid/text/Layout;
    invoke-virtual {v12}, Landroid/text/Layout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v11, v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->padding:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 562
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 563
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 575
    .end local v12           #mLayout:Landroid/text/Layout;
    :cond_0
    :goto_1
    int-to-float v2, v11

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelTop:I

    int-to-float v3, v1

    int-to-float v4, v11

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelBottom:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mGrayPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 576
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->unitWidth:I

    sub-int/2addr v11, v1

    .line 577
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 564
    :cond_1
    rem-int/lit8 v1, v7, 0x3

    if-nez v1, :cond_0

    .line 565
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 566
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 567
    .local v13, now:Ljava/util/Calendar;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%+d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f081260

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v12

    .line 569
    .restart local v12       #mLayout:Landroid/text/Layout;
    invoke-virtual {v12}, Landroid/text/Layout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v11, v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->padding:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 570
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 571
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 582
    .end local v12           #mLayout:Landroid/text/Layout;
    .end local v13           #now:Ljava/util/Calendar;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "power_save_mode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 584
    .local v15, powerSaveMode:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mGrayPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0xe4

    const/16 v4, 0xe4

    const/16 v5, 0xe4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 586
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    const/16 v1, 0xa

    if-ge v9, v1, :cond_3

    .line 587
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelTop:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelTop:I

    sub-int/2addr v2, v3

    mul-int/2addr v2, v9

    div-int/lit8 v2, v2, 0xa

    add-int v17, v1, v2

    .line 588
    .local v17, y:I
    const/4 v2, 0x0

    move/from16 v0, v17

    int-to-float v3, v0

    move/from16 v0, v16

    int-to-float v4, v0

    move/from16 v0, v17

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mGrayPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 586
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 597
    .end local v17           #y:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatBackgroundPath:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Path;

    .line 598
    .local v14, p:Landroid/graphics/Path;
    invoke-virtual {v14}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 599
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 603
    .end local v14           #p:Landroid/graphics/Path;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatPath:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Path;

    .line 604
    .restart local v14       #p:Landroid/graphics/Path;
    invoke-virtual {v14}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 605
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 609
    .end local v14           #p:Landroid/graphics/Path;
    :cond_7
    invoke-static {}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getCurState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 610
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatEstimateChargingLevelPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatteryEstimatePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 611
    const-string v1, "PowerSaveBatteryChart2"

    const-string v2, "Draw Charging path"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->reset()V

    .line 619
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mThinLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 620
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mTextPaint:Landroid/text/TextPaint;

    const/16 v2, 0xff

    const/16 v3, 0x91

    const/16 v4, 0x91

    const/16 v5, 0x91

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 622
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    int-to-float v3, v1

    move/from16 v0, v16

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mThinLineWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 629
    return-void

    .line 613
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatEstimateDischargingLevelPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatteryEstimatePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 614
    const-string v1, "PowerSaveBatteryChart2"

    const-string v2, "Draw Discharging path"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 245
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 246
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mTextAscent:I

    .line 247
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mTextDescent:I

    .line 249
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 250
    .local v0, heightSize:I
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getViewWidth()I

    move-result v1

    .line 252
    .local v1, widthSize:I
    invoke-virtual {p0, v1, v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->setMeasuredDimension(II)V

    .line 254
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/16 v5, 0x91

    const/4 v4, 0x1

    .line 273
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 275
    iget v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mTextDescent:I

    iget v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mTextAscent:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->paddingText18:I

    add-int v1, v2, v3

    .line 277
    .local v1, textHeight:I
    const/high16 v2, 0x4000

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mThinLineWidth:I

    .line 280
    iput-boolean v4, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLargeMode:Z

    .line 281
    mul-int/lit8 v2, v1, 0xf

    if-le p2, v2, :cond_1

    .line 283
    div-int/lit8 v2, v1, 0x2

    iput v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLineWidth:I

    .line 292
    :goto_0
    iget v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->paddingText18:I

    iput v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelTop:I

    .line 299
    iget v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLineWidth:I

    if-gtz v2, :cond_0

    .line 300
    iput v4, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLineWidth:I

    .line 302
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 303
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mTextPaint:Landroid/text/TextPaint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 304
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatteryGoodPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 305
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatteryEstimatePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 307
    iget-boolean v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLargeMode:Z

    if-eqz v2, :cond_2

    .line 308
    iget v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLineWidth:I

    add-int v0, v1, v2

    .line 309
    .local v0, barOffset:I
    iget v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLineWidth:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelOffset:I

    .line 314
    .end local v0           #barOffset:I
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->generatePath(II)V

    .line 316
    return-void

    .line 286
    :cond_1
    div-int/lit8 v2, v1, 0x3

    iput v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLineWidth:I

    goto :goto_0

    .line 311
    :cond_2
    iget v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLineWidth:I

    mul-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mLevelOffset:I

    goto :goto_1
.end method

.method setStats(Landroid/os/BatteryStats;)V
    .locals 11
    .parameter "stats"

    .prologue
    const/4 v10, 0x0

    .line 199
    iput-object p1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mStats:Landroid/os/BatteryStats;

    .line 201
    iget-object v5, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mStats:Landroid/os/BatteryStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7, v10}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v3

    .line 203
    .local v3, uSecTime:J
    iput-wide v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mStatsPeriod:J

    .line 205
    const/4 v1, 0x0

    .line 207
    .local v1, pos:I
    iput v10, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatLow:I

    .line 208
    const/16 v5, 0x64

    iput v5, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mBatHigh:I

    .line 209
    const/4 v0, 0x1

    .line 213
    .local v0, first:Z
    invoke-virtual {p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 214
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 215
    .local v2, rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 216
    add-int/lit8 v1, v1, 0x1

    .line 217
    iget-byte v5, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 218
    if-eqz v0, :cond_1

    .line 219
    const/4 v0, 0x0

    .line 220
    iget-wide v5, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v5, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mHistStart:J

    .line 222
    :cond_1
    iget-wide v5, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v5, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mHistEnd:J

    goto :goto_0

    .line 226
    .end local v2           #rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_2
    iput v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mNumHist:I

    .line 228
    iget-wide v5, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mHistEnd:J

    iget-wide v7, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mHistStart:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    .line 229
    iget-wide v5, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mHistStart:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mHistEnd:J

    .line 235
    :cond_3
    iget-wide v5, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mHistEnd:J

    iget-wide v7, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mHistStart:J

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->timeChange:J

    .line 236
    iget-wide v5, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->mHistStart:J

    iput-wide v5, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChart2;->timeStart:J

    .line 237
    return-void
.end method
