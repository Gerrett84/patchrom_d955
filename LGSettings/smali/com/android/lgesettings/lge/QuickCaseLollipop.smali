.class public Lcom/android/lgesettings/lge/QuickCaseLollipop;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "QuickCaseLollipop.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private frontQuickCaseCategory:Landroid/preference/PreferenceCategory;

.field private mLollipopNever:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

.field private mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

.field private mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

.field private mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initToggles()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopNever:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    .line 216
    return-void
.end method

.method private updateToggles()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 220
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cover_type"

    invoke-static {v2, v3, v7}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 221
    .local v0, coverDbValue:I
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lollipop_cover_type"

    invoke-static {v2, v3, v7}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 222
    .local v1, lollipopCoverDbValue:I
    const-string v2, "QuickCaseLollipop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Refresh: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cover_type"

    invoke-static {v4, v5, v7}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopNever:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v2, v6}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    if-nez v0, :cond_2

    .line 227
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v2, v6}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 229
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 230
    if-ne v1, v6, :cond_3

    .line 231
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v2, v6}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 232
    :cond_3
    if-nez v1, :cond_0

    .line 233
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v2, v6}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f080634

    const v5, 0x7f0201f2

    const/4 v4, 0x0

    .line 67
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v2, 0x7f06003f

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->addPreferencesFromResource(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 72
    .local v1, root:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cover_type"

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 74
    .local v0, coverDefalut:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cover_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    :cond_0
    const-string v2, "front_quick_case_category"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->frontQuickCaseCategory:Landroid/preference/PreferenceCategory;

    .line 82
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->frontQuickCaseCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "lollipop_never"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    iput-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopNever:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    .line 83
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->frontQuickCaseCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "lollipop_quick_cover"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    iput-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    .line 84
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->frontQuickCaseCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "lollipop_quick_cover_lollipop_white"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    iput-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    .line 85
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->frontQuickCaseCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "lollipop_quick_cover_lollipop_black"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    iput-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    .line 88
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->frontQuickCaseCategory:Landroid/preference/PreferenceCategory;

    if-eqz v2, :cond_4

    .line 89
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopNever:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    if-eqz v2, :cond_1

    .line 90
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopNever:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    if-eqz v2, :cond_2

    .line 94
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    const v3, 0x7f0201f7

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setIconImage(I)V

    .line 95
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    const v3, 0x7f0201ee

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setbuttonImage(I)V

    .line 96
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080503

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setContentDesc(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    new-instance v3, Lcom/android/lgesettings/lge/QuickCaseLollipop$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop$1;-><init>(Lcom/android/lgesettings/lge/QuickCaseLollipop;)V

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setOnImageButtonClickListener(Lcom/android/lgesettings/lge/LollipopRadioButtonPreference$OnImageButtonClickListener;)V

    .line 108
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    if-eqz v2, :cond_3

    .line 109
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    const v3, 0x7f0201f8

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setIconImage(I)V

    .line 110
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v2, v5}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setbuttonImage(I)V

    .line 111
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setContentDesc(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    new-instance v3, Lcom/android/lgesettings/lge/QuickCaseLollipop$2;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop$2;-><init>(Lcom/android/lgesettings/lge/QuickCaseLollipop;)V

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setOnImageButtonClickListener(Lcom/android/lgesettings/lge/LollipopRadioButtonPreference$OnImageButtonClickListener;)V

    .line 124
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    if-eqz v2, :cond_4

    .line 125
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    const v3, 0x7f0201f9

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setIconImage(I)V

    .line 126
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v2, v5}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setbuttonImage(I)V

    .line 127
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setContentDesc(Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 129
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    new-instance v3, Lcom/android/lgesettings/lge/QuickCaseLollipop$3;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop$3;-><init>(Lcom/android/lgesettings/lge/QuickCaseLollipop;)V

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setOnImageButtonClickListener(Lcom/android/lgesettings/lge/LollipopRadioButtonPreference$OnImageButtonClickListener;)V

    .line 140
    :cond_4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 146
    const v3, 0x7f0400bc

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 147
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0a0197

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 148
    .local v1, lollipopDesc:Landroid/widget/TextView;
    const v3, 0x7f0a0198

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 149
    .local v0, lollipopButtonBar:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    return-object v2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 157
    invoke-direct {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->initToggles()V

    .line 161
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopNever:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    if-ne p1, v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cover_type"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_view_enable"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_cover_enable"

    invoke-static {v0, v1, v5}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopNever:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    .line 204
    :cond_0
    :goto_0
    const-string v0, "QuickCaseLollipop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_effect_set"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return v4

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    if-ne p1, v0, :cond_2

    .line 172
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cover_type"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_view_enable"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 176
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_cover_enable"

    invoke-static {v0, v1, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    if-ne p1, v0, :cond_3

    .line 182
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cover_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lollipop_cover_type"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_view_enable"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 187
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    .line 190
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_cover_enable"

    invoke-static {v0, v1, v5}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cover_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lollipop_cover_type"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 197
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_view_enable"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 198
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop;->mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    .line 201
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_cover_enable"

    invoke-static {v0, v1, v5}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 240
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 241
    invoke-direct {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->updateToggles()V

    .line 242
    return-void
.end method
