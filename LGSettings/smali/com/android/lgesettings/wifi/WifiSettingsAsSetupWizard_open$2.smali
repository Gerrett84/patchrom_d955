.class Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;
.super Ljava/lang/Object;
.source "WifiSettingsAsSetupWizard_open.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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
    .line 291
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preference"

    .prologue
    const/4 v7, 0x1

    .line 295
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mCurrActivity:Landroid/app/Activity;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 296
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetCountry:Ljava/lang/String;

    const-string v4, "KR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 297
    const-string v3, "WifiSettingsAsSetupWizard_open"

    const-string v4, "MobileNetwork mMobileNetworkOn.setOnPreferenceClickListener KR"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$300(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 301
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->targetCountry:Ljava/lang/String;

    const-string v4, "KR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    invoke-virtual {v3}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->getRuntimeMccCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "260"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    invoke-virtual {v3}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->getRuntimeMncCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "03"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isMobileCheckBtnClick:Z
    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$400(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 303
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$500(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 304
    .local v1, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f04013d

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 306
    .local v2, inputView:Landroid/view/View;
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v5}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$500(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f080c73

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080f99

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2$3;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2$3;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    new-instance v6, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2$2;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2$2;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040009

    new-instance v6, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2$1;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2$1;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    #setter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v3, v4}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$602(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 332
    .end local v1           #factory:Landroid/view/LayoutInflater;
    .end local v2           #inputView:Landroid/view/View;
    :goto_0
    const-string v3, "WifiSettingsAsSetupWizard_open"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VDF customization isTempMobileSettingValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isTempMobileSettingValue:Z
    invoke-static {v5}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$700(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v3, "WifiSettingsAsSetupWizard_open"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VDF customization isMobileCheckBtnClick = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isMobileCheckBtnClick:Z
    invoke-static {v5}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$400(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v3, "WifiSettingsAsSetupWizard_open"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceClick mMobileNetworkOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$300(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return v7

    .line 329
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$300(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    #setter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isTempMobileSettingValue:Z
    invoke-static {v3, v4}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$702(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;Z)Z

    .line 330
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #setter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isMobileCheckBtnClick:Z
    invoke-static {v3, v7}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$402(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;Z)Z

    goto :goto_0
.end method
