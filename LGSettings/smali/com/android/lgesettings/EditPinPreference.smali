.class Lcom/android/lgesettings/EditPinPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPinPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/EditPinPreference$OnPinEnteredListener;
    }
.end annotation


# instance fields
.field private mPinListener:Lcom/android/lgesettings/EditPinPreference$OnPinEnteredListener;

.field private maxPinCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/lgesettings/EditPinPreference;->maxPinCode:I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/lgesettings/EditPinPreference;->maxPinCode:I

    .line 61
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 135
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 131
    return-void
.end method

.method public isDialogOpen()Z
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/lgesettings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 96
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    .line 69
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 71
    const v2, 0x1020003

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 73
    .local v0, editText:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 76
    new-instance v2, Lcom/android/lgesettings/IccLockSettings;

    invoke-direct {v2}, Lcom/android/lgesettings/IccLockSettings;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 79
    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 80
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 82
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    const-string v2, "IMENP"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 88
    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 89
    .local v1, tf:Landroid/graphics/Typeface;
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 92
    .end local v1           #tf:Landroid/graphics/Typeface;
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/lgesettings/EditPinPreference;->mPinListener:Lcom/android/lgesettings/EditPinPreference$OnPinEnteredListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/lgesettings/EditPinPreference;->mPinListener:Lcom/android/lgesettings/EditPinPreference$OnPinEnteredListener;

    invoke-interface {v0, p0, p1}, Lcom/android/lgesettings/EditPinPreference$OnPinEnteredListener;->onPinEntered(Lcom/android/lgesettings/EditPinPreference;Z)V

    .line 105
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    const/4 v4, -0x1

    .line 118
    invoke-virtual {p0}, Lcom/android/lgesettings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 119
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/android/lgesettings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 120
    .local v1, textfield:Landroid/widget/EditText;
    instance-of v2, v0, Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    iget v3, p0, Lcom/android/lgesettings/EditPinPreference;->maxPinCode:I

    if-lt v2, v3, :cond_1

    .line 122
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0           #d:Landroid/app/Dialog;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    .restart local v0       #d:Landroid/app/Dialog;
    :cond_1
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0           #d:Landroid/app/Dialog;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setOnPinEnteredListener(Lcom/android/lgesettings/EditPinPreference$OnPinEnteredListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/lgesettings/EditPinPreference;->mPinListener:Lcom/android/lgesettings/EditPinPreference$OnPinEnteredListener;

    .line 65
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->showDialog(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/lgesettings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 140
    .local v0, ad:Landroid/app/AlertDialog;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    iget v3, p0, Lcom/android/lgesettings/EditPinPreference;->maxPinCode:I

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    return-void

    .line 140
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showPinDialog()V
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/lgesettings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 109
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/EditPinPreference;->showDialog(Landroid/os/Bundle;)V

    .line 112
    :cond_1
    return-void
.end method
