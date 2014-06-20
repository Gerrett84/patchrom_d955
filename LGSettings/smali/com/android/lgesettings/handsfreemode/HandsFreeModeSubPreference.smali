.class public Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;
.super Landroid/preference/CheckBoxPreference;
.source "HandsFreeModeSubPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-object p1, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public convertDpToPixel(F)I
    .locals 5
    .parameter "dp"

    .prologue
    .line 40
    iget-object v3, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 41
    .local v2, resources:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 42
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x4320

    div-float/2addr v3, v4

    mul-float v1, p1, v3

    .line 43
    .local v1, px:F
    float-to-int v3, v1

    return v3
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/high16 v6, 0x41c0

    .line 25
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 26
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 27
    .local v1, titlet:Landroid/widget/TextView;
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 28
    .local v0, summary:Landroid/widget/TextView;
    invoke-virtual {p0, v6}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;->convertDpToPixel(F)I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 29
    invoke-virtual {p0, v6}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;->convertDpToPixel(F)I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 30
    return-void
.end method
