.class public Lcom/android/lgesettings/quietmode/QuietModeSummaryDescriptionPreference;
.super Landroid/preference/Preference;
.source "QuietModeSummaryDescriptionPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageView:Landroid/widget/ImageView;

.field private mTextViewTop:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeSummaryDescriptionPreference;->mContext:Landroid/content/Context;

    .line 29
    const v0, 0x7f04011b

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeSummaryDescriptionPreference;->setLayoutResource(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 36
    const-string v0, "QuietModeSummaryDescriptionPreference"

    const-string v1, "getView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 52
    const v0, 0x7f0a025e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSummaryDescriptionPreference;->mImageView:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f0a025f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSummaryDescriptionPreference;->mTextViewTop:Landroid/widget/TextView;

    .line 55
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSummaryDescriptionPreference;->mTextViewTop:Landroid/widget/TextView;

    const v1, 0x7f080e4e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSummaryDescriptionPreference;->mTextViewTop:Landroid/widget/TextView;

    const/4 v1, 0x2

    const v2, 0x417ab852

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSummaryDescriptionPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSummaryDescriptionPreference;->mTextViewTop:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeSummaryDescriptionPreference$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/quietmode/QuietModeSummaryDescriptionPreference$1;-><init>(Lcom/android/lgesettings/quietmode/QuietModeSummaryDescriptionPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "parent"

    .prologue
    .line 77
    const-string v0, "QuietModeSummaryDescriptionPreference"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
