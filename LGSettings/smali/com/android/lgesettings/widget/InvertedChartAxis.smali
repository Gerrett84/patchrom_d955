.class public Lcom/android/lgesettings/widget/InvertedChartAxis;
.super Ljava/lang/Object;
.source "InvertedChartAxis.java"

# interfaces
.implements Lcom/android/lgesettings/widget/ChartAxis;


# instance fields
.field private mSize:F

.field private final mWrapped:Lcom/android/lgesettings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/widget/ChartAxis;)V
    .locals 0
    .parameter "wrapped"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/lgesettings/widget/InvertedChartAxis;->mWrapped:Lcom/android/lgesettings/widget/ChartAxis;

    .line 31
    return-void
.end method


# virtual methods
.method public buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 2
    .parameter "res"
    .parameter "builder"
    .parameter "value"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/lgesettings/widget/InvertedChartAxis;->mWrapped:Lcom/android/lgesettings/widget/ChartAxis;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/lgesettings/widget/ChartAxis;->buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public convertToPoint(J)F
    .locals 2
    .parameter "value"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/lgesettings/widget/InvertedChartAxis;->mSize:F

    iget-object v1, p0, Lcom/android/lgesettings/widget/InvertedChartAxis;->mWrapped:Lcom/android/lgesettings/widget/ChartAxis;

    invoke-interface {v1, p1, p2}, Lcom/android/lgesettings/widget/ChartAxis;->convertToPoint(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public convertToValue(F)J
    .locals 2
    .parameter "point"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/lgesettings/widget/InvertedChartAxis;->mWrapped:Lcom/android/lgesettings/widget/ChartAxis;

    iget v1, p0, Lcom/android/lgesettings/widget/InvertedChartAxis;->mSize:F

    sub-float/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/android/lgesettings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTickPoints()[F
    .locals 5

    .prologue
    .line 61
    iget-object v3, p0, Lcom/android/lgesettings/widget/InvertedChartAxis;->mWrapped:Lcom/android/lgesettings/widget/ChartAxis;

    invoke-interface {v3}, Lcom/android/lgesettings/widget/ChartAxis;->getTickPoints()[F

    move-result-object v2

    .line 63
    .local v2, points:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 64
    iget v3, p0, Lcom/android/lgesettings/widget/InvertedChartAxis;->mSize:F

    aget v4, v2, v1

    sub-float/2addr v3, v4

    aput v3, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-object v2
.end method

.method public setBounds(JJ)Z
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/lgesettings/widget/InvertedChartAxis;->mWrapped:Lcom/android/lgesettings/widget/ChartAxis;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/lgesettings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v0

    return v0
.end method

.method public setSize(F)Z
    .locals 1
    .parameter "size"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/lgesettings/widget/InvertedChartAxis;->mSize:F

    .line 41
    iget-object v0, p0, Lcom/android/lgesettings/widget/InvertedChartAxis;->mWrapped:Lcom/android/lgesettings/widget/ChartAxis;

    invoke-interface {v0, p1}, Lcom/android/lgesettings/widget/ChartAxis;->setSize(F)Z

    move-result v0

    return v0
.end method

.method public shouldAdjustAxis(J)I
    .locals 1
    .parameter "value"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/lgesettings/widget/InvertedChartAxis;->mWrapped:Lcom/android/lgesettings/widget/ChartAxis;

    invoke-interface {v0, p1, p2}, Lcom/android/lgesettings/widget/ChartAxis;->shouldAdjustAxis(J)I

    move-result v0

    return v0
.end method
