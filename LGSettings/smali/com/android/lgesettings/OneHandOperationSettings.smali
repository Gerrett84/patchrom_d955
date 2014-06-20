.class public Lcom/android/lgesettings/OneHandOperationSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "OneHandOperationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private DISABLED:I

.field private intentForFloatingActionName:Landroid/content/Intent;

.field private mDialKeypadPreferences:Landroid/preference/CheckBoxPreference;

.field private mFloatingFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

.field private mFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

.field private mHelpPreferences:Landroid/preference/Preference;

.field private mKeyboardGesturePreferences:Landroid/preference/CheckBoxPreference;

.field private mLGKeyboardPreferences:Landroid/preference/CheckBoxPreference;

.field private mLockScreenPreferences:Landroid/preference/CheckBoxPreference;

.field private mPullDownScreenPreferences:Landroid/preference/CheckBoxPreference;

.field private parent:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->DISABLED:I

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.navibtn"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->intentForFloatingActionName:Landroid/content/Intent;

    return-void
.end method

.method private checkMenuList()V
    .locals 6

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 178
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 181
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v3, "com.lge.navibtn"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 184
    invoke-static {}, Lcom/android/lgesettings/Utils;->supportNavigationButtons()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mFloatingFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f080968

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 188
    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_assistive_touch_service_enable"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget v4, p0, Lcom/android/lgesettings/OneHandOperationSettings;->DISABLED:I

    if-ne v3, v4, :cond_0

    .line 190
    iget-object v3, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mFloatingFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    iget-object v3, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mPullDownScreenPreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v3}, Lcom/android/lgesettings/OneHandOperationSettings;->removePreference(Landroid/preference/Preference;)V

    .line 219
    return-void

    .line 194
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mFloatingFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f08096c

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 195
    iget-object v3, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mFloatingFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mFloatingFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v3}, Lcom/android/lgesettings/OneHandOperationSettings;->removePreference(Landroid/preference/Preference;)V

    .line 214
    iget-object v3, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v3}, Lcom/android/lgesettings/OneHandOperationSettings;->removePreference(Landroid/preference/Preference;)V

    goto :goto_0

    .line 200
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mFloatingFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f08096d

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 202
    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_assistive_touch_service_enable"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget v4, p0, Lcom/android/lgesettings/OneHandOperationSettings;->DISABLED:I

    if-ne v3, v4, :cond_2

    .line 204
    iget-object v3, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mFloatingFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 207
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mFloatingFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f08096e

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 208
    iget-object v3, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mFloatingFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private init_UI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "one_hand_dial_keypad"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mDialKeypadPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 111
    const-string v0, "OneHandOperationSettings"

    const-string v1, "Dial Keypad checked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "one_hand_front_touch_button"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 124
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "one_hand_lg_keyboard"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 125
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mLGKeyboardPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 126
    const-string v0, "OneHandOperationSettings"

    const-string v1, "LG Keyboard checked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_2
    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "one_hand_keyboard_gesture"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 133
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mKeyboardGesturePreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 134
    const-string v0, "OneHandOperationSettings"

    const-string v1, "Keyboard Gesture checked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_3
    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "one_hand_lock_screen"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 141
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mLockScreenPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 142
    const-string v0, "OneHandOperationSettings"

    const-string v1, "Lockscreen checked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_4
    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "one_hand_navigation_button"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 148
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mFloatingFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 150
    const-string v0, "OneHandOperationSettings"

    const-string v1, "Floating Buttons checked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_5
    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "one_hand_pull_down_screen"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 158
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mPullDownScreenPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 163
    :goto_6
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mDialKeypadPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 114
    const-string v0, "OneHandOperationSettings"

    const-string v1, "Dial Keypad unchecked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 121
    const-string v0, "OneHandOperationSettings"

    const-string v1, "Front touch button unchecked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mLGKeyboardPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 129
    const-string v0, "OneHandOperationSettings"

    const-string v1, "LG Keyboard unchecked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mKeyboardGesturePreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 137
    const-string v0, "OneHandOperationSettings"

    const-string v1, "Keyboard Gesture unchecked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 144
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mLockScreenPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 145
    const-string v0, "OneHandOperationSettings"

    const-string v1, "Lockscreen unchecked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mFloatingFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 154
    const-string v0, "OneHandOperationSettings"

    const-string v1, "Floating Buttons unchecked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 161
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mPullDownScreenPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_6
.end method

.method private removePreference(Landroid/preference/Preference;)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->parent:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->parent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 274
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f060036

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/OneHandOperationSettings;->addPreferencesFromResource(I)V

    .line 91
    const-string v0, "one_handed_operation"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/OneHandOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->parent:Landroid/preference/PreferenceScreen;

    .line 92
    const-string v0, "one_hand_dial_keypad"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/OneHandOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mDialKeypadPreferences:Landroid/preference/CheckBoxPreference;

    .line 93
    const-string v0, "one_hand_lg_keyboard"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/OneHandOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mLGKeyboardPreferences:Landroid/preference/CheckBoxPreference;

    .line 94
    const-string v0, "one_hand_keyboard_gesture"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/OneHandOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mKeyboardGesturePreferences:Landroid/preference/CheckBoxPreference;

    .line 95
    const-string v0, "one_hand_front_touch_button"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/OneHandOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

    .line 96
    const-string v0, "one_hand_lockscreen"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/OneHandOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mLockScreenPreferences:Landroid/preference/CheckBoxPreference;

    .line 97
    const-string v0, "one_hand_floating_front_touch_button"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/OneHandOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mFloatingFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

    .line 98
    const-string v0, "one_hand_pull_down_screen"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/OneHandOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mPullDownScreenPreferences:Landroid/preference/CheckBoxPreference;

    .line 99
    const-string v0, "one_hand_help"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/OneHandOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mHelpPreferences:Landroid/preference/Preference;

    .line 101
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    .line 283
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    const v10, 0x102002c

    if-ne v8, v10, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "settings_style"

    invoke-static {v8, v10, v11}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 285
    .local v3, settingStyle:I
    if-ne v3, v9, :cond_1

    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 286
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/OneHandOperationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 287
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 288
    .local v2, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 289
    .local v6, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 290
    .local v7, topActivityClassName:Ljava/lang/String;
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, baseActivityClassName:Ljava/lang/String;
    const-string v8, "kimyow"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "top="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  base="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v8, "com.lge.settings.easy.EasySettings"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->onBackPressed()V

    move v8, v9

    .line 307
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #baseActivityClassName:Ljava/lang/String;
    .end local v2           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3           #settingStyle:I
    .end local v6           #topActivity:Landroid/content/ComponentName;
    .end local v7           #topActivityClassName:Ljava/lang/String;
    :goto_0
    return v8

    .line 296
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v1       #baseActivityClassName:Ljava/lang/String;
    .restart local v2       #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v3       #settingStyle:I
    .restart local v6       #topActivity:Landroid/content/ComponentName;
    .restart local v7       #topActivityClassName:Ljava/lang/String;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.settings.SETTINGS"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v4, settings:Landroid/content/Intent;
    const/high16 v8, 0x1020

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 298
    invoke-static {v7}, Lcom/android/lgesettings/Utils;->getEasyTabIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, tabIndex:Ljava/lang/String;
    const-string v8, "kimyow"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tabIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v8, "android.intent.extra.TEXT"

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/OneHandOperationSettings;->startActivity(Landroid/content/Intent;)V

    .line 302
    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->finish()V

    move v8, v9

    .line 303
    goto :goto_0

    .line 307
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #baseActivityClassName:Ljava/lang/String;
    .end local v2           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3           #settingStyle:I
    .end local v4           #settings:Landroid/content/Intent;
    .end local v5           #tabIndex:Ljava/lang/String;
    .end local v6           #topActivity:Landroid/content/ComponentName;
    .end local v7           #topActivityClassName:Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 222
    iget-object v2, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mDialKeypadPreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 223
    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "one_hand_dial_keypad"

    iget-object v4, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mDialKeypadPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 225
    const-string v0, "OneHandOperationSettings"

    const-string v1, "Dial Keypad Click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 223
    goto :goto_0

    .line 226
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mLGKeyboardPreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 227
    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "one_hand_lg_keyboard"

    iget-object v4, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mLGKeyboardPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    const-string v0, "OneHandOperationSettings"

    const-string v1, "LG Keyboard Click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v0, v1

    .line 227
    goto :goto_2

    .line 230
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_6

    .line 231
    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "one_hand_front_touch_button"

    iget-object v4, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 233
    const-string v0, "OneHandOperationSettings"

    const-string v1, "Front touch button Click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    move v0, v1

    .line 231
    goto :goto_3

    .line 234
    :cond_6
    iget-object v2, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mLockScreenPreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_8

    .line 235
    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "one_hand_lock_screen"

    iget-object v4, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mLockScreenPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_4
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    const-string v0, "OneHandOperationSettings"

    const-string v1, "Lockscreen Click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    move v0, v1

    .line 235
    goto :goto_4

    .line 238
    :cond_8
    iget-object v2, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mKeyboardGesturePreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_a

    .line 239
    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "one_hand_keyboard_gesture"

    iget-object v4, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mKeyboardGesturePreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_5
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    const-string v0, "OneHandOperationSettings"

    const-string v1, "Keyboard Gesture Click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    move v0, v1

    .line 239
    goto :goto_5

    .line 242
    :cond_a
    iget-object v2, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mFloatingFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_c

    .line 243
    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "one_hand_navigation_button"

    iget-object v4, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mFloatingFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_6
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 245
    iget-object v0, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mFloatingFrontTouchButtonPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const-string v0, "OneHandOperationSettings"

    const-string v1, "FLOATING TOUCH Click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    move v0, v1

    .line 243
    goto :goto_6

    .line 252
    :cond_c
    iget-object v2, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mPullDownScreenPreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "one_hand_pull_down_screen"

    iget-object v4, p0, Lcom/android/lgesettings/OneHandOperationSettings;->mPullDownScreenPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    :goto_7
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_d
    move v0, v1

    goto :goto_7
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 170
    invoke-direct {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->init_UI()V

    .line 171
    invoke-direct {p0}, Lcom/android/lgesettings/OneHandOperationSettings;->checkMenuList()V

    .line 172
    return-void
.end method
