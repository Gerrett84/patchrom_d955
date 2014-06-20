.class public Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;
.super Landroid/app/Fragment;
.source "ChooseBackupPinNew.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseBackupPinNewFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;
    }
.end annotation


# static fields
.field private static afterConfirm:I

.field private static beforeConfirm:I

.field private static checkConfig:I

.field private static isExsist:Z

.field private static isFirst:Z

.field private static nextClick:Z

.field private static typeface:Landroid/graphics/Typeface;


# instance fields
.field private currentCursor:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mSavePin:Lcom/android/lgesettings/lockscreen/PinSettingsUtils;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

.field private visible:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 117
    sput v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->beforeConfirm:I

    .line 118
    sput v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->afterConfirm:I

    .line 119
    sput v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->checkConfig:I

    .line 120
    sput-boolean v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->nextClick:Z

    .line 123
    sput-boolean v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->isExsist:Z

    .line 124
    sput-boolean v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->isFirst:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 101
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordMinLength:I

    .line 102
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordMaxLength:I

    .line 103
    sget-object v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    .line 133
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$1;-><init>(Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;)V

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mHandler:Landroid/os/Handler;

    .line 171
    return-void
.end method

.method private handleCancel()V
    .locals 3

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 404
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 405
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 406
    return-void
.end method

.method private handleNext()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 326
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, pin:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    sput v5, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->checkConfig:I

    .line 328
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    sget-object v6, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    if-ne v5, v6, :cond_2

    sget-boolean v5, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->isExsist:Z

    if-eqz v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 331
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v5, :cond_0

    .line 332
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 333
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/lge/mdm/LGMDMManager;->setEnforcePasswordChange(Z)V

    .line 334
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v5, :cond_0

    .line 335
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v5, v7}, Landroid/app/StatusBarManager;->disable(I)V

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 341
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v8, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 342
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 400
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 344
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 348
    const/4 v1, 0x0

    .line 350
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    sget-object v6, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    if-ne v5, v6, :cond_4

    .line 351
    invoke-direct {p0, v4}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 352
    if-nez v1, :cond_3

    .line 353
    sget-object v5, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    const v6, 0x7f080b44

    iput v6, v5, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->numericHint:I

    .line 354
    iput-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mFirstPin:Ljava/lang/String;

    .line 355
    sget-object v5, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;)V

    .line 356
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 358
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, error:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 360
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 364
    .end local v0           #error:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    sget-object v6, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    if-ne v5, v6, :cond_1

    .line 365
    invoke-direct {p0, v4}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mFirstPin:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 369
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v5, :cond_5

    .line 370
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 371
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/lge/mdm/LGMDMManager;->setEnforcePasswordChange(Z)V

    .line 372
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v5, :cond_5

    .line 373
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v5, v7}, Landroid/app/StatusBarManager;->disable(I)V

    .line 379
    :cond_5
    new-instance v5, Lcom/android/lgesettings/lockscreen/PinSettingsUtils;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/lgesettings/lockscreen/PinSettingsUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mSavePin:Lcom/android/lgesettings/lockscreen/PinSettingsUtils;

    .line 380
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mSavePin:Lcom/android/lgesettings/lockscreen/PinSettingsUtils;

    invoke-virtual {v5}, Lcom/android/lgesettings/lockscreen/PinSettingsUtils;->fileInit()V

    .line 381
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mSavePin:Lcom/android/lgesettings/lockscreen/PinSettingsUtils;

    invoke-virtual {v5, v4}, Lcom/android/lgesettings/lockscreen/PinSettingsUtils;->savePasswrod(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 384
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v2, v5, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 385
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 386
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v8, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 387
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 391
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    sget-object v5, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->ConfirmWrong:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;)V

    .line 394
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    .line 395
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->nextClick:Z

    goto/16 :goto_0
.end method

.method private updateUi()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 443
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, password:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 446
    .local v0, length:I
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    sget-object v6, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    if-ne v5, v6, :cond_4

    .line 447
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPassword:Landroid/widget/EditText;

    const v6, 0x10000005

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 448
    iget v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordMinLength:I

    if-ge v0, v5, :cond_2

    .line 449
    invoke-direct {p0, v2}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, msg:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 451
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    iget v5, v5, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->numericHint:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 454
    :goto_0
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 480
    .end local v1           #msg:Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mNextButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    iget v4, v4, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->buttonText:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 481
    return-void

    .line 453
    .restart local v1       #msg:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 457
    .end local v1           #msg:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 459
    .restart local v1       #msg:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 461
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mHeaderText:Landroid/widget/TextView;

    const v5, 0x7f080b94

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 462
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 466
    :cond_3
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 472
    .end local v1           #msg:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    iget v6, v6, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->numericHint:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 473
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mNextButton:Landroid/widget/Button;

    if-lez v0, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 474
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPassword:Landroid/widget/EditText;

    const v5, 0x10000006

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 475
    sget-boolean v3, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->isExsist:Z

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 477
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "password"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    if-ne v0, v1, :cond_1

    .line 307
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordMinLength:I

    if-ge v0, v1, :cond_0

    .line 309
    const v0, 0x7f080b93

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 322
    :goto_0
    return-object v0

    .line 311
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordMaxLength:I

    if-le v0, v1, :cond_3

    .line 312
    const v0, 0x7f08017e

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordMaxLength:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordMinLength:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 319
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080b96

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 487
    const-string v0, "hong"

    const-string v1, "afterTextChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    sget v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->beforeConfirm:I

    sget v1, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->afterConfirm:I

    if-ne v0, v1, :cond_2

    .line 489
    sput v2, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->beforeConfirm:I

    .line 500
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 502
    sget-boolean v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->isExsist:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    if-ne v0, v1, :cond_4

    sget-boolean v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->isFirst:Z

    if-eqz v0, :cond_4

    .line 504
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->changeConfirmToIntro()V

    .line 510
    :cond_1
    :goto_1
    return-void

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->ConfirmWrong:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->nextClick:Z

    if-eqz v0, :cond_1

    .line 496
    :cond_3
    sget-object v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    .line 497
    sput-boolean v2, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->nextClick:Z

    goto :goto_0

    .line 508
    :cond_4
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->updateUi()V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 514
    return-void
.end method

.method public changeConfirmToIntro()V
    .locals 3

    .prologue
    .line 551
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 552
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 553
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 554
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->isFirst:Z

    .line 555
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPassword:Landroid/widget/EditText;

    const v2, 0x10000005

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 556
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 557
    .local v0, input:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 558
    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;)V

    .line 559
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "button"
    .parameter "checked"

    .prologue
    .line 523
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->visible:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 525
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 526
    .local v1, selectionStart:I
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 528
    .local v0, selectionEnd:I
    if-eqz p2, :cond_0

    .line 530
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 531
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    sget-object v3, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 537
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 539
    return-void

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 409
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 418
    :goto_0
    return-void

    .line 411
    :sswitch_0
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->handleNext()V

    goto :goto_0

    .line 415
    :sswitch_1
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->handleCancel()V

    goto :goto_0

    .line 409
    :sswitch_data_0
    .sparse-switch
        0x7f0a0017 -> :sswitch_0
        0x7f0a006d -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 177
    sget v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->afterConfirm:I

    sput v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->beforeConfirm:I

    .line 178
    const/4 v0, 0x1

    sput v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->afterConfirm:I

    .line 180
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 185
    const v4, 0x7f040032

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 186
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0a006d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mCancelButton:Landroid/widget/Button;

    .line 187
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v4, 0x7f0a0017

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mNextButton:Landroid/widget/Button;

    .line 189
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v4, 0x7f0a006a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPassword:Landroid/widget/EditText;

    .line 191
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPassword:Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 192
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 193
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 194
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 195
    const v4, 0x7f0a006b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->visible:Landroid/widget/CheckBox;

    .line 196
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->visible:Landroid/widget/CheckBox;

    const v5, 0x7f080b46

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(I)V

    .line 198
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 199
    const v4, 0x7f0a0068

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mHeaderText:Landroid/widget/TextView;

    .line 201
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 202
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->typeface:Landroid/graphics/Typeface;

    .line 203
    new-instance v1, Lcom/android/lgesettings/lockscreen/PinSettingsUtils;

    invoke-direct {v1}, Lcom/android/lgesettings/lockscreen/PinSettingsUtils;-><init>()V

    .line 204
    .local v1, passinit:Lcom/android/lgesettings/lockscreen/PinSettingsUtils;
    invoke-virtual {v1}, Lcom/android/lgesettings/lockscreen/PinSettingsUtils;->exsistFile()Z

    move-result v4

    sput-boolean v4, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->isExsist:Z

    .line 205
    sget-boolean v4, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->isExsist:Z

    if-eqz v4, :cond_3

    .line 207
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    const v5, 0x7f080cb6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(I)V

    .line 208
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 209
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 210
    sput-boolean v7, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->isFirst:Z

    .line 211
    sget-object v4, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    const v5, 0x7f080b45

    iput v5, v4, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->numericHint:I

    .line 212
    sget-object v4, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;)V

    .line 221
    :goto_0
    if-nez p3, :cond_4

    .line 222
    sget-boolean v4, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->isExsist:Z

    if-nez v4, :cond_0

    .line 223
    sget-object v4, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;)V

    .line 244
    :cond_0
    :goto_1
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v4, :cond_2

    .line 245
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iput-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 250
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "PASSWORD_EXPIRE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 251
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 253
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 258
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    return-object v3

    .line 216
    :cond_3
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 217
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 218
    iput-boolean v7, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->currentCursor:Z

    goto :goto_0

    .line 226
    :cond_4
    const-string v4, "first_pin"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mFirstPin:Ljava/lang/String;

    .line 227
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v5, "hint_text"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v5, "cusor_gravity"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 229
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 231
    sput-boolean v6, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->isFirst:Z

    .line 233
    :cond_5
    const-string v4, "cusor_gravity"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v8, :cond_6

    .line 234
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 237
    :goto_2
    const-string v4, "ui_stage"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, state:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 239
    invoke-static {v2}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    .line 240
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;)V

    goto/16 :goto_1

    .line 236
    .end local v2           #state:Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto :goto_2
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 430
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 433
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->handleNext()V

    .line 434
    const/4 v0, 0x1

    .line 436
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 281
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 282
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 289
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 263
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 264
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;)V

    .line 266
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 274
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 294
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    invoke-virtual {v1}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v0, "hint_text"

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v0, "cusor_gravity"

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 518
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 543
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a006a

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->changeConfirmToIntro()V

    .line 547
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected updateStage(Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;)V
    .locals 0
    .parameter "stage"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment$Stage;

    .line 302
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew$ChooseBackupPinNewFragment;->updateUi()V

    .line 303
    return-void
.end method
