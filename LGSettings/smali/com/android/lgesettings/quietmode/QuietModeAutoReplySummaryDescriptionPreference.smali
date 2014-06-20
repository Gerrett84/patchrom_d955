.class public Lcom/android/lgesettings/quietmode/QuietModeAutoReplySummaryDescriptionPreference;
.super Landroid/preference/Preference;
.source "QuietModeAutoReplySummaryDescriptionPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplySummaryDescriptionPreference;->mContext:Landroid/content/Context;

    .line 24
    const v0, 0x7f040118

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplySummaryDescriptionPreference;->setLayoutResource(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 32
    const-string v0, "QuietModeAutoReplySummaryDescriptionPreference"

    const-string v1, "getView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 41
    const v0, 0x7f0a0256

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplySummaryDescriptionPreference;->mTextView:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplySummaryDescriptionPreference;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplySummaryDescriptionPreference$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplySummaryDescriptionPreference$1;-><init>(Lcom/android/lgesettings/quietmode/QuietModeAutoReplySummaryDescriptionPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 52
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "parent"

    .prologue
    .line 57
    const-string v0, "QuietModeAutoReplySummaryDescriptionPreference"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
