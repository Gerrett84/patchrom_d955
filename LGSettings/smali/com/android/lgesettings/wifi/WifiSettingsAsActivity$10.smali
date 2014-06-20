.class Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$10;
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
    .line 797
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$10;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 802
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$10;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->access$000(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 803
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$10;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->setExpandableNotificationYesButton(I)V

    .line 804
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$10;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->access$000(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/lgesettings/wifi/WifiSettings;->setMisCalledonCreate(I)V

    .line 805
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$10;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->getExpandableNotificationIndex()I

    move-result v0

    .line 806
    .local v0, index:I
    if-eq v0, v5, :cond_1

    if-lez v0, :cond_1

    .line 807
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$10;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-virtual {v2, v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->showExpandableNotificationGuide(I)V

    .line 819
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$10;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mAlertDialogView:Landroid/view/View;

    const v4, 0x7f0a002e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 820
    .local v1, isChecked:Z
    const-string v2, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick, isChecked:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$10;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->access$000(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_interactive_help_tips"

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 824
    .end local v0           #index:I
    .end local v1           #isChecked:Z
    :cond_0
    return-void

    .line 808
    .restart local v0       #index:I
    :cond_1
    if-ne v0, v5, :cond_2

    .line 809
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$10;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-virtual {v2, v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->showExpandableNotificationGuide2(I)V

    goto :goto_0

    .line 813
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$10;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-virtual {v2, v4}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->setExpandableNotificationIndex(I)V

    .line 814
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$10;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-virtual {v2, v4}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->showExpandableNotificationGuide(I)V

    goto :goto_0

    .restart local v1       #isChecked:Z
    :cond_3
    move v2, v3

    .line 821
    goto :goto_1
.end method
