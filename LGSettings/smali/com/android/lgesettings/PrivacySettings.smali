.class public Lcom/android/lgesettings/PrivacySettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAutoRestore:Landroid/preference/CheckBoxPreference;

.field private mBackup:Landroid/preference/CheckBoxPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBackupReset:Landroid/preference/PreferenceScreen;

.field private mConfigure:Landroid/preference/PreferenceScreen;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mDialogType:I

.field private final mLGMDMReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 365
    new-instance v0, Lcom/android/lgesettings/PrivacySettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/PrivacySettings$1;-><init>(Lcom/android/lgesettings/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/PrivacySettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private setBackupEnabled(Z)V
    .locals 10
    .parameter "enable"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 316
    iget-object v6, p0, Lcom/android/lgesettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v6, :cond_0

    .line 318
    :try_start_0
    iget-object v6, p0, Lcom/android/lgesettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v6, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_0
    iget-object v6, p0, Lcom/android/lgesettings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 326
    iget-object v6, p0, Lcom/android/lgesettings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, backupEnabled:Z
    const/4 v1, 0x0

    .line 330
    .local v1, configIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 332
    .local v2, configSummary:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/lgesettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v6, :cond_1

    .line 334
    :try_start_1
    iget-object v6, p0, Lcom/android/lgesettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v6}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    .line 335
    iget-object v6, p0, Lcom/android/lgesettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v6}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v5

    .line 336
    .local v5, transport:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/lgesettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v6, v5}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 337
    iget-object v6, p0, Lcom/android/lgesettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v6, v5}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 344
    .end local v5           #transport:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    move v3, v7

    .line 345
    .local v3, configureEnabled:Z
    :goto_1
    iget-object v6, p0, Lcom/android/lgesettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 346
    iget-object v6, p0, Lcom/android/lgesettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 347
    invoke-direct {p0, v2}, Lcom/android/lgesettings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    .line 350
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v6, :cond_2

    .line 351
    iget-object v6, p0, Lcom/android/lgesettings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_2

    .line 352
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/lgesettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/lgesettings/MDMSettingsAdapter;->setAutoRestoreMenu(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    .line 357
    .end local v0           #backupEnabled:Z
    .end local v1           #configIntent:Landroid/content/Intent;
    .end local v2           #configSummary:Ljava/lang/String;
    .end local v3           #configureEnabled:Z
    :cond_2
    :goto_2
    return-void

    .line 319
    :catch_0
    move-exception v4

    .line 320
    .local v4, e:Landroid/os/RemoteException;
    iget-object v9, p0, Lcom/android/lgesettings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_3

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 321
    iget-object v6, p0, Lcom/android/lgesettings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_4

    :goto_4
    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_3
    move v6, v8

    .line 320
    goto :goto_3

    :cond_4
    move v7, v8

    .line 321
    goto :goto_4

    .line 338
    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v0       #backupEnabled:Z
    .restart local v1       #configIntent:Landroid/content/Intent;
    .restart local v2       #configSummary:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 340
    .restart local v4       #e:Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/lgesettings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v4           #e:Landroid/os/RemoteException;
    :cond_5
    move v3, v8

    .line 344
    goto :goto_1
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2
    .parameter "summary"

    .prologue
    .line 279
    if-eqz p1, :cond_1

    .line 280
    const-string v0, "Need to set the backup account"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/android/lgesettings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080735

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    const v1, 0x7f080734

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private showEraseBackupDialog()V
    .locals 3

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/lgesettings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 213
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/lgesettings/PrivacySettings;->mDialogType:I

    .line 214
    invoke-virtual {p0}, Lcom/android/lgesettings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08073f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 216
    .local v0, msg:Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08073e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 222
    return-void
.end method

.method private updateConfigureSummary()V
    .locals 3

    .prologue
    .line 291
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, transport:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/lgesettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, summary:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/lgesettings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v0           #summary:Ljava/lang/String;
    .end local v1           #transport:Ljava/lang/String;
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 228
    invoke-virtual {p0}, Lcom/android/lgesettings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 230
    .local v5, res:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 231
    .local v0, backupEnabled:Z
    const/4 v1, 0x0

    .line 232
    .local v1, configIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 234
    .local v2, configSummary:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/lgesettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v7, :cond_0

    .line 235
    iget-object v7, p0, Lcom/android/lgesettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    .line 236
    iget-object v7, p0, Lcom/android/lgesettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, transport:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/lgesettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 238
    iget-object v7, p0, Lcom/android/lgesettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    if-eqz v2, :cond_0

    const-string v7, "Need to set the backup account"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v10, "VZW"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/android/lgesettings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f080735

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 249
    .end local v6           #transport:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/lgesettings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 251
    iget-object v10, p0, Lcom/android/lgesettings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    const-string v7, "backup_auto_restore"

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_4

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 253
    iget-object v7, p0, Lcom/android/lgesettings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 256
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    move v3, v8

    .line 257
    .local v3, configureEnabled:Z
    :goto_2
    iget-object v7, p0, Lcom/android/lgesettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 258
    iget-object v7, p0, Lcom/android/lgesettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 259
    invoke-direct {p0, v2}, Lcom/android/lgesettings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    .line 261
    sget-boolean v7, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v7, :cond_3

    .line 262
    iget-object v7, p0, Lcom/android/lgesettings/PrivacySettings;->mBackupReset:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_1

    .line 263
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/lgesettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/PrivacySettings;->mBackupReset:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v11, v8, v9}, Lcom/android/lgesettings/MDMSettingsAdapter;->setFactoryResetMenu(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 266
    :cond_1
    iget-object v7, p0, Lcom/android/lgesettings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_2

    .line 267
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/lgesettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v11, v8, v9}, Lcom/android/lgesettings/MDMSettingsAdapter;->setGoogleBackupMenu(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    .line 270
    :cond_2
    iget-object v7, p0, Lcom/android/lgesettings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_3

    .line 271
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/lgesettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v11, v8, v9}, Lcom/android/lgesettings/MDMSettingsAdapter;->setAutoRestoreMenu(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    .line 276
    :cond_3
    return-void

    .line 245
    .end local v3           #configureEnabled:Z
    :catch_0
    move-exception v4

    .line 247
    .local v4, e:Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/lgesettings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v4           #e:Landroid/os/RemoteException;
    :cond_4
    move v7, v9

    .line 251
    goto :goto_1

    :cond_5
    move v3, v9

    .line 256
    goto :goto_2
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 361
    const v0, 0x7f080889

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 300
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 302
    iget v0, p0, Lcom/android/lgesettings/PrivacySettings;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 303
    invoke-direct {p0, v2}, Lcom/android/lgesettings/PrivacySettings;->setBackupEnabled(Z)V

    .line 304
    invoke-direct {p0}, Lcom/android/lgesettings/PrivacySettings;->updateConfigureSummary()V

    .line 307
    :cond_0
    iput v2, p0, Lcom/android/lgesettings/PrivacySettings;->mDialogType:I

    .line 308
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v8, 0x7f06003c

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/PrivacySettings;->addPreferencesFromResource(I)V

    .line 83
    const-string v8, "ro.build.target_country"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, country:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/lgesettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v8, "CN"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/lgesettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f08072d

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setTitle(I)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 90
    .local v7, screen:Landroid/preference/PreferenceScreen;
    const-string v8, "backup"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/lgesettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 93
    const-string v8, "backup_data"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/lgesettings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    .line 94
    const-string v8, "auto_restore"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/lgesettings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    .line 95
    const-string v8, "configure_account"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/lgesettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    .line 97
    sget-boolean v8, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v8, :cond_1

    .line 98
    const-string v8, "backup_reset"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/lgesettings/PrivacySettings;->mBackupReset:Landroid/preference/PreferenceScreen;

    .line 103
    :cond_1
    iget-object v8, p0, Lcom/android/lgesettings/PrivacySettings;->mBackupReset:Landroid/preference/PreferenceScreen;

    if-nez v8, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/android/lgesettings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "backup_reset"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/lgesettings/PrivacySettings;->mBackupReset:Landroid/preference/PreferenceScreen;

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.google.settings"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v8

    if-nez v8, :cond_3

    .line 111
    const-string v8, "backup_category"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 113
    :cond_3
    invoke-direct {p0}, Lcom/android/lgesettings/PrivacySettings;->updateToggles()V

    .line 116
    invoke-virtual {p0}, Lcom/android/lgesettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/android/lgesettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "com.carrieriq.tmobile.IQToggle"

    invoke-static {v8, v9}, Lcom/android/lgesettings/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 118
    const-string v8, "backup_category"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 119
    .local v0, BackupGategory:Landroid/preference/PreferenceCategory;
    const-string v8, "ciq_toggle"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 120
    .local v3, ciq:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 121
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 126
    .end local v0           #BackupGategory:Landroid/preference/PreferenceCategory;
    .end local v3           #ciq:Landroid/preference/PreferenceScreen;
    :cond_4
    const-string v8, "reset_settings"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    .line 128
    .local v6, resetsetting:Landroid/preference/PreferenceScreen;
    if-eqz v6, :cond_5

    .line 129
    const-string v8, "reset_settings"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 133
    :cond_5
    sget-boolean v8, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v8, :cond_6

    .line 134
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 135
    .local v5, filterLGMDM:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/lgesettings/MDMSettingsAdapter;->addWipeDatePolicyChangeIntentFilter(Landroid/content/IntentFilter;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/lgesettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/PrivacySettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    .end local v5           #filterLGMDM:Landroid/content/IntentFilter;
    :cond_6
    invoke-virtual {p0}, Lcom/android/lgesettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Lcom/android/lgesettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "com.lge.bnr"

    invoke-static {v8, v9}, Lcom/android/lgesettings/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ATT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 143
    :cond_8
    const-string v8, "lg_backup_category"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 144
    .local v1, LGBackupGategory:Landroid/preference/PreferenceCategory;
    const-string v8, "lg_backup_service"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 145
    .local v2, LGBackupScreen:Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    .line 146
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 147
    const-string v8, "lg_backup_category"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 153
    .end local v1           #LGBackupGategory:Landroid/preference/PreferenceCategory;
    .end local v2           #LGBackupScreen:Landroid/preference/PreferenceScreen;
    :cond_9
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 177
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 179
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    .line 181
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/PrivacySettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MDM"

    const-string v2, "mLGMDMReceiver unregisterReceiver "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 378
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 379
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 193
    iget-object v3, p0, Lcom/android/lgesettings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    .line 194
    iget-object v3, p0, Lcom/android/lgesettings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 195
    invoke-direct {p0}, Lcom/android/lgesettings/PrivacySettings;->showEraseBackupDialog()V

    .line 207
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 197
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/lgesettings/PrivacySettings;->setBackupEnabled(Z)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/android/lgesettings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 202
    .local v0, curState:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/lgesettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v3, v0}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/lgesettings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 160
    invoke-direct {p0}, Lcom/android/lgesettings/PrivacySettings;->updateToggles()V

    .line 161
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onStop()V

    .line 172
    return-void
.end method
