.class public Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;
.super Landroid/app/Fragment;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lockscreen/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    }
.end annotation


# static fields
.field private static afterConfirm:I

.field private static beforeConfirm:I

.field private static checkConfig:I

.field private static nextClick:Z

.field private static typeface:Landroid/graphics/Typeface;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCancelButton:Landroid/widget/Button;

.field private mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIsAlphaMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field mPassword:Landroid/widget/EditText;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordExpired:Z

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPasswordRecovery:Z

.field private mPreviousLockScreen:I

.field private mRequestedQuality:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field private visible:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 166
    sput v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->beforeConfirm:I

    .line 167
    sput v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->afterConfirm:I

    .line 168
    sput v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->checkConfig:I

    .line 170
    sput-boolean v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->nextClick:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 141
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 142
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 143
    iput v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 144
    iput v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 145
    iput v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 146
    iput v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 147
    iput v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 148
    iput v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 150
    const/high16 v0, 0x2

    iput v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 152
    sget-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 175
    iput-boolean v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordExpired:Z

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPreviousLockScreen:I

    .line 207
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$1;-><init>(Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 254
    iput-boolean v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRecovery:Z

    .line 255
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$2;-><init>(Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 251
    return-void
.end method

.method private handleNext()V
    .locals 17

    .prologue
    .line 602
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 603
    .local v11, pin:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->length()I

    move-result v13

    sput v13, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->checkConfig:I

    .line 604
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    const/4 v7, 0x0

    .line 608
    .local v7, errorMsg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v14, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v13, v14, :cond_3

    .line 609
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 610
    if-nez v7, :cond_2

    .line 611
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 612
    sget-object v13, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v14, ""

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    :cond_2
    :goto_1
    if-eqz v7, :cond_0

    .line 709
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->showError(Ljava/lang/String;Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0

    .line 615
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v14, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v13, v14, :cond_2

    .line 616
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "device_policy"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    .line 620
    .local v10, mDPM:Landroid/app/admin/DevicePolicyManager;
    if-eqz v10, :cond_8

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v1

    .line 621
    .local v1, adminTimeout:J
    :goto_2
    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "screen_off_timeout"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-long v5, v13

    .line 624
    .local v5, displayTimeout:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v13

    if-nez v13, :cond_9

    const-wide/16 v13, 0x0

    cmp-long v13, v1, v13

    if-lez v13, :cond_9

    .line 625
    const-string v13, "hong"

    const-string v14, "none,swipe"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "lock_screen_lock_after_timeout_eas"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 635
    :goto_3
    const-wide/16 v13, 0x0

    cmp-long v13, v1, v13

    if-lez v13, :cond_5

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "lock_screen_lock_after_timeout_eas"

    const-wide/16 v15, 0x0

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_5

    .line 638
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "lock_screen_lock_after_timeout"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 640
    .local v3, currentTimeout:I
    sub-long v13, v1, v5

    long-to-int v4, v13

    .line 641
    .local v4, diff:I
    if-gt v3, v4, :cond_4

    const-string v13, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 642
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "lock_screen_lock_after_timeout"

    sub-long v15, v1, v5

    long-to-int v15, v15

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 648
    .end local v3           #currentTimeout:I
    .end local v4           #diff:I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "lockscreen.biometric_weak_fallback"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 650
    .local v9, isFallback:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v13, v9}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 652
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v13, v14, v11}, Lcom/android/lgesettings/MDMSettingsAdapter;->checkSimplepassword(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "is_simple_password"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 654
    const-string v13, "ChooseLockPassword"

    const-string v14, " password simple"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v13, v11, v14, v9}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZ)V

    .line 660
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPreviousLockScreen:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/lgesettings/lockscreen/LockUtil;->getActivatedLockScreen(Landroid/app/Activity;)I

    move-result v14

    if-eq v13, v14, :cond_6

    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f080cfc

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 663
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "config_feature_fcc_notification"

    invoke-static {v13, v14}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/lgesettings/lockscreen/LockUtil;->clearFccNotification(Landroid/content/Context;)V

    .line 668
    :cond_6
    sget-boolean v13, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v13, :cond_7

    .line 669
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 670
    const-string v13, "LGMDM"

    const-string v14, "Password is saved, Enforce is clear"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/lge/mdm/LGMDMManager;->setEnforcePasswordChange(Z)V

    .line 672
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v13, :cond_7

    .line 673
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/StatusBarManager;->disable(I)V

    .line 679
    :cond_7
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 680
    .local v8, intent:Landroid/content/Intent;
    const-string v13, "password"

    invoke-virtual {v8, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v13, v14, v8}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 683
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Landroid/app/Activity;->setResult(I)V

    .line 691
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 620
    .end local v1           #adminTimeout:J
    .end local v5           #displayTimeout:J
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #isFallback:Z
    :cond_8
    const-wide/16 v1, 0x0

    goto/16 :goto_2

    .line 629
    .restart local v1       #adminTimeout:J
    .restart local v5       #displayTimeout:J
    :cond_9
    const-string v13, "hong"

    const-string v14, "pin,password"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "lock_screen_lock_after_timeout_eas"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 656
    .restart local v9       #isFallback:Z
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "is_simple_password"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 657
    const-string v13, "ChooseLockPassword"

    const-string v14, " password not simple"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 694
    .end local v1           #adminTimeout:J
    .end local v5           #displayTimeout:J
    .end local v9           #isFallback:Z
    .end local v10           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    sget-object v13, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 697
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    .line 698
    .local v12, tmp:Ljava/lang/CharSequence;
    if-eqz v12, :cond_c

    move-object v13, v12

    .line 699
    check-cast v13, Landroid/text/Spannable;

    const/4 v14, 0x0

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v15

    invoke-static {v13, v14, v15}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 702
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v13}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v13

    if-nez v13, :cond_2

    .line 703
    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->nextClick:Z

    goto/16 :goto_1
.end method

.method private launchFacelockAppSetting()V
    .locals 3

    .prologue
    .line 714
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package:com.android.facelock"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 717
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->startActivity(Landroid/content/Intent;)V

    .line 718
    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 4
    .parameter "msg"
    .parameter "next"

    .prologue
    const/4 v3, 0x1

    .line 751
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 752
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 753
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 754
    .local v0, mesg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 755
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 756
    return-void
.end method

.method private updateUi()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 773
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 774
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 775
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v5, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v5, :cond_4

    if-lez v4, :cond_4

    .line 776
    iget v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v4, v0, :cond_2

    .line 778
    iget-boolean v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f080c65

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 781
    add-int/lit8 v1, v4, -0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 783
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 784
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f080181

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 788
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 809
    :goto_2
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v1, v1, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 810
    return-void

    .line 778
    :cond_0
    const v0, 0x7f080c64

    goto :goto_0

    .line 786
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 790
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    if-eqz v0, :cond_3

    .line 792
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 795
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x7f080b94

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 796
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 801
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v3, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v3, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v3, :cond_6

    .line 802
    :cond_5
    const-string v0, "hong"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPassword:Landroid/widget/EditText;

    const v3, 0x10000006

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 806
    :cond_6
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 807
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    if-lez v4, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 806
    :cond_7
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    goto :goto_3

    :cond_8
    move v0, v2

    .line 807
    goto :goto_4
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "password"

    .prologue
    .line 491
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v13, v14, :cond_2

    .line 492
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v13, :cond_1

    const v13, 0x7f080c65

    :goto_0
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 598
    :cond_0
    :goto_1
    return-object v10

    .line 492
    :cond_1
    const v13, 0x7f080c64

    goto :goto_0

    .line 497
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v13, v14, :cond_4

    .line 498
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v13, :cond_3

    const v13, 0x7f08017d

    :goto_2
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_3
    const v13, 0x7f08017e

    goto :goto_2

    .line 502
    :cond_4
    const/4 v6, 0x0

    .line 503
    .local v6, letters:I
    const/4 v9, 0x0

    .line 504
    .local v9, numbers:I
    const/4 v7, 0x0

    .line 505
    .local v7, lowercase:I
    const/4 v11, 0x0

    .line 506
    .local v11, symbols:I
    const/4 v12, 0x0

    .line 507
    .local v12, uppercase:I
    const/4 v8, 0x0

    .line 508
    .local v8, nonletter:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_a

    .line 509
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 511
    .local v3, c:C
    const/16 v13, 0x20

    if-le v3, v13, :cond_5

    const/16 v13, 0x7f

    if-le v3, v13, :cond_6

    .line 512
    :cond_5
    const v13, 0x7f080181

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 514
    :cond_6
    const/16 v13, 0x30

    if-lt v3, v13, :cond_7

    const/16 v13, 0x39

    if-gt v3, v13, :cond_7

    .line 515
    add-int/lit8 v9, v9, 0x1

    .line 516
    add-int/lit8 v8, v8, 0x1

    .line 508
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 517
    :cond_7
    const/16 v13, 0x41

    if-lt v3, v13, :cond_8

    const/16 v13, 0x5a

    if-gt v3, v13, :cond_8

    .line 518
    add-int/lit8 v6, v6, 0x1

    .line 519
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 520
    :cond_8
    const/16 v13, 0x61

    if-lt v3, v13, :cond_9

    const/16 v13, 0x7a

    if-gt v3, v13, :cond_9

    .line 521
    add-int/lit8 v6, v6, 0x1

    .line 522
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 524
    :cond_9
    add-int/lit8 v11, v11, 0x1

    .line 525
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 528
    .end local v3           #c:C
    :cond_a
    const/high16 v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v13, v14, :cond_c

    if-gtz v6, :cond_b

    if-lez v11, :cond_c

    .line 532
    :cond_b
    const v13, 0x7f08017f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 533
    :cond_c
    const/high16 v13, 0x6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v13, v14, :cond_14

    .line 534
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-ge v6, v13, :cond_d

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/high16 v14, 0x7f0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 538
    :cond_d
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-ge v9, v13, :cond_e

    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f0003

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 542
    :cond_e
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v7, v13, :cond_f

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f0001

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 546
    :cond_f
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v12, v13, :cond_10

    .line 547
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f0002

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 550
    :cond_10
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-ge v11, v13, :cond_11

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f0004

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 554
    :cond_11
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v8, v13, :cond_12

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f0005

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 560
    :cond_12
    sget-boolean v13, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v13, :cond_19

    .line 561
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/lge/mdm/LGMDMManager;->getAllowPasswordComplexForEAS(Landroid/content/ComponentName;)Z

    move-result v5

    .line 563
    .local v5, isForEAS:Z
    if-eqz v5, :cond_19

    .line 564
    if-nez v11, :cond_13

    if-nez v7, :cond_13

    .line 565
    const v13, 0x7f080c21

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 566
    :cond_13
    if-nez v11, :cond_19

    if-nez v12, :cond_19

    .line 567
    const v13, 0x7f080c20

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 573
    .end local v5           #isForEAS:Z
    :cond_14
    const/high16 v13, 0x4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v13, v14, :cond_16

    const/4 v1, 0x1

    .line 575
    .local v1, alphabetic:Z
    :goto_5
    const/high16 v13, 0x5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v13, v14, :cond_17

    const/4 v2, 0x1

    .line 577
    .local v2, alphanumeric:Z
    :goto_6
    if-nez v1, :cond_15

    if-eqz v2, :cond_18

    :cond_15
    if-nez v6, :cond_18

    .line 578
    const v13, 0x7f080182

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 573
    .end local v1           #alphabetic:Z
    .end local v2           #alphanumeric:Z
    :cond_16
    const/4 v1, 0x0

    goto :goto_5

    .line 575
    .restart local v1       #alphabetic:Z
    :cond_17
    const/4 v2, 0x0

    goto :goto_6

    .line 580
    .restart local v2       #alphanumeric:Z
    :cond_18
    if-eqz v2, :cond_19

    if-nez v9, :cond_19

    .line 581
    const v13, 0x7f080183

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 585
    .end local v1           #alphabetic:Z
    .end local v2           #alphanumeric:Z
    :cond_19
    sget-boolean v13, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v13, :cond_1a

    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/lge/mdm/LGMDMManager;->getAllowSimplePassword(Landroid/content/ComponentName;)Z

    move-result v13

    if-nez v13, :cond_1a

    .line 587
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/android/lgesettings/MDMSettingsAdapter;->checkSimplepassword(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 589
    .local v10, resString:Ljava/lang/String;
    if-nez v10, :cond_0

    .line 594
    .end local v10           #resString:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 595
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v13, :cond_1b

    const v13, 0x7f080185

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    :cond_1b
    const v13, 0x7f080180

    goto :goto_7

    .line 598
    :cond_1c
    const/4 v10, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 815
    sget v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->beforeConfirm:I

    sget v1, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->afterConfirm:I

    if-ne v0, v1, :cond_2

    .line 816
    sput v2, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->beforeConfirm:I

    .line 827
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 828
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 830
    :cond_1
    return-void

    .line 817
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 818
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->nextClick:Z

    if-eqz v0, :cond_1

    .line 822
    :cond_3
    sget-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 823
    sput-boolean v2, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->nextClick:Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 834
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 462
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 463
    packed-switch p1, :pswitch_data_0

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 465
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 467
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "button"
    .parameter "checked"

    .prologue
    .line 842
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->visible:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 844
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 845
    .local v1, selectionStart:I
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 847
    .local v0, selectionEnd:I
    if-eqz p2, :cond_1

    .line 848
    iget-boolean v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v2, :cond_0

    .line 850
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v3, 0x91

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 851
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    sget-object v3, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 864
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 865
    return-void

    .line 855
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 856
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    sget-object v3, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 861
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x81

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x12

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 720
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 748
    :goto_0
    return-void

    .line 724
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lockscreen.biometric_weak_fallback"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 726
    if-eqz v0, :cond_0

    .line 728
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 730
    const-string v1, "com.android.facelock"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 732
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_0

    .line 733
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->launchFacelockAppSetting()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 736
    :catch_0
    move-exception v0

    .line 737
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->launchFacelockAppSetting()V

    goto :goto_0

    .line 741
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 745
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 720
    :sswitch_data_0
    .sparse-switch
        0x7f0a0017 -> :sswitch_0
        0x7f0a006d -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/high16 v5, 0x8

    const/4 v4, 0x1

    .line 276
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 278
    sget v2, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->afterConfirm:I

    sput v2, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->beforeConfirm:I

    .line 279
    sput v4, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->afterConfirm:I

    .line 281
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/lockscreen/LockUtil;->getActivatedLockScreen(Landroid/app/Activity;)I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPreviousLockScreen:I

    .line 282
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 283
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 284
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "lockscreen.password_type"

    iget v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 286
    const-string v2, "lockscreen.password_min"

    iget v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 289
    const-string v2, "lockscreen.password_max"

    iget v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 290
    const-string v2, "lockscreen.password_min_letters"

    iget v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 292
    const-string v2, "lockscreen.password_min_uppercase"

    iget v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 294
    const-string v2, "lockscreen.password_min_lowercase"

    iget v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 296
    const-string v2, "lockscreen.password_min_numeric"

    iget v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 298
    const-string v2, "lockscreen.password_min_symbols"

    iget v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 300
    const-string v2, "lockscreen.password_min_nonletter"

    iget v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 303
    new-instance v2, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    .line 305
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_3

    .line 306
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "PASSWORD_RECOVERY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "PASSWORD_RECOVERY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 324
    :cond_1
    iget-boolean v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRecovery:Z

    if-eqz v2, :cond_2

    .line 325
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    .line 327
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 328
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 333
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v2, "PASSWORD_EXPIRE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 334
    iput-boolean v4, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordExpired:Z

    .line 336
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 338
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    .line 341
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 342
    .restart local v1       #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 347
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 352
    const v10, 0x7f040034

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 354
    .local v9, view:Landroid/view/View;
    const v10, 0x7f0a006d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 355
    iget-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    const v10, 0x7f0a0017

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 357
    iget-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    const/high16 v10, 0x4

    iget v11, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v10, v11, :cond_0

    const/high16 v10, 0x5

    iget v11, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v10, v11, :cond_0

    const/high16 v10, 0x6

    iget v11, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_3

    :cond_0
    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    .line 362
    const v10, 0x7f0a0073

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 363
    const v10, 0x7f0a0072

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    iput-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPassword:Landroid/widget/EditText;

    .line 364
    iget-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPassword:Landroid/widget/EditText;

    iput-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 368
    iget-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 369
    iget-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 371
    const v10, 0x7f0a006b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    iput-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->visible:Landroid/widget/CheckBox;

    .line 372
    iget-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->visible:Landroid/widget/CheckBox;

    const v11, 0x7f080b46

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setText(I)V

    .line 373
    iget-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v10, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 375
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 376
    .local v1, activity:Landroid/app/Activity;
    new-instance v10, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v11, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v12, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v10, v1, v11, v12}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 378
    iget-object v11, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-boolean v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_4

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v11, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 382
    const v10, 0x7f0a0071

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 383
    iget-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v10}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 385
    iget-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    .line 386
    .local v3, currentType:I
    iget-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v11, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v11, :cond_5

    .end local v3           #currentType:I
    :goto_2
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 389
    iget-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v10

    sput-object v10, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->typeface:Landroid/graphics/Typeface;

    .line 390
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 391
    .local v5, intent:Landroid/content/Intent;
    const-string v10, "confirm_credentials"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 392
    .local v2, confirmCredentials:Z
    if-nez p3, :cond_6

    .line 393
    sget-object v10, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v10}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 394
    if-eqz v2, :cond_1

    .line 395
    iget-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    const/16 v11, 0x3a

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 407
    :cond_1
    :goto_3
    instance-of v10, v1, Landroid/preference/PreferenceActivity;

    if-eqz v10, :cond_2

    move-object v6, v1

    .line 408
    check-cast v6, Landroid/preference/PreferenceActivity;

    .line 410
    .local v6, preferenceActivity:Landroid/preference/PreferenceActivity;
    iget-boolean v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_7

    const v4, 0x7f080b8e

    .line 413
    .local v4, id:I
    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 414
    .local v8, title:Ljava/lang/CharSequence;
    invoke-virtual {v6, v8, v8}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 417
    .end local v4           #id:I
    .end local v6           #preferenceActivity:Landroid/preference/PreferenceActivity;
    .end local v8           #title:Ljava/lang/CharSequence;
    :cond_2
    return-object v9

    .line 359
    .end local v1           #activity:Landroid/app/Activity;
    .end local v2           #confirmCredentials:Z
    .end local v5           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 378
    .restart local v1       #activity:Landroid/app/Activity;
    :cond_4
    const/4 v10, 0x1

    goto :goto_1

    .line 386
    .restart local v3       #currentType:I
    :cond_5
    const/16 v3, 0x12

    goto :goto_2

    .line 399
    .end local v3           #currentType:I
    .restart local v2       #confirmCredentials:Z
    .restart local v5       #intent:Landroid/content/Intent;
    :cond_6
    const-string v10, "first_pin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 400
    const-string v10, "ui_stage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 401
    .local v7, state:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 402
    invoke-static {v7}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v10

    iput-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 403
    iget-object v10, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v10}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_3

    .line 410
    .end local v7           #state:Ljava/lang/String;
    .restart local v6       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_7
    const v4, 0x7f080b8f

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 266
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 267
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    .line 268
    iget-boolean v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRecovery:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordExpired:Z

    if-eqz v0, :cond_1

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 272
    :cond_1
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 760
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 763
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 764
    const/4 v0, 0x1

    .line 766
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 440
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 442
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 443
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 450
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 422
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 423
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 424
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 426
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 427
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 434
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 454
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 455
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 837
    return-void
.end method

.method protected updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 3
    .parameter "stage"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 475
    .local v0, previousStage:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 476
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 480
    if-eq v0, p1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 483
    :cond_0
    return-void
.end method
