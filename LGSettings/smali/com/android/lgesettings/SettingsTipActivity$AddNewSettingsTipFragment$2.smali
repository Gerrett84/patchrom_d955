.class Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment$2;
.super Ljava/lang/Object;
.source "SettingsTipActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment$2;->this$0:Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment$2;->this$0:Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;

    #getter for: Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->visible:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->access$000(Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment$2;->this$0:Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;

    invoke-virtual {v0}, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "help_settings_settings_tips"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment$2;->this$0:Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;

    invoke-virtual {v0}, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 106
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment$2;->this$0:Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;

    invoke-virtual {v0}, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "help_settings_settings_tips"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
