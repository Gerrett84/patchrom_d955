.class Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;
.super Ljava/lang/Object;
.source "WifiSettingsAsSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->onInitView(Lcom/android/lgesettings/wifi/WifiSettings;Landroid/widget/Switch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const v9, 0x7f080981

    const v8, 0x104000a

    const/high16 v7, 0x104

    const v6, 0x1010355

    const/4 v5, -0x1

    .line 435
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mCurrActivity:Landroid/app/Activity;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 436
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 437
    .local v1, isMobileNetwork:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->targetProductName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->isWifiOnly(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 438
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    .line 440
    :cond_0
    const-string v2, "WifiSettingsAsSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOnClickListener isMobileNetwork = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$600(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$700(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 446
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$800(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$800(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$900()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 447
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$600(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0812e5

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4$2;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4$2;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;)V

    invoke-virtual {v2, v8, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4$1;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;)V

    invoke-virtual {v2, v7, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 498
    :goto_0
    return-void

    .line 470
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$600(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Activity;->setResult(I)V

    .line 471
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$600(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 475
    :cond_3
    if-nez v1, :cond_5

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$800(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$800(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$900()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 476
    :cond_4
    const-string v2, "WifiSettingsAsSetupWizard"

    const-string v3, "Mobile & Wifi no connection"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$600(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0812e5

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4$4;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4$4;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;)V

    invoke-virtual {v2, v8, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4$3;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4$3;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;)V

    invoke-virtual {v2, v7, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 493
    :cond_5
    const-string v2, "WifiSettingsAsSetupWizard"

    const-string v3, "Mobile & Wifi connection"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$600(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Activity;->setResult(I)V

    .line 495
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$600(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method
