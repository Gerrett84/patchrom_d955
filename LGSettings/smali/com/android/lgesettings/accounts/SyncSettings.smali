.class public Lcom/android/lgesettings/accounts/SyncSettings;
.super Lcom/android/lgesettings/accounts/AccountPreferenceBase;
.source "SyncSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/lgesettings/DialogCreatable;


# instance fields
.field private isRemovedBUA:Z

.field private mAuthorities:[Ljava/lang/String;

.field private mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

.field private mDialogFragment:Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private final mHandler:Landroid/os/Handler;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/lgesettings/accounts/AccountPreferenceBase;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/accounts/SyncSettings;->mHandler:Landroid/os/Handler;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/accounts/SyncSettings;->isRemovedBUA:Z

    .line 268
    new-instance v0, Lcom/android/lgesettings/accounts/SyncSettings$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/accounts/SyncSettings$2;-><init>(Lcom/android/lgesettings/accounts/SyncSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/accounts/SyncSettings;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/accounts/SyncSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/lgesettings/accounts/SyncSettings;->mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/accounts/SyncSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/lgesettings/accounts/SyncSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private isVisibleAccounts(Landroid/accounts/Account;)Z
    .locals 3
    .parameter "account"

    .prologue
    const/4 v0, 0x0

    .line 230
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "com.mobileleader.sync"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 233
    :cond_1
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "com.lge.sync"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "com.att.aab"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ATT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    :cond_2
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "com.fusionone.account"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/lgesettings/accounts/SyncSettings;->isRemovedBUA:Z

    if-nez v1, :cond_0

    .line 242
    :cond_3
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "com.lge.vmemo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "com.lge.android.weather.sync"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private removeAccountPreferences()V
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 164
    .local v1, parent:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 165
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Lcom/android/lgesettings/AccountPreference;

    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 168
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    return-void
.end method

.method private startAccountSettings(Lcom/android/lgesettings/AccountPreference;)V
    .locals 3
    .parameter "acctPref"

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/android/lgesettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 148
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/accounts/SyncSettings;->startActivity(Landroid/content/Intent;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/SyncSettings;->finish()V

    .line 151
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected cloudEnable()Z
    .locals 5

    .prologue
    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, result:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/SyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 261
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 262
    const-string v2, "BUA+"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pm.hasSystemFeature(com.lge.cloudservice.enabled); : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.lge.cloudservice.enabled"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v2, "com.lge.cloudservice.enabled"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 265
    :cond_0
    return v1
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/lgesettings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 14
    .parameter "accounts"

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 212
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/accounts/SyncSettings;->removeAccountPreferences()V

    .line 178
    const/4 v8, 0x0

    .local v8, i:I
    array-length v11, p1

    .local v11, n:I
    :goto_1
    if-ge v8, v11, :cond_7

    .line 179
    aget-object v2, p1, v8

    .line 180
    .local v2, account:Landroid/accounts/Account;
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/accounts/SyncSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 181
    .local v4, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v2}, Lcom/android/lgesettings/accounts/SyncSettings;->isVisibleAccounts(Landroid/accounts/Account;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 178
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 184
    :cond_2
    const/4 v13, 0x1

    .line 185
    .local v13, showAccount:Z
    iget-object v1, p0, Lcom/android/lgesettings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    .line 186
    const/4 v13, 0x0

    .line 187
    iget-object v7, p0, Lcom/android/lgesettings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    .local v7, arr$:[Ljava/lang/String;
    array-length v10, v7

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_3
    if-ge v9, v10, :cond_3

    aget-object v12, v7, v9

    .line 188
    .local v12, requestedAuthority:Ljava/lang/String;
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 189
    const/4 v13, 0x1

    .line 195
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v12           #requestedAuthority:Ljava/lang/String;
    :cond_3
    if-eqz v13, :cond_1

    .line 196
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/accounts/SyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 197
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/lgesettings/AccountPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/lgesettings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;ZI)V

    .line 199
    .local v0, preference:Lcom/android/lgesettings/AccountPreference;
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 201
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v5, "com.fusionone.account"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 202
    const v1, 0x7f080c09

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/AccountPreference;->setTitle(I)V

    .line 203
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 187
    .end local v0           #preference:Lcom/android/lgesettings/AccountPreference;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v7       #arr$:[Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    .restart local v12       #requestedAuthority:Ljava/lang/String;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 204
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v12           #requestedAuthority:Ljava/lang/String;
    .restart local v0       #preference:Lcom/android/lgesettings/AccountPreference;
    .restart local v3       #icon:Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v5, "com.lge.android."

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 205
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 207
    :cond_6
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/accounts/SyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 211
    .end local v0           #preference:Lcom/android/lgesettings/AccountPreference;
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v4           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13           #showAccount:Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/SyncSettings;->onSyncStateUpdated()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/lgesettings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 96
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/lgesettings/accounts/SyncSettings;->mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_0

    .line 108
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "authorities"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    .line 109
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "REMOVE_BUA"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/lgesettings/accounts/SyncSettings;->isRemovedBUA:Z

    .line 110
    const-string v2, "hsmodel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRemovedBUA : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lcom/android/lgesettings/accounts/SyncSettings;->isRemovedBUA:Z

    if-eqz v1, :cond_2

    const-string v1, "true"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/SyncSettings;->updateAuthDescriptions()V

    .line 112
    return-void

    .line 99
    :cond_0
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_1

    .line 100
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/lgesettings/accounts/SyncSettings;->mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2, v3}, Lcom/android/lgesettings/MDMSettingsAdapter;->setAutoMasterSynceEnableMenu(Landroid/content/ComponentName;Landroid/preference/CheckBoxPreference;)Z

    goto :goto_0

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/accounts/SyncSettings;->mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 110
    :cond_2
    const-string v1, "false"

    goto :goto_1
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 217
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 219
    .local v2, pref:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/lgesettings/AccountPreference;

    if-eqz v3, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/AccountPreference;

    .line 222
    .local v0, accPref:Lcom/android/lgesettings/AccountPreference;
    invoke-virtual {v0}, Lcom/android/lgesettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/accounts/SyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 223
    invoke-virtual {v0}, Lcom/android/lgesettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/accounts/SyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 217
    .end local v0           #accPref:Lcom/android/lgesettings/AccountPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v2           #pref:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/lgesettings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f060061

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/accounts/SyncSettings;->addPreferencesFromResource(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "sync_switch"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/accounts/SyncSettings;->mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

    .line 63
    iget-object v0, p0, Lcom/android/lgesettings/accounts/SyncSettings;->mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/lgesettings/accounts/SyncSettings$1;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/accounts/SyncSettings$1;-><init>(Lcom/android/lgesettings/accounts/SyncSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/android/lgesettings/accounts/SyncSettings;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/accounts/SyncSettings;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/accounts/SyncSettings;->setHasOptionsMenu(Z)V

    .line 80
    return-void
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/android/lgesettings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 123
    instance-of v1, p2, Lcom/android/lgesettings/AccountPreference;

    if-eqz v1, :cond_2

    .line 124
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v1

    const v2, 0x7f080c09

    if-ne v1, v2, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/SyncSettings;->cloudEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.vzw.bua.intent.action.SUBSCRIBE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/accounts/SyncSettings;->startActivity(Landroid/content/Intent;)V

    .line 142
    .end local v0           #intent:Landroid/content/Intent;
    .end local p2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 129
    .restart local p2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.lge.cloudvmm"

    const-string v3, "com.lge.cloudvmm.ApplicationGateActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 132
    const/high16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/accounts/SyncSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 137
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    check-cast p2, Lcom/android/lgesettings/AccountPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/lgesettings/accounts/SyncSettings;->startAccountSettings(Lcom/android/lgesettings/AccountPreference;)V

    goto :goto_0

    .line 140
    .restart local p2
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/android/lgesettings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/lgesettings/accounts/AccountPreferenceBase;->onStart()V

    .line 85
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 86
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 87
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/lgesettings/accounts/AccountPreferenceBase;->onStop()V

    .line 117
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 118
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 119
    return-void
.end method

.method public showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/lgesettings/accounts/SyncSettings;->mDialogFragment:Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "AccountSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    new-instance v0, Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/lgesettings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/lgesettings/accounts/SyncSettings;->mDialogFragment:Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 159
    iget-object v0, p0, Lcom/android/lgesettings/accounts/SyncSettings;->mDialogFragment:Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/android/lgesettings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
