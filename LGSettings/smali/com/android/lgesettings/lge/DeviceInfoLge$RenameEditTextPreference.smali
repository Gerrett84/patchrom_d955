.class Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;
.super Landroid/preference/DialogPreference;
.source "DeviceInfoLge.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/DeviceInfoLge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenameEditTextPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/DeviceInfoLge;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/lge/DeviceInfoLge;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLge;

    .line 160
    invoke-direct {p0, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, -0x1

    .line 164
    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLge;

    #getter for: Lcom/android/lgesettings/lge/DeviceInfoLge;->mDeviceNamePref:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/lgesettings/lge/DeviceInfoLge;->access$000(Lcom/android/lgesettings/lge/DeviceInfoLge;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 166
    .local v0, d:Landroid/app/Dialog;
    instance-of v1, v0, Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 167
    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 170
    :cond_0
    instance-of v1, v0, Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 171
    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-nez v1, :cond_3

    .line 172
    const-string v1, "aboutphone  # DeviceInfoLge"

    const-string v2, "afterTextChanged, AlertDialog.BUTTON_POSITIVE i s null~~"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v0           #d:Landroid/app/Dialog;
    :cond_1
    :goto_1
    return-void

    .line 167
    .restart local v0       #d:Landroid/app/Dialog;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 174
    :cond_3
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0           #d:Landroid/app/Dialog;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference$1;-><init>(Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 195
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 215
    return-void
.end method
