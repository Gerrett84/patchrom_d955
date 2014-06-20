.class public Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lockscreen/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordConfirmed:Z

.field private mPasswordExpired:Z

.field private mPasswordRecovery:Z

.field private mPreviousLockScreen:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mWaitingForConfirmation:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 130
    iput-boolean v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 134
    iput-boolean v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPreviousLockScreen:I

    .line 139
    iput-boolean v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordExpired:Z

    .line 140
    iput-boolean v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordRecovery:Z

    .line 143
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment$1;-><init>(Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;)V

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private allowedForFallback(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 730
    const-string v0, "unlock_backup_info"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private appIsEnabled()Z
    .locals 5

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 871
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 874
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v3, "com.android.facelock"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 878
    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    :goto_0
    return v3

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private attachPreferenceClickListener()V
    .locals 5

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 519
    .local v3, root:Landroid/preference/PreferenceScreen;
    if-nez v3, :cond_1

    .line 533
    :cond_0
    return-void

    .line 522
    :cond_1
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 523
    .local v1, prefCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 524
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 525
    .local v2, preference:Landroid/preference/Preference;
    new-instance v4, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment$2;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment$2;-><init>(Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private confirmDialog()V
    .locals 4

    .prologue
    .line 882
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080bfa

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08059d

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment$4;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment$4;-><init>(Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08059e

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment$3;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment$3;-><init>(Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080cbb

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 904
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 905
    return-void
.end method

.method private disableUnusablePreferences(ILlibcore/util/MutableBoolean;)V
    .locals 15
    .parameter "quality"
    .parameter "allowBiometric"

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 676
    .local v2, entries:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "lockscreen.biometric_weak_fallback"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 678
    .local v6, onlyShowFallback:Z
    iget-object v12, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-virtual {v12}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v11

    .line 682
    .local v11, weakBiometricAvailable:Z
    const-string v12, "user"

    invoke-virtual {p0, v12}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 683
    .local v5, mUm:Landroid/os/UserManager;
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v9

    .line 684
    .local v9, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    const/4 v8, 0x1

    .line 686
    .local v8, singleUser:Z
    :goto_0
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_15

    .line 687
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    .line 688
    .local v7, pref:Landroid/preference/Preference;
    instance-of v12, v7, Landroid/preference/Preference;

    if-eqz v12, :cond_2

    .line 689
    invoke-virtual {v7}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 690
    .local v4, key:Ljava/lang/String;
    const/4 v1, 0x1

    .line 691
    .local v1, enabled:Z
    const/4 v10, 0x1

    .line 692
    .local v10, visible:Z
    const-string v12, "unlock_set_off"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 693
    if-gtz p1, :cond_4

    const/4 v1, 0x1

    .line 694
    :goto_2
    move v10, v8

    .line 712
    :cond_0
    :goto_3
    if-eqz v10, :cond_1

    if-eqz v6, :cond_14

    invoke-direct {p0, v4}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->allowedForFallback(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 713
    :cond_1
    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 686
    .end local v1           #enabled:Z
    .end local v4           #key:Ljava/lang/String;
    .end local v10           #visible:Z
    :cond_2
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 684
    .end local v3           #i:I
    .end local v7           #pref:Landroid/preference/Preference;
    .end local v8           #singleUser:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 693
    .restart local v1       #enabled:Z
    .restart local v3       #i:I
    .restart local v4       #key:Ljava/lang/String;
    .restart local v7       #pref:Landroid/preference/Preference;
    .restart local v8       #singleUser:Z
    .restart local v10       #visible:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 695
    :cond_5
    const-string v12, "unlock_set_none"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 696
    if-gtz p1, :cond_6

    const/4 v1, 0x1

    :goto_5
    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    .line 697
    :cond_7
    const-string v12, "unlock_set_easyui"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 698
    if-gtz p1, :cond_8

    const/4 v1, 0x1

    :goto_6
    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    goto :goto_6

    .line 699
    :cond_9
    const-string v12, "unlock_set_touch"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 700
    if-gtz p1, :cond_a

    const/4 v1, 0x1

    :goto_7
    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    goto :goto_7

    .line 701
    :cond_b
    const-string v12, "unlock_set_biometric_weak"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 702
    const v12, 0x8000

    move/from16 v0, p1

    if-le v0, v12, :cond_c

    move-object/from16 v0, p2

    iget-boolean v12, v0, Llibcore/util/MutableBoolean;->value:Z

    if-eqz v12, :cond_d

    :cond_c
    const/4 v1, 0x1

    .line 704
    :goto_8
    move v10, v11

    goto :goto_3

    .line 702
    :cond_d
    const/4 v1, 0x0

    goto :goto_8

    .line 705
    :cond_e
    const-string v12, "unlock_set_pattern"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 706
    const/high16 v12, 0x1

    move/from16 v0, p1

    if-gt v0, v12, :cond_f

    const/4 v1, 0x1

    :goto_9
    goto :goto_3

    :cond_f
    const/4 v1, 0x0

    goto :goto_9

    .line 707
    :cond_10
    const-string v12, "unlock_set_pin"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 708
    const/high16 v12, 0x2

    move/from16 v0, p1

    if-gt v0, v12, :cond_11

    const/4 v1, 0x1

    :goto_a
    goto :goto_3

    :cond_11
    const/4 v1, 0x0

    goto :goto_a

    .line 709
    :cond_12
    const-string v12, "unlock_set_password"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 710
    const/high16 v12, 0x6

    move/from16 v0, p1

    if-gt v0, v12, :cond_13

    const/4 v1, 0x1

    :goto_b
    goto/16 :goto_3

    :cond_13
    const/4 v1, 0x0

    goto :goto_b

    .line 714
    :cond_14
    if-nez v1, :cond_2

    .line 715
    const v12, 0x7f08016b

    invoke-virtual {v7, v12}, Landroid/preference/Preference;->setSummary(I)V

    .line 716
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_4

    .line 720
    .end local v1           #enabled:Z
    .end local v4           #key:Ljava/lang/String;
    .end local v7           #pref:Landroid/preference/Preference;
    .end local v10           #visible:Z
    :cond_15
    return-void
.end method

.method private getBiometricSensorIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 735
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 736
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 737
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 738
    const-string v1, ":android:show_fragment_title"

    const v2, 0x7f080159

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 743
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 744
    const-string v2, "com.android.facelock"

    const-string v3, "com.android.facelock.SetupIntro"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    const-string v2, "showTutorial"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 746
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 747
    const-string v2, "PendingIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 748
    return-object v1
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 860
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 861
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 862
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 864
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updatePreferencesOrFinish()V
    .locals 20

    .prologue
    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 432
    .local v4, intent:Landroid/content/Intent;
    const-string v17, "lockscreen.password_type"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 433
    .local v13, quality:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_b

    .line 435
    const-string v17, "minimum_quality"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 436
    new-instance v2, Llibcore/util/MutableBoolean;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v2, v0}, Llibcore/util/MutableBoolean;-><init>(Z)V

    .line 437
    .local v2, allowBiometric:Llibcore/util/MutableBoolean;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILlibcore/util/MutableBoolean;)I

    move-result v13

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    .line 439
    .local v12, prefScreen:Landroid/preference/PreferenceScreen;
    if-eqz v12, :cond_0

    .line 440
    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 443
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "lockscreen.biometric_weak_fallback"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 445
    .local v11, onlyShowFallback:Z
    if-eqz v11, :cond_a

    .line 446
    const v17, 0x7f060057

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 450
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->attachPreferenceClickListener()V

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    .line 454
    .local v14, root:Landroid/preference/PreferenceScreen;
    const-string v17, "unlock_set_off"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 455
    .local v8, mOFF:Landroid/preference/Preference;
    const-string v17, "unlock_set_none"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 456
    .local v7, mNone:Landroid/preference/Preference;
    const-string v17, "unlock_set_biometric_weak"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 457
    .local v5, mBio:Landroid/preference/Preference;
    const-string v17, "unlock_set_pattern"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 459
    .local v9, mPattern:Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "config_feature_remove_none_lockscreen"

    invoke-static/range {v17 .. v18}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 461
    invoke-virtual {v14, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 466
    :cond_1
    const-string v17, "unlock_set_easyui"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 467
    .local v6, mEasyUI:Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "config_feature_easy_ui"

    invoke-static/range {v17 .. v18}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 468
    invoke-virtual {v14, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 471
    :cond_2
    const-string v17, "unlock_set_touch"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 472
    .local v10, mTouch:Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "config_feature_touch_lock"

    invoke-static/range {v17 .. v18}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 473
    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 476
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "encryption_confirm"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 477
    .local v3, encryptionValue:Ljava/lang/String;
    const/16 v16, 0x0

    .line 479
    .local v16, state:I
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v15

    .line 481
    .local v15, service:Landroid/os/storage/IMountService;
    if-eqz v15, :cond_4

    .line 482
    invoke-interface {v15}, Landroid/os/storage/IMountService;->getEncryptionState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 488
    .end local v15           #service:Landroid/os/storage/IMountService;
    :cond_4
    :goto_1
    if-nez v3, :cond_5

    if-eqz v16, :cond_5

    const-string v17, "persist.sdcrypto.enabled"

    const-string v18, "0"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, "persist.insdcrypto.enabled"

    const-string v18, "0"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 491
    :cond_5
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 492
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "config_feature_easy_ui"

    invoke-static/range {v17 .. v18}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 495
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 498
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "config_feature_touch_lock"

    invoke-static/range {v17 .. v18}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 499
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 501
    :cond_7
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 502
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 507
    :cond_8
    if-eqz v14, :cond_9

    if-eqz v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "config_feature_biometric_weak"

    invoke-static/range {v17 .. v18}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 509
    invoke-virtual {v14, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 512
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(ILlibcore/util/MutableBoolean;)V

    .line 516
    .end local v2           #allowBiometric:Llibcore/util/MutableBoolean;
    .end local v3           #encryptionValue:Ljava/lang/String;
    .end local v5           #mBio:Landroid/preference/Preference;
    .end local v6           #mEasyUI:Landroid/preference/Preference;
    .end local v7           #mNone:Landroid/preference/Preference;
    .end local v8           #mOFF:Landroid/preference/Preference;
    .end local v9           #mPattern:Landroid/preference/Preference;
    .end local v10           #mTouch:Landroid/preference/Preference;
    .end local v11           #onlyShowFallback:Z
    .end local v12           #prefScreen:Landroid/preference/PreferenceScreen;
    .end local v14           #root:Landroid/preference/PreferenceScreen;
    .end local v16           #state:I
    :goto_2
    return-void

    .line 448
    .restart local v2       #allowBiometric:Llibcore/util/MutableBoolean;
    .restart local v11       #onlyShowFallback:Z
    .restart local v12       #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_a
    const v17, 0x7f060058

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 514
    .end local v2           #allowBiometric:Llibcore/util/MutableBoolean;
    .end local v11           #onlyShowFallback:Z
    .end local v12           #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_b
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_2

    .line 484
    .restart local v2       #allowBiometric:Llibcore/util/MutableBoolean;
    .restart local v3       #encryptionValue:Ljava/lang/String;
    .restart local v5       #mBio:Landroid/preference/Preference;
    .restart local v6       #mEasyUI:Landroid/preference/Preference;
    .restart local v7       #mNone:Landroid/preference/Preference;
    .restart local v8       #mOFF:Landroid/preference/Preference;
    .restart local v9       #mPattern:Landroid/preference/Preference;
    .restart local v10       #mTouch:Landroid/preference/Preference;
    .restart local v11       #onlyShowFallback:Z
    .restart local v12       #prefScreen:Landroid/preference/PreferenceScreen;
    .restart local v14       #root:Landroid/preference/PreferenceScreen;
    .restart local v16       #state:I
    :catch_0
    move-exception v17

    goto/16 :goto_1
.end method

.method private updateRadioButtonState()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 536
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 537
    .local v7, root:Landroid/preference/PreferenceScreen;
    if-nez v7, :cond_1

    .line 610
    :cond_0
    return-void

    .line 540
    :cond_1
    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 541
    .local v8, rootKey:Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v10, "security_setting_picker_radio"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 544
    const-string v10, "Log"

    const-string v11, "updateRadioButtonState"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v2, 0x0

    .line 546
    .local v2, key:Ljava/lang/String;
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v3, v10}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 548
    .local v3, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v10

    if-nez v10, :cond_6

    .line 549
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 550
    const-string v2, "unlock_set_off"

    .line 586
    :goto_0
    if-eqz v2, :cond_0

    .line 590
    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    .line 591
    .local v4, prefCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 592
    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 593
    .local v5, preference:Landroid/preference/Preference;
    instance-of v10, v5, Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-eqz v10, :cond_2

    .line 594
    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    .local v9, tempKey:Ljava/lang/String;
    move-object v6, v5

    .line 595
    check-cast v6, Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 596
    .local v6, rbp:Lcom/android/lgesettings/lge/RadioButtonPreference;
    if-eqz v9, :cond_8

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 597
    invoke-virtual {v6}, Lcom/android/lgesettings/lge/RadioButtonPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_2

    .line 598
    invoke-virtual {v6, v13}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 599
    invoke-virtual {v6}, Lcom/android/lgesettings/lge/RadioButtonPreference;->notifyDataChanged()V

    .line 591
    .end local v6           #rbp:Lcom/android/lgesettings/lge/RadioButtonPreference;
    .end local v9           #tempKey:Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 552
    .end local v1           #i:I
    .end local v4           #prefCount:I
    .end local v5           #preference:Landroid/preference/Preference;
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lockscreen_type_password_unspecified"

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 554
    .local v0, curLockScreenType:I
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "config_feature_easy_ui"

    invoke-static {v10, v11}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-ne v0, v13, :cond_4

    .line 556
    const-string v2, "unlock_set_easyui"

    goto :goto_0

    .line 557
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "config_feature_touch_lock"

    invoke-static {v10, v11}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x2

    if-ne v0, v10, :cond_5

    .line 559
    const-string v2, "unlock_set_touch"

    goto :goto_0

    .line 562
    :cond_5
    const-string v2, "unlock_set_none"

    goto :goto_0

    .line 565
    .end local v0           #curLockScreenType:I
    :cond_6
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 567
    const-string v2, "unlock_set_biometric_weak"

    goto :goto_0

    .line 569
    :cond_7
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 582
    const/4 v2, 0x0

    goto :goto_0

    .line 571
    :sswitch_0
    const-string v2, "unlock_set_pattern"

    .line 572
    goto :goto_0

    .line 574
    :sswitch_1
    const-string v2, "unlock_set_pin"

    .line 575
    goto :goto_0

    .line 579
    :sswitch_2
    const-string v2, "unlock_set_password"

    .line 580
    goto :goto_0

    .line 602
    .restart local v1       #i:I
    .restart local v4       #prefCount:I
    .restart local v5       #preference:Landroid/preference/Preference;
    .restart local v6       #rbp:Lcom/android/lgesettings/lge/RadioButtonPreference;
    .restart local v9       #tempKey:Ljava/lang/String;
    :cond_8
    invoke-virtual {v6}, Lcom/android/lgesettings/lge/RadioButtonPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 603
    invoke-virtual {v6, v12}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 604
    invoke-virtual {v6}, Lcom/android/lgesettings/lge/RadioButtonPreference;->notifyDataChanged()V

    goto :goto_2

    .line 569
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private upgradeQuality(ILlibcore/util/MutableBoolean;)I
    .locals 2
    .parameter "quality"
    .parameter "allowBiometric"

    .prologue
    const v1, 0x8000

    .line 614
    invoke-direct {p0, p1}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    .line 615
    invoke-direct {p0, p1}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForKeyStore(I)I

    move-result p1

    .line 616
    invoke-direct {p0, p1}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForEncryption(I)I

    move-result v0

    .line 617
    .local v0, encryptionQuality:I
    if-le v0, p1, :cond_0

    .line 620
    if-eqz p2, :cond_2

    .line 621
    if-gt p1, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p2, Llibcore/util/MutableBoolean;->value:Z

    :cond_0
    move p1, v0

    .line 629
    .end local p1
    :goto_1
    return p1

    .line 621
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 623
    :cond_2
    if-ne p1, v1, :cond_0

    goto :goto_1
.end method

.method private upgradeQualityForDPM(I)I
    .locals 3
    .parameter "quality"

    .prologue
    .line 634
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 635
    .local v0, minQuality:I
    if-ge p1, v0, :cond_0

    .line 636
    move p1, v0

    .line 638
    :cond_0
    return p1
.end method

.method private upgradeQualityForEncryption(I)I
    .locals 3
    .parameter "quality"

    .prologue
    .line 649
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v1

    .line 650
    .local v1, encryptionStatus:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 652
    .local v0, encrypted:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 653
    const/high16 v2, 0x2

    if-ge p1, v2, :cond_1

    .line 654
    const/high16 p1, 0x2

    .line 657
    :cond_1
    return p1

    .line 650
    .end local v0           #encrypted:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private upgradeQualityForKeyStore(I)I
    .locals 1
    .parameter "quality"

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    const/high16 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 663
    const/high16 p1, 0x1

    .line 666
    :cond_0
    return p1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 908
    const v0, 0x7f080888

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 374
    invoke-super {p0, p1, p2, p3}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 375
    iput-boolean v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 376
    const/16 v2, 0x1000

    if-ne p2, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/lockscreen/LockUtil;->isGuestMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    .line 379
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    const/16 v2, 0x64

    if-ne p1, v2, :cond_2

    if-ne p2, v4, :cond_2

    .line 383
    iput-boolean v5, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 384
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_0

    .line 385
    :cond_2
    const/16 v2, 0x65

    if-ne p1, v2, :cond_3

    .line 386
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->deleteTempGallery()V

    .line 387
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/Activity;->setResult(I)V

    .line 388
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 391
    :cond_3
    if-ne p1, v5, :cond_6

    .line 392
    if-ne p2, v4, :cond_0

    .line 394
    if-eqz p3, :cond_5

    .line 395
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 396
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "password"

    const-string v3, "password"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 403
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "PASSWORD_EXPIRE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 404
    const-string v2, "LGMDM"

    const-string v3, "successful password change in PASSWORD_EXPIRE_MODE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.mdm.intent.action.EXPIRATION_PASSWORD_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 410
    .end local v0           #i:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 399
    :cond_5
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1

    .line 416
    :cond_6
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    .line 417
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x8

    const/4 v6, 0x1

    .line 193
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 195
    const-string v5, "device_policy"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    iput-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 196
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 197
    new-instance v5, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    .line 200
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "confirm_credentials"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 202
    .local v0, confirmCredentials:Z
    if-nez v0, :cond_7

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 204
    if-eqz p1, :cond_0

    .line 205
    const-string v5, "password_confirmed"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 206
    const-string v5, "waiting_for_confirmation"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 210
    :cond_0
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v5, :cond_5

    .line 211
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 212
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 213
    const-string v5, "statusbar"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    iput-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "PASSWORD_RECOVERY"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 219
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "PASSWORD_RECOVERY"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, recovery:Ljava/lang/String;
    invoke-static {}, Lcom/lge/mdm/uimanager/LGMDMUIManager;->getUIAdapterLockScreen()Lcom/lge/mdm/uimanager/adapter/LGMDMUILockScreenAdapter;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v5, v4, v7, v8}, Lcom/lge/mdm/uimanager/adapter/LGMDMUILockScreenAdapter;->checkPasswordRecovery(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 226
    iput-boolean v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 227
    iput-boolean v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordRecovery:Z

    .line 229
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.lge.mdm.intent.action.changeRecoveryPassword"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 232
    .end local v2           #i:Landroid/content/Intent;
    .end local v4           #recovery:Ljava/lang/String;
    :cond_3
    iget-boolean v5, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordRecovery:Z

    if-eqz v5, :cond_4

    .line 233
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/Window;->addFlags(I)V

    .line 235
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 236
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v7, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 242
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "PASSWORD_EXPIRE"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 243
    iput-boolean v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordExpired:Z

    .line 245
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v7, 0x80

    invoke-virtual {v5, v7}, Landroid/view/Window;->addFlags(I)V

    .line 247
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/Window;->addFlags(I)V

    .line 250
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 251
    .restart local v3       #intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v7, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    :cond_5
    iget-boolean v5, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v5, :cond_8

    .line 257
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 275
    :cond_6
    :goto_1
    return-void

    .line 202
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 258
    :cond_8
    iget-boolean v5, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v5, :cond_6

    .line 259
    new-instance v1, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5, p0}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 262
    .local v1, helper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v5, :cond_9

    .line 263
    iget-boolean v5, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordExpired:Z

    if-eqz v5, :cond_9

    .line 264
    iget-boolean v5, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordExpired:Z

    invoke-virtual {v1, v5}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->setPasswordExpired(Z)V

    .line 268
    :cond_9
    const/16 v5, 0x64

    invoke-virtual {v1, v5, v10, v10}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 269
    iput-boolean v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 270
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_1

    .line 272
    :cond_a
    iput-boolean v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 360
    invoke-super {p0, p1, p2, p3}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 361
    .local v2, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 363
    .local v1, onlyShowFallback:Z
    if-eqz v1, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040193

    invoke-static {v3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 366
    .local v0, header:Landroid/view/View;
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3, v0, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 369
    .end local v0           #header:Landroid/view/View;
    :cond_0
    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 156
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    .line 157
    iget-boolean v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordRecovery:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordExpired:Z

    if-eqz v0, :cond_1

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 181
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 188
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 289
    invoke-virtual {p2}, Landroid/preference/Preference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    .line 354
    :goto_0
    return v0

    .line 293
    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, key:Ljava/lang/String;
    const/4 v0, 0x1

    .line 295
    .local v0, handled:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/lgesettings/lockscreen/LockUtil;->getActivatedLockScreen(Landroid/app/Activity;)I

    move-result v3

    iput v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPreviousLockScreen:I

    .line 296
    const-string v3, "unlock_set_off"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    invoke-virtual {p0, v5, v2}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 307
    :cond_1
    const-string v3, "unlock_set_none"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "unlock_set_easyui"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "unlock_set_touch"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 312
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "config_feature_easy_ui"

    invoke-static {v3, v4}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "unlock_set_easyui"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 313
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_type_password_unspecified"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 326
    :goto_1
    invoke-virtual {p0, v5, v5}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 316
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "config_feature_touch_lock"

    invoke-static {v2, v3}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "unlock_set_touch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 317
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_type_password_unspecified"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 320
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_type_password_unspecified"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 333
    :cond_5
    const-string v2, "unlock_set_biometric_weak"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 335
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->appIsEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 336
    const v2, 0x8000

    invoke-virtual {p0, v2, v5}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    .line 339
    :cond_6
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->confirmDialog()V

    goto/16 :goto_0

    .line 342
    :cond_7
    const-string v2, "unlock_set_pattern"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 343
    const/high16 v2, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    .line 345
    :cond_8
    const-string v2, "unlock_set_pin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 346
    const/high16 v2, 0x2

    invoke-virtual {p0, v2, v5}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    .line 348
    :cond_9
    const-string v2, "unlock_set_password"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 349
    const/high16 v2, 0x4

    invoke-virtual {p0, v2, v5}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    .line 352
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 166
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->updateRadioButtonState()V

    .line 176
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 423
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 425
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 426
    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 428
    return-void
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v9, 0x65

    const/4 v0, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 762
    iget-boolean v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v1, :cond_0

    .line 763
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to update password without confirming it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 769
    invoke-direct {p0, p1, v6}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILlibcore/util/MutableBoolean;)I

    move-result v5

    .line 771
    const/high16 v1, 0x2

    if-lt v5, v1, :cond_6

    .line 772
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v1

    .line 773
    if-ge v1, v0, :cond_e

    .line 776
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v1

    .line 777
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/android/lgesettings/lockscreen/ChooseLockPassword;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    .line 778
    const-string v7, "lockscreen.password_type"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 779
    const-string v7, "lockscreen.password_min"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 780
    const-string v0, "lockscreen.password_max"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 781
    const-string v0, "confirm_credentials"

    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 782
    const-string v0, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 785
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    .line 786
    iget-boolean v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordExpired:Z

    if-eqz v0, :cond_1

    .line 787
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v0, "PASSWORD_EXPIRE"

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 791
    :cond_1
    if-eqz v4, :cond_3

    .line 792
    invoke-virtual {p0, v6, v9}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 857
    :cond_2
    :goto_1
    return-void

    .line 799
    :cond_3
    invoke-virtual {p0, v6, v2}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 849
    :cond_4
    :goto_2
    if-nez v5, :cond_2

    .line 850
    iget v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPreviousLockScreen:I

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/lockscreen/LockUtil;->getActivatedLockScreen(Landroid/app/Activity;)I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 851
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080cfc

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 853
    :cond_5
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_1

    .line 803
    :cond_6
    const/high16 v0, 0x1

    if-ne v5, v0, :cond_b

    .line 804
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    .line 805
    :goto_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 806
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v0, :cond_9

    const-class v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternTutorial;

    :goto_4
    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 809
    const-string v0, "key_lock_method"

    const-string v6, "pattern"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    const-string v0, "confirm_credentials"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 811
    const-string v0, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 814
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_7

    .line 815
    iget-boolean v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordExpired:Z

    if-eqz v0, :cond_7

    .line 816
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v0, "PASSWORD_EXPIRE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 820
    :cond_7
    if-eqz v4, :cond_a

    .line 821
    invoke-virtual {p0, v1, v9}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_8
    move v0, v3

    .line 804
    goto :goto_3

    .line 806
    :cond_9
    const-class v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern;

    goto :goto_4

    .line 828
    :cond_a
    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 832
    :cond_b
    const v0, 0x8000

    if-ne v5, v0, :cond_d

    .line 833
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getBiometricSensorIntent()Landroid/content/Intent;

    move-result-object v0

    .line 835
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_c

    .line 836
    iget-boolean v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordExpired:Z

    if-eqz v1, :cond_c

    .line 837
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v1, "PASSWORD_EXPIRE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 842
    :cond_c
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 843
    :cond_d
    if-nez v5, :cond_4

    .line 844
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 845
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 846
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    goto/16 :goto_2

    :cond_e
    move v0, v1

    goto/16 :goto_0
.end method
