.class public Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "QuietModeAllowedCallSettingsActivity.java"


# instance fields
.field private mAllowedCategory:Landroid/preference/PreferenceCategory;

.field private mAutoReply:Landroid/preference/Preference;

.field private mBlockIncomingCalls:Landroid/preference/CheckBoxPreference;

.field private mBlockedCategory:Landroid/preference/PreferenceCategory;

.field private mContactsAlloed:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

.field private mRepeatedCall:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 99
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity$1;-><init>(Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->updateContactsAllowedSummary(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateContactsAllowed()V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity$2;-><init>(Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 201
    return-void
.end method

.method private updateContactsAllowedSummary(Landroid/database/Cursor;)V
    .locals 9
    .parameter "cursor"

    .prologue
    const v8, 0x7f080e1c

    const/4 v5, -0x1

    .line 204
    const/4 v2, 0x0

    .line 205
    .local v2, name:Ljava/lang/String;
    const/4 v0, -0x1

    .line 208
    .local v0, count:I
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    if-ne v0, v5, :cond_0

    .line 210
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 211
    if-nez v2, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080e11

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 215
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_1
    if-nez v2, :cond_2

    if-ne v0, v5, :cond_2

    .line 218
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mContactsAlloed:Landroid/preference/Preference;

    const v4, 0x7f080e1c

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 231
    :goto_1
    return-void

    .line 221
    :cond_2
    if-nez v0, :cond_3

    .line 222
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mContactsAlloed:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "QuietModeAllowedCallSettingsActivity"

    const-string v4, "updateContactsAllowedSummary() - NullPointerException!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mContactsAlloed:Landroid/preference/Preference;

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 224
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mContactsAlloed:Landroid/preference/Preference;

    const v4, 0x7f080dfa

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private updateUI()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mRepeatedCall:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isRepeatedCallMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 170
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mBlockIncomingCalls:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isBlockIncomingCalls()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->updateAutoReply()V

    .line 172
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->updateContactsAllowed()V

    .line 173
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->updateUI_BlockCalls()V

    .line 174
    return-void
.end method

.method private updateUI_BlockCalls()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mBlockIncomingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mRepeatedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mAutoReply:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mContactsAlloed:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 187
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mRepeatedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mAutoReply:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mContactsAlloed:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 245
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 246
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 118
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 119
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 120
    const v2, 0x7f0201fb

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 124
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mContext:Landroid/content/Context;

    .line 125
    const v2, 0x7f060045

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->addPreferencesFromResource(I)V

    .line 127
    const-string v2, "quiet_mode_block_incoming_calls"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mBlockIncomingCalls:Landroid/preference/CheckBoxPreference;

    .line 129
    const-string v2, "category_quiet_mode_allowed"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mAllowedCategory:Landroid/preference/PreferenceCategory;

    .line 130
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mAllowedCategory:Landroid/preference/PreferenceCategory;

    const v3, 0x7f080e24

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 133
    :cond_1
    const-string v2, "quiet_mode_repeated_call"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mRepeatedCall:Landroid/preference/CheckBoxPreference;

    .line 134
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mRepeatedCall:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 136
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mRepeatedCall:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f080e49

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 138
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mRepeatedCall:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f080e4a

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 141
    :cond_2
    const-string v2, "quiet_mode_contacts_allowed"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mContactsAlloed:Landroid/preference/Preference;

    .line 142
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mContactsAlloed:Landroid/preference/Preference;

    const v3, 0x7f080e55

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 146
    :cond_3
    const-string v2, "quiet_mode_auto_reply"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mAutoReply:Landroid/preference/Preference;

    .line 147
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 148
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mAutoReply:Landroid/preference/Preference;

    const v3, 0x7f080e52

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 150
    :cond_4
    const-string v2, "category_quiet_mode_blocked"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mBlockedCategory:Landroid/preference/PreferenceCategory;

    .line 151
    new-instance v2, Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    .line 153
    const-string v2, "JP"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "KDDI"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 154
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mBlockedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mAutoReply:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 157
    :cond_5
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 284
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x6400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 287
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.quietmode.QuietModeMainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->finish()V

    .line 290
    const/4 v1, 0x1

    .line 292
    .end local v0           #i:Landroid/content/Intent;
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
    .line 249
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 250
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 270
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mRepeatedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mRepeatedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBRepeatedCallMode(Z)V

    .line 279
    :goto_0
    return v0

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mBlockIncomingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mBlockIncomingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBlockIncomingCalls(Z)V

    .line 276
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->updateUI_BlockCalls()V

    goto :goto_0

    .line 279
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->updateUI()V

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "lge.settings.QMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, quietModefilter:Landroid/content/IntentFilter;
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 166
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 255
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 256
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 258
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 263
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 264
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 265
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 266
    return-void
.end method

.method public updateAutoReply()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getAutoReplyOption()I

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mAutoReply:Landroid/preference/Preference;

    const v1, 0x7f080e06

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 241
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mAutoReply:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAllowedCallSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getReplyMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
