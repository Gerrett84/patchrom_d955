.class public Lcom/android/lgesettings/lge/QuickCase;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "QuickCase.java"


# instance fields
.field private frontQuickCaseCategory:Landroid/preference/PreferenceCategory;

.field private mQuickCameraCase:Landroid/preference/Preference;

.field private mQuickCoverWindow:Landroid/preference/Preference;

.field private rearQuickCaseCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v1, 0x7f060040

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/QuickCase;->addPreferencesFromResource(I)V

    .line 45
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 48
    .local v0, root:Landroid/preference/PreferenceScreen;
    const-string v1, "front_quick_case_category"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/lgesettings/lge/QuickCase;->frontQuickCaseCategory:Landroid/preference/PreferenceCategory;

    .line 49
    const-string v1, "rear_quick_case_category"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/lgesettings/lge/QuickCase;->rearQuickCaseCategory:Landroid/preference/PreferenceCategory;

    .line 52
    const-string v1, "quick_cover_window_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/lge/QuickCase;->mQuickCoverWindow:Landroid/preference/Preference;

    .line 53
    const-string v1, "quick_camera_case_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/lge/QuickCase;->mQuickCameraCase:Landroid/preference/Preference;

    .line 56
    const-string v1, "US"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/lgesettings/lge/QuickCase;->mQuickCameraCase:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 58
    iget-object v1, p0, Lcom/android/lgesettings/lge/QuickCase;->rearQuickCaseCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 60
    :cond_0
    return-void
.end method
