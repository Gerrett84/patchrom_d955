.class public Lcom/android/lgesettings/QuietModePreference;
.super Landroid/preference/Preference;
.source "QuietModePreference.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private mIcon:Landroid/widget/ImageView;

.field private mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->activity:Landroid/app/Activity;

    .line 32
    iput-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    .line 46
    const v0, 0x7f0400fc

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/QuietModePreference;->setLayoutResource(I)V

    .line 48
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-direct {v0, p1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    .line 49
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/android/lgesettings/QuietModePreference;->activity:Landroid/app/Activity;

    .line 50
    return-void
.end method

.method private iconUpdate(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 101
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/lgesettings/QuietModePreference;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/lgesettings/QuietModePreference;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateIconVisibility(Z)V
    .locals 2
    .parameter "_check"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->mIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/lgesettings/QuietModePreference;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/lgesettings/QuietModePreference;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getSummaryString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 85
    iget-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v0

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isSilentState()Z

    move-result v0

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v0

    if-ne v1, v0, :cond_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->activity:Landroid/app/Activity;

    const v1, 0x7f080e45

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v0

    if-ne v1, v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/QuietModePreference;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/lgesettings/QuietModePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v3, p0, Lcom/android/lgesettings/QuietModePreference;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/lgesettings/QuietModePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBDays()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getSilentSummaryText(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getQuietTimeOnSummary(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_2
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->activity:Landroid/app/Activity;

    const v1, 0x7f080e4c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->activity:Landroid/app/Activity;

    const v1, 0x7f080e2b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isQuietModeChecked()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 125
    iput-object p1, p0, Lcom/android/lgesettings/QuietModePreference;->mView:Landroid/view/View;

    .line 126
    const v0, 0x7f0a004b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->mTitle:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0a001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->mSummary:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0a021b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->mIcon:Landroid/widget/ImageView;

    .line 130
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietModePreference;->setCheckedUpdate()V

    .line 132
    return-void
.end method

.method public setCheckedUpdate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 61
    iget-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->mSummary:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v0

    if-ne v1, v0, :cond_1

    .line 67
    invoke-direct {p0, v1}, Lcom/android/lgesettings/QuietModePreference;->iconUpdate(I)V

    .line 68
    invoke-direct {p0, v1}, Lcom/android/lgesettings/QuietModePreference;->updateIconVisibility(Z)V

    .line 80
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietModePreference;->getSummaryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/QuietModePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v0

    if-ne v1, v0, :cond_2

    .line 72
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/lgesettings/QuietModePreference;->iconUpdate(I)V

    .line 73
    invoke-direct {p0, v1}, Lcom/android/lgesettings/QuietModePreference;->updateIconVisibility(Z)V

    goto :goto_1

    .line 76
    :cond_2
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/lgesettings/QuietModePreference;->iconUpdate(I)V

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/QuietModePreference;->updateIconVisibility(Z)V

    goto :goto_1
.end method
