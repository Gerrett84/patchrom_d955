.class public Lcom/android/lgesettings/vpn2/VpnSelector;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "VpnSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f060073

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vpn2/VpnSelector;->addPreferencesFromResource(I)V

    .line 21
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 25
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 27
    .local v8, key:Ljava/lang/String;
    const-string v1, "vpn_settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 29
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const-string v1, "com.android.lgesettings.vpn2.VpnSettings"

    const v3, 0x7f08070f

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 38
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    :goto_0
    return v6

    .line 31
    :cond_1
    const-string v1, "lg_vpn"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 35
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "com.ipsec.vpnclient"

    const-string v2, "com.ipsec.vpnclient.LauncherActivity"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p0, v7}, Lcom/android/lgesettings/vpn2/VpnSelector;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
