.class public Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "QuickCaseLollipopSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static coverSelect:I

.field private static lollipopSelect:I


# instance fields
.field private frontQuickCaseCategory:Landroid/preference/PreferenceCategory;

.field private mLollipopNever:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

.field private mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

.field private mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

.field private mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    sput v0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->coverSelect:I

    .line 66
    sput v0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->lollipopSelect:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->coverSelect:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->lollipopSelect:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->operateCondition()V

    return-void
.end method

.method private initToggles()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopNever:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    .line 211
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    .line 213
    return-void
.end method

.method private operateCondition()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 237
    sget v0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->coverSelect:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_view_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 239
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_cover_enable"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    sget v0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->coverSelect:I

    if-nez v0, :cond_2

    .line 241
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_view_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_cover_enable"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 243
    :cond_2
    sget v0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->coverSelect:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 244
    sget v0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->lollipopSelect:I

    if-ne v0, v2, :cond_3

    .line 245
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_view_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_cover_enable"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 247
    :cond_3
    sget v0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->lollipopSelect:I

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_view_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 249
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_cover_enable"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 218
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_pop_mode_set"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 220
    .local v0, lollipopGuidePopupDB:I
    sget v1, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->coverSelect:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 221
    iget-object v1, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopNever:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    sget v1, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->coverSelect:I

    if-nez v1, :cond_2

    .line 223
    iget-object v1, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 225
    :cond_2
    sget v1, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->coverSelect:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 226
    sget v1, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->lollipopSelect:I

    if-ne v1, v4, :cond_3

    .line 227
    iget-object v1, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 228
    :cond_3
    sget v1, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->lollipopSelect:I

    if-nez v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

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

    .line 70
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v2, 0x7f06003f

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 75
    .local v1, root:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cover_type"

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 77
    .local v0, coverDefalut:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cover_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    :cond_0
    const-string v2, "front_quick_case_category"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->frontQuickCaseCategory:Landroid/preference/PreferenceCategory;

    .line 86
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->frontQuickCaseCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "lollipop_never"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    iput-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopNever:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    .line 87
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->frontQuickCaseCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "lollipop_quick_cover"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    iput-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    .line 88
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->frontQuickCaseCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "lollipop_quick_cover_lollipop_white"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    iput-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    .line 89
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->frontQuickCaseCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "lollipop_quick_cover_lollipop_black"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    iput-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    .line 91
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cover_type"

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->coverSelect:I

    .line 92
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lollipop_cover_type"

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->lollipopSelect:I

    .line 93
    invoke-direct {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->operateCondition()V

    .line 95
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->frontQuickCaseCategory:Landroid/preference/PreferenceCategory;

    if-eqz v2, :cond_4

    .line 96
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopNever:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopNever:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    if-eqz v2, :cond_2

    .line 101
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    const v3, 0x7f0201f7

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setIconImage(I)V

    .line 102
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    const v3, 0x7f0201ee

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setbuttonImage(I)V

    .line 103
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080503

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setContentDesc(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 105
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    new-instance v3, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings$1;-><init>(Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setOnImageButtonClickListener(Lcom/android/lgesettings/lge/LollipopRadioButtonPreference$OnImageButtonClickListener;)V

    .line 115
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    if-eqz v2, :cond_3

    .line 116
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    const v3, 0x7f0201f8

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setIconImage(I)V

    .line 117
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v2, v5}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setbuttonImage(I)V

    .line 118
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setContentDesc(Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    new-instance v3, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings$2;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings$2;-><init>(Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setOnImageButtonClickListener(Lcom/android/lgesettings/lge/LollipopRadioButtonPreference$OnImageButtonClickListener;)V

    .line 131
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    if-eqz v2, :cond_4

    .line 132
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    const v3, 0x7f0201f9

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setIconImage(I)V

    .line 133
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v2, v5}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setbuttonImage(I)V

    .line 134
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setContentDesc(Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    new-instance v3, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings$3;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings$3;-><init>(Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setOnImageButtonClickListener(Lcom/android/lgesettings/lge/LollipopRadioButtonPreference$OnImageButtonClickListener;)V

    .line 147
    :cond_4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 153
    const v4, 0x7f0400bc

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 154
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0a0196

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 155
    .local v1, lollipopDescBar:Landroid/widget/LinearLayout;
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    const v4, 0x7f0a0199

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 158
    .local v0, cancelButton:Landroid/widget/Button;
    new-instance v4, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings$4;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings$4;-><init>(Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v4, 0x7f0a019a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 165
    .local v2, okButton:Landroid/widget/Button;
    new-instance v4, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings$5;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings$5;-><init>(Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    return-object v3
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 181
    invoke-direct {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->initToggles()V

    .line 185
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopNever:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    if-ne p1, v0, :cond_1

    .line 186
    const/4 v0, 0x5

    sput v0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->coverSelect:I

    .line 187
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopNever:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    .line 203
    :cond_0
    :goto_0
    return v1

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    if-ne p1, v0, :cond_2

    .line 190
    sput v2, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->coverSelect:I

    .line 191
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCover:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    if-ne p1, v0, :cond_3

    .line 194
    sput v3, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->coverSelect:I

    .line 195
    sput v1, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->lollipopSelect:I

    .line 196
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCoverLollipopWhite:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 199
    sput v3, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->coverSelect:I

    .line 200
    sput v2, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->lollipopSelect:I

    .line 201
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->mLollipopQuickCoverLollipopBlack:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 256
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 257
    invoke-direct {p0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->updateToggles()V

    .line 258
    return-void
.end method
