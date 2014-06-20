.class public Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;
.super Landroid/app/Fragment;
.source "ChooseBackupPin.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lockscreen/ChooseBackupPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseBackupPinFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;
    }
.end annotation


# static fields
.field private static afterConfirm:I

.field private static beforeConfirm:I

.field private static checkConfig:I

.field private static nextClick:Z

.field private static typeface:Landroid/graphics/Typeface;


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mDescText:Landroid/widget/TextView;

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

.field private mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

.field private visible:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 126
    sput v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->beforeConfirm:I

    .line 127
    sput v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->afterConfirm:I

    .line 128
    sput v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->checkConfig:I

    .line 129
    sput-boolean v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->nextClick:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 109
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordMinLength:I

    .line 110
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordMaxLength:I

    .line 111
    sget-object v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    .line 139
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$1;-><init>(Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;)V

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mHandler:Landroid/os/Handler;

    .line 177
    return-void
.end method

.method private handleCancel()V
    .locals 4

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 361
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 367
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 368
    return-void

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleNext()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 301
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, pin:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    sput v4, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->checkConfig:I

    .line 304
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    const/4 v1, 0x0

    .line 310
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    sget-object v5, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    if-ne v4, v5, :cond_3

    .line 311
    invoke-direct {p0, v3}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    if-nez v1, :cond_2

    .line 314
    iput-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mFirstPin:Ljava/lang/String;

    .line 315
    sget-object v4, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;)V

    .line 316
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 319
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, error:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 321
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 325
    .end local v0           #error:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    sget-object v5, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    if-ne v4, v5, :cond_0

    .line 326
    invoke-direct {p0, v3}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 329
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v4, :cond_4

    .line 330
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 331
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/lge/mdm/LGMDMManager;->setEnforcePasswordChange(Z)V

    .line 332
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v4, :cond_4

    .line 333
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v4, v6}, Landroid/app/StatusBarManager;->disable(I)V

    .line 339
    :cond_4
    new-instance v4, Lcom/android/lgesettings/lockscreen/PinSettingsUtils;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/lgesettings/lockscreen/PinSettingsUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mSavePin:Lcom/android/lgesettings/lockscreen/PinSettingsUtils;

    .line 340
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mSavePin:Lcom/android/lgesettings/lockscreen/PinSettingsUtils;

    invoke-virtual {v4, v3}, Lcom/android/lgesettings/lockscreen/PinSettingsUtils;->savePasswrod(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 342
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 343
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 347
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    sget-object v4, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;->ConfirmWrong:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;)V

    .line 350
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 352
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->nextClick:Z

    goto/16 :goto_0
.end method

.method private updateUi()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const v7, 0x7f080b42

    const/4 v4, 0x0

    .line 405
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, password:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 408
    .local v0, length:I
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    sget-object v6, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    if-ne v5, v6, :cond_3

    .line 409
    iget v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordMinLength:I

    if-ge v0, v5, :cond_1

    .line 410
    invoke-direct {p0, v2}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, msg:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 412
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    iget v5, v5, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;->numericHint:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 415
    :goto_0
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 416
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 443
    .end local v1           #msg:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mNextButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    iget v4, v4, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;->buttonText:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 444
    return-void

    .line 414
    .restart local v1       #msg:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 419
    .end local v1           #msg:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .restart local v1       #msg:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 423
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mHeaderText:Landroid/widget/TextView;

    const v5, 0x7f080b94

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 424
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 425
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 429
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 431
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 436
    .end local v1           #msg:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    iget v6, v6, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;->numericHint:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 437
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mCancelButton:Landroid/widget/Button;

    const v6, 0x7f080187

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 438
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mDescText:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mNextButton:Landroid/widget/Button;

    if-lez v0, :cond_4

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 440
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPassword:Landroid/widget/EditText;

    const v4, 0x10000006

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_1

    :cond_4
    move v3, v4

    .line 439
    goto :goto_2
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "password"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    if-ne v0, v1, :cond_1

    .line 282
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordMinLength:I

    if-ge v0, v1, :cond_0

    .line 284
    const v0, 0x7f080b93

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    :goto_0
    return-object v0

    .line 286
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordMaxLength:I

    if-le v0, v1, :cond_3

    .line 287
    const v0, 0x7f08017e

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordMaxLength:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordMinLength:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 294
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080b96

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 297
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

    .line 451
    sget v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->beforeConfirm:I

    sget v1, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->afterConfirm:I

    if-ne v0, v1, :cond_2

    .line 452
    const-string v0, "hong"

    const-string v1, "@@"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    sput v2, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->beforeConfirm:I

    .line 468
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->updateUi()V

    .line 470
    :cond_1
    return-void

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;->ConfirmWrong:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->checkConfig:I

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 459
    sget-boolean v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->nextClick:Z

    if-eqz v0, :cond_1

    .line 462
    sget-object v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    .line 464
    :cond_3
    sget-object v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    .line 465
    sput-boolean v2, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->nextClick:Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 474
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "button"
    .parameter "checked"

    .prologue
    .line 483
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->visible:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 485
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 486
    .local v1, selectionStart:I
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 488
    .local v0, selectionEnd:I
    if-eqz p2, :cond_0

    .line 490
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 491
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    sget-object v3, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 497
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 499
    return-void

    .line 495
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 380
    :goto_0
    return-void

    .line 373
    :sswitch_0
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->handleNext()V

    goto :goto_0

    .line 377
    :sswitch_1
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->handleCancel()V

    goto :goto_0

    .line 371
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
    .line 181
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 183
    sget v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->afterConfirm:I

    sput v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->beforeConfirm:I

    .line 184
    const/4 v0, 0x1

    sput v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->afterConfirm:I

    .line 186
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 191
    const v3, 0x7f040031

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 192
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0a006d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mCancelButton:Landroid/widget/Button;

    .line 193
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v3, 0x7f0a0017

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mNextButton:Landroid/widget/Button;

    .line 195
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const v3, 0x7f0a006a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPassword:Landroid/widget/EditText;

    .line 197
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPassword:Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 198
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 199
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 200
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 201
    const v3, 0x7f0a006b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->visible:Landroid/widget/CheckBox;

    .line 202
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->visible:Landroid/widget/CheckBox;

    const v4, 0x7f080b46

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 203
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 204
    const v3, 0x7f0a0068

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mHeaderText:Landroid/widget/TextView;

    .line 205
    const v3, 0x7f0a006c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mDescText:Landroid/widget/TextView;

    .line 206
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->typeface:Landroid/graphics/Typeface;

    .line 208
    if-nez p3, :cond_3

    .line 209
    sget-object v3, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;)V

    .line 221
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v3, :cond_2

    .line 222
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 227
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "PASSWORD_EXPIRE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 230
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 235
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    return-object v2

    .line 213
    :cond_3
    const-string v3, "first_pin"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mFirstPin:Ljava/lang/String;

    .line 214
    const-string v3, "ui_stage"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, state:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 216
    invoke-static {v1}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    .line 217
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 392
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 395
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->handleNext()V

    .line 396
    const/4 v0, 0x1

    .line 398
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 258
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 259
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 266
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 241
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;)V

    .line 243
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 251
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 271
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    invoke-virtual {v1}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 478
    return-void
.end method

.method protected updateStage(Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;)V
    .locals 0
    .parameter "stage"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    .line 277
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->updateUi()V

    .line 278
    return-void
.end method
