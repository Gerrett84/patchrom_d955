.class public Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;
.super Landroid/preference/PreferenceActivity;
.source "LGBluetoothHelpMenu.java"


# instance fields
.field private mConfigureABluetoothDevicePreference:Landroid/preference/Preference;

.field private mMakeMyPhoneVisiblePreference:Landroid/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchForDevicesPreference:Landroid/preference/Preference;

.field private mSoundAndOtherSettingsPreference:Landroid/preference/Preference;

.field private mWhatIsBluetoothPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 62
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu$1;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 84
    .local v0, ActionBarCompat:Landroid/app/ActionBar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 86
    const v2, 0x7f06000d

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->addPreferencesFromResource(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 89
    .local v1, prefScreen:Landroid/preference/PreferenceScreen;
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mWhatIsBluetoothPreference:Landroid/preference/Preference;

    .line 90
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mWhatIsBluetoothPreference:Landroid/preference/Preference;

    const v3, 0x7f081572

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mWhatIsBluetoothPreference:Landroid/preference/Preference;

    const-string v3, "What_is_Bluetooth"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 92
    if-eqz v1, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mWhatIsBluetoothPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 96
    :cond_0
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mMakeMyPhoneVisiblePreference:Landroid/preference/Preference;

    .line 97
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mMakeMyPhoneVisiblePreference:Landroid/preference/Preference;

    const v3, 0x7f08153c

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mMakeMyPhoneVisiblePreference:Landroid/preference/Preference;

    const-string v3, "Pair_and_connect_to_devices"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 99
    if-eqz v1, :cond_1

    .line 100
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mMakeMyPhoneVisiblePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 103
    :cond_1
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mSearchForDevicesPreference:Landroid/preference/Preference;

    .line 105
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mSearchForDevicesPreference:Landroid/preference/Preference;

    const v3, 0x7f08153e

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mSearchForDevicesPreference:Landroid/preference/Preference;

    const-string v3, "Make_my_phone_visible"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 107
    if-eqz v1, :cond_2

    .line 108
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mSearchForDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 111
    :cond_2
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mSoundAndOtherSettingsPreference:Landroid/preference/Preference;

    .line 112
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mSoundAndOtherSettingsPreference:Landroid/preference/Preference;

    const v3, 0x7f08153f

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mSoundAndOtherSettingsPreference:Landroid/preference/Preference;

    const-string v3, "Search_for_devices"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 114
    if-eqz v1, :cond_3

    .line 115
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mSoundAndOtherSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 118
    :cond_3
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mConfigureABluetoothDevicePreference:Landroid/preference/Preference;

    .line 119
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mConfigureABluetoothDevicePreference:Landroid/preference/Preference;

    const v3, 0x7f081577

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mConfigureABluetoothDevicePreference:Landroid/preference/Preference;

    const-string v3, "Configure_a_Bluetooth_device"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 121
    if-eqz v1, :cond_4

    .line 122
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mConfigureABluetoothDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 125
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 146
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 183
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 177
    :pswitch_0
    const-string v0, "TAG"

    const-string v1, "[BTUI] Pressed title back button"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->finish()V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 136
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenuGuide;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    const-string v1, "What_is_Bluetooth"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    const-string v1, "Key_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;->startActivity(Landroid/content/Intent;)V

    .line 169
    return v3

    .line 156
    :cond_1
    const-string v1, "Pair_and_connect_to_devices"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    const-string v1, "Key_mode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 159
    :cond_2
    const-string v1, "Make_my_phone_visible"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 160
    const-string v1, "Key_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 162
    :cond_3
    const-string v1, "Search_for_devices"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    const-string v1, "Key_mode"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 165
    :cond_4
    const-string v1, "Configure_a_Bluetooth_device"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const-string v1, "Key_mode"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 131
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 141
    return-void
.end method
