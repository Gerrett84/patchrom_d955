.class Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;
.super Ljava/lang/Object;
.source "WifiSettingsAsSetupWizard_open.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->onInitView(Lcom/android/lgesettings/wifi/WifiSettings;Landroid/widget/Switch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)V
    .locals 0
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const v7, 0x7f080981

    const v6, 0x104000a

    const/high16 v5, 0x104

    const v3, 0x1010355

    const/4 v4, -0x1

    .line 466
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$500(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$300(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 469
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mCurrActivity:Landroid/app/Activity;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 470
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$1100(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$300(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$1100(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$500(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0812e5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5$2;

    invoke-direct {v2, p0, v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5$2;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;Landroid/net/ConnectivityManager;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5$1;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 521
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 491
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$300(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 492
    const-string v1, "WifiSettingsAsSetupWizard_open"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOnClickListener mMobileNetworkOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$300(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$500(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setResult(I)V

    .line 495
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$500(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 499
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$1100(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$1100(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 500
    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$500(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0812e5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5$4;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5$4;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5$3;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5$3;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 516
    :cond_5
    const-string v1, "WifiSettingsAsSetupWizard_open"

    const-string v2, "Mobile & Wifi connection"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$500(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setResult(I)V

    .line 518
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$500(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method
