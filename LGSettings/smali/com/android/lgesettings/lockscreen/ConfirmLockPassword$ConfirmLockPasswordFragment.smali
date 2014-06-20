.class public Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;
.super Landroid/app/Fragment;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lockscreen/ConfirmLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPasswordFragment"
.end annotation


# static fields
.field private static BACK_OK:I

.field private static CONFIRM_OK:I

.field private static afterConfirm:I

.field private static beforeConfirm:I

.field private static checkConfig:I

.field private static currentType:I

.field private static nextClick:Z

.field private static typeface:Landroid/graphics/Typeface;


# instance fields
.field private isAlpha:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContinueButton:Landroid/widget/Button;

.field private mEncryption:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mPassword:Landroid/widget/EditText;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordExpired:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private visible:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    sput v0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->beforeConfirm:I

    .line 129
    sput v0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->afterConfirm:I

    .line 138
    sput v0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->checkConfig:I

    .line 139
    sput-boolean v0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->nextClick:Z

    .line 144
    const/4 v0, 0x1

    sput v0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->CONFIRM_OK:I

    .line 145
    const/4 v0, 0x2

    sput v0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->BACK_OK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 122
    iput-boolean v1, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordExpired:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEncryption:Z

    .line 153
    new-instance v0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment$1;-><init>(Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    return-void
.end method

.method private handleNext()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 341
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, pin:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    sput v2, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->checkConfig:I

    .line 343
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 346
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 349
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 351
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "Confirm_password"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->isAlpha:Z

    if-eqz v2, :cond_2

    const v2, 0x7f080b9b

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 362
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 364
    sput-boolean v4, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->nextClick:Z

    goto :goto_0

    .line 359
    :cond_2
    const v2, 0x7f080b9a

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 419
    sget v2, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->beforeConfirm:I

    sget v3, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->afterConfirm:I

    if-ne v2, v3, :cond_1

    .line 420
    sput v1, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->beforeConfirm:I

    .line 421
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 435
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 421
    goto :goto_0

    .line 424
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->nextClick:Z

    if-nez v2, :cond_3

    .line 426
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    .line 430
    :cond_3
    sput-boolean v1, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->nextClick:Z

    .line 431
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->isAlpha:Z

    if-eqz v2, :cond_4

    const v2, 0x7f080b9d

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 434
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_5

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 431
    :cond_4
    const v2, 0x7f080b9c

    goto :goto_3

    :cond_5
    move v0, v1

    .line 434
    goto :goto_4
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 412
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "button"
    .parameter "checked"

    .prologue
    .line 440
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->visible:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 442
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 443
    .local v1, selectionStart:I
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 445
    .local v0, selectionEnd:I
    if-eqz p2, :cond_1

    .line 447
    iget-boolean v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->isAlpha:Z

    if-eqz v2, :cond_0

    .line 449
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v3, 0x91

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 450
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    sget-object v3, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 463
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 465
    return-void

    .line 454
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 455
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    sget-object v3, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 460
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->isAlpha:Z

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
    .parameter "v"

    .prologue
    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 383
    :goto_0
    return-void

    .line 372
    :sswitch_0
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 376
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 377
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 379
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Confirm_password"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 370
    :sswitch_data_0
    .sparse-switch
        0x7f0a0017 -> :sswitch_0
        0x7f0a006d -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 165
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 166
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 167
    sget v3, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->afterConfirm:I

    sput v3, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->beforeConfirm:I

    .line 168
    sput v6, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->afterConfirm:I

    .line 171
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "Confirm_password"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 173
    .local v0, flag:I
    sget v3, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->CONFIRM_OK:I

    if-ne v0, v3, :cond_0

    .line 175
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "password"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 180
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    sget v3, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->BACK_OK:I

    if-ne v0, v3, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 187
    :cond_1
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v3, :cond_4

    .line 188
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v4, "PASSWORD_EXPIRE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    iput-boolean v6, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordExpired:Z

    .line 192
    :cond_2
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/lgesettings/MDMSettingsAdapter;->checkDeviceEncryption()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEncryption:Z

    .line 194
    iget-boolean v3, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordExpired:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEncryption:Z

    if-eqz v3, :cond_4

    .line 195
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 197
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 199
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 200
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    :cond_4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 209
    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    .line 210
    .local v4, storedQuality:I
    const v7, 0x7f040038

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 213
    .local v6, view:Landroid/view/View;
    const v7, 0x7f0a006d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    sget-boolean v7, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v7, :cond_0

    .line 216
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v1

    .line 217
    .local v1, enforce:Z
    const v7, 0x7f0a006d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-nez v1, :cond_3

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v8, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 218
    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "statusbar"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/StatusBarManager;

    iput-object v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 224
    .end local v1           #enforce:Z
    :cond_0
    const v7, 0x7f0a0017

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    .line 225
    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 228
    const v7, 0x7f0a0072

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPassword:Landroid/widget/EditText;

    .line 229
    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPassword:Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 233
    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 234
    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 236
    const v7, 0x7f0a0073

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 237
    const v7, 0x7f0a0071

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 238
    const/high16 v7, 0x4

    if-eq v7, v4, :cond_1

    const/high16 v7, 0x5

    if-eq v7, v4, :cond_1

    const/high16 v7, 0x6

    if-ne v7, v4, :cond_4

    :cond_1
    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->isAlpha:Z

    .line 244
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 245
    .local v0, activity:Landroid/app/Activity;
    new-instance v7, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v8, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget-object v9, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v7, v0, v8, v9}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 247
    iget-object v8, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-boolean v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->isAlpha:Z

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v8, v7}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 250
    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v7}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 252
    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getInputType()I

    move-result v7

    sput v7, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->currentType:I

    .line 253
    iget-object v8, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->isAlpha:Z

    if-eqz v7, :cond_6

    sget v7, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->currentType:I

    :goto_3
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 256
    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    sput-object v7, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->typeface:Landroid/graphics/Typeface;

    .line 258
    const v7, 0x7f0a006b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->visible:Landroid/widget/CheckBox;

    .line 259
    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->visible:Landroid/widget/CheckBox;

    const v8, 0x7f080b46

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setText(I)V

    .line 260
    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v7, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 262
    if-nez p3, :cond_8

    .line 264
    iget-object v8, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->isAlpha:Z

    if-eqz v7, :cond_7

    const v7, 0x7f080b9d

    :goto_4
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    .line 273
    :goto_5
    instance-of v7, v0, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_2

    move-object v3, v0

    .line 274
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 276
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    iget-boolean v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->isAlpha:Z

    if-eqz v7, :cond_9

    const v2, 0x7f080b9d

    .line 279
    .local v2, id:I
    :goto_6
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 280
    .local v5, title:Ljava/lang/CharSequence;
    invoke-virtual {v3, v5, v5}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 283
    .end local v2           #id:I
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_2
    return-object v6

    .line 217
    .end local v0           #activity:Landroid/app/Activity;
    .restart local v1       #enforce:Z
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 238
    .end local v1           #enforce:Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 247
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_5
    const/4 v7, 0x1

    goto :goto_2

    .line 253
    :cond_6
    const/16 v7, 0x12

    goto :goto_3

    .line 264
    :cond_7
    const v7, 0x7f080b9c

    goto :goto_4

    .line 269
    :cond_8
    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const-string v8, "head"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 276
    .restart local v3       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_9
    const v2, 0x7f080b9c

    goto :goto_6
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 328
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 330
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    .line 331
    iget-boolean v0, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordExpired:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEncryption:Z

    if-eqz v0, :cond_1

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 337
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Confirm_password"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 339
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 401
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 404
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    .line 405
    const/4 v0, 0x1

    .line 407
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 289
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 291
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 299
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 304
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 305
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 307
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 308
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->visible:Landroid/widget/CheckBox;

    const v1, 0x7f080b46

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 316
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->isAlpha:Z

    if-eqz v0, :cond_1

    const v0, 0x7f080b9d

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 318
    return-void

    .line 316
    :cond_1
    const v0, 0x7f080b9c

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 321
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 322
    const-string v0, "head"

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 415
    return-void
.end method
