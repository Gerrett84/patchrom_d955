.class Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$9;
.super Ljava/lang/Object;
.source "WifiSettingsAsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->createTutorialYNPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 826
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$9;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 831
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$9;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->access$000(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 832
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$9;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->setExpandableNotificationYesButton(I)V

    .line 833
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$9;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->access$000(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/lgesettings/wifi/WifiSettings;->setMisCalledonCreate(I)V

    .line 836
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$9;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAlertDialogView:Landroid/view/View;

    const v3, 0x7f0a002e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 837
    .local v0, isChecked:Z
    const-string v1, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick, isChecked:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$9;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->access$000(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_interactive_help_tips"

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 841
    .end local v0           #isChecked:Z
    :cond_0
    return-void

    .line 838
    .restart local v0       #isChecked:Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
