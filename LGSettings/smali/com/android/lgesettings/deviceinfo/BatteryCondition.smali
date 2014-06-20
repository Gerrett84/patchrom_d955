.class public Lcom/android/lgesettings/deviceinfo/BatteryCondition;
.super Landroid/preference/PreferenceActivity;
.source "BatteryCondition.java"


# instance fields
.field private mbattery_condition:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/deviceinfo/BatteryCondition;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 122
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/BatteryCondition;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/BatteryCondition;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 132
    :goto_0
    return-void

    .line 127
    :cond_0
    if-nez v0, :cond_1

    .line 128
    const-string v1, "BatteryCondition"

    const-string v2, "removePreferenceFromScreen() removePreferenceFromScreen pref == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :cond_1
    const-string v1, "BatteryCondition"

    const-string v2, "removePreferenceFromScreen() getPreferenceScreen() == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 49
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/BatteryCondition;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "battery_condition"

    invoke-static {v2, v4, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 53
    .local v1, condition:I
    const v2, 0x7f060015

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/BatteryCondition;->addPreferencesFromResource(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/BatteryCondition;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 56
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 60
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 80
    :goto_0
    const-string v2, "battery_condition_alarm"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/BatteryCondition;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/BatteryCondition;->mbattery_condition:Landroid/preference/CheckBoxPreference;

    .line 81
    iget-object v4, p0, Lcom/android/lgesettings/deviceinfo/BatteryCondition;->mbattery_condition:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/BatteryCondition;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "battery_condition_alarm"

    invoke-static {v2, v5, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 82
    return-void

    .line 64
    :pswitch_0
    const-string v2, "battery_good"

    invoke-direct {p0, v2}, Lcom/android/lgesettings/deviceinfo/BatteryCondition;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 65
    const-string v2, "battery_bad"

    invoke-direct {p0, v2}, Lcom/android/lgesettings/deviceinfo/BatteryCondition;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :pswitch_1
    const-string v2, "battery_verygood"

    invoke-direct {p0, v2}, Lcom/android/lgesettings/deviceinfo/BatteryCondition;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 70
    const-string v2, "battery_bad"

    invoke-direct {p0, v2}, Lcom/android/lgesettings/deviceinfo/BatteryCondition;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :pswitch_2
    const-string v2, "battery_verygood"

    invoke-direct {p0, v2}, Lcom/android/lgesettings/deviceinfo/BatteryCondition;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 75
    const-string v2, "battery_good"

    invoke-direct {p0, v2}, Lcom/android/lgesettings/deviceinfo/BatteryCondition;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 88
    .local v0, itemId:I
    const-string v1, "starmotor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemId 11= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/BatteryCondition;->finish()V

    .line 91
    const/4 v1, 0x1

    .line 93
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 112
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 98
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/BatteryCondition;->mbattery_condition:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/BatteryCondition;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_condition_alarm"

    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/BatteryCondition;->mbattery_condition:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    :cond_0
    return v1

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 107
    return-void
.end method
