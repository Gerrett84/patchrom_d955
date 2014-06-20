.class public Lcom/android/lgesettings/QuickCaseView;
.super Landroid/preference/PreferenceActivity;
.source "QuickCaseView.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mQuickCoverSetting:Landroid/preference/CheckBoxPreference;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/lgesettings/QuickCaseView;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 50
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/QuickCaseView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/QuickCaseView;->mResolver:Landroid/content/ContentResolver;

    .line 55
    const v3, 0x7f060041

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/QuickCaseView;->addPreferencesFromResource(I)V

    .line 57
    const-string v3, "quick_case_view"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/QuickCaseView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/QuickCaseView;->mQuickCoverSetting:Landroid/preference/CheckBoxPreference;

    .line 58
    iget-object v3, p0, Lcom/android/lgesettings/QuickCaseView;->mQuickCoverSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 60
    iget-object v3, p0, Lcom/android/lgesettings/QuickCaseView;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "quick_view_enable"

    invoke-static {v3, v5, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 63
    .local v2, quickCoverEnable:Z
    :goto_0
    iget-object v3, p0, Lcom/android/lgesettings/QuickCaseView;->mQuickCoverSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/android/lgesettings/QuickCaseView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f040111

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, footer:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/lgesettings/QuickCaseView;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 67
    invoke-virtual {p0}, Lcom/android/lgesettings/QuickCaseView;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 68
    return-void

    .end local v1           #footer:Landroid/view/View;
    .end local v2           #quickCoverEnable:Z
    :cond_1
    move v2, v4

    .line 60
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 88
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/lgesettings/QuickCaseView;->onBackPressed()V

    .line 90
    const/4 v1, 0x1

    .line 93
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 73
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 76
    .local v1, value:I
    :goto_0
    const-string v4, "quick_case_view"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    iget-object v4, p0, Lcom/android/lgesettings/QuickCaseView;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "quick_view_enable"

    invoke-static {v4, v5, v1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    :cond_0
    iget-object v4, p0, Lcom/android/lgesettings/QuickCaseView;->mQuickCoverSetting:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 83
    return v3

    .end local v1           #value:I
    :cond_1
    move v1, v3

    .line 75
    goto :goto_0

    .restart local v1       #value:I
    :cond_2
    move v2, v3

    .line 82
    goto :goto_1
.end method
