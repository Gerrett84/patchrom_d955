.class Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference$1;
.super Ljava/lang/Object;
.source "DeviceInfoLge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference$1;->this$1:Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference$1;->this$1:Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;

    iget-object v1, v1, Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLge;

    #getter for: Lcom/android/lgesettings/lge/DeviceInfoLge;->mDeviceNamePref:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/lgesettings/lge/DeviceInfoLge;->access$000(Lcom/android/lgesettings/lge/DeviceInfoLge;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, et_string:Ljava/lang/String;
    const-string v1, "aboutphone  # DeviceInfoLge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save@@@ et_string:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference$1;->this$1:Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;

    iget-object v1, v1, Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLge;

    invoke-virtual {v1}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference$1;->this$1:Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;

    iget-object v1, v1, Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLge;

    #calls: Lcom/android/lgesettings/lge/DeviceInfoLge;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/lgesettings/lge/DeviceInfoLge;->access$100(Lcom/android/lgesettings/lge/DeviceInfoLge;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lg_device_name"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 184
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference$1;->this$1:Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;

    iget-object v1, v1, Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLge;

    #getter for: Lcom/android/lgesettings/lge/DeviceInfoLge;->mDeviceNamePref:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/lgesettings/lge/DeviceInfoLge;->access$000(Lcom/android/lgesettings/lge/DeviceInfoLge;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 185
    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference$1;->this$1:Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;

    iget-object v1, v1, Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLge;

    #getter for: Lcom/android/lgesettings/lge/DeviceInfoLge;->mDeviceNamePref:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/lgesettings/lge/DeviceInfoLge;->access$000(Lcom/android/lgesettings/lge/DeviceInfoLge;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference$1;->this$1:Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;

    iget-object v1, v1, Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLge;

    #getter for: Lcom/android/lgesettings/lge/DeviceInfoLge;->mDeviceNamePref:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/lgesettings/lge/DeviceInfoLge;->access$000(Lcom/android/lgesettings/lge/DeviceInfoLge;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 187
    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference$1;->this$1:Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;

    iget-object v1, v1, Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLge;

    #calls: Lcom/android/lgesettings/lge/DeviceInfoLge;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/lgesettings/lge/DeviceInfoLge;->access$200(Lcom/android/lgesettings/lge/DeviceInfoLge;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lg_device_name"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
