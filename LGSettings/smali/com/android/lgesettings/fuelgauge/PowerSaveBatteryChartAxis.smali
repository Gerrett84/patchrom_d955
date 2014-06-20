.class public Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;
.super Landroid/view/View;
.source "PowerSaveBatteryChartAxis.java"


# instance fields
.field private mLayoutLevel:Landroid/text/Layout;

.field private mLayoutLevelHeight:I

.field private mLayoutTime:Landroid/text/Layout;

.field private mLevelBottom:I

.field private mLevelTop:I

.field final mPaint:Landroid/text/TextPaint;

.field mThinLineWidth:I

.field private padding22:I

.field final padding4:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v3, 0x91

    const/4 v2, 0x1

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mLayoutLevelHeight:I

    .line 24
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mPaint:Landroid/text/TextPaint;

    .line 26
    const/high16 v0, 0x4000

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mThinLineWidth:I

    .line 29
    const-string v0, "100%"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mLayoutLevel:Landroid/text/Layout;

    .line 30
    const-string v0, "00:00"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mLayoutTime:Landroid/text/Layout;

    .line 32
    const/high16 v0, 0x4080

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->padding4:I

    .line 35
    const/high16 v0, 0x41b0

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->padding22:I

    .line 41
    const/high16 v0, 0x4190

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mLevelTop:I

    .line 44
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mThinLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 45
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mPaint:Landroid/text/TextPaint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 47
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mLayoutLevel:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mLayoutLevelHeight:I

    .line 48
    return-void
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 9
    .parameter "text"

    .prologue
    const/4 v7, 0x1

    .line 97
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 98
    .local v8, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v7}, Landroid/text/TextPaint;-><init>(I)V

    .line 99
    .local v2, paint:Landroid/text/TextPaint;
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v2, Landroid/text/TextPaint;->density:F

    .line 100
    invoke-virtual {v8}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 101
    const v0, 0x7f0c001e

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 102
    const/4 v0, 0x2

    const/high16 v1, 0x4110

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 105
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
.method public getViewWidth()I
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x1

    const/high16 v1, 0x4218

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->getHeight()I

    move-result v6

    .line 66
    .local v6, height:I
    iget v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->padding22:I

    sub-int v0, v6, v0

    iput v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mLevelBottom:I

    .line 68
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    const/16 v0, 0xa

    if-gt v7, v0, :cond_2

    .line 69
    iget v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mLevelTop:I

    iget v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mLevelBottom:I

    iget v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mLevelTop:I

    sub-int/2addr v1, v2

    mul-int/2addr v1, v7

    div-int/lit8 v1, v1, 0xa

    add-int v8, v0, v1

    .line 71
    .local v8, y:I
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    mul-int/lit8 v5, v7, 0xa

    rsub-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mLayoutLevel:Landroid/text/Layout;

    .line 78
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mLayoutLevel:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 80
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->getViewWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mLayoutLevel:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->padding4:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mThinLineWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mLayoutLevelHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v8, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 81
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mLayoutLevel:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 68
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v1, v7, 0xa

    rsub-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mLayoutLevel:Landroid/text/Layout;

    goto :goto_1

    .line 85
    .end local v8           #y:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v1

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mLevelTop:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v3

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mLevelBottom:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v1

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mLevelBottom:I

    iget v2, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mThinLineWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->getViewWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mLevelBottom:I

    iget v4, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mThinLineWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->mPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 87
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 52
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 53
    .local v0, heightSize:I
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->getViewWidth()I

    move-result v1

    .line 55
    .local v1, widthSize:I
    invoke-virtual {p0, v1, v0}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryChartAxis;->setMeasuredDimension(II)V

    .line 56
    return-void
.end method
