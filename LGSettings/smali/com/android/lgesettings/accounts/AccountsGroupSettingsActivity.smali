.class public Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;
.super Lcom/android/lgesettings/accounts/AccountPreferenceBase;
.source "AccountsGroupSettingsActivity.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field private KEY_AUTO_SYNC_DATA:Ljava/lang/String;

.field private KEY_BUA_ACCOUNT:Ljava/lang/String;

.field private KEY_LG_ACCOUNT:Ljava/lang/String;

.field private KEY_PROVIDER_ACCOUNT:Ljava/lang/String;

.field private accountBUA:Lcom/android/lgesettings/AccountPreference;

.field private autoSyncData:Landroid/preference/CheckBoxPreference;

.field private isMyPhoneBook:Z

.field private mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

.field private mAuthorities:[Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mLGMDMReceiver:Landroid/content/BroadcastReceiver;

.field private mListeningToAccountUpdates:Z

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private providerAccounts:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/lgesettings/accounts/AccountPreferenceBase;-><init>()V

    .line 74
    const-string v0, "LGAccountGroup"

    iput-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->KEY_LG_ACCOUNT:Ljava/lang/String;

    .line 75
    const-string v0, "BUAAccountGroup"

    iput-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->KEY_BUA_ACCOUNT:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->isMyPhoneBook:Z

    .line 81
    const-string v0, "auto_sync_checkbox"

    iput-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->KEY_AUTO_SYNC_DATA:Ljava/lang/String;

    .line 82
    const-string v0, "providerAccount"

    iput-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->KEY_PROVIDER_ACCOUNT:Ljava/lang/String;

    .line 314
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mHandler:Landroid/os/Handler;

    .line 317
    new-instance v0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity$1;-><init>(Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;)V

    iput-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 501
    new-instance v0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity$2;-><init>(Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;)V

    iput-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->autoSyncData:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkAndSetAABAccount(Lcom/android/lgesettings/AccountPreference;)V
    .locals 2
    .parameter "accountPref"

    .prologue
    .line 490
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/lgesettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/lgesettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.att.aab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p1}, Lcom/android/lgesettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/lgesettings/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 492
    invoke-virtual {p1}, Lcom/android/lgesettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->setSummary(Landroid/accounts/Account;Lcom/android/lgesettings/AccountPreference;)V

    .line 496
    :cond_0
    return-void
.end method

.method private checkAndSetMyPhoneBookAccount(Lcom/android/lgesettings/AccountPreference;)V
    .locals 2
    .parameter "accountPref"

    .prologue
    .line 442
    invoke-virtual {p1}, Lcom/android/lgesettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/lgesettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.lge.myphonebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->isMyPhoneBook:Z

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getMyPhonebookName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/lgesettings/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 444
    invoke-virtual {p1}, Lcom/android/lgesettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->setSummary(Landroid/accounts/Account;Lcom/android/lgesettings/AccountPreference;)V

    .line 446
    :cond_0
    return-void
.end method

.method private getMyPhonebookName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "myphonebook_FN"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    if-nez v0, :cond_0

    .line 436
    const-string v0, "MyPhonebook"

    .line 438
    :cond_0
    return-object v0
.end method

.method private isVisibleAccounts(Ljava/lang/String;)Z
    .locals 4
    .parameter "accountType"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 393
    const-string v2, "com.mobileleader.sync"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    :cond_0
    :goto_0
    return v0

    .line 395
    :cond_1
    const-string v2, "com.lge.sync"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 397
    const-string v2, "com.att.aab"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ATT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    :cond_2
    const-string v2, "com.fusionone.account"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 405
    const-string v2, "com.lge.myphonebook"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->showMyPhoneBookAccount()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 406
    iput-boolean v1, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->isMyPhoneBook:Z

    .line 411
    :cond_3
    const-string v2, "com.lge.vmemo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 414
    const-string v2, "com.lge.android.weather.sync"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 417
    goto :goto_0

    .line 407
    :cond_4
    const-string v2, "com.lge.myphonebook"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->showMyPhoneBookAccount()Z

    move-result v2

    if-nez v2, :cond_3

    .line 408
    iput-boolean v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->isMyPhoneBook:Z

    goto :goto_0
.end method

.method private makeAccountsGroup()V
    .locals 18

    .prologue
    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->refreshAccountGroup()V

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    invoke-virtual {v2}, Lcom/android/lgesettings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v11

    .line 183
    .local v11, accountTypes:[Ljava/lang/String;
    const/4 v15, 0x0

    .line 185
    .local v15, isBAAccount:Z
    move-object v13, v11

    .local v13, arr$:[Ljava/lang/String;
    array-length v0, v13

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_5

    aget-object v8, v13, v14

    .line 186
    .local v8, accountType:Ljava/lang/String;
    const-string v2, "hsmodel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountType : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v2, "com.fusionone.account"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    const/4 v15, 0x1

    .line 190
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v8}, Lcom/android/lgesettings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 191
    .local v16, label:Ljava/lang/CharSequence;
    if-nez v16, :cond_2

    .line 185
    :cond_1
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v12

    .line 195
    .local v12, accounts:[Landroid/accounts/Account;
    array-length v2, v12

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    invoke-virtual {v2, v8}, Lcom/android/lgesettings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v7, 0x1

    .line 197
    .local v7, skipToAccount:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v8}, Lcom/android/lgesettings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 203
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->isVisibleAccounts(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, preference:Lcom/android/lgesettings/AccountPreference;
    if-eqz v7, :cond_4

    .line 207
    new-instance v1, Lcom/android/lgesettings/AccountPreference;

    .end local v1           #preference:Lcom/android/lgesettings/AccountPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v12, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/android/lgesettings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;ZZLjava/lang/String;Ljava/lang/String;I)V

    .line 214
    .restart local v1       #preference:Lcom/android/lgesettings/AccountPreference;
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->checkAndSetAABAccount(Lcom/android/lgesettings/AccountPreference;)V

    .line 216
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->checkAndSetMyPhoneBookAccount(Lcom/android/lgesettings/AccountPreference;)V

    .line 217
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/AccountPreference;->setOrder(I)V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->providerAccounts:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 195
    .end local v1           #preference:Lcom/android/lgesettings/AccountPreference;
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v7           #skipToAccount:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 209
    .restart local v1       #preference:Lcom/android/lgesettings/AccountPreference;
    .restart local v4       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v7       #skipToAccount:Z
    :cond_4
    new-instance v1, Lcom/android/lgesettings/AccountPreference;

    .end local v1           #preference:Lcom/android/lgesettings/AccountPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/android/lgesettings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;ZZLjava/lang/String;Ljava/lang/String;I)V

    .restart local v1       #preference:Lcom/android/lgesettings/AccountPreference;
    goto :goto_3

    .line 225
    .end local v1           #preference:Lcom/android/lgesettings/AccountPreference;
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v7           #skipToAccount:Z
    .end local v8           #accountType:Ljava/lang/String;
    .end local v12           #accounts:[Landroid/accounts/Account;
    .end local v16           #label:Ljava/lang/CharSequence;
    :cond_5
    if-nez v15, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->cloudEnable()Z

    move-result v2

    if-nez v2, :cond_6

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->providerAccounts:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->accountBUA:Lcom/android/lgesettings/AccountPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mListeningToAccountUpdates:Z

    if-nez v2, :cond_7

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v5}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 230
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mListeningToAccountUpdates:Z

    .line 232
    :cond_7
    return-void
.end method

.method private refreshAccountGroup()V
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 159
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->providerAccounts:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->providerAccounts:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->providerAccounts:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->autoSyncData:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->autoSyncData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->providerAccounts:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->providerAccounts:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 168
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->providerAccounts:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->accountBUA:Lcom/android/lgesettings/AccountPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 170
    :cond_2
    return-void
.end method

.method private setSummary(Landroid/accounts/Account;Lcom/android/lgesettings/AccountPreference;)V
    .locals 5
    .parameter "account"
    .parameter "preference"

    .prologue
    .line 451
    const-string v1, ""

    .line 453
    .local v1, providerName:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/lgesettings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 459
    :goto_0
    const-string v2, "hsmodel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p2, v1}, Lcom/android/lgesettings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 461
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 456
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 457
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showMyPhoneBookAccount()Z
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 465
    const/4 v8, 0x0

    .line 466
    .local v8, bShowAccount:Z
    const/4 v11, 0x0

    .line 467
    .local v11, iRet:I
    const-string v6, "com.lge.myphonebook.db.provider.MyPhonebookProvider"

    .line 468
    .local v6, AUTHORITY:Ljava/lang/String;
    const-string v0, "content://com.lge.myphonebook.db.provider.MyPhonebookProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 469
    .local v7, AUTHORITY_URI:Landroid/net/Uri;
    const-string v0, "show_account"

    invoke-static {v7, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 470
    .local v1, CONTENT_URI:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 471
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 473
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 474
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 473
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 479
    :catch_0
    move-exception v10

    .line 480
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "AccountsGroupSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception Msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 482
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 485
    .end local v10           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    return v8

    .line 476
    :cond_1
    if-eqz v11, :cond_2

    .line 477
    const/4 v8, 0x1

    .line 482
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private startAccountSettings(Lcom/android/lgesettings/AccountPreference;Z)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f081208

    const/4 v6, 0x1

    .line 344
    invoke-virtual {p1}, Lcom/android/lgesettings/AccountPreference;->getAccountType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.att.aab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.aab.action.STARTLGAAB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 370
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-virtual {p1}, Lcom/android/lgesettings/AccountPreference;->getAccountType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.myphonebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.myphonebook.DTAG_MYPHONEBOOK_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 351
    :cond_1
    if-eqz p2, :cond_2

    .line 352
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 353
    const-string v0, "account_type"

    invoke-virtual {p1}, Lcom/android/lgesettings/AccountPreference;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/lgesettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 355
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/lgesettings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 360
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 361
    const-string v0, "account_type"

    invoke-virtual {p1}, Lcom/android/lgesettings/AccountPreference;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v0, "account_label"

    iget-object v1, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/lgesettings/AccountPreference;->getAccountType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lcom/android/lgesettings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/lgesettings/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected cloudEnable()Z
    .locals 5

    .prologue
    .line 422
    const/4 v1, 0x0

    .line 423
    .local v1, result:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 424
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 425
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

    .line 426
    const-string v2, "com.lge.cloudservice.enabled"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 428
    :cond_0
    return v1
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/lgesettings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 2
    .parameter "accounts"

    .prologue
    .line 278
    const-string v0, "hsmodel"

    const-string v1, "account group : onAccountsUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/lgesettings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 280
    invoke-direct {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->makeAccountsGroup()V

    .line 281
    return-void
.end method

.method public bridge synthetic onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/lgesettings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAddAccountClicked()V
    .locals 3

    .prologue
    .line 271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "authorities"

    iget-object v2, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 274
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 86
    invoke-super {p0, p1}, Lcom/android/lgesettings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mAuthorities:[Ljava/lang/String;

    .line 92
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->addPreferencesFromResource(I)V

    .line 99
    new-instance v0, Lcom/android/lgesettings/AccountPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v7, ""

    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f080c09

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v9}, Lcom/android/lgesettings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;ZZLjava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->accountBUA:Lcom/android/lgesettings/AccountPreference;

    .line 100
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->accountBUA:Lcom/android/lgesettings/AccountPreference;

    iget-object v1, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->KEY_BUA_ACCOUNT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/AccountPreference;->setKey(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->accountBUA:Lcom/android/lgesettings/AccountPreference;

    invoke-virtual {v0, v9}, Lcom/android/lgesettings/AccountPreference;->setOrder(I)V

    .line 104
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->KEY_AUTO_SYNC_DATA:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->autoSyncData:Landroid/preference/CheckBoxPreference;

    .line 105
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->KEY_PROVIDER_ACCOUNT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->providerAccounts:Landroid/preference/PreferenceCategory;

    .line 106
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->setHasOptionsMenu(Z)V

    .line 108
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 109
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v10, filterLGMDM:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/lgesettings/MDMSettingsAdapter;->addManualSyncPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v10}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    .end local v10           #filterLGMDM:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, addAccountItem:Landroid/view/MenuItem;
    const/4 v1, 0x1

    const v2, 0x7f080775

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 255
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 256
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 257
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 374
    invoke-super {p0}, Lcom/android/lgesettings/accounts/AccountPreferenceBase;->onDestroy()V

    .line 375
    iget-boolean v1, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mListeningToAccountUpdates:Z

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 379
    :cond_0
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_1

    .line 381
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :cond_1
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MDM"

    const-string v2, "mLGMDMReceiver unregisterReceiver "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 261
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 262
    .local v0, itemId:I
    if-ne v0, v1, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->onAddAccountClicked()V

    .line 266
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/lgesettings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 285
    instance-of v2, p2, Lcom/android/lgesettings/AccountPreference;

    if-eqz v2, :cond_2

    move-object v2, p2

    .line 286
    check-cast v2, Lcom/android/lgesettings/AccountPreference;

    invoke-virtual {v2}, Lcom/android/lgesettings/AccountPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, keyForAccount:Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->KEY_BUA_ACCOUNT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->cloudEnable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    const-string v2, "hsmodel"

    const-string v3, "no cloudEnable"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.vzw.bua.intent.action.SUBSCRIBE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 312
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #keyForAccount:Ljava/lang/String;
    .end local p2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 296
    .restart local v1       #keyForAccount:Ljava/lang/String;
    .restart local p2
    :cond_0
    const-string v2, "hsmodel"

    const-string v3, "yes cloudEnable"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.lge.cloudvmm"

    const-string v4, "com.lge.cloudvmm.ApplicationGateActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 300
    const/high16 v2, 0x40

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    move-object v2, p2

    .line 305
    check-cast v2, Lcom/android/lgesettings/AccountPreference;

    check-cast p2, Lcom/android/lgesettings/AccountPreference;

    .end local p2
    invoke-virtual {p2}, Lcom/android/lgesettings/AccountPreference;->getIsSkip()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->startAccountSettings(Lcom/android/lgesettings/AccountPreference;Z)V

    goto :goto_0

    .line 307
    .end local v1           #keyForAccount:Ljava/lang/String;
    .restart local p2
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->autoSyncData:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 308
    iget-object v2, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->autoSyncData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto :goto_0

    .line 310
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    invoke-super {p0}, Lcom/android/lgesettings/accounts/AccountPreferenceBase;->onResume()V

    .line 121
    new-instance v0, Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    invoke-direct {v0}, Lcom/android/lgesettings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    .line 122
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 123
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mAuthenticatorHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 124
    iget-boolean v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mListeningToAccountUpdates:Z

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 126
    iput-boolean v3, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mListeningToAccountUpdates:Z

    .line 129
    :cond_0
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->autoSyncData:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 130
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->autoSyncData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2, v1}, Lcom/android/lgesettings/MDMSettingsAdapter;->setAutoMasterSynceEnableMenu(Landroid/content/ComponentName;Landroid/preference/CheckBoxPreference;)Z

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->autoSyncData:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->autoSyncData:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 137
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->providerAccounts:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->accountBUA:Lcom/android/lgesettings/AccountPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 142
    invoke-direct {p0}, Lcom/android/lgesettings/accounts/AccountsGroupSettingsActivity;->makeAccountsGroup()V

    .line 144
    return-void
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/lgesettings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
