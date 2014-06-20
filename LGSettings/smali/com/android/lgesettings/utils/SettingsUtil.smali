.class public Lcom/android/lgesettings/utils/SettingsUtil;
.super Landroid/preference/PreferenceActivity;
.source "SettingsUtil.java"


# instance fields
.field public final items:[Ljava/lang/String;

.field mEasyPatchInfo:Landroid/preference/Preference;

.field mListPatchInfo:Landroid/preference/Preference;

.field mSettingDBTest:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Sound"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Quiet button"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Short cut"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Accessibility"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/lgesettings/utils/SettingsUtil;->items:[Ljava/lang/String;

    return-void
.end method

.method private patchDialog(Z)V
    .locals 3
    .parameter "isTabView"

    .prologue
    .line 84
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, dialogBulder:Landroid/app/AlertDialog$Builder;
    const-string v1, "select"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 87
    iget-object v1, p0, Lcom/android/lgesettings/utils/SettingsUtil;->items:[Ljava/lang/String;

    new-instance v2, Lcom/android/lgesettings/utils/SettingsUtil$1;

    invoke-direct {v2, p0, p1}, Lcom/android/lgesettings/utils/SettingsUtil$1;-><init>(Lcom/android/lgesettings/utils/SettingsUtil;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 105
    return-void
.end method


# virtual methods
.method addEasyPatchPreference()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/utils/SettingsUtil;->mEasyPatchInfo:Landroid/preference/Preference;

    .line 61
    iget-object v0, p0, Lcom/android/lgesettings/utils/SettingsUtil;->mEasyPatchInfo:Landroid/preference/Preference;

    const-string v1, "[Easy] patch code info"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/lgesettings/utils/SettingsUtil;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/utils/SettingsUtil;->mEasyPatchInfo:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 66
    :cond_0
    return-void
.end method

.method addListPatchPreference()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/utils/SettingsUtil;->mListPatchInfo:Landroid/preference/Preference;

    .line 55
    iget-object v0, p0, Lcom/android/lgesettings/utils/SettingsUtil;->mListPatchInfo:Landroid/preference/Preference;

    const-string v1, "[List] patch code info"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/lgesettings/utils/SettingsUtil;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/utils/SettingsUtil;->mListPatchInfo:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 57
    return-void
.end method

.method addSettingDBTest()V
    .locals 4

    .prologue
    .line 45
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/lgesettings/utils/SettingsUtil;->mSettingDBTest:Landroid/preference/Preference;

    .line 46
    iget-object v1, p0, Lcom/android/lgesettings/utils/SettingsUtil;->mSettingDBTest:Landroid/preference/Preference;

    const-string v2, "Setting DB Test"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v0, i:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.lgesettings"

    const-string v3, "com.android.lgesettings.utils.CheckSettingDB"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 49
    iget-object v1, p0, Lcom/android/lgesettings/utils/SettingsUtil;->mSettingDBTest:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/lgesettings/utils/SettingsUtil;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/utils/SettingsUtil;->mSettingDBTest:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 51
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f06005b

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/SettingsUtil;->addPreferencesFromResource(I)V

    .line 38
    invoke-virtual {p0}, Lcom/android/lgesettings/utils/SettingsUtil;->addListPatchPreference()V

    .line 39
    invoke-virtual {p0}, Lcom/android/lgesettings/utils/SettingsUtil;->addEasyPatchPreference()V

    .line 40
    invoke-virtual {p0}, Lcom/android/lgesettings/utils/SettingsUtil;->addSettingDBTest()V

    .line 42
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 73
    iget-object v1, p0, Lcom/android/lgesettings/utils/SettingsUtil;->mListPatchInfo:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/lgesettings/utils/SettingsUtil;->patchDialog(Z)V

    .line 80
    :goto_0
    return v0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/utils/SettingsUtil;->mEasyPatchInfo:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-direct {p0, v0}, Lcom/android/lgesettings/utils/SettingsUtil;->patchDialog(Z)V

    .line 80
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method
