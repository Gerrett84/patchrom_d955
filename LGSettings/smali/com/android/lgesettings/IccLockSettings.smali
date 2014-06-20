.class public Lcom/android/lgesettings/IccLockSettings;
.super Landroid/preference/PreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lcom/android/lgesettings/EditPinPreference$OnPinEnteredListener;


# instance fields
.field private mCount:I

.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/lgesettings/EditPinPreference;

.field private mPinToggle:Landroid/preference/CheckBoxPreference;

.field private mRes:Landroid/content/res/Resources;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mToState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/IccLockSettings;->mDialogState:I

    .line 123
    new-instance v0, Lcom/android/lgesettings/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/IccLockSettings$1;-><init>(Lcom/android/lgesettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 145
    new-instance v0, Lcom/android/lgesettings/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/IccLockSettings$2;-><init>(Lcom/android/lgesettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/IccLockSettings;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/lgesettings/IccLockSettings;->iccLockChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/IccLockSettings;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/lgesettings/IccLockSettings;->iccPinChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/lgesettings/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/IccLockSettings;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/lgesettings/IccLockSettings;->iccEnterPinChange(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/lgesettings/IccLockSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private displayRetryCounter(Ljava/lang/String;)V
    .locals 11
    .parameter "s"

    .prologue
    const v10, 0x7f080c61

    const v9, 0x1040013

    const v7, 0x1010355

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 561
    iget-object v3, p0, Lcom/android/lgesettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v0

    .line 563
    .local v0, attempts:I
    iput v0, p0, Lcom/android/lgesettings/IccLockSettings;->mCount:I

    .line 567
    const-string v3, "ro.build.target_country"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 568
    .local v2, targetCountry:Ljava/lang/String;
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, config_operator:Ljava/lang/String;
    const-string v3, "IccLockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attempts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " config: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v3, "IccLockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "targetCountry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    const-string v3, "VDF"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 575
    iget-object v3, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f080c06

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 607
    :goto_0
    return-void

    .line 581
    :cond_0
    const-string v3, "VDF"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 582
    if-ne v0, v6, :cond_1

    .line 583
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/lgesettings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080c60

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/lgesettings/IccLockSettings;->mCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 587
    :cond_1
    if-le v0, v6, :cond_2

    .line 588
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/lgesettings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080c5f

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/lgesettings/IccLockSettings;->mCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 593
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/IccLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sim_err_popup_msg"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 597
    :cond_3
    if-lez v0, :cond_4

    .line 598
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/lgesettings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080c5f

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/lgesettings/IccLockSettings;->mCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 603
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/IccLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sim_err_popup_msg"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method private iccEnterPinChange(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    const/4 v2, 0x0

    .line 511
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 512
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 513
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/lgesettings/IccLockSettings;->mDialogState:I

    .line 514
    iput-object v2, p0, Lcom/android/lgesettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 515
    iput-object v2, p0, Lcom/android/lgesettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 516
    invoke-direct {p0}, Lcom/android/lgesettings/IccLockSettings;->showPinDialog()V

    .line 529
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/android/lgesettings/IccLockSettings;->finish()V

    .line 532
    :cond_0
    return-void

    .line 518
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 519
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_2

    .line 520
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080c06

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 526
    :goto_1
    invoke-direct {p0}, Lcom/android/lgesettings/IccLockSettings;->resetDialogState()V

    goto :goto_0

    .line 523
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0803bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/IccLockSettings;->displayRetryCounter(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private iccLockChanged(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 441
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_6

    .line 443
    iget-boolean v1, p0, Lcom/android/lgesettings/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_3

    .line 444
    const-string v1, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080b84

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 463
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/lgesettings/IccLockSettings;->mToState:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 475
    :goto_1
    invoke-direct {p0}, Lcom/android/lgesettings/IccLockSettings;->resetDialogState()V

    .line 477
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 478
    invoke-virtual {p0}, Lcom/android/lgesettings/IccLockSettings;->finish()V

    .line 481
    :cond_1
    return-void

    .line 449
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080b85

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 453
    :cond_3
    const-string v1, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 455
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080b86

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 458
    :cond_5
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080b87

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 465
    :cond_6
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 466
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_7

    .line 468
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080c06

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 472
    :cond_7
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0803bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/IccLockSettings;->displayRetryCounter(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private iccPinChanged(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 484
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 485
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 488
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_1

    .line 489
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080c06

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 502
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/IccLockSettings;->resetDialogState()V

    .line 504
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/android/lgesettings/IccLockSettings;->finish()V

    .line 508
    :cond_0
    return-void

    .line 493
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0803bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/IccLockSettings;->displayRetryCounter(Ljava/lang/String;)V

    goto :goto_0

    .line 497
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0803c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 3
    .parameter "pin"

    .prologue
    const/4 v0, 0x0

    .line 541
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    .line 543
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080b8b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 549
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 555
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/lgesettings/IccLockSettings;->mDialogState:I

    .line 556
    const-string v0, ""

    iput-object v0, p0, Lcom/android/lgesettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 557
    invoke-direct {p0}, Lcom/android/lgesettings/IccLockSettings;->setDialogValues()V

    .line 558
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/IccLockSettings;->mDialogState:I

    .line 559
    return-void
.end method

.method private setDialogValues()V
    .locals 14

    .prologue
    .line 318
    iget-object v4, p0, Lcom/android/lgesettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v0

    .line 321
    .local v0, attempts:I
    iget-object v4, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f080c63

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, description:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f080c62

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, remain:Ljava/lang/String;
    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 327
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f080d39

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 332
    :cond_0
    iget-object v4, p0, Lcom/android/lgesettings/IccLockSettings;->mPinDialog:Lcom/android/lgesettings/EditPinPreference;

    iget-object v5, p0, Lcom/android/lgesettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 333
    const-string v2, ""

    .line 334
    .local v2, message:Ljava/lang/String;
    iget v4, p0, Lcom/android/lgesettings/IccLockSettings;->mDialogState:I

    packed-switch v4, :pswitch_data_0

    .line 358
    :goto_0
    iget-object v4, p0, Lcom/android/lgesettings/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/lgesettings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 360
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/lgesettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 362
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/IccLockSettings;->mPinDialog:Lcom/android/lgesettings/EditPinPreference;

    invoke-virtual {v4, v2}, Lcom/android/lgesettings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 363
    return-void

    .line 336
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0803b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    iget-object v4, p0, Lcom/android/lgesettings/IccLockSettings;->mPinDialog:Lcom/android/lgesettings/EditPinPreference;

    iget-object v5, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f080b9c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 345
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0803b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 346
    iget-object v4, p0, Lcom/android/lgesettings/IccLockSettings;->mPinDialog:Lcom/android/lgesettings/EditPinPreference;

    iget-object v5, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f080b9c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 349
    :pswitch_2
    move-object v2, v1

    .line 350
    iget-object v4, p0, Lcom/android/lgesettings/IccLockSettings;->mPinDialog:Lcom/android/lgesettings/EditPinPreference;

    iget-object v5, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f080b8f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 353
    :pswitch_3
    const/4 v2, 0x0

    .line 354
    iget-object v4, p0, Lcom/android/lgesettings/IccLockSettings;->mPinDialog:Lcom/android/lgesettings/EditPinPreference;

    iget-object v5, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f080b91

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/android/lgesettings/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/IccLockSettings;->setDialogValues()V

    .line 314
    iget-object v0, p0, Lcom/android/lgesettings/IccLockSettings;->mPinDialog:Lcom/android/lgesettings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/EditPinPreference;->showPinDialog()V

    goto :goto_0
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .prologue
    .line 435
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 436
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/lgesettings/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/lgesettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 438
    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    .line 535
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 536
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/lgesettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 538
    return-void
.end method

.method private tryEnterSimChange()V
    .locals 4

    .prologue
    .line 428
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 429
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/lgesettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 430
    return-void
.end method

.method private updatePreferences()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/lgesettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 220
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 611
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 171
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/lgesettings/IccLockSettings;->finish()V

    .line 216
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/IccLockSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 177
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 178
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 180
    :cond_1
    const v1, 0x7f06005e

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/IccLockSettings;->addPreferencesFromResource(I)V

    .line 182
    const-string v1, "sim_pin"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/EditPinPreference;

    iput-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mPinDialog:Lcom/android/lgesettings/EditPinPreference;

    .line 183
    const-string v1, "sim_toggle"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    .line 184
    if-eqz p1, :cond_2

    const-string v1, "dialogState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    const-string v1, "dialogState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/lgesettings/IccLockSettings;->mDialogState:I

    .line 186
    const-string v1, "dialogPin"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 187
    const-string v1, "dialogError"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 188
    const-string v1, "enableState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/lgesettings/IccLockSettings;->mToState:Z

    .line 191
    iget v1, p0, Lcom/android/lgesettings/IccLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 208
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mPinDialog:Lcom/android/lgesettings/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/lgesettings/EditPinPreference$OnPinEnteredListener;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/lgesettings/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 213
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 214
    invoke-virtual {p0}, Lcom/android/lgesettings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 215
    invoke-direct {p0}, Lcom/android/lgesettings/IccLockSettings;->updatePreferences()V

    goto :goto_0

    .line 193
    :pswitch_0
    const-string v1, "oldPinCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    goto :goto_1

    .line 197
    :pswitch_1
    const-string v1, "oldPinCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 198
    const-string v1, "newPinCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto :goto_1

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 616
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 622
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 224
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 225
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/lgesettings/IccLockSettings;->finish()V

    .line 227
    const/4 v1, 0x1

    .line 229
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 271
    iget-object v0, p0, Lcom/android/lgesettings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/IccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 272
    return-void
.end method

.method public onPinEntered(Lcom/android/lgesettings/EditPinPreference;Z)V
    .locals 3
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    const/4 v2, 0x0

    .line 366
    if-nez p2, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/android/lgesettings/IccLockSettings;->resetDialogState()V

    .line 410
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-virtual {p1}, Lcom/android/lgesettings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lcom/android/lgesettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0803bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 375
    invoke-direct {p0}, Lcom/android/lgesettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 378
    :cond_1
    iget v0, p0, Lcom/android/lgesettings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 380
    :pswitch_0
    invoke-direct {p0}, Lcom/android/lgesettings/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    .line 383
    :pswitch_1
    invoke-direct {p0}, Lcom/android/lgesettings/IccLockSettings;->tryEnterSimChange()V

    goto :goto_0

    .line 393
    :pswitch_2
    iget-object v0, p0, Lcom/android/lgesettings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 394
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/lgesettings/IccLockSettings;->mDialogState:I

    .line 395
    iput-object v2, p0, Lcom/android/lgesettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 396
    invoke-direct {p0}, Lcom/android/lgesettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 399
    :pswitch_3
    iget-object v0, p0, Lcom/android/lgesettings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 400
    iget-object v0, p0, Lcom/android/lgesettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0803be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 401
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/lgesettings/IccLockSettings;->mDialogState:I

    .line 402
    iput-object v2, p0, Lcom/android/lgesettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 403
    invoke-direct {p0}, Lcom/android/lgesettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 405
    :cond_2
    iput-object v2, p0, Lcom/android/lgesettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 406
    invoke-direct {p0}, Lcom/android/lgesettings/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 413
    iget-object v2, p0, Lcom/android/lgesettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 415
    iget-object v2, p0, Lcom/android/lgesettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/lgesettings/IccLockSettings;->mToState:Z

    .line 417
    iget-object v2, p0, Lcom/android/lgesettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/lgesettings/IccLockSettings;->mToState:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 418
    iput v1, p0, Lcom/android/lgesettings/IccLockSettings;->mDialogState:I

    .line 419
    invoke-direct {p0}, Lcom/android/lgesettings/IccLockSettings;->showPinDialog()V

    :cond_1
    move v0, v1

    .line 424
    :goto_0
    return v0

    .line 420
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/IccLockSettings;->mPinDialog:Lcom/android/lgesettings/EditPinPreference;

    if-ne p2, v2, :cond_1

    .line 421
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/lgesettings/IccLockSettings;->mDialogState:I

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 626
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 234
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 238
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/lgesettings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/lgesettings/IccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    const-string v2, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    const-string v2, "PERM_DISABLED"

    const-string v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080bfa

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080d36

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08059d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/lgesettings/IccLockSettings$3;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/IccLockSettings$3;-><init>(Lcom/android/lgesettings/IccLockSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 255
    .local v0, PukDialog:Landroid/app/Dialog;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 256
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 260
    .end local v0           #PukDialog:Landroid/app/Dialog;
    :cond_0
    iget v2, p0, Lcom/android/lgesettings/IccLockSettings;->mDialogState:I

    if-eqz v2, :cond_1

    .line 261
    invoke-direct {p0}, Lcom/android/lgesettings/IccLockSettings;->showPinDialog()V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/IccLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/lgesettings/IccLockSettings;->mPinDialog:Lcom/android/lgesettings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/lgesettings/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 283
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mPinDialog:Lcom/android/lgesettings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/lgesettings/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    iget v0, p0, Lcom/android/lgesettings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 306
    :goto_0
    return-void

    .line 290
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
